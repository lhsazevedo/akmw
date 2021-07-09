; 49th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateSeaHorseLeft:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_5845_
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
+:
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix + Entity.unknown6)
    or a
    jr nz, +
    ld (ix + Entity.ySpeed.high), $00
    ld (ix + Entity.ySpeed.low), $80
    inc (ix + Entity.battleDecision)
    ld a, (ix + Entity.battleDecision)
    cp $30
    jr c, _LABEL_5845_
    inc (ix + Entity.unknown5)
    ld a, (ix + Entity.unknown5)
    cp $02
    jr z, _LABEL_5865_
    ld a, (ix + Entity.yPos.high)
    ld (ix + Entity.data), a
    ld (ix + Entity.ySpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $80
+:
    inc (ix + Entity.unknown6)
    ld a, (ix + Entity.unknown6)
    cp $40
    jr z, +
    ld c, a
    ld b, $00
    ld hl, lowSine
    add hl, bc
    ld a, (hl)
    add a, (ix + Entity.data)
    ld (ix + Entity.yPos.high), a
_LABEL_5845_:
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation

+:
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
    ld (ix + Entity.ySpeed.low), $80
    ld (ix + Entity.battleDecision), $00
    ld (ix + Entity.unknown6), $00
    jr _LABEL_5845_

_LABEL_5865_:
    ld (ix + Entity.type), ENTITY_SEA_HORSE_RIGHT
    ld (ix + Entity.ySpeed.high), $FF
    ld (ix + Entity.ySpeed.low), $80
    ld (ix + Entity.unknown5), $00
    ld (ix + Entity.battleDecision), $00
    ld (ix + Entity.unknown6), $FF
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation
