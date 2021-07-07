; 97th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x61:
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor_DATA_80E1_
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor_DATA_80E1_
    ld a, (ix + Entity.isOffScreenFlags.high)
    or (ix + Entity.isOffScreenFlags.low)
    ret nz
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, (v_entities.27.type)
    ld c, a
    ld a, (v_entities.27.type)
    or c
    ret z
    ld hl, _DATA_3F00_
    ld bc, v_money
    call _LABEL_42D_
    ret c
    ld hl, _DATA_3F00_
    ld bc, v_money
    call _LABEL_41C_
    ld hl, v_entities.27
    call clearEntity
    ld hl, v_entities.28
    jp clearEntity

; Data from 3F00 to 3F02 (3 bytes)
_DATA_3F00_:
.db $50 $00 $00
