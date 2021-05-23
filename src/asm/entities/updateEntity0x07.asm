; 7th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x07:
    ld a, (_RAM_C369_)
    or (ix+10)
    jp nz, _LABEL_485A_
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix+20)
    jr nz, ++
    ld de, $0642
    bit 1, (ix+20)
    jr z, +
    ld e, $0E
+:
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    ld hl, $0000
    ld (_RAM_C36F_), hl
    ret

++:
    res 1, (ix+1)
    ld a, $AB
    ld (v_soundControl), a
    ld (ix+0), $08
    ld hl, $8CD2
    ld (_RAM_C367_), hl
    ld hl, $04B0
    ld (_RAM_C37B_), hl
    ld hl, $0000
    ld (_RAM_C36F_), hl
    ld (_RAM_C371_), hl
    ret
