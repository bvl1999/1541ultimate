#include "s25fl_flash.h"
#include "icap.h"
extern "C" {
    #include "small_printf.h"
}

#ifndef OS
#define debug(x)
#define error(x)
#define portENTER_CRITICAL()
#define portEXIT_CRITICAL()
#else
#include "FreeRTOS.h"
#define debug(x)
#define error(x) printf x
#endif

S25FL_Flash s25fl_flash;

S25FL_Flash::S25FL_Flash()
{

	sector_size  = 16;			// in pages, default to S25FL16BV
	sector_count = 512;			// default to S25FL16BV
    total_size   = 8192;		// in pages, default to S25FL16BV
}
    
S25FL_Flash::~S25FL_Flash()
{
    debug(("S25FL Flash class destructed..\n"));
}
    
Flash *S25FL_Flash :: tester()
{
	portENTER_CRITICAL();
    SPI_FLASH_CTRL = SPI_FORCE_SS | SPI_LEVEL_SS;
    SPI_FLASH_DATA = 0xFF;

    SPI_FLASH_CTRL = SPI_FORCE_SS;

	SPI_FLASH_DATA = S25FL_JEDEC_ID;
	uint8_t manuf = SPI_FLASH_DATA;
	uint8_t mem_type = SPI_FLASH_DATA;
	uint8_t capacity = SPI_FLASH_DATA;
    SPI_FLASH_CTRL = SPI_FORCE_SS | SPI_LEVEL_SS;
    
	portEXIT_CRITICAL();

    //    printf("S25FL MANUF: %b MEM_TYPE: %b CAPACITY: %b\n", manuf, mem_type, capacity);

    if (manuf != 0x01) 
    	return NULL; // not Spansion

	if(mem_type != 0x40) { // not the right type of flash
		return NULL;
	}
	
	if(capacity == 0x15) { // 16 Mbit
		sector_size  = 16;	
		sector_count = 512;	
	    total_size   = 8192;
		return this;
	}
	if(capacity == 0x16) { // 32 Mbit
		sector_size  = 16;	
		sector_count = 1024;	
	    total_size   = 16384;
		return this;
	}
	if(capacity == 0x17) { // 64 Mbit
		sector_size  = 16;	
		sector_count = 2048;	
	    total_size   = 32768;
		return this;
	}

	return NULL;
}

const char *S25FL_Flash ::get_type_string(void)
{
    switch (total_size) {
    case 8192:
        return "Spansion S25FL116K";
    case 16384:
        return "Spansion S25FL132K";
    case 32768:
        return "Spansion S25FL164K";
    default:
        return "Spansion";
    }
}

void S25FL_Flash :: protect_disable(void)
{
	// unprotect the device
	// SEC = 0
	// TB = 1
	// BP[2:0] = 000
	// SRP0, SEC, TB, BP2, BP1, BP0, WEL, BUSY
	//  0     0    1   0    0    0    0     0
	
	// program status register with value 0x20
	portENTER_CRITICAL();
	SPI_FLASH_CTRL = 0;
	SPI_FLASH_DATA = S25FL_WriteEnable;
    SPI_FLASH_CTRL = SPI_FORCE_SS; // drive CSn low
	SPI_FLASH_DATA = S25FL_WriteStatusRegister;
	SPI_FLASH_DATA = 0x20;
	SPI_FLASH_DATA = 0x00;
    SPI_FLASH_CTRL = SPI_FORCE_SS | SPI_LEVEL_SS; // drive CSn high

	wait_ready(50); // datasheet: 5 ms

	SPI_FLASH_CTRL = 0;
	SPI_FLASH_DATA = S25FL_WriteDisable;
	portEXIT_CRITICAL();
}

bool S25FL_Flash :: protect_configure(int kilobytes)
{
	// protect the LOWER PART of the device:
	// SEC = 0
	// TB = 1
	// BP[2:0] = 101
	// SRP0, SEC, TB, BP2, BP1, BP0, WEL, BUSY
	//  0     0    1   0    1    0    0     0  => 0x28

    // S25FL164K:  BP[2:0] = { 0K, 128K, 256K, 512K,   1M, 2M, 4M,  8M } -- 32768
    // S25FL132K:  BP[2:0] = { 0K,  64K, 128K, 256K, 512K, 1M, 2M,  4M } -- 16384
    // S25FL116K:  BP[2:0] = { 0K,  64K, 128K, 256K, 512K, 1M, 2M,  2M } -- 8192

    int bp = 0;
    switch (total_size) {
    case 32768:
        bp = kilobytes / 128;
        break;
    case 65536: // not supported
        bp = kilobytes / 256;
        break; 
    default:
        bp = kilobytes / 64;
        break;
    }
    uint8_t bp_bits = 0;
    while(bp) {
        bp_bits += 1;
        bp >>= 1;
    }
    bp_bits <<= 2;
    bp_bits |= 0x20;

    portENTER_CRITICAL();
    SPI_FLASH_CTRL = SPI_FORCE_SS; // drive CSn low
    SPI_FLASH_DATA = S25FL_ReadStatusRegister1;
    uint8_t status = SPI_FLASH_DATA;
    SPI_FLASH_CTRL = SPI_FORCE_SS | SPI_LEVEL_SS; // drive CSn high
    portEXIT_CRITICAL();

    if ((status & 0x7C) == bp_bits) { // already set
        return true;
    }

    // program status register with value 0x28
    portENTER_CRITICAL();
    SPI_FLASH_CTRL = 0;
    SPI_FLASH_DATA = S25FL_WriteEnable;
    SPI_FLASH_CTRL = SPI_FORCE_SS; // drive CSn low
    SPI_FLASH_DATA = S25FL_WriteStatusRegister;
    SPI_FLASH_DATA = bp_bits;
    SPI_FLASH_DATA = 0x00;
    SPI_FLASH_CTRL = SPI_FORCE_SS | SPI_LEVEL_SS; // drive CSn high

    wait_ready(50);

    SPI_FLASH_CTRL = 0;
    SPI_FLASH_DATA = S25FL_WriteDisable;
    portEXIT_CRITICAL();
    return true;
}
