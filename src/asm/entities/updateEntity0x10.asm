; 16th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x10:
    ld hl, $BE9E
    ld bc, $0403
    ld (ix+25), $0F
_LABEL_49FC_:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    ld (ix+26), l
    ld (ix+27), h
    ld (ix+31), b
    ld (ix+30), c
    ld e, (ix+12)
    ld d, (ix+14)
    call _LABEL_7C89_
    ld a, l
    and $FC
    ld (ix+28), a
    ld (ix+29), h
    ld (ix+0), $14
    ret
