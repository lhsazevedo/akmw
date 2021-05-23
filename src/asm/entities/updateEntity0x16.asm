; 22nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x16:
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_80E1_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    bit 0, (ix + Entity.flags)
    jr z, _LABEL_4AC2_
    set 1, (ix + Entity.flags)
    bit 4, (ix + Entity.flags)
    jr nz, _LABEL_4A86_
    ld a, (v_entities.1.xPos.high)
    sub (ix + Entity.xPos.high)
    ret c
    cp $10
    ret nc
_LABEL_4A79_:
    ld a, $A0
    ld (v_soundControl), a
    set 4, (ix + Entity.flags)
    ld (ix + Entity.animationTimer), $01
_LABEL_4A86_:
    dec (ix + Entity.animationTimer)
    ret nz
    ld a, (v_nametableChangeRequest)
    or a
    jr z, +
    inc (ix + Entity.animationTimer)
    ret

+:
    ld a, (ix + Entity.unknown7)
    ld (ix + Entity.animationTimer), a
    ld a, (ix + Entity.unknown11)
    add a, $04
    ld (ix + Entity.unknown11), a
    ld h, a
    ld l, $02
    ld (_RAM_C208_), hl
    ld l, (ix + Entity.unknown8)
    ld h, (ix + Entity.unknown9)
    ld (_RAM_C204_), hl
    dec l
    dec l
    ld (ix + Entity.unknown8), l
    ld a, $87
    ld (v_nametableChangeRequest), a
    dec (ix + Entity.unknown6)
    jp z, clearCurrentEntity
    ret

_LABEL_4AC2_:
    ld e, (ix + Entity.xPos.high)
    ld a, (ix + Entity.yPos.high)
    add a, $10
    ld d, a
    call _LABEL_7C89_
    ld a, l
    and $FE
    ld (ix + Entity.unknown8), a
    ld (ix + Entity.unknown9), h
_LABEL_4AD7_:
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown7), $03
    ld a, (ix + Entity.data)
    ld (ix + Entity.unknown6), a
    ld (ix + Entity.unknown11), $00
    ld (ix + Entity.unknown10), $02
    ret
