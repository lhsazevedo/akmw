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
