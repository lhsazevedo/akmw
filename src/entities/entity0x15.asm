updateEntity0x15:
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor
    ld a, (v_scrollFlags)
    and SCROLL_ANY
    ret nz
    bit 0, (ix + Entity.flags)
    jr z, _LABEL_4B7A_
    ld a, (ix + Entity.isOffScreenFlags.high)
    or (ix + Entity.isOffScreenFlags.low)
    jr nz, ++
    dec (ix + Entity.animationTimer)
    ret nz
    ld a, (v_nametableChangeRequest)
    or a
    jr z, +
    inc (ix + Entity.animationTimer)
    ret

+:
    ld (ix + Entity.animationTimer), $0F
    ld a, $86
    ld (v_nametableChangeRequest), a
    ld a, (ix + Entity.data)
    ld (_RAM_C209_), a
    ld l, (ix + Entity.unknown8)
    ld h, (ix + Entity.unknown9)
    ld (v_nametableChangeDestination), hl
    dec (ix + Entity.unknown6)
    jr z, ++
    call _LABEL_4C23_
    ld (ix + Entity.unknown8), l
    ld (ix + Entity.unknown9), h
    ret

++:
    call audioEngine.handler_LABEL_99D3_
    jp destroyCurrentEntity

_LABEL_4B7A_:
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown7), $01
    ld (ix + Entity.unknown6), $12
    ld e, (ix + Entity.xPos.high)
    ld d, (ix + Entity.yPos.high)
    call _LABEL_7C89_
    ld a, l
    and $FE
    ld (ix + Entity.unknown8), a
    ld (ix + Entity.unknown9), h
    ld a, $9F
    ld (v_soundControl), a
    ret
