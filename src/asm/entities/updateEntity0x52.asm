; 82nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x52:
    bit 0, (ix+1)
    jr nz, +
    set 0, (ix+1)
    ld a, (ix+3)
    ld hl, _DATA_644A_
    rst $10    ; _LABEL_10_
    ld a, (hl)
    or a
    jp nz, clearCurrentEntity
    ld a, (ix+3)
    ld hl, _DATA_6422_
    rst $10    ; _LABEL_10_
    ld (ix+7), l
    ld (ix+8), h
    ret

+:
    ld a, (ix+9)
    or (ix+10)
    ret nz
    set 1, (ix+1)
    ld iy, v_entity1
    call checkEntityCollision
    ret c
    ld a, $8F
    ld (v_soundControl), a
    ld a, (ix+3)
    ld hl, _DATA_644A_
    rst $10    ; _LABEL_10_
    set 0, (hl)
    ld a, (ix+3)
    or a
    jr z, ++
    cp $05
    jr z, +
    ld hl, _DATA_6436_
    rst $10    ; _LABEL_10_
    set 0, (hl)
    jp clearCurrentEntity

+:
    ld hl, v_lives
    ld a, (hl)
    add a, $01
    daa
    ld (hl), a
    jp clearCurrentEntity

++:
    ld a, $08
    ld (v_gameState), a
    ret
