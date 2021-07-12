loadLevelSpriteTiles:
    ld a, $87
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld hl, spriteTilesLoadersPointers - 2
    jp jumpToAthPointer
