; 67th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x43:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+4), $00
    ld (ix+5), $10
    ld (ix+6), $10
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $00
    ld (ix+17), $00
+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, clearCurrentEntity
    ld a, (ix+4)
    cp $03
    jr nz, +
    ld a, (ix+5)
    cp $01
    jr z, ++
+:
    ld hl, _DATA_8175_
    jp handleEntityAnimation

++:
    xor a
    ld (_RAM_C07F_), a
    ld a, (ix+2)
    or a
    jp z, clearCurrentEntity
    res 0, (ix+1)
    ld (ix+0), $44
    ret
