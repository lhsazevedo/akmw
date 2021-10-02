# Alex Kidd in Miracle World Disassembly
[![CI](https://github.com/lhsazevedo/akmw/actions/workflows/ci.yml/badge.svg)](https://github.com/lhsazevedo/akmw/actions/workflows/ci.yml)

This project aims to understand and document the disasssembly of the game [Alex Kidd in Miracle World](https://wikipedia.org/wiki/Alex_Kidd_in_Miracle_World) released in 1986 for the Sega Master System.

It builds the following roms:
- **Alex Kidd in Miracle World (USA, Europe) (Rev 1)**  
  SHA1: `6d052e0cca3f2712434efd856f733c03011be41c`  
  CRC32: `aed9aac4`
- **Alex Kidd in Miracle World (USA, Europe)**  
  SHA1: `8cecf8ed0f765163b2657be1b0a3ce2a9cb767f4`  
  CRC32: `17a40e29`

⚠️ **Note**  
This repository does not contains the necessary assets to build the game. A copy of the game is required to extract them.

## Requirements
To compile, both WLA DX assembler for z80 (wla-z80) and the WLA-LINK linker (wlalink) must be avaliable on your PATH.

## Compiling
Execute de compile script for your system:

**Linux:**
```
./compile.sh
```

**Windows:**
```
./compile.bat
```

The script will build both ROM revisions (REV0 e REV1), and check if the result is identical to the original ones.


## Documentation
- [Basic introduction](docs/basic-introduction.md)
- [Trivia](docs/trivia.md)

## Why?
It is known that this game has already been fully disassembled by the community privately. Therefore, my goal is not to be the first one or something like that, but to learn to program for SMS and share this knowledge with the world.

## Contact
Brazilian Telegram group: https://t.me/smsdasmbr

## Thanks
Thanks to everyone who researched the Master System hardware and this game, and made that work available for free. Without them I would have given up on the first day.

- [SMS Power!](https://www.smspower.org/) community
- [Research](https://www.smspower.org/Development/AlexKiddInMiracleWorld-SMS) done by [Calindro](https://www.smspower.org/forums/member6944) and [Paul Baker](https://www.smspower.org/forums/member501)
- [Emulicious](https://emulicious.net/) emulator by [Calindro](https://www.smspower.org/forums/member6944)
- [WLA DX](https://github.com/vhelin/wla-dx) assembler by [Ville Helin](https://github.com/vhelin)
- Other disassembly projects, like [Pret](https://github.com/pret)
- And to everyone else that isn't listed here.

## Disclaimer:
Any and all content presented in this repository is presented for informational and educational purposes only.
Commercial usage is expressly prohibited. The owner claims no ownership of any code in these repositories.
You assume any and all responsibility for using this content responsibly. The owner claims no responsibiliy or warranty.
You are not allowed to redistribute the patched ROM or bundle the patch with pirated copies of the game.
