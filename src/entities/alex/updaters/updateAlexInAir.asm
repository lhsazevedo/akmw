updateAlexInAir:
    call interactWithTile

    ld a, (v_alex.state)
    cp ALEX_IN_AIR 
    ret nz

    ld a, (v_nametableEntryAttrLastThreeBits)
    or a
    jp nz, splash

    bit ALEX_UKNW8_PUNCH_BIT, (ix + Entity.unknown8)
    jr z, @notPunching

    call tickPunch
    jr nz, +++

    ld hl, alexAirLeftSpriteDescriptor
    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    jr z, @facingLeft
    ld hl, alexAirRightSpriteDescriptor
@facingLeft:
    call loadAlexSpriteDescriptor
    jr +++

@notPunching:
    ld a, (v_inputDataChanges)
    and JOY_FIREB
    call nz, handleAction

+++:
    bit ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown8)
    jp nz, updateAlexMovingInAir

    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, onJumpForceEnd

    dec (ix + Entity.stateTimer)
    jr z, onJumpForceEnd

    ld de, (v_alex.xSpeed)
    bit 7, d
    jr nz, @movingLeft

    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ex de, hl

@movingLeft:
    sra d
    rr e
    sra d
    rr e
    ld hl, -ALEX_JUMP_FORCE
    add hl, de
    ld (v_alex.ySpeed), hl

    ld de, $0104
    call _LABEL_3A7E_

    bit 7, (ix + Entity.unknown3)
    jr z, _LABEL_2D7F_

    set ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown8)
    jr _LABEL_2D7F_

onJumpForceEnd:
    set ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown8)
updateAlexMovingInAir:
    ld de, $0104
    call _LABEL_3A68_
    bit 6, (ix + Entity.unknown3)
    jr z, _LABEL_2D7F_

    res ALEX_UKNW3_MOVING_BIT, (ix + Entity.unknown8)

    ld a, $B1
    ld (v_soundControl), a
    ld a, (v_alex.unknown8)
    bit 0, a
    jr z, +
    bit 1, a
    jr nz, +
    res 2, (ix + Entity.unknown3)
    ld (ix + Entity.state), $01
    jp setAlexIdleStateAndLoadIdleAnimationDescriptor

+:
    bit 2, (ix + Entity.unknown3)
    jp z, setAlexIdleStateAndLoadIdleAnimationDescriptor
    call walk

_LABEL_2D7F_:
    bit ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
    jp nz, _LABEL_2DF3_
    ld de, $1802
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A11_
    jr c, +++
    jr ++

+:
    ld a, (v_alex.ySpeed.high)
    add a, $07
    ld d, a
    ld a, $08
    ld e, $02
    ld b, $01
    call _LABEL_39ED_
    jr c, +++
++:
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr nz, ++++
    bit JOY_RIGHT_BIT, a
    jr nz, +++++
    ld de, ALEX_AIR_FRICTION
    jp _LABEL_3B4B_

+++:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    set 1, (ix + Entity.unknown3)
    ret

++++:
    set 2, (ix + Entity.unknown3)
    ld de, -ALEX_AIR_ACCEL
    ld bc, -ALEX_AIR_MAX_SPEED
    jp accelerateAlexLeft

+++++:
    ld a, (v_alex.unknown3)
    set 0, a
    ld (v_alex.unknown3), a
    ld hl, alexAirRightSpriteDescriptor
    ld a, (v_alex.unknown8)
    and $03
    cp $01
    jr nz, +
    ld hl, alexPunchingRightSpriteDescriptor
+:
    call loadAlexSpriteDescriptor
    ld de, ALEX_AIR_BRAKE
    jp leftBrake

_LABEL_2DF3_:
    ld de, $180E
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A11_
    jr c, +++
    jr ++

+:
    ld a, (v_alex.ySpeed.high)
    add a, $07
    ld d, a
    ld a, $08
    ld b, $01
    call _LABEL_39ED_
    jr c, +++
++:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr nz, ++++
    bit JOY_LEFT_BIT, a
    jr nz, +++++
    ld de, -ALEX_AIR_FRICTION
    jp _LABEL_3B9C_

+++:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    res 1, (ix + Entity.unknown3)
    ret

++++:
    set 2, (ix + Entity.unknown3)
    ld de, ALEX_AIR_ACCEL
    ld bc, ALEX_AIR_MAX_SPEED
    jp accelerateAlexRight

+++++:
    ld a, (v_alex.unknown3)
    bit ALEX_UKNW3_FACING_RIGHT_BIT, a
    res ALEX_UKNW3_FACING_RIGHT_BIT, a
    ld (v_alex.unknown3), a
    ld hl, alexAirLeftSpriteDescriptor
    ld a, (v_alex.unknown8)
    and $03
    cp $01
    jr nz, +
    ld hl, alexPunchingLeftSpriteDescriptor
+:
    call loadAlexSpriteDescriptor
    ld de, -ALEX_AIR_BRAKE
    jp rightBrake
