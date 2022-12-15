updateEntity0x4C:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor
    ld a, (ix + Entity.data)
    ld (_RAM_C07F_), a
+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    ld iy, v_alex
    call checkEntityCollision
    ret c
    ld a, $08
    ld (v_gameState), a
    jp destroyCurrentEntity
