updatePowerBracelet:
    ; Skip initialization if already initialized
    bit 0, (ix + Entity.flags)
    jr nz, +

    ; Initialize bracelet
    set 0, (ix + Entity.flags)
    ld (ix + Entity.battleDecision), POWER_BRACELET_LIFESPAN
    ld (ix + Entity.spriteDescriptorPointer.low), <powerBraceletSpriteDescriptor
    ld (ix + Entity.spriteDescriptorPointer.high), >powerBraceletSpriteDescriptor
    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
    ret

+:
    ; Destroy if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, destroyCurrentEntity

    ; Do not pickup if it isn't colliding with Alex
    ld iy, v_alex
    call checkEntityCollision
    jr c, +

    ; Pickup bracelet
    ld a, SOUND_POWERUP
    ld (v_soundControl), a
    ld a, $01
    ld (v_hasPowerBracelet), a
    ld hl, v_powerBraceletsPickedUpCounter
    inc (hl)
    jp destroyCurrentEntity

+:
    ; Tick timer, deleting when it reaches zero
    dec (ix + Entity.battleDecision)
    jp z, destroyCurrentEntity
    ret
