; 10th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x0A:
    bit 7, (ix+1)
    jr nz, _LABEL_4854_
    call _LABEL_4846_
    ret nc
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix+20)
    ret z
    ld a, (ix+20)
    and $3F
    ld (ix+20), a
    ld (ix+0), $09
    ret
