updateAlexDead:
    ld hl, alexDeadAnimationDescriptor
    call loadAlexAnimationDescriptor

    ld a, (v_alex.yPos.high)
    cp $A8
    ret nc

    cp $A3
    ret c

    ld a, (v_alex.isOffScreenFlags.high)
    inc a
    ret nz

    call destroyCurrentEntity

    ld a, STATE_LIFE_LOST
    ld (v_gameState), a
    ret
