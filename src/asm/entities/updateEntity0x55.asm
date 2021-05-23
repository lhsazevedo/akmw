; 85th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x55:
    bit 0, (ix+1)
    jr nz, +
    ld (ix+5), $08
    ld (ix+6), $08
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_63EA_
    ld (ix+15), $80
    ld (ix+16), $FF
    ld (ix+17), $00
    ld (ix+18), $FF
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+24), $0E
+:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix+24)
    xor $0C
    ld e, a
    ld d, $01
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld a, (ix+16)
    cpl
    ld (ix+16), a
    ld a, (ix+15)
    cpl
    inc a
    ld (ix+15), a
    ld a, (ix+24)
    xor $0C
    ld (ix+24), a
+:
    ld de, $1108
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    ld (ix+17), $00
    ld (ix+18), $FF
+:
    ld h, (ix+18)
    ld l, (ix+17)
    ld de, $0010
    add hl, de
    ld (ix+17), l
    ld (ix+18), h
_LABEL_63EA_:
    ld hl, _DATA_84C2_
    ld a, (ix+16)
    cp $FF
    jp nz, handleEntityAnimation
    ld hl, _DATA_84A1_
    jp handleEntityAnimation
