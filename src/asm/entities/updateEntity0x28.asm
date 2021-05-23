; 40th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x28:
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
    ld (ix+5), $20
    ld (ix+6), $20
    ld (ix+4), $00
    ld (ix+16), $00
    ld (ix+15), $40
    jp _LABEL_54C9_

+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, _LABEL_54C9_
    call tryToKillAlexIfColliding
    ld a, (ix+19)
    ld (ix+24), a
    ld (ix+19), $A8
    call _LABEL_7D0B_
    jp nc, _LABEL_54DF_
    ld a, (ix+24)
    ld (ix+19), a
    ld a, (ix+4)
    or a
    jp nz, +
    ld a, (ix+5)
    cp $20
    jr nz, _LABEL_54C9_
    ld a, $99
    ld (v_soundControl), a
    ld a, $38
    add a, (ix+12)
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
    ld a, (ix+5)
    cp $20
    jp nz, _LABEL_54C9_
    ld a, $99
    ld (v_soundControl), a
    jp _LABEL_54C9_
