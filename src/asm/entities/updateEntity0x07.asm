; 7th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x07:
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
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld hl, $0000
    ld (v_entities.4.xSpeed), hl
    ret

++:
    res 1, (ix + Entity.flags)
    ld a, $AB
    ld (v_soundControl), a
    ld (ix + Entity.type), $08
    ld hl, $8CD2
    ld (v_entities.4.spriteDescriptorPointer), hl
    ld hl, $04B0
    ld (v_entities.4.stateTimer), hl
    ld hl, $0000
    ld (v_entities.4.xSpeed), hl
    ld (v_entities.4.ySpeed), hl
    ret
