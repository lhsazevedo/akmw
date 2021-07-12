updateLevelTiles:
    ld hl, v_shouldUpdateLevelTiles
    ld a, (hl)
    ld (hl), $00
    or a
    jp z, +
    ld hl, v_levelTileUpdateTimer
    dec (hl)
    ret nz
    inc (hl)
+:
    ld hl, v_levelTileUpdateTimer
    dec (hl)
    ret nz
    ld (hl), $12
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, (v_levelTileUpdaterPointer)
    jp (hl)
