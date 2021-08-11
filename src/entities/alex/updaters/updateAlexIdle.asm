updateAlexIdle:
    call resetEntityUnknown3AndAlexSpeed
    ; Reset alex ySpeed
    ld (v_alex.ySpeed), hl

    bit ALEX_UKNW8_JITTER_BIT, (ix + Entity.unknown8)
    jp nz, tickJitter

    call interactWithTile

    ; Return if state changed
    ld a, (v_alex.state)
    cp ALEX_IDLE
    ret nz

    ld de, $1904

    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, @onScreen

    call _LABEL_3A4F_
    jp nc, fall
    jr @onGround

@onScreen:
    ld a, $08
    call _LABEL_3A41_
    jp nc, fall

    call interactWithFloor

    ld a, (v_alex.state)
    cp ALEX_IDLE
    ret nz

@onGround:
    ld a, (v_nametableEntryAttrLastThreeBits)
    or a
    jp nz, splash

    bit ALEX_UKNW8_PUNCH_BIT, (ix + Entity.unknown8)
    jr z, +

    bit 1, (ix + Entity.unknown8)
    jr nz, +

    call tickPunch

    ; Return if punch is not over yet.
    ret nz

    jp loadAlexIdleAnimationDescriptor

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

    ; Return if pressing down,
    ; else fall through to crouch
    bit JOY_DOWN_BIT, a
    ret z

crouch:
    ld (ix + Entity.state), ALEX_CROUCHED
    bit 0, (ix + Entity.unknown3)
    ld hl, _DATA_8DA7_
    jp z, loadAlexSpriteDescriptor
    ld hl, _DATA_8DBC_
    jp loadAlexSpriteDescriptor

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
