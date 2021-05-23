; 61st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x3D:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+5), $10
    ld (ix+6), $10
    ld a, (ix+12)
    ld (ix+31), a
    ld a, (ix+14)
    ld (ix+30), a
    ld (ix+29), $20
    ld (ix+27), $00
    ld (ix+28), $00
    ld a, (ix+9)
    ld (ix+26), a
    ld a, (ix+10)
    ld (ix+25), a
    jr _LABEL_5E0E_

+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    call tryToKillAlexIfColliding
+:
    ld hl, (v_horizontalScrollSpeed)
    ld a, h
    or l
    jr z, +
    ld d, (ix+31)
    ld e, (ix+3)
    add hl, de
    ld (ix+31), h
    ld (ix+3), l
    jr c, +
    inc (ix+26)
+:
    ld bc, $0002
    ld l, (ix+27)
    ld h, (ix+28)
    add hl, bc
    ld (ix+27), l
    ld (ix+28), h
    call _LABEL_4CE_
    ld a, (ix+9)
    cp $01
    jr nz, _LABEL_5E0E_
    set 1, (ix+1)
_LABEL_5E0E_:
    ld hl, _DATA_85A6_
    jp handleEntityAnimation
