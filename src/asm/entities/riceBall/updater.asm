; 68th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateRiceBall:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_8CC7_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_8CC7_
    ret

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld l, $0C
    call addScore
    call clearCurrentEntity
    ld a, STATE_LEVEL_COMPLETED
    ld (v_gameState), a
    ret
