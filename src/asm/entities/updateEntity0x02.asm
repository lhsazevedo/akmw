; 2nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x02:
    bit 7, (ix+1)
    jr nz, ++
    ld a, (v_entities.2.isOffScreenFlags)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.2.xPos.high)
    ld de, $0404
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    rlca
    jr nc, ++
    call _LABEL_4578_
    ld a, (v_nametableChangeRequest)
    or a
    jr nz, ++
+:
    dec (ix+25)
    ret nz
++:
    ld (ix+25), $05
    ld (ix+0), $04
    ld a, $A9
    ld (v_soundControl), a
    ld hl, $0000
    ld (v_entities.2.xSpeed), hl
    ld hl, $8380
    ld (v_entities.2.spriteDescriptorPointer), hl
    ret
