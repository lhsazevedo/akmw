updateflameOrScorpionRight:
    call tryToKillAlexIfColliding
    ld a, (ix + Entity.data)
    or a
    jr nz, +
    call isAlexAttackingEntity
    jp nc, killEnemy
+:
    ld de, $0910
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, +
--:
    ld (ix + Entity.type), ENTITY_FLAME_OR_SCORPION_LEFT
    ld (ix + Entity.xSpeed.low), $80
    ld (ix + Entity.xSpeed.high), $FF
-:
    ld hl, _DATA_85A6_
    ld a, (ix + Entity.data)
    or a
    jp nz, handleEntityAnimation
    ld hl, _DATA_8286_
    jp handleEntityAnimation

+:
    ld d, $08
    call _LABEL_7CA3_
    ld a, (hl)
    rlca
    jr c, -
    jr --
