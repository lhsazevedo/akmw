updateMonkeyLeaf:
    ; Initialize entity
    bit 0, (ix + Entity.flags)
        jr nz, +
        set 0, (ix + Entity.flags)
        ; @TODO
        ld (ix + Entity.unknown3), $12
        call getVelocitiesToPursuitAlex
        ld (ix + Entity.xSpeed.low), l
        ld (ix + Entity.xSpeed.high), h
        ld (ix + Entity.ySpeed.low), e
        ld (ix + Entity.ySpeed.high), d
        set 1, (ix + Entity.flags)
        ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_851D_
        ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_851D_
        ret
    +:

    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, destroyCurrentEntity
    jp tryToKillAlexIfColliding
