; 4th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x04:
    dec (ix+25)
    ret nz
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F6
    ld (hl), a
    jp clearCurrentEntity
