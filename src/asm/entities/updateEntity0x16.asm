; 22nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x16:
    ld (ix+7), <_DATA_80E1_
    ld (ix+8), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    bit 0, (ix+1)
    jr z, _LABEL_4AC2_
    set 1, (ix+1)
    bit 4, (ix+1)
    jr nz, _LABEL_4A86_
    ld a, (v_entities.1.xPos.high)
    sub (ix+12)
    ret c
    cp $10
    ret nc
_LABEL_4A79_:
    ld a, $A0
    ld (v_soundControl), a
    set 4, (ix+1)
    ld (ix+5), $01
_LABEL_4A86_:
    dec (ix+5)
    ret nz
    ld a, (v_nametableChangeRequest)
    or a
    jr z, +
    inc (ix+5)
    ret

+:
    ld a, (ix+25)
    ld (ix+5), a
    ld a, (ix+31)
    add a, $04
    ld (ix+31), a
    ld h, a
    ld l, $02
    ld (_RAM_C208_), hl
    ld l, (ix+28)
    ld h, (ix+29)
    ld (_RAM_C204_), hl
    dec l
    dec l
    ld (ix+28), l
    ld a, $87
    ld (v_nametableChangeRequest), a
    dec (ix+24)
    jp z, clearCurrentEntity
    ret

_LABEL_4AC2_:
    ld e, (ix+12)
    ld a, (ix+14)
    add a, $10
    ld d, a
    call _LABEL_7C89_
    ld a, l
    and $FE
    ld (ix+28), a
    ld (ix+29), h
_LABEL_4AD7_:
    set 0, (ix+1)
    ld (ix+25), $03
    ld a, (ix+3)
    ld (ix+24), a
    ld (ix+31), $00
    ld (ix+30), $02
    ret
