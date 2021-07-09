; 1st entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexSpawningAtCenter:
    ld (ix + Entity.xPos.high), $80
    ld (ix + Entity.yPos.high), $60
updateAlexSpawning:
    set 0, (ix + Entity.flags)
    ld (ix + Entity.flags), $00
    ld (ix + Entity.unknown3), $03
    ld (ix + Entity.animationTimer), $01
    ld a, (v_shouldAlexStartWalkingtoNextScreen)
    or a
    jp nz, startAutoWalkRight
    ld a, (v_shouldSpawnRidingBoat_RAM_C051_)
    or a
    jr nz, _spawnRidingBoat
    ld a, (_RAM_C054_)
    cp $07
    jr z, _spawnRidingMotorcycle
    cp $09
    jr z, _spawnFlyingPeticopter
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08
    call alex_LABEL_2BFA_
    ret

_spawnRidingMotorcycle:
    ld a, $85
    ld (v_soundControl), a
    ld hl, $0040
    ld (v_alex.xSpeed), hl
    ld (ix + Entity.animationTimerResetValue), $04
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $0F
    ld (ix + Entity.state), ALEX_RIDING_MOTORCYCLE
    ld hl, _DATA_8F2A_
    jp loadAlexAnimationDescriptor

_spawnFlyingPeticopter:
    ld (ix + Entity.state), ALEX_FLYING_PETICOPTER
    ld a, $88
    ld (v_soundControl), a
    ld a, (v_alex.yPos.high)
    sub $10
    ld (v_alex.yPos.high), a
    ld (ix + Entity.animationTimerResetValue), $04
    ld (ix + Entity.unknown11), $18
    ld (ix + Entity.unknown9), $08
    ld a, (v_level)
    cp $0D
    ld hl, _DATA_9011_
    jp nz, loadAlexAnimationDescriptor
    ld (ix + Entity.unknown3), $00
    ld hl, _DATA_8F7B_
    jp loadAlexAnimationDescriptor


_spawnRidingBoat:
    ld hl, $0040
    ld (v_alex.xSpeed), hl
    ld (ix + Entity.yPos.high), $90
    ld (ix + Entity.animationTimerResetValue), $04
    ld (ix + Entity.unknown11), $10
    ld (ix + Entity.unknown9), $0F
    ld (ix + Entity.state), ALEX_RIDING_BOAT
    ld a, $08
    ld (_RAM_C054_), a
    ld hl, _DATA_9152_
    jp loadAlexAnimationDescriptor
