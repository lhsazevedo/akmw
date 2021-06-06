; 38th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x26:
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
    ld (ix + Entity.animationTimer), $12
    ld (ix + Entity.animationTimerResetValue), $12
    ld (ix + Entity.animationFrame), $00
    ld (ix + Entity.xSpeed.low), $60
    ld (ix + Entity.xSpeed.high), $00
+:
    call tryToKillAlexIfColliding
    ld a, (ix + Entity.unknown2)
    ld (ix + Entity.unknown6), a
    ld (ix + Entity.unknown2), $A8
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix + Entity.unknown6)
    ld (ix + Entity.unknown2), a
    ld a, $38
    add a, (ix + Entity.xPos.high)
    ld c, a
    ld a, (v_entities.1.xPos.high)
    sub c
    jr c, _LABEL_53C6_
    cp $20
    jr c, +
    ld hl, _DATA_8A3F_
    jp handleEntityAnimation

+:
    ld (ix + Entity.type), $28
    res 0, (ix + Entity.flags)
    ret
