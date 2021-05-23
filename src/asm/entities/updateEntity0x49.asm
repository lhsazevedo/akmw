; 73rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x49:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld a, (ix + Entity.jankenMatchDecision)
    add a, a
    ld c, a
    ld b, $00
    ld hl, _DATA_5D7E_ - 2
    add hl, bc
    ld a, (hl)
    ld (ix + Entity.unknown6), a
    inc hl
    ld a, (hl)
    ld (ix + Entity.unknown5), a
    ret

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    dec (ix + Entity.unknown6)
    ret nz
+:
    ld (ix + Entity.type), $48
    call _LABEL_5CA0_
    ld h, (ix + Entity.xSpeed.high)
    ld l, (ix + Entity.xSpeed.low)
    ld c, (ix + Entity.unknown5)
    ld b, $00
    add hl, bc
    ld (ix + Entity.xSpeed.high), h
    ld (ix + Entity.xSpeed.low), l
    ret
