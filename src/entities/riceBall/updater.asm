updateRiceBall:
    bit 0, (ix + Entity.flags)
    jr nz, @skipInit

    set 0, (ix + Entity.flags)
    ld (ix + Entity.spriteDescriptorPointer.low), <riceBallSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >riceBallSpriteDescriptor
    ret

    @skipInit:
    ; Do nothing if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz

    ; Do nothing if Alex isn't colliding
    ld iy, v_alex
    call checkEntityCollision
    ret c

    ld l, SCORE_1000
    call addScore

    call destroyCurrentEntity

    ld a, STATE_LEVEL_COMPLETED
    ld (v_gameState), a
    ret
