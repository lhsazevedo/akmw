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

    ; @TODO
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
    jr z, @skipPunch

    bit 1, (ix + Entity.unknown8)
    jr nz, @skipPunch

    call tickPunch

    ; Return if punch is not over yet.
    ret nz

    jp leadAlexIdleSpriteDescriptor

@skipPunch:
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

    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld hl, alexCrouchingLeftSpriteDescriptor
    jp z, loadAlexSpriteDescriptor

    ld hl, alexCrouchingRightSpriteDescriptor
    jp loadAlexSpriteDescriptor

walkLeft:
    res ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
--:
    res ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld (ix + Entity.state), ALEX_WALKING
    ret

walkRight:
    set ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
-:
    set ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld (ix + Entity.state), ALEX_WALKING
    ret

walk:
    bit ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
    jr z, --
    jr -
