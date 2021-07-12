loadLevelPalette:
    ld a, $80 | :mtEthernalStage1Palette
    ld (Mapper_Slot2), a

    ld a, (v_level)
    ld hl, levelPalettesPointers - 2
    rst loadAthPointer
    ld de, $C000
    ld b, $20
    rst memcpyToVRAM
    ret
