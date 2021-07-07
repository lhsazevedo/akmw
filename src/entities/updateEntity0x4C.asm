; 76th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x4C:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor_DATA_80E1_
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor_DATA_80E1_
    ld a, (ix + Entity.data)
    ld (_RAM_C07F_), a
+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, $08
    ld (v_gameState), a
    jp destroyCurrentEntity
