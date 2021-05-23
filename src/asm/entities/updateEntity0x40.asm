; 64th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x40:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_85D5_
    ld (ix+8), >_DATA_85D5_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+24), $00
    ld (ix+16), $FF
    ld (ix+15), $00
    ld (ix+5), $01
    ld (ix+6), $01
    ld (ix+4), $00
    ret

+:
    call tryToKillAlexIfColliding
    inc (ix+24)
    ld a, (ix+24)
    cp $10
    ret c
    ld (ix+0), $41
    ld (ix+24), $00
    ret
