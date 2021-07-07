; 68th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
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
    ld iy, v_entity1
    call checkEntityCollision
    ret c

    ld l, SCORE_1000
    call addScore

    call clearCurrentEntity

    ld a, STATE_LEVEL_COMPLETED
    ld (v_gameState), a
    ret
