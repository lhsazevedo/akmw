; 59th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateDebrisBottomRight:
    bit 0, (ix + Entity.flags)
    jp nz, updateDebris

    ; Initialize bottom right debris
    set 0, (ix + Entity.flags)
    ld a, (v_entities.23.xPos.high)
    add a, $08
    ld (ix + Entity.xPos.high), a
    ld a, (v_entities.23.yPos.high)
    add a, $08
    ld (ix + Entity.yPos.high), a
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $80
    ld (ix + Entity.ySpeed.high), $FF
    ld (ix + Entity.ySpeed.low), $80
    ld (ix + Entity.animationTimer), $08
    ld (ix + Entity.animationTimerResetValue), $08
    jp updateDebris
