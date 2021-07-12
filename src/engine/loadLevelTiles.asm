loadLevelTiles:
    ld hl, tiles_bagOfGoldCoinsAndCloud
    ld de, $44A0
    call decompress4BitplanesToVRAM
    ld a, (v_level)
    ld hl, tilesetLoadersPointers - 2
    rst jumpToAthPointer
    ret
