; 35th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateMerman:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $0A
    ld (ix+6), $0A
    ld a, (ix+9)
    or (ix+10)
    jr nz, ++
    set 0, (ix+1)
    ld (ix+18), $FF
    ld (ix+17), $C0
    set 1, (ix+1)
+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr nc, +++
-:
    inc (ix+23)
    ld a, (ix+23)
    cp $C0
    jr nz, ++
    ld (ix+23), $00
    ld a, (ix+18)
    cpl
    ld (ix+18), a
    ld a, (ix+17)
    cpl
    inc a
    ld (ix+17), a
    call spawnMermanBubbles
++:
    ld hl, _DATA_8211_
    jp handleEntityAnimation

+++:
    ld a, (v_entities.1.unknown8)
    bit 3, a
    jr z, -
    res 3, a
    ld (v_entities.1.unknown8), a
    inc (ix+3)
    ld a, (ix+3)
    cp $03
    jp nc, _LABEL_55A5_
    jr -
