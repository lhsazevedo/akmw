; 59th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x3B:
    bit 0, (ix+1)
    jp nz, updateDebris
    set 0, (ix+1)
    ld a, (_RAM_C5CC_)
    add a, $08
    ld (ix+12), a
    ld a, (_RAM_C5CE_)
    add a, $08
    ld (ix+14), a
    ld (ix+16), $00
    ld (ix+15), $80
    ld (ix+18), $FF
    ld (ix+17), $80
    ld (ix+5), $08
    ld (ix+6), $08
    jp updateDebris
