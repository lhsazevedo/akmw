updateEntity0x14:
    set 1, (ix + Entity.flags)
    ld a, (v_scrollFlags)
    and SCROLL_ANY
    ret nz
    dec (ix + Entity.data)
    ret nz
    ld a, (v_nametableChangeRequest)
    or a
    jr z, +
    inc (ix + Entity.data)
    ret

+:
    ld a, (ix + Entity.unknown7)
    ld (ix + Entity.data), a
    ld a, $A2
    ld (v_soundControl), a
    ld h, $00
    ld l, (ix + Entity.unknown10)
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, (ix + Entity.unknown8)
    ld d, (ix + Entity.unknown9)
    add hl, de
    ld a, (ix + Entity.unknown11)
    rrca
    dec a
    ld b, a
    ld a, (hl)
-:
    inc hl
    inc hl
    or (hl)
    djnz -
    jp nz, destroyCurrentEntity
    ld l, (ix + Entity.unknown8)
    ld h, (ix + Entity.unknown9)
    call _LABEL_4C23_
    ld (ix + Entity.unknown8), l
    ld (ix + Entity.unknown9), h
    ld (v_nametableChangeDestination), hl
    ld l, (ix + Entity.state)
    ld h, (ix + Entity.stateTimer)
    ld (nametableChangeSourceMetatile), hl
    ld l, (ix + Entity.unknown10)
    ld h, (ix + Entity.unknown11)
    ld (_RAM_C208_), hl
    ld a, $85
    ld (v_nametableChangeRequest), a
    ret
