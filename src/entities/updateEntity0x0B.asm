updateEntity0x0B:
    ld a, (ix + Entity.battleDecision)
    add a, a
    ld e, a
    ld d, $00
    ld hl, _DATA_763B_
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld (ix + Entity.spriteDescriptorPointer.low), a
    ld (ix + Entity.spriteDescriptorPointer.high), h
    ret
