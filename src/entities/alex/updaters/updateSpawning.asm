updateAlexSpawningAtCenter:
    ld (ix + Entity.xPos.high), $80
    ld (ix + Entity.yPos.high), $60

updateAlexSpawning:
    set 0, (ix + Entity.flags)
    ld (ix + Entity.flags), $00

    ld (ix + Entity.unknown3), ALEX_UKNW3_FACING_RIGHT | ALEX_UKNW3_MOVING_RIGHT
    ld (ix + Entity.animationTimer), $01

    ld a, (v_shouldAlexStartWalkingtoNextScreen)
    or a
    jp nz, startAutoWalkRight

    ld a, (v_shouldSpawnRidingBoat_RAM_C051_)
    or a
    jr nz, spawnRidingBoat

    ld a, (v_alexActionState)
    cp ALEX_C054_RIDING_MOTORCYCLE
    jr z, spawnRidingMotorcycle

    cp ALEX_C054_FLYING_PETICOPTER
    jr z, spawnFlyingPeticopter

    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08
    call setAlexIdleStateAndLoadIdleAnimationDescriptor
    ret

spawnRidingMotorcycle:
    ld a, SOUND_BIKE_SONG
    ld (v_soundControl), a

    ld hl, $0040
    ld (v_alex.xSpeed), hl

    ld (ix + Entity.animationTimerResetValue), $04
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $0F
    ld (ix + Entity.state), ALEX_RIDING_MOTORCYCLE
    ld hl, alexRidingMotorcycleFrame1SpriteDescriptor
    jp loadAlexSpriteDescriptor

spawnFlyingPeticopter:
    ld (ix + Entity.state), ALEX_FLYING_PETICOPTER

    ld a, SOUND_PETICOPTER_SONG
    ld (v_soundControl), a

    ld a, (v_alex.yPos.high)
    sub $10
    ld (v_alex.yPos.high), a

    ld (ix + Entity.animationTimerResetValue), $04
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08

    ld a, (v_level)
    cp $0D
    ld hl, alexFlyingPeticopterRightFrame0SpriteDescriptor
    jp nz, loadAlexSpriteDescriptor

    ld (ix + Entity.unknown3), $00
    ld hl, alexFlyingPeticopterLeftFrame0SpriteDescriptor
    jp loadAlexSpriteDescriptor


spawnRidingBoat:
    ld hl, $0040
    ld (v_alex.xSpeed), hl
    ld (ix + Entity.yPos.high), $90
    ld (ix + Entity.animationTimerResetValue), $04
    ld (ix + Entity.unknown11), $10
    ld (ix + Entity.unknown9), $0F
    ld (ix + Entity.state), ALEX_RIDING_BOAT

    ld a, ALEX_C054_RIDING_BOAT
    ld (v_alexActionState), a

    ld hl, alexRidingBoatFrame0SpriteDescriptor
    jp loadAlexSpriteDescriptor
