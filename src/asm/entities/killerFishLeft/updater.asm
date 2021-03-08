; 46th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateKillerFishLeft:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $10
    ld (ix+6), $10
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_51ED_
    set 0, (ix+1)
    ld a, (ix+14)
    ld (ix+22), a
    jp _LABEL_51ED_

+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_51ED_
    ld (ix+16), $FF
    ld (ix+15), $A0
    set 1, (ix+1)
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld de, $0100
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld (ix+16), $00
    ld (ix+15), $60
    ld (ix+0), $35
    jr _LABEL_51ED_

+:
    inc (ix+24)
    ld a, (ix+24)
    cp $40
    jp nz, +
    xor a
    ld (ix+24), a
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
    ld h, (ix+22)
    ld l, (ix+23)
    add hl, de
    ld (ix+22), h
    ld (ix+23), l
    add a, h
    ld (ix+14), a
_LABEL_51ED_:
    ld hl, _DATA_83AB_
    jp handleEntityAnimation
