; 10th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x0A:
    bit 7, (ix + Entity.flags)
    jr nz, _LABEL_4854_
    call _LABEL_4846_
    ret nc
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix + Entity.unknown3)
    ret z
    ld a, (ix + Entity.unknown3)
    and $3F
    ld (ix + Entity.unknown3), a
    ld (ix + Entity.type), $09
    ret
