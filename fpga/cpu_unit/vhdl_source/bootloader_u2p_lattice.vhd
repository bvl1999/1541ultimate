-- The NEORV32 RISC-V Processor: https://github.com/stnolting/neorv32
-- Auto-generated memory initialization file (for BOOTLOADER) from source file <bootloader/result/bootloader.bin>
-- Size: 3732 bytes
-- MARCH: default
-- Built: 03.06.2023 22:50:06

-- prototype defined in 'neorv32_package.vhd'
package body neorv32_bootloader_image is

constant bootloader_init_image : mem32_t := (
x"30047073",
x"80010117",
x"7fc10113",
x"80010197",
x"7f418193",
x"00000517",
x"0d050513",
x"30551073",
x"34151073",
x"30001073",
x"30401073",
x"34401073",
x"32001073",
x"30601073",
x"b0001073",
x"b8001073",
x"b0201073",
x"b8201073",
x"00000093",
x"00000213",
x"00000293",
x"00000313",
x"00000393",
x"00001597",
x"e3858593",
x"80010617",
x"f9c60613",
x"80010697",
x"f9468693",
x"00d65c63",
x"0005a703",
x"00e62023",
x"00458593",
x"00460613",
x"fedff06f",
x"80010717",
x"f7470713",
x"80010797",
x"f7078793",
x"00f75863",
x"00072023",
x"00470713",
x"ff5ff06f",
x"00000513",
x"00000593",
x"088000ef",
x"34051073",
x"10500073",
x"0000006f",
x"00000013",
x"00000013",
x"00000013",
x"00000013",
x"00000013",
x"00000013",
x"00000013",
x"00000013",
x"ff810113",
x"00812023",
x"00912223",
x"34202473",
x"02044663",
x"34102473",
x"00041483",
x"0034f493",
x"00240413",
x"34141073",
x"00300413",
x"00941863",
x"34102473",
x"00240413",
x"34141073",
x"10000437",
x"04900493",
x"00940fa3",
x"00012403",
x"00412483",
x"00810113",
x"30200073",
x"ff010113",
x"00812423",
x"00112623",
x"00912223",
x"01212023",
x"319000ef",
x"00050413",
x"460000ef",
x"0c045a63",
x"00030537",
x"144000ef",
x"02300513",
x"371000ef",
x"009000ef",
x"2f5000ef",
x"00050413",
x"43c000ef",
x"00100713",
x"0e877263",
x"100607b7",
x"20e78423",
x"00300713",
x"20e78023",
x"00a00713",
x"20e78023",
x"20078023",
x"20078023",
x"2007a483",
x"2007a403",
x"2007a903",
x"00048513",
x"400000ef",
x"00040513",
x"3f8000ef",
x"00090513",
x"3f0000ef",
x"ffff1537",
x"d3450513",
x"0d8000ef",
x"fff00793",
x"0af40a63",
x"001407b7",
x"00048513",
x"fff40413",
x"ffe78793",
x"10060737",
x"0487f863",
x"100607b7",
x"ffff1537",
x"20078423",
x"d4450513",
x"0a4000ef",
x"100007b7",
x"00a7c783",
x"0077d793",
x"04079063",
x"00090513",
x"088000ef",
x"00000013",
x"00000013",
x"ff9ff06f",
x"f2041ce3",
x"ffff1537",
x"d2450513",
x"070000ef",
x"f35ff06f",
x"20072683",
x"ffc40413",
x"00450513",
x"fed52e23",
x"fa1ff06f",
x"ffff1537",
x"d5050513",
x"04c000ef",
x"fc1ff06f",
x"0fc02703",
x"1571c7b7",
x"abe78793",
x"00f71e63",
x"ffff1537",
x"d5850513",
x"02c000ef",
x"0e002e23",
x"0f802503",
x"01c000ef",
x"ffff1537",
x"d6050513",
x"014000ef",
x"00000013",
x"00000013",
x"ff9ff06f",
x"00050067",
x"ff010113",
x"00812423",
x"00112623",
x"00050413",
x"00044503",
x"00051a63",
x"00c12083",
x"00812403",
x"01010113",
x"00008067",
x"00140413",
x"205000ef",
x"fe1ff06f",
x"101007b7",
x"00900713",
x"10e78623",
x"40000593",
x"10b79023",
x"00200693",
x"10d78123",
x"ffff8737",
x"10e79023",
x"10078123",
x"ffffc737",
x"10e79023",
x"00004737",
x"10078123",
x"45070613",
x"10c79023",
x"10078123",
x"33300513",
x"10a79023",
x"10078123",
x"10b79023",
x"10d78123",
x"00100693",
x"10d78123",
x"10d78123",
x"10d78123",
x"10d78123",
x"23300693",
x"10d79023",
x"10078123",
x"10c79023",
x"10078123",
x"7d070713",
x"10e79023",
x"10078123",
x"10c79023",
x"10078123",
x"3e800793",
x"00000013",
x"fff78793",
x"fe079ce3",
x"00008067",
x"101007b7",
x"00100713",
x"10e78223",
x"06000613",
x"08000713",
x"10578793",
x"00100593",
x"3e800693",
x"00000013",
x"fff68693",
x"fe069ce3",
x"0007c683",
x"01871713",
x"41875713",
x"0ff6f693",
x"00074863",
x"01869713",
x"41875713",
x"00074c63",
x"00b78023",
x"fff60613",
x"00060663",
x"00068713",
x"fc1ff06f",
x"101007b7",
x"00500713",
x"10e78223",
x"00100713",
x"10e782a3",
x"10e782a3",
x"3e800793",
x"00000013",
x"fff78793",
x"fe079ce3",
x"00008067",
x"00351513",
x"00b56533",
x"101007b7",
x"0ff57513",
x"10a78423",
x"f8000713",
x"10e785a3",
x"100785a3",
x"00100713",
x"10e785a3",
x"0c800793",
x"00000013",
x"fff78793",
x"fe079ce3",
x"00008067",
x"ff010113",
x"00812423",
x"ffff1437",
x"e8040413",
x"00455793",
x"00f407b3",
x"00912223",
x"00050493",
x"0007c503",
x"00f4f493",
x"00112623",
x"00940433",
x"05d000ef",
x"00044503",
x"00812403",
x"00c12083",
x"00412483",
x"01010113",
x"0450006f",
x"ffff1537",
x"ff010113",
x"d6850513",
x"00812423",
x"00912223",
x"01212023",
x"00112623",
x"df5ff0ef",
x"101007b7",
x"00100713",
x"10e78223",
x"06000413",
x"101004b7",
x"00100913",
x"0c800793",
x"00000013",
x"fff78793",
x"fe079ce3",
x"1054c503",
x"fff40413",
x"f65ff0ef",
x"02000513",
x"7e8000ef",
x"112482a3",
x"fc041ce3",
x"00812403",
x"00c12083",
x"00412483",
x"00012903",
x"00a00513",
x"01010113",
x"7c40006f",
x"ff010113",
x"02300513",
x"00112623",
x"7b4000ef",
x"101007b7",
x"00000513",
x"10378793",
x"00100693",
x"0c800713",
x"00d78023",
x"0007c603",
x"00060e63",
x"0ff57513",
x"f01ff0ef",
x"00c12083",
x"00a00513",
x"01010113",
x"77c0006f",
x"00150513",
x"fce51ce3",
x"00c12083",
x"01010113",
x"00008067",
x"ff010113",
x"00812423",
x"00050413",
x"00855513",
x"00112623",
x"00912223",
x"00058493",
x"ebdff0ef",
x"0ff47513",
x"eb5ff0ef",
x"00812403",
x"00c12083",
x"00048513",
x"00412483",
x"01010113",
x"cf9ff06f",
x"ff010113",
x"00812423",
x"00050413",
x"01855513",
x"00112623",
x"e85ff0ef",
x"01045513",
x"0ff57513",
x"e79ff0ef",
x"00845513",
x"0ff57513",
x"e6dff0ef",
x"0ff47513",
x"e65ff0ef",
x"00812403",
x"00c12083",
x"02000513",
x"01010113",
x"6dc0006f",
x"fd010113",
x"101007b7",
x"02112623",
x"02812423",
x"02912223",
x"03212023",
x"01312e23",
x"01412c23",
x"01512a23",
x"01612823",
x"01712623",
x"01812423",
x"01912223",
x"01a12023",
x"00f00713",
x"000056b7",
x"10e78623",
x"00010537",
x"00000793",
x"5aa68693",
x"01400613",
x"00179713",
x"00d7c5b3",
x"00e50733",
x"00b71023",
x"00178793",
x"fec796e3",
x"000059b7",
x"00000493",
x"00000413",
x"5aa98993",
x"00010b37",
x"01300c93",
x"ffff1d37",
x"ffff1bb7",
x"ffff1c37",
x"01400a93",
x"00149793",
x"00fb07b3",
x"0134c933",
x"0007da03",
x"01091913",
x"01095913",
x"03490a63",
x"028cc663",
x"01041513",
x"d84d0593",
x"01055513",
x"eb5ff0ef",
x"d88b8593",
x"00090513",
x"ea9ff0ef",
x"d54c0593",
x"000a0513",
x"e9dff0ef",
x"00140413",
x"00148493",
x"fb5498e3",
x"04040663",
x"ffff1537",
x"d9050513",
x"bb5ff0ef",
x"00000513",
x"02c12083",
x"02812403",
x"02412483",
x"02012903",
x"01c12983",
x"01812a03",
x"01412a83",
x"01012b03",
x"00c12b83",
x"00812c03",
x"00412c83",
x"00012d03",
x"03010113",
x"00008067",
x"ffff1537",
x"d9c50513",
x"b6dff0ef",
x"00100513",
x"fb9ff06f",
x"ff010113",
x"00812423",
x"101007b7",
x"00112623",
x"00912223",
x"10100737",
x"100783a3",
x"00000413",
x"07800793",
x"10270693",
x"00500613",
x"00c68023",
x"00000013",
x"00000013",
x"00000013",
x"10d74583",
x"00058463",
x"00140413",
x"fff78793",
x"fe0790e3",
x"101007b7",
x"1077c483",
x"0ff47513",
x"ca9ff0ef",
x"02f00513",
x"52c000ef",
x"0ff4f493",
x"00048513",
x"c95ff0ef",
x"02000513",
x"518000ef",
x"00848533",
x"00c12083",
x"00812403",
x"00412483",
x"01010113",
x"00008067",
x"fd010113",
x"02112623",
x"02912223",
x"01412c23",
x"01512a23",
x"01612823",
x"01712623",
x"01812423",
x"01912223",
x"02812423",
x"03212023",
x"01312e23",
x"01a12023",
x"acdff0ef",
x"101007b7",
x"10079023",
x"00300713",
x"10e78123",
x"00a00513",
x"4b0000ef",
x"00200493",
x"00000a93",
x"00000a13",
x"16800b93",
x"00100c13",
x"00800c93",
x"fff00b13",
x"03048513",
x"48c000ef",
x"03a00513",
x"484000ef",
x"00000993",
x"00000413",
x"00000913",
x"0ff4fd13",
x"00098593",
x"00048513",
x"ba1ff0ef",
x"ed5ff0ef",
x"05751a63",
x"00140793",
x"01878c63",
x"40145413",
x"40898433",
x"000d0a13",
x"0ff47a93",
x"00100913",
x"00198993",
x"03999463",
x"00a00513",
x"434000ef",
x"02091863",
x"fff48493",
x"f9649ce3",
x"ffff1537",
x"dac50513",
x"9edff0ef",
x"0340006f",
x"00078413",
x"fa1ff06f",
x"fc091ae3",
x"00000793",
x"fc5ff06f",
x"ffff1537",
x"da850513",
x"9c9ff0ef",
x"030a0513",
x"3f0000ef",
x"030a8513",
x"3e8000ef",
x"101007b7",
x"40000713",
x"10e79023",
x"00200713",
x"10e78123",
x"00090863",
x"000a8593",
x"000a0513",
x"afdff0ef",
x"101007b7",
x"23200713",
x"10e79023",
x"10078123",
x"40000713",
x"10e79023",
x"00200713",
x"10e78123",
x"02c12083",
x"02812403",
x"02412483",
x"01c12983",
x"01812a03",
x"01412a83",
x"01012b03",
x"00c12b83",
x"00812c03",
x"00412c83",
x"00012d03",
x"00090513",
x"02012903",
x"03010113",
x"00008067",
x"fd010113",
x"02112623",
x"100227b7",
x"02812423",
x"02912223",
x"03212023",
x"01312e23",
x"01412c23",
x"01512a23",
x"01612823",
x"01712623",
x"01812423",
x"01912223",
x"8067c503",
x"aa1ff0ef",
x"05e00513",
x"324000ef",
x"100267b7",
x"8067c503",
x"a8dff0ef",
x"05e00513",
x"310000ef",
x"101007b7",
x"00100713",
x"10e78623",
x"000017b7",
x"38878793",
x"00000013",
x"fff78793",
x"fe079ce3",
x"101007b7",
x"00900713",
x"10e78623",
x"00300413",
x"100004b7",
x"0000c937",
x"101009b7",
x"02000a13",
x"979ff0ef",
x"dcdff0ef",
x"02051663",
x"00a4c783",
x"0077d793",
x"00079c63",
x"35090793",
x"00000013",
x"fff78793",
x"fe079ce3",
x"114985a3",
x"fff40413",
x"fc0418e3",
x"ad9ff0ef",
x"bbdff0ef",
x"04050063",
x"02812403",
x"02c12083",
x"02412483",
x"02012903",
x"01c12983",
x"01812a03",
x"01412a83",
x"01012b03",
x"00c12b83",
x"00812c03",
x"00412c83",
x"ffff1537",
x"db450513",
x"03010113",
x"825ff06f",
x"ffff1537",
x"dc850513",
x"819ff0ef",
x"02400513",
x"ffff19b7",
x"23c000ef",
x"00000493",
x"07a00a93",
x"ffff1a37",
x"05100b13",
x"02800b93",
x"ddc98993",
x"10100437",
x"ffff1c37",
x"3e800513",
x"1d0000ef",
x"00050913",
x"02aac263",
x"02ab4a63",
x"02100793",
x"14f50c63",
x"04000793",
x"02f50e63",
x"ffe00793",
x"02a00513",
x"00f90863",
x"dd0a0513",
x"fb4ff0ef",
x"00090513",
x"1dc000ef",
x"fc1ff06f",
x"fae50793",
x"fefbe4e3",
x"00279793",
x"013787b3",
x"0007a783",
x"00078067",
x"97dff0ef",
x"865ff0ef",
x"975ff0ef",
x"cb5ff0ef",
x"9edff0ef",
x"ad1ff0ef",
x"f8dff06f",
x"fa4ff0ef",
x"f85ff06f",
x"959ff0ef",
x"f7dff06f",
x"83dff0ef",
x"f75ff06f",
x"c8dff0ef",
x"f6dff06f",
x"aa9ff0ef",
x"00000513",
x"134000ef",
x"fe054ae3",
x"f59ff06f",
x"9adff0ef",
x"f51ff06f",
x"01244c83",
x"01144783",
x"00010737",
x"008c9c93",
x"00fcecb3",
x"10000793",
x"00072683",
x"fff78793",
x"fe079ce3",
x"01244903",
x"01144783",
x"01044503",
x"00891913",
x"00f96933",
x"8a1ff0ef",
x"02d00513",
x"124000ef",
x"41990533",
x"01051513",
x"d54c0593",
x"01055513",
x"9adff0ef",
x"ef5ff06f",
x"00c00793",
x"10f404a3",
x"ee9ff06f",
x"100404a3",
x"ee1ff06f",
x"04000793",
x"10f405a3",
x"ed5ff06f",
x"02000793",
x"ff5ff06f",
x"00500793",
x"10f40223",
x"00100793",
x"10f402a3",
x"fff48493",
x"0ff4f493",
x"00048513",
x"839ff0ef",
x"ea9ff06f",
x"00100793",
x"10f40223",
x"10f402a3",
x"00148493",
x"fe1ff06f",
x"02c12083",
x"02812403",
x"02412483",
x"02012903",
x"01c12983",
x"01812a03",
x"01412a83",
x"01012b03",
x"00c12b83",
x"00812c03",
x"00412c83",
x"03010113",
x"00008067",
x"10000737",
x"00c74683",
x"00d74783",
x"00e74503",
x"00f74703",
x"01869693",
x"01079793",
x"00d7e7b3",
x"00e7e7b3",
x"00851513",
x"00f56533",
x"00008067",
x"100007b7",
x"ff000693",
x"0127c703",
x"01871713",
x"41875713",
x"00075863",
x"0107c503",
x"000788a3",
x"00008067",
x"fff50513",
x"00a05a63",
x"00d78323",
x"0067c703",
x"fe071ee3",
x"fd1ff06f",
x"ffe00513",
x"00008067",
x"800007b7",
x"0007a783",
x"ff010113",
x"00812423",
x"00112623",
x"00050413",
x"00078463",
x"000780e7",
x"10000737",
x"01274783",
x"0107f793",
x"fe079ce3",
x"0ff47413",
x"00870823",
x"00c12083",
x"00812403",
x"01010113",
x"00008067",
x"74736554",
x"4d207265",
x"6c75646f",
x"000a2e65",
x"6c707061",
x"74616369",
x"0a6e6f69",
x"00000000",
x"6e6e7552",
x"0a676e69",
x"00000000",
x"6b636f4c",
x"0000000a",
x"6967614d",
x"000a2163",
x"74706d45",
x"00000a79",
x"7379530a",
x"636f6c43",
x"7376206b",
x"72744320",
x"6f6c436c",
x"0a3a6b63",
x"00000000",
x"0000003a",
x"203d2120",
x"00000000",
x"204d4152",
x"6f727265",
x"000a2e72",
x"204d4152",
x"21214b4f",
x"0000000d",
x"00004b4f",
x"4c494146",
x"00000000",
x"6165520a",
x"74207964",
x"7572206f",
x"656c626d",
x"00000a21",
x"6f6f420a",
x"000a2121",
x"6e6b6e55",
x"206e776f",
x"00000000",
x"ffff0b60",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0b44",
x"ffff0b4c",
x"ffff0b54",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0b3c",
x"ffff0af4",
x"ffff0af4",
x"ffff0b78",
x"ffff0be0",
x"ffff0bd4",
x"ffff0af4",
x"ffff0bf4",
x"ffff0af4",
x"ffff0b30",
x"ffff0be8",
x"ffff0b70",
x"ffff0af4",
x"ffff0af4",
x"ffff0af4",
x"ffff0c20",
x"ffff0af4",
x"ffff0bfc",
x"33323130",
x"37363534",
x"42413938",
x"46454443",
x"00000000"
);

end neorv32_bootloader_image;
