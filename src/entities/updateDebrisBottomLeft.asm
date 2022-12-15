updateDebrisBottomLeft:
    bit 0, (ix + Entity.flags)
    jr nz, updateDebris

    ; Initialize bottom left debris
    set 0, (ix + Entity.flags)
    ld a, (v_entities.23.xPos.high)
    ld (ix + Entity.xPos.high), a
    ld a, (v_entities.23.yPos.high)
    add a, $08
    ld (ix + Entity.yPos.high), a
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $80
    ld (ix + Entity.ySpeed.high), $FF
    ld (ix + Entity.ySpeed.low), $80
    ld (ix + Entity.animationTimer), $08
    ld (ix + Entity.animationTimerResetValue), $08
    jr updateDebris
