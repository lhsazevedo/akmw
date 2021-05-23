; 42nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x2A:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $40
    ld (ix+6), $40
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_55ED_
    set 0, (ix+1)
    set 1, (ix+1)
    jp _LABEL_55ED_

+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr nc, _LABEL_55A5_
    jr _LABEL_55B6_
