; 40th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x28:
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
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $40
    jp _LABEL_54C9_

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, _LABEL_54C9_
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
    jp nz, +
    ld a, (ix + Entity.animationTimer)
    cp $20
    jr nz, _LABEL_54C9_
    ld a, $99
    ld (v_soundControl), a
    ld a, $38
    add a, (ix + Entity.xPos.high)
    ld c, a
    ld a, (v_entities.1.xPos.high)
    sub c
    jp c, _LABEL_53C6_
    cp $20
    jp nc, _LABEL_5357_
_LABEL_54C9_:
    ld hl, _DATA_8A44_
    jp handleEntityAnimation

+:
    ld a, (ix + Entity.animationTimer)
    cp $20
    jp nz, _LABEL_54C9_
    ld a, $99
    ld (v_soundControl), a
    jp _LABEL_54C9_
