; 99th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x63:
    bit 0, (ix+1)
    jr z, +
    call _LABEL_7D0B_
    ret c
    ld hl, v_nametableChangeRequest
    ld a, (hl)
    or a
    ret nz
    ld (hl), $80
    ld hl, _DATA_14503_
    ld (v_pointerToANametableEntry_RAM_C206_), hl
    ld hl, _RAM_CC08_
    ld (_RAM_C204_), hl
    jp clearCurrentEntity

+:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (ix+9)
    or a
    ret nz
    ld a, (ix+1)
    or $03
    ld (ix+1), a
    ret
