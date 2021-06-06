updateBatRight:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, clearCurrentEntity
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld de, $0110
    call getTileNearEntityWithXYOffset
    rlca
    jp nc, bat_LABEL_4F43_
    ld (ix + Entity.type), ENTITY_BAT_LEFT
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $80
    jp bat_LABEL_4F43_
