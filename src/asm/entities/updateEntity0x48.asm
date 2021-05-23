; 72nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x48:
    ld a, (ix+12)
    cp $D8
    jr nc, ++
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr c, +
    inc (ix+23)
    ld a, (ix+23)
    cp $08
    jp nc, _LABEL_5D7B_
    ld a, $8B
    ld (v_soundControl), a
    ld (ix+0), $49
    res 0, (ix+1)
    ld (ix+7), <_DATA_840A_
    ld (ix+8), >_DATA_840A_
    jp _LABEL_5CA0_

+:
    ld hl, _DATA_8405_
    jp handleEntityAnimation

++:
    ld (ix+0), $46
    jp _LABEL_5CA0_
