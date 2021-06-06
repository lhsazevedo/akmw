; 37th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x25:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.animationTimer), $12
    ld (ix + Entity.animationTimerResetValue), $12
    ld (ix + Entity.animationFrame), $00
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, ++
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown1), $81
    ld (ix + Entity.xSpeed.low), $A0
    ld (ix + Entity.xSpeed.high), $FF
+:
    call tryToKillAlexIfColliding
    ld a, (ix + Entity.unknown2)
    ld (ix + Entity.unknown6), a
    ld (ix + Entity.unknown2), $A8
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix + Entity.unknown6)
    ld (ix + Entity.unknown2), a
    ld a, (v_entities.1.xPos.high)
    sub (ix + Entity.xPos.high)
    jr nc, _LABEL_5357_
    neg
    cp $20
    jr c, +++
++:
    ld hl, _DATA_8A35_
    jp handleEntityAnimation

+++:
    ld (ix + Entity.type), $27
    res 0, (ix + Entity.flags)
    ret
