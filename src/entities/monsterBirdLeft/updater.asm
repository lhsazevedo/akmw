updateMonsterbirdLeft:
    ; Initialize entity or run main updater
    bit 0, (ix + Entity.flags)
    jr nz, +

    ; Initialize entity
    set 0, (ix + Entity.flags)
    ld (ix + Entity.unknown3), $04
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    jr ++

+:
    ; Do nothing if offscreen
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, ++

    ; Set X velocity
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed), $80

    ; @TODO
    set 1, (ix + Entity.flags)

    call tryToKillAlexIfColliding

    call isAlexAttackingEntity
    jp nc, killEnemy

    ; Turn right if colliding with terrain
    ld de, $0100
    ld a, $08
    call isEntityCollidingWithTerrainAtOffset
    jr nc, ++

    ld (ix + Entity.type), ENTITY_MONSTERBIRD_RIGHT
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $80

++:
    ld hl, monsterbirdLeftAnimationDescriptor

    jp handleEntityAnimation
