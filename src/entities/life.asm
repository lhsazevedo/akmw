Life.timer = Entity.battleDecision

updateLife:
    bit 0, (ix + Entity.flags)
    jr nz, @skipInit

    ; Mark as initialized
    set 0, (ix + Entity.flags)

    ld (ix + Life.timer), LIFE_LIFESPAN

    ld (ix + Entity.spriteDescriptorPointer.low), <lifeSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >lifeSpriteDescriptor

    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
    ret

    @skipInit:
    ; Clear if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, destroyCurrentEntity

    ld iy, v_alex
    call checkEntityCollision
    jr c, @notColliding

    ; Request sound
    ld a, SOUND_POWERUP
    ld (v_soundControl), a

    ; Increment lives
    ld hl, v_lives
    ld a, (hl)
    add a, $01
    daa

    ; Destroy itself
    ld (hl), a
    jp destroyCurrentEntity

    @notColliding:
    dec (ix + Life.timer)
    jp z, destroyCurrentEntity
    ret
