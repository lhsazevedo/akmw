; 34th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateMermanBubbles:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown3), $12
    ld (ix + Entity.animationTimer), $08
    ld (ix + Entity.animationTimerResetValue), $08
    ld (ix + Entity.ySpeed.high), $FF
    ld a, (ix + Entity.jankenMatchDecision)
    ld c, a
    add a, a
    add a, c
    ld c, a
    ld b, $00
    ld hl, _DATA_52CF_
    add hl, bc
    ld a, (hl)
    ld (ix + Entity.ySpeed.low), a
    inc hl
    ld a, (hl)
    ld (ix + Entity.xSpeed.high), a
    inc hl
    ld a, (hl)
    ld (ix + Entity.xSpeed.low), a
    set 1, (ix + Entity.flags)
+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    call tryToKillAlexIfColliding
    ld a, (ix + Entity.yPos.high)
    cp $18
    jp c, clearCurrentEntity
+:
    ld hl, _DATA_825C_
    jp handleEntityAnimation
