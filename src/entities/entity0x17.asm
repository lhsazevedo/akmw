updateEntity0x17:
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor
    ld a, (v_scrollFlags)
    and SCROLL_ANY
    ret nz
    bit 0, (ix + Entity.flags)
    jr z, +
    set 1, (ix + Entity.flags)
    bit 4, (ix + Entity.flags)
    jp nz, _LABEL_4A86_
    call isAlexAttackingEntity
    ret c
    jp _LABEL_4A79_

+:
    ld de, $A074
    call _LABEL_7C89_
    dec hl
    ld (ix + Entity.unknown8), l
    ld (ix + Entity.unknown9), h
    jr _LABEL_4AD7_
