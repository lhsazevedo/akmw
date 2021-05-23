; 41st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x29:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+20), $12
    call getVelocitiesToPursuitAlex
    ld (ix+15), l
    ld (ix+16), h
    ld (ix+17), e
    ld (ix+18), d
    set 1, (ix+1)
    ld (ix+7), <_DATA_851D_
    ld (ix+8), >_DATA_851D_
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, clearCurrentEntity
    jp tryToKillAlexIfColliding
