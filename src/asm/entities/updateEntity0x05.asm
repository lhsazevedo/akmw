; 5th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x05:
    ld a, (_RAM_C369_)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, _LABEL_485A_
    ld de, $1004
    call _LABEL_4944_
    bit 6, (ix + Entity.unknown3)
    jr nz, ++
    ld de, $0642
    bit 1, (ix + Entity.unknown3)
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
    ld (ix + Entity.type), $06
    ld (ix + Entity.unknown10), $08
    ld (ix + Entity.unknown11), $0A
    ret
