updateBatRight:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, destroyCurrentEntity
    call tryToKillAlexIfColliding
    call isAlexAttackingEntity
    jp nc, killEnemy
    ld de, $0110
    call getNearEntityTileAttrWithOffset
    rlca
    jp nc, bat_LABEL_4F43_
    ld (ix + Entity.type), ENTITY_BAT_LEFT
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $80
    jp bat_LABEL_4F43_
