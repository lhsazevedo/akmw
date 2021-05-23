; 20th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x14:
    set 1, (ix+1)
    ld a, (v_scrollFlags)
    and $0F
    ret nz
    dec (ix+3)
    ret nz
    ld a, (v_nametableChangeRequest)
    or a
    jr z, +
    inc (ix+3)
    ret

+:
    ld a, (ix+25)
    ld (ix+3), a
    ld a, $A2
    ld (v_soundControl), a
    ld h, $00
    ld l, (ix+30)
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, (ix+28)
    ld d, (ix+29)
    add hl, de
    ld a, (ix+31)
    rrca
    dec a
    ld b, a
    ld a, (hl)
-:
    inc hl
    inc hl
    or (hl)
    djnz -
    jp nz, clearCurrentEntity
    ld l, (ix+28)
    ld h, (ix+29)
    call _LABEL_4C23_
    ld (ix+28), l
    ld (ix+29), h
    ld (_RAM_C204_), hl
    ld l, (ix+26)
    ld h, (ix+27)
    ld (v_pointerToANametableEntry_RAM_C206_), hl
    ld l, (ix+30)
    ld h, (ix+31)
    ld (_RAM_C208_), hl
    ld a, $85
    ld (v_nametableChangeRequest), a
    ret
