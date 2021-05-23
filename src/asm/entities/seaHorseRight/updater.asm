; 50th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateSeaHorseRight:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix + Entity.unknown6)
    cp $FF
    jr nz, +
    inc (ix + Entity.jankenMatchDecision)
    ld a, (ix + Entity.jankenMatchDecision)
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
    ld (ix + Entity.jankenMatchDecision), $00
    ld (ix + Entity.unknown6), $FF
    jr _LABEL_58D2_

_LABEL_58F2_:
    ld (ix + Entity.type), ENTITY_SEA_HORSE_LEFT
    ld (ix + Entity.unknown5), $00
    ld (ix + Entity.jankenMatchDecision), $00
    ld (ix + Entity.unknown6), $00
    ld hl, _DATA_8BF3_
    jp handleEntityAnimation
