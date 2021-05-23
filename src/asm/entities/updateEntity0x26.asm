; 38th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x26:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+5), $12
    ld (ix+6), $12
    ld (ix+4), $00
    ld (ix+15), $60
    ld (ix+16), $00
+:
    call tryToKillAlexIfColliding
    ld a, (ix+19)
    ld (ix+24), a
    ld (ix+19), $A8
    call _LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix+24)
    ld (ix+19), a
    ld a, $38
    add a, (ix+12)
    ld c, a
    ld a, (v_entities.1.xPos.high)
    sub c
    jr c, _LABEL_53C6_
    cp $20
    jr c, +
    ld hl, _DATA_8A3F_
    jp handleEntityAnimation

+:
    ld (ix+0), $28
    res 0, (ix+1)
    ret
