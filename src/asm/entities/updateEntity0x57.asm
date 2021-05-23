; 87th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x57:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $10
    ld (ix+6), $10
    ld a, (ix+10)
    or (ix+9)
    jr nz, ++
    set 0, (ix+1)
    set 1, (ix+1)
+:
    call tryToKillAlexIfColliding
++:
    ld hl, _DATA_85A6_
    jp handleEntityAnimation
