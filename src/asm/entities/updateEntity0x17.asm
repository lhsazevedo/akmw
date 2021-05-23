; 23rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x17:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    bit 0, (ix+1)
    jr z, +
    set 1, (ix+1)
    bit 4, (ix+1)
    jp nz, _LABEL_4A86_
    call _LABEL_7D0B_
    ret c
    jp _LABEL_4A79_

+:
    ld de, $A074
    call _LABEL_7C89_
    dec hl
    ld (ix+28), l
    ld (ix+29), h
    jr _LABEL_4AD7_
