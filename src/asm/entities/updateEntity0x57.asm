; 87th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x57:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    ld a, (ix + Entity.isOffScreenFlags.high)
    or (ix + Entity.isOffScreenFlags.low)
    jr nz, ++
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
+:
    call tryToKillAlexIfColliding
++:
    ld hl, _DATA_85A6_
    jp handleEntityAnimation
