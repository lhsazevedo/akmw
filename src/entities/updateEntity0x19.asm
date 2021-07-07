; 25th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x19:
    call tryToKillAlexIfColliding
    bit 7, (iy+1)
    jr nz, +
    ld a, (ix + Entity.state)
    ld hl, _DATA_74DF_
    rst jumpToAthPointer
    ret
