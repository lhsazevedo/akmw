updateSeaHorseRight:
    call tryToKillAlexIfColliding
    call isAlexAttackingEntity
    jp nc, killEnemy
    ld a, (ix + Entity.unknown6)
    cp $FF
    jr nz, +
    inc (ix + Entity.battleDecision)
    ld a, (ix + Entity.battleDecision)
    cp $30
    jr c, _LABEL_58D2_
    inc (ix + Entity.unknown5)
    ld a, (ix + Entity.unknown5)
    cp $02
    jr z, _LABEL_58F2_
    ld (ix + Entity.unknown6), $40
    ld (ix + Entity.ySpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $80
+:
    dec (ix + Entity.unknown6)
    ld a, (ix + Entity.unknown6)
    or a
    jr z, +
    ld c, a
    ld b, $00
    ld hl, lowSine
    add hl, bc
    ld a, (hl)
    add a, (ix + Entity.data)
    ld (ix + Entity.yPos.high), a
_LABEL_58D2_:
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

+:
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.ySpeed.high), $FF
    ld (ix + Entity.ySpeed.low), $80
    ld (ix + Entity.battleDecision), $00
    ld (ix + Entity.unknown6), $FF
    jr _LABEL_58D2_

_LABEL_58F2_:
    ld (ix + Entity.type), ENTITY_SEA_HORSE_LEFT
    ld (ix + Entity.unknown5), $00
    ld (ix + Entity.battleDecision), $00
    ld (ix + Entity.unknown6), $00
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation
