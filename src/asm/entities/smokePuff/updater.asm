updateSmokePuff:
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
    jp nz, clearCurrentEntity
    ld a, (ix + Entity.animationFrame)
    cp $01
    jr nz, +
    ld a, (ix + Entity.animationTimer)
    cp $01
    jp z, clearCurrentEntity
+:
    ld hl, _DATA_8170_
    jp handleEntityAnimation
