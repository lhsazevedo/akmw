; Shared, Fallthrough
_LABEL_54DF_:
    ld a, (ix + Entity.type)
    ld (ix + Entity.unknown9), a
    ld a, (ix + Entity.xSpeed.low)
    ld (ix + Entity.unknown10), a
    ld a, (ix + Entity.xSpeed.high)
    ld (ix + Entity.unknown11), a
    ld (ix + Entity.xSpeed.high), $01
    ld (ix + Entity.xSpeed.low), $00
    bit 7, a
    jr nz, +
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $00
+:
    ld (ix + Entity.type), $4A
    ld (ix + Entity.jankenMatchDecision), $08
    inc (ix + Entity.unknown5)
    ld a, $8B
    ld (v_soundControl), a
; 74th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x4A:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    ld a, (v_entities.1.state)
    cp ALEX_DEAD
    jp z, _LABEL_5571_
+:
    ld a, (ix + Entity.unknown5)
    cp $08
    jr nc, updateOpponentDefeated
    dec (ix + Entity.jankenMatchDecision)
    ret nz
    res 0, (ix + Entity.flags)
    ld a, (ix + Entity.unknown9)
    ld (ix + Entity.type), a
    ld a, (ix + Entity.unknown10)
    ld (ix + Entity.xSpeed.low), a
    ld a, (ix + Entity.unknown11)
    ld (ix + Entity.xSpeed.high), a
    ret
