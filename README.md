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

## The Process

### 1. Disassembly
The first step was to transform the machine code from the original ROM into assembly language, readable by humans. This step was done with the help of the [Emulicious](https://emulicious.net/) emulator which has this functionality. About [26k lines of code](https://github.com/lhsazevedo/akmw/blob/25fd2e4413858a1700a7c40dd345f5d6b827e979/asm/baserom.asm) were generated. Below is an routine from this file.

Machine code
```
061e 2100 c3cd 8d27 2310 fac9
```

Assembly:
```asm
_LABEL_9D9_:
    ld b, $1E
    ld hl, _RAM_C300_
-:
    call _LABEL_278D_
    inc hl
    djnz -
    ret
```

### 2. Name labels
When the game was compiled back in 1986, all variable and routine names were discarded as they are not needed at runtime. That's why the disassembler has to gives generic names to these labels like `_LABEL_9d9_` and` _RAM_C300_`.

This second step is to understand what a routine does and rename the labels so they make sense. There are several ways to try to understand: using a emulator with an debugger, looking for online documentation or analyzing other routines called from or to this part of the code.

See the result below.

```asm
clearEntities:
    ld b, $1E
    ld hl, entities
-:
    call clearEntity
    inc hl
    djnz -
    ret
```

That done, you should compile the game to make sure that this change will output **exactly the same bytes** that we saw earlier. The build script does this check automatically.

### 3. Document
This step does not influence the compilation of the game, but it can help other people to understand particularly complex snippets without having to analyze assembly code. This step is optional.

Below we see the same excerpt above written in pseudo-code.

```
clearEntities() {
    for (i = 0x1E; i > 0; i--) {
        clearEntity(i)
    }
 
    return
}
```

## Compiling
*Soon*

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
