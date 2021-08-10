updateAlexIdle:
    call resetEntityUnknown3AndAlexSpeed
    ; Reset alex ySpeed
    ld (v_alex.ySpeed), hl

    bit 4, (ix + Entity.unknown8)
    jp nz, _LABEL_3E0B_

    call _LABEL_3C45_

    ld a, (v_alex.state)
    cp ALEX_IDLE
    ret nz

    ld de, $1904

    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, @offScreen

    call _LABEL_3A4F_
    jp nc, fall
    jr @onGround

@offScreen:
    ld a, $08
    call _LABEL_3A41_
    jp nc, fall
    call _LABEL_3D07_
    ld a, (v_alex.state)
    cp ALEX_IDLE
    ret nz

@onGround:
    ld a, (_RAM_C213_)
    or a
    jp nz, _LABEL_3498_
    bit 0, (ix + Entity.unknown8)
    jr z, +
    bit 1, (ix + Entity.unknown8)
    jr nz, +
    call _LABEL_462E_
    ret nz
    jp _LABEL_2C04_

+:
    ld a, (v_inputDataChanges)

    bit JOY_BTN2_BIT, a
    jp nz, handleAction

    bit JOY_BTN1_BIT, a
    jp nz, jump

    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr nz, walkLeft
    
    bit JOY_RIGHT_BIT, a
    jr nz, walkRight

    ; Return if pressing down, else fall through to crouch
    bit JOY_DOWN_BIT, a
    ret z

crouch:
    ld (ix + Entity.state), ALEX_CROUCHED
    bit 0, (ix + Entity.unknown3)
    ld hl, _DATA_8DA7_
    jp z, loadAlexAnimationDescriptor
    ld hl, _DATA_8DBC_
    jp loadAlexAnimationDescriptor

walkLeft:
    res 1, (ix + Entity.unknown3)
--:
    res 0, (ix + Entity.unknown3)
    ld (ix + Entity.state), ALEX_WALKING
    ret

walkRight:
    set 1, (ix + Entity.unknown3)
-:
    set 0, (ix + Entity.unknown3)
    ld (ix + Entity.state), ALEX_WALKING
    ret

walk:
    bit 1, (ix + Entity.unknown3)
    jr z, --
    jr -
