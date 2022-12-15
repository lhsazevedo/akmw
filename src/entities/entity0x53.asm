updateEntity0x53:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor
    ld a, (v_scrollFlags)
    or a
    ret nz
    set 0, (ix + Entity.flags)
    ld a, $07
    ld (v_gameState), a
    ld a, $11
    ld (v_textBoxMessageIndex), a
    ld a, (v_hasLetterToNibana)
    or a
    ret z
    ld a, $10
    ld (v_textBoxMessageIndex), a
    ret

+:
    bit 1, (ix + Entity.flags)
    ret nz
    set 1, (ix + Entity.flags)
    ld iy, v_entities.27
    ld b, $4F
    ld de, $30D8
    ld a, (v_hasLetterToNibana)
    or a
    jr z, +
    ld b, $52
    ld de, $8858
    ld (iy+3), $03
+:
    ld (iy+0), b
    ld (iy+12), e
    ld (iy+14), d
    ret
