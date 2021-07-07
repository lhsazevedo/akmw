; 77th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x4D:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.jankenMatchDecision), $F0
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_8C0E_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_8C0E_
    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
    ret

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, clearCurrentEntity
    ld iy, v_entity1
    call checkEntityCollision
    jr c, +
    ld a, $8F
    ld (v_soundControl), a
    ld hl, v_lives
    ld a, (hl)
    add a, $01
    daa
    ld (hl), a
    jp clearCurrentEntity

+:
    dec (ix + Entity.jankenMatchDecision)
    jp z, clearCurrentEntity
    ret
