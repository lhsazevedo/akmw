; 39th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x27:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.animationTimer), $20
    ld (ix + Entity.animationTimerResetValue), $20
    ld (ix + Entity.animationFrame), $00
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $C0
    jr _LABEL_543D_

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_543D_
    call tryToKillAlexIfColliding
    ld a, (ix + Entity.unknown2)
    ld (ix + Entity.unknown6), a
    ld (ix + Entity.unknown2), $A8
    call _LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix + Entity.unknown6)
    ld (ix + Entity.unknown2), a
    ld a, (ix + Entity.animationFrame)
    or a
    jr nz, +
    ld a, (ix + Entity.animationTimer)
    cp $20
    jr nz, _LABEL_543D_
    ld a, (v_entities.1.xPos.high)
    sub (ix + Entity.xPos.high)
    jp nc, _LABEL_5357_
    neg
    cp $20
    jp nc, _LABEL_53C6_
_LABEL_543D_:
    ld hl, _DATA_8A3A_
    jp handleEntityAnimation

+:
    ld a, (ix + Entity.animationTimer)
    cp $20
    jr nz, _LABEL_543D_
    ld a, $99
    ld (v_soundControl), a
    jr _LABEL_543D_
