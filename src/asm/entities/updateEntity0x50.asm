; 80th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x50:
    ld (ix+7), <_DATA_802F_
    ld (ix+8), >_DATA_802F_
    ld a, (_RAM_C07F_)
    or a
    ret nz
    bit 0, (ix+1)
    jr nz, +
    ld (ix+14), $88
    ld iy, _RAM_C3A0_
    ld (iy+0), $44
    ld (iy+12), $98
    ld (iy+14), $60
    ld a, $0E
    ld hl, _DATA_802A_
    jp _LABEL_60D4_

+:
    bit 1, (ix+1)
    ret nz
    set 1, (ix+1)
    ld a, $A3
    ld (v_soundControl), a
    ret
