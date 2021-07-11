; 16th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x10:
    ld hl, $BE9E
    ld bc, $0403
    ld (ix + Entity.unknown7), $0F
_LABEL_49FC_:
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor_DATA_80E1_
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor_DATA_80E1_
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    ld (ix + Entity.state), l
    ld (ix + Entity.stateTimer), h
    ld (ix + Entity.unknown11), b
    ld (ix + Entity.unknown10), c
    ld e, (ix + Entity.xPos.high)
    ld d, (ix + Entity.yPos.high)
    call _LABEL_7C89_
    ld a, l
    and $FC
    ld (ix + Entity.unknown8), a
    ld (ix + Entity.unknown9), h
    ld (ix + Entity.type), $14
    ret
