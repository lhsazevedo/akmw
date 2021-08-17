updateAlexWalking:
    ; Reset vertical velocity
    ld hl, $0000
    ld (v_alex.ySpeed), hl

    bit ALEX_UKNW8_JITTER_BIT, (ix + Entity.unknown8)
    jp nz, idleAndTickJitter

    call interactWithTile

    ld a, (v_alex.state)
    cp ALEX_WALKING
    ret nz

    ld de, $1904

    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, @onScreen

    ; Offscreen
    call _LABEL_3A4F_
    jp nc, fall
    jr @continue

@onScreen:
    ld a, $08
    call _LABEL_3A41_
    jp nc, fall

    call interactWithFloor

    ; Return if state changed
    ld a, (v_alex.state)
    cp ALEX_WALKING
    ret nz

@continue:
    ld a, (v_inputDataChanges)
    bit JOY_BTN2_BIT, a
    jr z, @noAction

    ; Idle on action
    ld (ix + Entity.state), ALEX_IDLE
    call resetEntityUnknown3AndAlexSpeed
    jp handleAction

@noAction:
    bit JOY_BTN1_BIT, a
    jp nz, jump

    bit ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
    jp nz, onMovingRightBit

    ; Left wall collision related
    ld de, $0102

    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, @onScreen2

    ; Offscreen
    ld d, $17
    call _LABEL_3A11_
    jr c, @pathBlocked
    jr @pathFree

@onScreen2:
    ; Left wall collision related
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    jr nc, @pathFree

@pathBlocked:
    call resetEntityUnknown3AndAlexSpeed

    ld a, (v_inputData)

    bit JOY_DOWN_BIT, a
    jp nz, crouch

    bit JOY_RIGHT_BIT, a
    jp nz, walkRight

    bit JOY_LEFT_BIT, a
    jr nz, loadAlexWalkingLeftAnimationDescriptor

    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

@pathFree:
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr z, onLeftReleased

    set 2, (ix + Entity.unknown3)
    ld de, -ALEX_ACCEL
    ld bc, -ALEX_MAX_SPEED
    call accelerateAlexLeft

loadAlexWalkingLeftAnimationDescriptor:
    ld hl, alexWalkingLeftAnimationDescriptor
    jp loadAlexAnimationDescriptor

onLeftReleased:
    bit JOY_RIGHT_BIT, a
    jp nz, onRightTurn

    bit JOY_DOWN_BIT, a
    jp nz, crouch

    bit 2, (ix + Entity.unknown3)
    jr z, setAlexIdleStateAndLoadIdleAnimationDescriptor

    ld de, ALEX_FRICTION
    call applyFrictionMovingLeft
    jr nc, loadAlexWalkingLeftAnimationDescriptor

setAlexIdleStateAndLoadIdleAnimationDescriptor:
    ld a, $05
    ld (v_alex.animationTimerResetValue), a
    ld a, ALEX_IDLE
    ld (v_alex.state), a

leadAlexIdleSpriteDescriptor:
    ld hl, alexIdleLeftSpriteDescriptor
    ld a, (v_alex.unknown3)
    bit ALEX_UKNW3_FACING_RIGHT_BIT, a
    jp z, loadAlexSpriteDescriptor
    ld hl, alexIdleRightSpriteDescriptor
    jp loadAlexSpriteDescriptor

onRightTurn:
    ; Set Alex facing right bit
    ; Will make Alex face right when stopped
    set ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)

    ; Activate brake
    ld de, ALEX_BRAKE
    call leftBrake
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

onMovingRightBit:
    ld de, $010E
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, @onScreen

    ld d, $17
    call _LABEL_3A11_
    jr c, @pathBlocked
    jp @pathFree

@onScreen:
    ld a, $0E
    ld b, $01

    ; Check if path is free.
    call _LABEL_39ED_
    jr nc, @pathFree

@pathBlocked:
    call resetEntityUnknown3AndAlexSpeed

    ld a, (v_inputData)

    bit JOY_DOWN_BIT, a
    jp nz, crouch

    bit JOY_LEFT_BIT, a
    jp nz, walkLeft

    bit JOY_RIGHT_BIT, a
    jr nz, loadAlexWalkingRightAnimationDescriptor

    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

@pathFree:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, onRightReleased

    set 2, (ix + Entity.unknown3)
    ld de, ALEX_ACCEL
    ld bc, ALEX_MAX_SPEED
    call accelerateAlexRight

loadAlexWalkingRightAnimationDescriptor:
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

onRightReleased:
    bit JOY_LEFT_BIT, a
    jr nz, @onLeftTurn

    bit JOY_DOWN_BIT, a
    jp nz, crouch

    bit ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown3)
    jp z, setAlexIdleStateAndLoadIdleAnimationDescriptor

    ; Friction brake
    ld de, -ALEX_FRICTION
    call applyFrictionMovingRight

    jr c, loadAlexWalkingRightAnimationDescriptor
    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

@onLeftTurn:
    ; Set moving bit just in case
    set ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown3)

    ; Reset Alex facing right bit
    ; Will make Alex face left when stopped
    res ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)

    ; Activate brake
    ld de, -ALEX_BRAKE
    call rightBrake

    ; ?
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

fall:
    ld a, (v_alex.unknown3)
    and $BF
    or $80
    set 2, (ix + Entity.unknown8)
    jr +

jump:
    ld a, SOUND_JUMP
    ld (v_soundControl), a

    ld (ix + Entity.stateTimer), $16
    ld a, (v_alex.unknown3)
    and $3F
+:
    ld (v_alex.unknown3), a
    bit ALEX_UKNW3_FACING_RIGHT_BIT, a

    ld (ix + Entity.state), ALEX_IN_AIR

    ld hl, alexAirLeftSpriteDescriptor  ; in air left sprite descriptor
    jr z, @left
    ld hl, alexAirRightSpriteDescriptor  ; in air right sprite descriptor
@left:
    call loadAlexSpriteDescriptor
