*[🌐 Leia a versão em Português](README.pt-BR.md)*

# Alex Kidd in Miracle World Disassembly

This project aims to understand, name and document the disasssembly of the game [Alex Kidd in Miracle World](https://wikipedia.org/wiki/Alex_Kidd_in_Miracle_World) released in 1986 for the Sega Master System.

To ensure that the compiled ROM is exactly the same as the original cartridge, the hash of the compiled files are checked.

It builds the following roms:
- **Alex Kidd in Miracle World (USA, Europe) (Rev 1)**  
  alex-kidd-in-miracle-world-usa-europe-rev-1.sms  
  ```
  SHA1  6d052e0cca3f2712434efd856f733c03011be41c
  CRC32 aed9aac4
  ```
- **Alex Kidd in Miracle World (USA, Europe)**  
  alex-kidd-in-miracle-world-usa-europe.sms  
  ```
  SHA1  8cecf8ed0f765163b2657be1b0a3ce2a9cb767f4
  CRC32 17a40e29
  ```

**⚠️ Warning**  
This repository doesn't contains all the necessary assets to build the ROMs. You must own a game copy to extract them.

## Requirements.
To compile, both wla-dx assembler for z80 (wla-80) and the wlalink linker must be avaliable on your PATH.

## Compiling


### Linux
Execute de compile script:
```
./compile.sh
```

The script will build the two ROM revisions (REV0 e REV1), and will check if the resulting ROMs are identical to the original one.

### Windows
*Soon...*

## Documentation
- [Basic introduction](docs/basic-introduction.md)

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
