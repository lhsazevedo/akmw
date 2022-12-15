updateEntity0x02:
    bit 7, (ix + Entity.flags)
    jr nz, ++
    ld a, (v_entities.2.isOffScreenFlags)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    ld a, (v_entities.2.xPos.high)
    ld de, $0404
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, +
    rlca
    jr nc, ++
    call _LABEL_4578_
    ld a, (v_nametableChangeRequest)
    or a
    jr nz, ++
+:
    dec (ix + Entity.unknown7)
    ret nz
++:
    ld (ix + Entity.unknown7), $05
    ld (ix + Entity.type), $04
    ld a, $A9
    ld (v_soundControl), a
    ld hl, $0000
    ld (v_entities.2.xSpeed), hl
    ld hl, $8380
    ld (v_entities.2.spriteDescriptorPointer), hl
    ret
