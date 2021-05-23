; 65th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x41:
    call tryToKillAlexIfColliding
    ld h, (ix+16)
    ld l, (ix+15)
    ld de, $0008
    add hl, de
    ld (ix+16), h
    ld (ix+15), l
    ld a, h
    cp $FF
    ret z
    ld a, (ix+24)
    or a
    jr nz, +
    ld (ix+24), $01
    ld a, $9E
    ld (v_soundControl), a
+:
    ld a, (ix+4)
    cp $13
    jr nz, +
    ld a, (ix+5)
    cp $01
    jr nz, +
    ld (ix+0), $40
    res 0, (ix+1)
    ld (ix+24), $00
    ret

+:
    ld hl, _DATA_85E9_
    jp handleEntityAnimation
