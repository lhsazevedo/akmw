; 84th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x54:
    bit 0, (ix + Entity.flags)
    jr nz, _LABEL_62F5_
    ld (ix + Entity.animationTimer), $08
    ld (ix + Entity.animationTimerResetValue), $08
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_6341_
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.jankenMatchDecision), $00
    ld (ix + Entity.unknown5), $30
    ld (ix + Entity.unknown6), $0E
    ld (ix + Entity.xSpeed.low), $60
    ld (ix + Entity.xSpeed.high), $00
    ld a, (v_entities.1.xPos.high)
    cp (ix + Entity.xPos.high)
    jr nc, _LABEL_62F5_
    ld (ix + Entity.unknown6), $02
    ld (ix + Entity.xSpeed.low), $A0
    ld (ix + Entity.xSpeed.high), $FF
_LABEL_62F5_:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld d, $01
    ld e, (ix + Entity.unknown6)
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld a, (ix + Entity.xSpeed.high)
    cpl
    ld (ix + Entity.xSpeed.high), a
    ld a, (ix + Entity.xSpeed.low)
    cpl
    inc a
    ld (ix + Entity.xSpeed.low), a
    jr ++

+:
    ld a, (ix + Entity.unknown6)
    xor $0C
    ld e, a
    ld d, $11
    call getTileNearEntityWithXYOffset
    rlca
    jr c, _LABEL_6341_
    ld h, (ix + Entity.jankenMatchDecision)
    ld l, (ix + Entity.unknown5)
    ld de, $0010
    add hl, de
    ld (ix + Entity.jankenMatchDecision), h
    ld (ix + Entity.unknown5), l
    ld (ix + Entity.ySpeed.high), h
    ld (ix + Entity.ySpeed.low), l
    jr _LABEL_6351_

_LABEL_6341_:
    ld (ix + Entity.jankenMatchDecision), $00
    ld (ix + Entity.unknown5), $30
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
_LABEL_6351_:
    ld hl, _DATA_8585_
    jp handleEntityAnimation

++:
    ld (ix + Entity.unknown6), $02
    ld a, (ix + Entity.xSpeed.high)
    cp $FF
    jr z, _LABEL_6351_
    ld (ix + Entity.unknown6), $0E
    jr _LABEL_6351_
