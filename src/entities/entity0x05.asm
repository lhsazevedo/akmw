updateEntity0x05:
    ld a, (v_entities.4.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, _LABEL_485A_
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix + Entity.unknown3)
    jr nz, ++
    ld de, $0642
    bit 1, (ix + Entity.unknown3)
    jr z, +
    ld e, $0E
+:
    call getNearEntityTileAttrWithOffset
    rlca
    ret nc
    ld hl, $0000
    ld (v_entities.4.xSpeed), hl
    ret

++:
    ld (ix + Entity.type), $06
    ld (ix + Entity.unknown10), $08
    ld (ix + Entity.unknown11), $0A
    ret
