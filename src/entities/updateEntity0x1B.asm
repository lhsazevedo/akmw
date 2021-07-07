; 27th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x1B:
    ld a, (v_entities.2.isOffScreenFlags)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    ld a, (v_entities.2.xPos.high)
    cp $0C
    jr c, +
    cp $F4
    jr nc, +
    ld de, $0404
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    rlca
    jp c, _LABEL_4578_
+:
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    jp destroyCurrentEntity
