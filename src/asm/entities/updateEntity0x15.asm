; 21st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x15:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    bit 0, (ix+1)
    jr z, _LABEL_4B7A_
    ld a, (ix+10)
    or (ix+9)
    jr nz, ++
    dec (ix+5)
    ret nz
    ld a, (v_nametableChangeRequest)
    or a
    jr z, +
    inc (ix+5)
    ret

+:
    ld (ix+5), $0F
    ld a, $86
    ld (v_nametableChangeRequest), a
    ld a, (ix+3)
    ld (_RAM_C209_), a
    ld l, (ix+28)
    ld h, (ix+29)
    ld (_RAM_C204_), hl
    dec (ix+24)
    jr z, ++
    call _LABEL_4C23_
    ld (ix+28), l
    ld (ix+29), h
    ret

++:
    call audio_LABEL_99D3_
    jp clearCurrentEntity

_LABEL_4B7A_:
    set 0, (ix+1)
    ld (ix+25), $01
    ld (ix+24), $12
    ld e, (ix+12)
    ld d, (ix+14)
    call _LABEL_7C89_
    ld a, l
    and $FE
    ld (ix+28), a
    ld (ix+29), h
    ld a, $9F
    ld (v_soundControl), a
    ret
