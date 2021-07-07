; 47th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x2F:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_854C_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_854C_
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.jankenMatchDecision), $10
+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_
    dec (ix + Entity.jankenMatchDecision)
    ret nz
    ld a, $01
    ld (ix + Entity.jankenMatchDecision), a
    ld de, $1108
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld (ix + Entity.type), ENTITY_MONSTER_FROG_JUMPING
    ld (ix + Entity.ySpeed.high), $FE
    ld (ix + Entity.ySpeed.low), $80
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_855A_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_855A_
    ret
