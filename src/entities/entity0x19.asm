; 25th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x19:
    call tryToKillAlexIfColliding
    bit 7, (iy+1)
    jr nz, +
    ld a, (ix + Entity.state)
    ld hl, _DATA_74DF_
    rst jumpToAthPointer
    ret

; Jump Table from 74DF to 74EA (6 entries, indexed by _RAM_CF9A_)
_DATA_74DF_:
.dw _LABEL_7509_ _LABEL_7525_ _LABEL_7535_ _LABEL_7564_ _LABEL_756C_ _LABEL_7588_

+:
    res 7, (iy+1)
    ld (iy+26), $19
    ld (iy+24), $3C
    call audioEngine.handler_LABEL_99D3_
    ld a, SOUND_BATTLE_LOST
    ld (v_soundControl), a
    ld hl, v_entities.7
    call clearEntity
    inc hl
    jp clearEntity

; 1st entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7509_:
    set 1, (ix+1)
    ld (ix+7), <_DATA_974B_
    ld (ix+8), >_DATA_974B_
    ld (ix+16), $FF
    ld (ix+22), $08
    ld (ix+23), $01
    inc (ix + Entity.state)
    ret

; 2nd entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7525_:
    dec (ix+22)
    ret nz
    ld (ix+17), $00
    ld (ix+18), $FE
    inc (ix + Entity.state)
    ret

; 3rd entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7535_:
    ld l, (ix+17)
    ld h, (ix+18)
    ld de, $0040
    add hl, de
    ld (ix+17), l
    ld (ix+18), h
    bit 7, h
    ret nz
    ld de, $0200
    or a
    sbc hl, de
    ret c
-:
    ld (ix+17), e
    ld (ix+18), d
    inc (ix + Entity.state)
    ld a, (ix+23)
    add a, $02
    ld (ix+23), a
    ld (ix+22), a
    ret

; 4th entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7564_:
    dec (ix+22)
    ret nz
    inc (ix + Entity.state)
    ret

; 5th entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_756C_:
    ld l, (ix+17)
    ld h, (ix+18)
    ld de, $FFC0
    add hl, de
    ld (ix+17), l
    ld (ix+18), h
    bit 7, h
    ret z
    ld de, $FE00
    or a
    sbc hl, de
    jr c, -
    ret

; 6th entry of Jump Table from 74DF (indexed by _RAM_CF9A_)
_LABEL_7588_:
    dec (ix+22)
    ret nz
    ld (ix+26), $02
    ret
