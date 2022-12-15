updateEntity0x61:
    ld (ix + Entity.spriteDescriptorPointer.low), <nullSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >nullSpriteDescriptor
    ld a, (ix + Entity.isOffScreenFlags.high)
    or (ix + Entity.isOffScreenFlags.low)
    ret nz
    ld iy, v_alex
    call checkEntityCollision
    ret c
    ld a, (v_entities.27.type)
    ld c, a
    ld a, (v_entities.27.type)
    or c
    ret z
    ld hl, _DATA_3F00_
    ld bc, v_money
    call subtractBCDToA
    ret c
    ld hl, _DATA_3F00_
    ld bc, v_money
    call subtractBCD
    ld hl, v_entities.27
    call clearEntity
    ld hl, v_entities.28
    jp clearEntity

; Data from 3F00 to 3F02 (3 bytes)
_DATA_3F00_:
.db $50 $00 $00
