updateAlexWalking:
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
    jr z, +
    call _LABEL_3A4F_
    jp nc, fall
    jr ++

+:
    ld a, $08
    call _LABEL_3A41_
    jp nc, fall
    call interactWithFloor
    ld a, (v_alex.state)
    cp ALEX_WALKING
    ret nz
++:
    ld a, (v_inputDataChanges)
    bit JOY_BTN2_BIT, a
    jr z, @noAction

    ld (ix + Entity.state), $01
    call resetEntityUnknown3AndAlexSpeed
    jp handleAction

@noAction:
    bit JOY_BTN1_BIT, a
    jp nz, jump

    bit 1, (ix + Entity.unknown3)
    jp nz, _LABEL_2C25_
    ld de, $0102
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, +
    ld d, $17
    call _LABEL_3A11_
    jr c, ++
    jr +++

+:
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    jr nc, +++
++:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit JOY_RIGHT_BIT, a
    jp nz, walkRight
    bit JOY_LEFT_BIT, a
    jr nz, _LABEL_2BDC_
    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

+++:
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr z, +
    set 2, (ix + Entity.unknown3)
    ld de, $FFC0
    ld bc, $FE00
    call _LABEL_3B2B_
_LABEL_2BDC_:
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
    jr nc, _LABEL_2BDC_

setAlexIdleStateAndLoadIdleAnimationDescriptor:
    ld a, $05
    ld (v_alex.animationTimerResetValue), a
    ld a, ALEX_IDLE
    ld (v_alex.state), a

loadAlexIdleAnimationDescriptor:
    ld hl, _DATA_90A7_
    ld a, (v_alex.unknown3)
    bit ALEX_UKNW3_FACING_RIGHT_BIT, a
    jp z, loadAlexSpriteDescriptor
    ld hl, _DATA_90BC_
    jp loadAlexSpriteDescriptor

+:
    set ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld de, $0040
    call _LABEL_3B61_
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

_LABEL_2C25_:
    ld de, $010E
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, +
    ld d, $17
    call _LABEL_3A11_
    jr c, ++
    jp +++

+:
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    jr nc, +++
++:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit JOY_LEFT_BIT, a
    jp nz, walkLeft
    bit JOY_RIGHT_BIT, a
    jr nz, _LABEL_2C6C_
    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

+++:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    set 2, (ix + Entity.unknown3)
    ld de, $0040
    ld bc, $0200
    call _LABEL_3B7E_
_LABEL_2C6C_:
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

+:
    bit JOY_LEFT_BIT, a
    jr nz, +
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit 2, (ix + Entity.unknown3)
    jp z, setAlexIdleStateAndLoadIdleAnimationDescriptor
    ld de, $FFE0
    call _LABEL_3BA1_
    jr c, _LABEL_2C6C_
    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

+:
    set 2, (ix + Entity.unknown3)
    res 0, (ix + Entity.unknown3)
    ld de, $FFC0
    call _LABEL_3BB1_
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor
