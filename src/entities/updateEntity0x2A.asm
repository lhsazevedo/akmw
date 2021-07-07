; 42nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x2A:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.animationTimer), $40
    ld (ix + Entity.animationTimerResetValue), $40
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_55ED_
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    jp _LABEL_55ED_

+:
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jr nc, _LABEL_55A5_
    jr _LABEL_55B6_
