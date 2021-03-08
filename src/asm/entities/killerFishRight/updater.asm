; 53rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateKillerFishRight:
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_5249_
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld de, $0118
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld (ix+0), $2E
    jr _LABEL_5249_

+:
    inc (ix+24)
    ld a, (ix+24)
    cp $40
    jr nz, +
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
_LABEL_5249_:
    ld hl, _DATA_83D8_
    jp handleEntityAnimation
