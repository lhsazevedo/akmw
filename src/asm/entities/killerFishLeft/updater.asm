; 46th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateKillerFishLeft:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_51ED_
    set 0, (ix + Entity.flags)
    ld a, (ix + Entity.yPos.high)
    ld (ix + Entity.unknown5), a
    jp _LABEL_51ED_

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_51ED_
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $A0
    set 1, (ix + Entity.flags)
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld de, $0100
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $60
    ld (ix + Entity.type), $35
    jr _LABEL_51ED_

+:
    inc (ix + Entity.unknown6)
    ld a, (ix + Entity.unknown6)
    cp $40
    jp nz, +
    xor a
    ld (ix + Entity.unknown6), a
+:
    ld hl, highSine
    ld c, a
    ld b, $00
    add hl, bc
    ld h, (hl)
    ld de, (v_verticalScrollSpeed)
    ld a, d
    cpl
    inc a
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    ld a, h
    add a, d
    ld h, (ix + Entity.unknown5)
    ld l, (ix + Entity.jankenMatchDecision)
    add hl, de
    ld (ix + Entity.unknown5), h
    ld (ix + Entity.jankenMatchDecision), l
    add a, h
    ld (ix + Entity.yPos.high), a
_LABEL_51ED_:
    ld hl, _DATA_83AB_
    jp handleEntityAnimation
