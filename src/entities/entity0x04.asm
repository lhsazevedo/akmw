updateEntity0x04:
    dec (ix + Entity.unknown7)
    ret nz
    ld hl, v_alex.unknown8
    ld a, (hl)
    and $F6
    ld (hl), a
    jp destroyCurrentEntity
