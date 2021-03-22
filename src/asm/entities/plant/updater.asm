; 44th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updatePlant:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+7), <_DATA_856E_
    ld (ix+8), >_DATA_856E_
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+18), $FF
    ld (ix+17), $80
    ret

+:
    call tryToKillAlexIfColliding
    inc (ix+23)
    ld a, (ix+23)
    cp $40
    ret c
    ld a, (ix+18)
    cpl
    ld (ix+18), a
    ld a, (ix+17)
    cpl
    inc a
    ld (ix+17), a
    ld (ix+23), $00
    ret
