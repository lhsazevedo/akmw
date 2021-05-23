; 84th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x54:
    bit 0, (ix+1)
    jr nz, _LABEL_62F5_
    ld (ix+5), $08
    ld (ix+6), $08
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_6341_
    set 0, (ix+1)
    set 1, (ix+1)
    ld (ix+23), $00
    ld (ix+22), $30
    ld (ix+24), $0E
    ld (ix+15), $60
    ld (ix+16), $00
    ld a, (v_entities.1.xPos.high)
    cp (ix+12)
    jr nc, _LABEL_62F5_
    ld (ix+24), $02
    ld (ix+15), $A0
    ld (ix+16), $FF
_LABEL_62F5_:
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld d, $01
    ld e, (ix+24)
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
    jr ++

+:
    ld a, (ix+24)
    xor $0C
    ld e, a
    ld d, $11
    call getTileNearEntityWithXYOffset
    rlca
    jr c, _LABEL_6341_
    ld h, (ix+23)
    ld l, (ix+22)
    ld de, $0010
    add hl, de
    ld (ix+23), h
    ld (ix+22), l
    ld (ix+18), h
    ld (ix+17), l
    jr _LABEL_6351_

_LABEL_6341_:
    ld (ix+23), $00
    ld (ix+22), $30
    ld (ix+17), $00
    ld (ix+18), $00
_LABEL_6351_:
    ld hl, _DATA_8585_
    jp handleEntityAnimation

++:
    ld (ix+24), $02
    ld a, (ix+16)
    cp $FF
    jr z, _LABEL_6351_
    ld (ix+24), $0E
    jr _LABEL_6351_
