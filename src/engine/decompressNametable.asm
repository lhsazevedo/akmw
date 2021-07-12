decompressNametable:
    push de
    call @bitplane
    inc hl
    pop de
    inc de
    jp @bitplane

@bitplane:
    ld a, (hl)
    or a
    ret z

    bit 7, a
    jr nz, @rawType
    ld b, a
    inc hl
    ld a, (hl)
@runTypeLoop:
    ld (de), a
    inc de
    inc de
    djnz @runTypeLoop
    inc hl
    jp @bitplane

@rawType:
    and $7F
    ld b, a
@rawTypeLoop:
    inc hl
    ld a, (hl)
    ld (de), a
    inc de
    inc de
    djnz @rawTypeLoop
    inc hl
    jp @bitplane
