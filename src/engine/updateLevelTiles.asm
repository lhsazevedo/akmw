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

getFourFrameTileAddress:
    ld hl, v_fourFrameLevelTileIndex
    inc (hl)
    ld a, (hl)
    cp $04
    jp c, getAnimatedTileAddress
    jp resetAnimatedTileTimer

getSixFrameTileAddress:
    ld hl, v_sixFrameLevelTileIndex
    inc (hl)
    ld a, (hl)
    cp $06
    jp c, getAnimatedTileAddress

resetAnimatedTileTimer:
    xor a
    ld (hl), a

getAnimatedTileAddress:
    add a, a
    ld l, a
    ld h, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ret
