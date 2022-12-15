updateEntity0x52:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld a, (ix + Entity.data)
    ld hl, _DATA_644A_
    rst loadAthPointer
    ld a, (hl)
    or a
    jp nz, destroyCurrentEntity
    ld a, (ix + Entity.data)
    ld hl, _DATA_6422_
    rst loadAthPointer
    ld (ix + Entity.spriteDescriptorPointer.low), l
    ld (ix + Entity.spriteDescriptorPointer.high), h
    ret

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    set 1, (ix + Entity.flags)
    ld iy, v_alex
    call checkEntityCollision
    ret c
    ld a, SOUND_POWERUP
    ld (v_soundControl), a
    ld a, (ix + Entity.data)
    ld hl, _DATA_644A_
    rst loadAthPointer
    set 0, (hl)
    ld a, (ix + Entity.data)
    or a
    jr z, ++
    cp $05
    jr z, +
    ld hl, _DATA_6436_
    rst loadAthPointer
    set 0, (hl)
    jp destroyCurrentEntity

+:
    ld hl, v_lives
    ld a, (hl)
    add a, $01
    daa
    ld (hl), a
    jp destroyCurrentEntity

++:
    ld a, $08
    ld (v_gameState), a
    ret
