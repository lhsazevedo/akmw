; 66th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x42:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_82BD_
    ld (ix+8), >_DATA_82BD_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+16), $FF
    ld (ix+15), $80
    ld (ix+18), $FF
    ld (ix+17), $00
    ld (ix+24), $02
    ld a, r
    and $07
    cp $04
    ret c
    ld (ix+24), $04
    ret

+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld h, (ix+18)
    ld l, (ix+17)
    ld d, $00
    ld e, (ix+24)
    add hl, de
    ld (ix+18), h
    ld (ix+17), l
    ld a, h
    bit 7, a
    ret nz
    ld (ix+7), <_DATA_82CB_
    ld (ix+8), >_DATA_82CB_
    ret
