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
    jr z, +

    set 2, (ix + Entity.unknown3)
    ld de, $FFC0
    ld bc, $FE00
    call accelerateAlexLeft

loadAlexWalkingLeftAnimationDescriptor:
    ld hl, alexWalkingLeftAnimationDescriptor
    jp loadAlexAnimationDescriptor

+:
    bit JOY_RIGHT_BIT, a
    jp nz, +

    bit JOY_DOWN_BIT, a
    jp nz, crouch

    bit 2, (ix + Entity.unknown3)
    jr z, setAlexIdleStateAndLoadIdleAnimationDescriptor

    ld de, $0020
    call _LABEL_3B50_
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

+:
    set ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld de, $0040
    call _LABEL_3B61_
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
    ld de, $0040 ; Acceleration
    ld bc, $0200 ; Max speed
    call accelerateAlexRight

loadAlexWalkingRightAnimationDescriptor:
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

onRightReleased:
    bit JOY_LEFT_BIT, a
    jr nz, @activeBrake

    bit JOY_DOWN_BIT, a
    jp nz, crouch

    bit ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown3)
    jp z, setAlexIdleStateAndLoadIdleAnimationDescriptor

    ; Friction brake
    ld de, $FFE0
    call _LABEL_3BA1_

    jr c, loadAlexWalkingRightAnimationDescriptor
    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

@activeBrake:
    ; Set moving bit just in case
    set ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown3)

    ; Make Alex face left when stopped
    res ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)

    ; Active brake
    ld de, $FFC0
    call _LABEL_3BB1_

    ; ?
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor
