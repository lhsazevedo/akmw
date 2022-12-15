updateEntity0x43:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.animationFrame), $00
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, destroyCurrentEntity
    ld a, (ix + Entity.animationFrame)
    cp $03
    jr nz, +
    ld a, (ix + Entity.animationTimer)
    cp $01
    jr z, ++
+:
    ld hl, _DATA_8175_
    jp handleEntityAnimation

++:
    xor a
    ld (_RAM_C07F_), a
    ld a, (ix + Entity.unknown1)
    or a
    jp z, destroyCurrentEntity
    res 0, (ix + Entity.flags)
    ld (ix + Entity.type), $44
    ret
