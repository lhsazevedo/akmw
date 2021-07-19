; 99th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x63:
    bit 0, (ix + Entity.flags)
    jr z, +
    call checkAlexEntityCollision_LABEL_7D0B_
    ret c
    ld hl, v_nametableChangeRequest
    ld a, (hl)
    or a
    ret nz
    ld (hl), $80
    ld hl, _DATA_14503_
    ld (v_pointerToANametableEntry_RAM_C206_), hl
    ld hl, _RAM_CC08_
    ld (_RAM_C204_), hl
    jp destroyCurrentEntity

+:
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor
    ld a, (ix + Entity.isOffScreenFlags.low)
    or a
    ret nz
    ld a, (ix + Entity.flags)
    or $03
    ld (ix + Entity.flags), a
    ret
