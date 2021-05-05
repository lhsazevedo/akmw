; 36th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateOctopusArm:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld (ix+3), $00
    ld (ix+27), $C0
    ld (ix+28), $00
    ld (ix+29), $08
    ld (ix+16), $00
    ld (ix+15), $00
    ld (ix+18), $00
    ld (ix+17), $00
    ld (ix+7), <_DATA_84E3_
    ld (ix+8), >_DATA_84E3_
    ld a, (ix+9)
    ld (ix+26), a
    ld a, (ix+10)
    ld (ix+25), a
+:
    ld a, (ix+9)
    or (ix+10)
    jp nz, _LABEL_4CDE_
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp c, _LABEL_4CDE_
    ld a, (ix+21)
    or a
    jp nz, _LABEL_4D92_
    ld a, (v_entities.1.unknown8)
    bit 3, a
    jp z, _LABEL_4CDE_
    res 3, a
    ld (v_entities.1.unknown8), a
    inc (ix+3)
    ld a, (ix+3)
    cp $03
    jp c, _LABEL_4CDE_
    ld b, $08
    ld de, $0020
-:
    ld a, (ix+0)
    cp $24
    jr nz, +
    ld (ix+0), $2B
    res 0, (ix+1)
+:
    add ix, de
    djnz -
    ld a, $95
    ld (v_soundControl), a
    ld ix, $C3C0
    ld a, $83
    ld (v_nametableChangeRequest), a
    ld a, (v_level)
    cp $05
    jr c, +
    ld a, $84
    ld (v_nametableChangeRequest), a
    ret

+:
    ld a, (v_currentScreenNumber)
    and $7F
    cp $03
    ret c
    ld a, $84
    ld (v_nametableChangeRequest), a
    ret

_LABEL_4CDE_:
    ld bc, $0000
    ld a, (ix+22)
    or a
    jr z, +
    dec (ix+22)
    jr ++

+:
    ld bc, $0002
    ld a, (ix+24)
    ld d, a
    or a
    jr z, +
    ld bc, $FFFE
+:
    inc (ix+23)
    ld a, (ix+23)
    cp $60
    jr c, ++
    ld a, d
    cpl
    ld (ix+24), a
    ld (ix+23), $00
++:
    ld a, (ix+21)
    or a
    jr z, +
    ld hl, (_RAM_C0F4_)
    ld (ix+31), h
    ld (ix+30), l
    ld a, (_RAM_C0FF_)
    ld (ix+25), a
    ld a, (_RAM_C0FB_)
    ld (ix+26), a
    jp _LABEL_4D67_

+:
    ld hl, (v_horizontalScrollSpeed)
    ld a, h
    or l
    jr z, +
    ld d, (ix+31)
    ld e, (ix+6)
    add hl, de
    ld (ix+31), h
    ld (ix+6), l
    jr c, _LABEL_4D67_
    inc (ix+26)
    jr _LABEL_4D67_

+:
    ld hl, (v_verticalScrollSpeed)
    ld a, h
    or l
    jr z, _LABEL_4D67_
    ld d, (ix+30)
    ld e, (ix+2)
    ex de, hl
    or a
    sbc hl, de
    ld (ix+30), h
    ld (ix+2), l
    jr nc, _LABEL_4D67_
    ld a, h
    sub $40
    ld (ix+30), a
    dec (ix+25)
_LABEL_4D67_:
    ld l, (ix+27)
    ld h, (ix+28)
    add hl, bc
    ld (ix+27), l
    ld (ix+28), h
    call _LABEL_4CE_
    ld h, (ix+12)
    ld l, (ix+14)
    ld (_RAM_C0F4_), hl
    ld a, (ix+10)
    ld (_RAM_C0FF_), a
    ld a, (ix+9)
    ld (_RAM_C0FB_), a
    cp $01
    jp z, clearCurrentEntity
    ret

_LABEL_4D92_:
    ld a, (v_entities.1.unknown8)
    bit 3, a
    jp z, _LABEL_4CDE_
    res 3, a
    ld (v_entities.1.unknown8), a
    inc (ix+3)
    ld a, (ix+3)
    cp $03
    jp c, _LABEL_4CDE_
    jp _LABEL_55A5_
