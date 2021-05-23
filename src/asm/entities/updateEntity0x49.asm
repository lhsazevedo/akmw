; 73rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x49:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld a, (ix+23)
    add a, a
    ld c, a
    ld b, $00
    ld hl, _DATA_5D7E_ - 2
    add hl, bc
    ld a, (hl)
    ld (ix+24), a
    inc hl
    ld a, (hl)
    ld (ix+22), a
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    jr nz, +
    dec (ix+24)
    ret nz
+:
    ld (ix+0), $48
    call _LABEL_5CA0_
    ld h, (ix+16)
    ld l, (ix+15)
    ld c, (ix+22)
    ld b, $00
    add hl, bc
    ld (ix+16), h
    ld (ix+15), l
    ret
