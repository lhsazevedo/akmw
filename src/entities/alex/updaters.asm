.INCLUDE "entities/alex/updaters/updateAlexIdle.asm"
.INCLUDE "src/entities/alex/updaters/updateAlexWalking.asm"
.INCLUDE "src/entities/alex/updaters/updateAlexInAir.asm"

updateAlexCrouched:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    bit 4, (ix + Entity.unknown8)
    jp nz, tickJitter
    call interactWithTile
    ld a, (v_alex.state)
    cp ALEX_CROUCHED
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
++:
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jr nz, +
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jp nz, _LABEL_2F22_
    ld de, $0004
    ld a, $08
    call _LABEL_3A41_
    jp nc, _LABEL_2F22_
+:
    bit 2, (ix + Entity.unknown3)
    jr z, +
    bit ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
    jp nz, _LABEL_2F2C_
    ld de, $0902
    ld a, $0D
    call _LABEL_3A03_
    jp c, resetEntityUnknown3AndAlexSpeed
    ld de, $0020
    jp _LABEL_3B4B_

+:
    ld a, (v_inputData)
    ld c, a
    ld a, (v_alex.unknown3)
    and $FB
    bit JOY_LEFT_BIT, c
    jr nz, ++
    bit JOY_RIGHT_BIT, c
    ret z
    bit JOY_DOWN_BIT, c
    jr nz, +
    ld de, $090E
    ld a, $0D
    call _LABEL_3A03_
    jr c, +
    ld hl, $0020
    ld (v_alex.xSpeed), hl
    set 2, a
+:
    or ALEX_UKNW3_FACING_RIGHT | ALEX_UKNW3_MOVING_RIGHT
    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld (v_alex.unknown3), a
    ret nz
    ld hl, alexCrouchingRightSpriteDescriptor
    jp loadAlexSpriteDescriptor

++:
    bit 1, c
    jr nz, +
    ld de, $0902
    ld a, $0D
    call _LABEL_3A03_
    jr c, +
    ld hl, $FFE0
    ld (v_alex.xSpeed), hl
    set 2, a
+:
    and $FC
    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld (v_alex.unknown3), a
    ret z
    ld hl, alexCrouchingLeftSpriteDescriptor
    jp loadAlexSpriteDescriptor

_LABEL_2F22_:
    bit 2, (ix + Entity.unknown3)
    jp z, setAlexIdleStateAndLoadIdleAnimationDescriptor
    jp walk

_LABEL_2F2C_:
    ld de, $090E
    ld a, $0D
    call _LABEL_3A03_
    jp c, resetEntityUnknown3AndAlexSpeed
    ld de, $FFE0
    call applyFrictionMovingRight
    jp nc, resetEntityUnknown3AndAlexSpeed
    ret

_LABEL_2F41_:
    res 7, (ix + Entity.flags)
    ld a, (v_alex.state)
    cp ALEX_FLYING_PETICOPTER
    jp z, _LABEL_388E_
    cp ALEX_RIDING_BOAT
    jp z, _LABEL_388E_
    cp ALEX_RIDING_BOAT_IN_AIR
    jp z, _LABEL_388E_
    xor a
    ld h, a
    ld l, a
    ld (v_alex.xSpeed), hl
    ld (v_alex.unknown8), a
    ld (_RAM_C054_), a
    res 2, (ix + Entity.unknown3)
    ld hl, $FF38
    ld (v_alex.ySpeed), hl
    ld a, (v_alex.state)
    ld (v_alexStateBeforeHit), a
    ld (ix + Entity.state), ALEX_DEAD
    ld (ix + Entity.animationTimerResetValue), $05
    ld b, $1E
-:
    ld a, $01
    call waitForInterrupt
    djnz -
    ld a, SOUND_DEAD
    ld (v_soundControl), a
    ret

; 16th entry of Jump Table from 2982 (indexed by v_alex.state)
.INCLUDE "entities/alex/updaters/updateDead.asm"

; 9th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexRidingMotorcycle:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ld de, $0C0C
    call interactWithTileAtOffset
    ld de, $1805
    ld a, $0F
    call _LABEL_3A41_
    jp nc, _LABEL_3013_
    ld a, (v_inputDataChanges)
    bit 4, a
    jp nz, _LABEL_301D_
    ld a, (v_alex.xSpeed.high)
    cpl
    add a, $07
    ld (v_alex.animationTimerResetValue), a
    ld hl, alexRidingMotorcycleAnimationDescriptor
    call loadAlexAnimationDescriptor
_LABEL_2FD5_:
    ld de, $0214
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, +
    rlca
    jp nc, _LABEL_43F2_
    call _LABEL_4578_
    jr ++

+:
    ld de, $1218
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, ++
    rlca
    jp nc, _LABEL_43F2_
    call _LABEL_4578_
++:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    ld de, $0040
    ld bc, $0400
    jp accelerateAlexRight

+:
    bit 2, a
    ret z
    ld de, $FFC0
    ld bc, $0100
    jp _LABEL_3BCF_

_LABEL_3013_:
    set 7, (ix + Entity.unknown3)
    set 2, (ix + Entity.unknown8)
    jr +

_LABEL_301D_:
    ld (ix + Entity.stateTimer), $10
    res 7, (ix + Entity.unknown3)
+:
    ld (ix + Entity.state), ALEX_RIDING_MOTORCYCLE_IN_AIR
    ld hl, _DATA_8F60_
    call loadAlexSpriteDescriptor
; 10th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_302F:
    ld de, $0C0C
    call interactWithTileAtOffset
    bit 2, (ix + Entity.unknown8)
    jr nz, ++
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, +
    dec (ix + Entity.stateTimer)
    jr z, +
    ld de, (v_alex.xSpeed)
    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ex de, hl
    sra d
    rr e
    ld hl, $FE00
    add hl, de
    ld (v_alex.ySpeed), hl
    ld de, $0102
    call _LABEL_3A7E_
    bit 7, (ix + Entity.unknown3)
    jp z, _LABEL_2FD5_
    set 2, (ix + Entity.unknown8)
    jp _LABEL_2FD5_

+:
    set 2, (ix + Entity.unknown8)
++:
    ld de, $0102
    call _LABEL_3A68_
    bit 6, (ix + Entity.unknown3)
    jp z, _LABEL_2FD5_
    ld a, (v_alex.unknown3)
    and $3F
    ld (v_alex.unknown3), a
    res 2, (ix + Entity.unknown8)
    ld (ix + Entity.state), $08
    jp _LABEL_2FD5_

; 12th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexRidingBoat:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ld de, $0C0C
    call interactWithTileAtOffset
    bit 0, (ix + Entity.unknown8)
    jr nz, +
    ld a, (v_inputDataChanges)
    and $20
    call nz, _LABEL_4453_
+:
    ld a, (v_inputDataChanges)
    bit 4, a
    jp nz, _LABEL_30F5_
    ld a, (v_alex.xSpeed.high)
    cpl
    add a, $07
    ld (v_alex.animationTimerResetValue), a
    ld hl, alexRidingBoatAnimationDescriptor
    call loadAlexAnimationDescriptor
_LABEL_30C5_:
    ld de, $0212
    call getNearEntityTileAttrWithOffset
    rlca
    jp c, _LABEL_389C_
    ld de, $1214
    call getNearEntityTileAttrWithOffset
    rlca
    jp c, _LABEL_389C_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    ld de, $0040
    ld bc, $0280
    jp accelerateAlexRight

+:
    bit 2, a
    ret z
    ld de, $FFC0
    ld bc, $0100
    jp _LABEL_3BCF_

_LABEL_30F5_:
    ld (ix + Entity.stateTimer), $10
    res 7, (ix + Entity.unknown3)
    ld (ix + Entity.state), $0C
    ld hl, _DATA_9137_
    call loadAlexSpriteDescriptor
; 13th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexRidingBoatInAir:
    ld de, $0C0C
    call interactWithTileAtOffset
    bit 0, (ix + Entity.unknown8)
    jr nz, +
    ld a, (v_inputDataChanges)
    and $20
    call nz, _LABEL_4453_
+:
    bit 2, (ix + Entity.unknown8)
    jr nz, ++
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, +
    dec (ix + Entity.stateTimer)
    jr z, +
    ld de, (v_alex.xSpeed)
    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ex de, hl
    sra d
    rr e
    ld hl, $FE00
    add hl, de
    ld (v_alex.ySpeed), hl
    ld de, $0102
    call _LABEL_3A7E_
    bit 7, (ix + Entity.unknown3)
    jp z, _LABEL_30C5_
    set 2, (ix + Entity.unknown8)
    jp _LABEL_30C5_

+:
    set 2, (ix + Entity.unknown8)
++:
    ld de, $0102
    call _LABEL_3AE8_
    ld a, (v_alex.state)
    cp ALEX_DIVING
    ret z
    bit 6, (ix + Entity.unknown3)
    jp z, _LABEL_30C5_
    ld a, (v_alex.unknown3)
    and $3F
    ld (v_alex.unknown3), a
    res 2, (ix + Entity.unknown8)
    ld (ix + Entity.state), $0B
    jp _LABEL_30C5_


updateAlexReachingDoor:
    ; 
    ld a, (v_shopEntranceHorizontalPosition)
    ld hl, (v_horizontalScroll)
    add a, h
    cp (ix + Entity.xPos.high)
    ; Go to crossing door state
    jr z, @reachedDoor

    ; Walk left if Alex is past door
    jr c, ++

    ; Walk right if Alex is before door
    ld hl, $0080
    ld (v_alex.xSpeed), hl
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

@reachedDoor:
    ; Change state
    ld (ix + Entity.state), ALEX_CROSSING_DOOR

    ; Set door cross timer
    ld (ix + Entity.stateTimer), $21

    ; Request shopdoor nametable change
    ; to draw Alex behind the door.
    ld a, $81
    ld (v_nametableChangeRequest), a
    ret

updateAlexCrossingDoor:
    dec (ix + Entity.stateTimer)
    jr nz, ++

    call resetEntityUnknown3AndAlexSpeed
    ld hl, v_gameState
    ld a, (hl)
    cp STATE_CHANGED | STATE_SHOP
    jr z, @inShop
    ld a, STATE_SHOP
    ld (hl), a
    ret

@inShop:
    ld a, STATE_CHANGED | 0b01000000 | STATE_SHOP ; $C5
    ld (hl), a
    ret

++:
    ; Walk left
    ld hl, $FF80
    ld (v_alex.xSpeed), hl
    ld hl, alexWalkingLeftAnimationDescriptor
    jp loadAlexAnimationDescriptor

; 18th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_31CC:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ld a, (v_shopEntranceHorizontalPosition)
    ld hl, (v_horizontalScroll)
    add a, h
    cp (ix + Entity.xPos.high)
    jr z, ++
    jr c, +
    ld hl, $0080
    ld (v_alex.xSpeed), hl
    set 1, (ix + Entity.unknown3)
    ld hl, alexSwimmingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

+:
    ld hl, $FF80
    ld (v_alex.xSpeed), hl
    res 1, (ix + Entity.unknown3)
    ld hl, alexSwimmingLeftAnimationDescriptor
    jp loadAlexAnimationDescriptor

++:
    ld (ix + Entity.state), $12
    ld (ix + Entity.stateTimer), $40
    ld a, $82
    ld (v_nametableChangeRequest), a
    ld hl, $00D0
    ld (v_alex.ySpeed), hl
    call resetEntityUnknown3AndAlexSpeed
    push ix
    call _LABEL_6671_
    pop ix
    ld hl, v_scrollFlags
    set SCROLL_DOWN_BIT, (hl)
    ret

; 19th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3223:
    ld hl, $0300
    ld (v_verticalScrollSpeed), hl
    dec (ix + Entity.stateTimer)
    ret nz
    jp splash

_LABEL_3230_:
    ld a, (_RAM_C211_)
    add a, a
    add a, a
    and $F0
    ld (v_alex.xPos.high), a
    call resetEntityUnknown3AndAlexSpeed
    ld hl, v_alex.unknown3
    ld a, (hl)
    and $2B
    ld (hl), a
    res 2, (ix + Entity.unknown3)
    ld (ix + Entity.animationTimerResetValue), $04
    ld (ix + Entity.state), $0A
    ld a, $B1
    ld (v_soundControl), a
    ret

; 11th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3256:
    call resetEntityUnknown3AndAlexSpeed
    ld (v_alex.ySpeed), hl
    ld a, (v_inputData)
    rrca
    jr c, ++
    rrca
    jr c, _LABEL_32DC_
    rrca
    jr c, +
    rrca
    ret nc
    ld de, $0711
    ld a, $08
    ld e, $02
    ld b, $01
    call _LABEL_39ED_
    ret c
    ld hl, $0100
    ld (v_alex.xSpeed), hl
    ld (ix + Entity.unknown3), $07
    jp fall

+:
    ld de, $07FF
    ld a, $08
    ld e, $02
    ld b, $01
    call _LABEL_39ED_
    ret c
    ld hl, $FF00
    ld (v_alex.xSpeed), hl
    ld (ix + Entity.unknown3), $04
    jp fall

++:
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz
    ld de, $0008
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, +
    dec hl
    ld a, (hl)
    cp $3F
    ret nz
+:
    ld de, $0C08
    call getNearEntityTileAttrWithOffset
    dec hl
    ld a, (hl)
    cp $3F
    jr z, +
    ld de, $1908
    call getNearEntityTileAttrWithOffset
    rlca
    ret nc
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, setAlexIdleStateAndLoadIdleAnimationDescriptor
+:
    res 3, (ix + Entity.unknown3)
    ld hl, $FF00
    ld (v_alex.ySpeed), hl
    ld hl, _DATA_9188_
    jp loadAlexAnimationDescriptor

_LABEL_32DC_:
    ld de, $0C08
    call getNearEntityTileAttrWithOffset
    dec hl
    ld a, (hl)
    cp $3F
    jr nz, +
    ld a, (v_alex.yPos.high)
    add a, $18
    cp $C0
    jr nc, _LABEL_3301_
    ld de, $1808
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, _LABEL_3301_
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, setAlexIdleStateAndLoadIdleAnimationDescriptor
_LABEL_3301_:
    set 3, (ix + Entity.unknown3)
    ld hl, $0100
    ld (v_alex.ySpeed), hl
    ld hl, _DATA_9188_
    jp loadAlexAnimationDescriptor

+:
    ld de, $1808
    call getNearEntityTileAttrWithOffset
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, fall
    jr _LABEL_3301_

_LABEL_3320_:
    ld hl, (v_alex.ySpeed)
    ld (v_alexVerticalSpeedTemporaryCopy), hl
    ld hl, (v_alex.xSpeed)
    ld (v_alexHorizontalSpeedTemporaryCopy), hl
    ld hl, $0000
    ld (v_alex.xSpeed), hl
    ld (v_alex.ySpeed), hl
    ld a, (v_alex.state)
    ld (v_alexStateTemporaryCopy), a
    ld (ix + Entity.state), $10
    ret

; 17th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3340:
    ld a, (v_scrollFlags)
    and SCROLL_ANY
    ret nz
    ld hl, (v_alexVerticalSpeedTemporaryCopy)
    ld (v_alex.ySpeed), hl
    ld hl, (v_alexHorizontalSpeedTemporaryCopy)
    ld (v_alex.xSpeed), hl
    ld a, (v_alexStateTemporaryCopy)
    ld (v_alex.state), a
    cp $14
    jr nz, saveTempAlexCopy
    call setAlexIdleStateAndLoadIdleAnimationDescriptor
saveTempAlexCopy:
    ld hl, v_alex
    ld de, temporaryAlexCopy
    ld bc, $0020
    ldir
    xor a
    ld (_RAM_C25C_), a
    ret

; 8th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_336F:
    call resetEntityUnknown3AndAlexSpeed
    ld (v_alex.ySpeed), hl
    res 4, (ix + Entity.unknown3)
    res 2, (ix + Entity.unknown3)
    call interactWithTile
    ld a, (_RAM_C054_)
    cp $01
    jp nz, _LABEL_345E_
    bit 0, (ix + Entity.unknown8)
    jr z, ++
    call tickPunch
    ret nz
_LABEL_3392_:
    bit ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
    jr z, +
    ld hl, alexIdleRightSpriteDescriptor
    jp loadAlexSpriteDescriptor

+:
    ld hl, alexIdleLeftSpriteDescriptor
    jp loadAlexSpriteDescriptor

++:
    ld a, (v_inputDataChanges)
    bit 5, a
    jp nz, handleAction
    ld a, (v_inputData)
    ld c, a
    bit JOY_UP_BIT, c
    call nz, ++
    bit JOY_DOWN_BIT, c
    call nz, _LABEL_3400_
    bit JOY_LEFT_BIT, c
    call nz, _LABEL_3424_
    bit JOY_RIGHT_BIT, c
    call nz, _LABEL_3442_
    inc (ix + Entity.stateTimer)
    bit 2, (ix + Entity.stateTimer)
    ld de, $0080
    jr z, +
    ld de, $FF80
+:
    ld hl, (v_alex.ySpeed)
    add hl, de
    ld (v_alex.ySpeed), hl
    jr _LABEL_3392_

++:
    push bc
    ld de, $0104
    ld a, $0E
    call _LABEL_3A41_
    pop bc
    ret c
    ld a, (v_alex.yPos.high)
    cp $04
    ret c
    ld hl, $FF00
    ld (v_alex.ySpeed), hl
    res 3, (ix + Entity.unknown3)
    res 7, (ix + Entity.unknown3)
    set 4, (ix + Entity.unknown3)
    ret

_LABEL_3400_:
    push bc
    ld de, $1904
    ld a, $08
    call _LABEL_3A41_
    pop bc
    ret c
    ld a, (v_alex.yPos.high)
    cp $98
    ret nc
    ld hl, $0100
    ld (v_alex.ySpeed), hl
    set 3, (ix + Entity.unknown3)
    set 7, (ix + Entity.unknown3)
    set 4, (ix + Entity.unknown3)
    ret

_LABEL_3424_:
    push bc
    ld de, $0102
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    pop bc
    ret c
    ld a, (v_alex.unknown3)
    and $FC
    or $04
    ld (v_alex.unknown3), a
    ld hl, $FF00
    ld (v_alex.xSpeed), hl
    ret

_LABEL_3442_:
    push bc
    ld de, $010E
    ld a, $0E
    ld b, $01
    call _LABEL_39ED_
    pop bc
    ret c
    ld a, (v_alex.unknown3)
    or $07
    ld (v_alex.unknown3), a
    ld hl, $0100
    ld (v_alex.xSpeed), hl
    ret

_LABEL_345E_:
    ld hl, v_alex.unknown3
    ld a, (hl)
    and $E7
    ld (hl), a
    jp fall

; 21st entry of Jump Table from 2982 (indexed by v_alex.state)
updateAutoWalkingRight:
    ld hl, $0180
    ld (v_alex.xSpeed), hl
    set 2, (ix + Entity.unknown3)
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

clearEntities2to4AndMaybeReset0xC054:
    ; Clear entities 2, 3 and 4.
    ld hl, v_entities.2
    call clearEntity
    inc hl
    call clearEntity
    inc hl
    call clearEntity

    ; Clear bits 0, 1 e 3 of Alex unknown8 byte 
    ld a, (v_alex.unknown8)
    and $F4
    ld (v_alex.unknown8), a

    ; Clear _RAM_C054_ if it is not 2.
    ld hl, _RAM_C054_
    ld a, (hl)
    cp ALEX_C054_INVINCIBLE
    ret z

    xor a
    ld (hl), a

    ret

; Fallthrough
splash:
    ld a, SOUND_SPLASH
    ld (v_soundControl), a

    ld (ix + Entity.state), ALEX_SWIMING
    ld (ix + Entity.animationTimerResetValue), $0A

    call clearEntities2to4AndMaybeReset0xC054

    bit 7, (ix + Entity.ySpeed.high)
    set 3, (ix + Entity.unknown3)
    jr z, updateAlexSwiming
    res 3, (ix + Entity.unknown3)

updateAlexSwiming:
    bit 4, (ix + Entity.unknown8)
    jp nz, _LABEL_3E01_
    ld de, $080C
    call interactWithTileAtOffset
    ld a, (v_alex.state)
    cp ALEX_SWIMING
    ret nz
    ld a, (v_alex.yPos.high)
    sub $08
    jr c, +
    ld d, a
    ld a, (v_alex.xPos.high)
    add a, $0C
    ld e, a
    call _LABEL_7C7A_
    and $E0
    cp $60
    jr nz, +
    ld a, (v_inputData)
    and JOY_UP
    jr z, +
    dec hl
    ld a, (hl)
    cp $3F
    jr nz, +
    ld (_RAM_C211_), hl
    ld hl, $F000
    ld (v_alex.ySpeed), hl
    jp _LABEL_3230_

+:
    bit 0, (ix + Entity.unknown8)
    jr z, ++
    call tickPunch
    jr nz, +++
    ld hl, _DATA_8E01_
    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    jr z, +
    ld hl, _DATA_8E25_
+:
    call loadAlexSpriteDescriptor
    jr +++

++:
    ld a, (v_inputDataChanges)
    and $20
    jr z, +++
    call _LABEL_44E2_
+++:
    ld de, $110C
    call interactWithFloorWithOffset
    call +++
    call _LABEL_363E_
    bit 0, (ix + Entity.unknown8)
    ret nz
    ld c, $14
    ld a, (v_inputData)
    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    jr nz, ++
    bit JOY_BTN1_BIT, a
    jr z, +
    ld c, $0A
+:
    ld (ix + Entity.animationTimerResetValue), c
    ld hl, alexSwimmingLeftAnimationDescriptor
    jp loadAlexAnimationDescriptor

++:
    ld c, $14
    bit JOY_BTN1_BIT, a
    jr z, +
    ld c, $0A
+:
    ld (ix + Entity.animationTimerResetValue), c
    ld hl, alexSwimmingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

+++:
    bit 3, (ix + Entity.unknown3)
    jp nz, _LABEL_35F8_
    ld a, (v_alex.yPos.high)
    add a, (ix + Entity.ySpeed.high)
    cp $02
    jr c, _LABEL_35BE_
    ld de, $0103
    call getNearEntityTileAttrWithOffset
    bit 7, a
    jr nz, _LABEL_35E3_
    ld de, $010C
    call getNearEntityTileAttrWithOffset
    bit 7, a
    jp nz, _LABEL_35E3_
    and $E0
    cp $20
    jr nz, _LABEL_35BE_
    ld e, $09
    call _LABEL_7C94_
    ld a, (hl)
    bit 7, a
    jp nz, _LABEL_35E3_
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jr nz, ++
    bit JOY_UP_BIT, a
    jr nz, +
    ld bc, $FF00
    ld de, $FFF0
    jp _LABEL_3BE1_

+:
    ld bc, $FE80
    ld de, $FFE0
    jp _LABEL_3BE1_

++:
    ld de, $0010
    bit 4, (ix + Entity.unknown3)
    jp nz, _LABEL_3BF7_
    set 3, (ix + Entity.unknown3)
    ret

_LABEL_35BE_:
    cp $60
    jr nz, +
    dec hl
    ld a, (hl)
    cp $59
    jr nz, +
    ld a, (v_inputData)
    and JOY_UP
    jr z, +
    set 7, (ix + Entity.flags)
    ret

+:
    ld a, (v_alex.unknown3)
    or $18
    ld (v_alex.unknown3), a
    ld hl, $0080
    ld (v_alex.ySpeed), hl
    ret

_LABEL_35E3_:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    res 4, (ix + Entity.unknown3)
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret z
    set 3, (ix + Entity.unknown3)
    ret

_LABEL_35F8_:
    ld de, $0F03
    ld a, $02
    call _LABEL_3A41_
    jr c, ++
    ld e, $10
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    jr c, ++
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jr z, +
    ld bc, $0100
    ld de, $0010
    jp _LABEL_3C12_

+:
    ld de, $FFE0
    bit 0, a
    jp nz, _LABEL_3C28_
    ld de, $FFF0
    jp _LABEL_3C28_

++:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    res 4, (ix + Entity.unknown3)
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret nz
    res 3, (ix + Entity.unknown3)
    ret

_LABEL_363E_:
    bit ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
    jp nz, _LABEL_369A_
    ld de, $0301
    ld a, $0A
    call _LABEL_3A03_
    jr c, +
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr nz, ++
    bit JOY_RIGHT_BIT, a
    jr nz, +++
    ld de, $0008
    jp _LABEL_3B4B_

+:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    ld a, (v_alex.unknown3)
    or ALEX_UKNW3_FACING_RIGHT | ALEX_UKNW3_MOVING_RIGHT
    ld (v_alex.unknown3), a
    ret

++:
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $FFF0
    ld bc, $FF00
    jp accelerateAlexLeft

+:
    ld de, $FFE0
    ld bc, $FE80
    jp accelerateAlexLeft

+++:
    set 0, (ix + Entity.unknown3)
    ld de, $0010
    bit 4, a
    jp z, leftBrake
    ld de, $0020
    jp leftBrake

_LABEL_369A_:
    ld de, $0317
    ld a, $0A
    call _LABEL_3A03_
    jr c, +
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr nz, ++
    bit JOY_LEFT_BIT, a
    jr nz, +++
    ld de, $FFF8
    jp _LABEL_3B9C_

+:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    ld a, (v_alex.unknown3)
    and $F8
    ld (v_alex.unknown3), a
    ret

++:
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $0010
    ld bc, $0100
    jp accelerateAlexRight

+:
    ld de, $0020
    ld bc, $0180
    jp accelerateAlexRight

+++:
    res 0, (ix + Entity.unknown3)
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $FFF0
    jp rightBrake

+:
    ld de, $FFE0
    jp rightBrake

; 7th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexFlyingPeticopter:
    bit 6, (ix + Entity.unknown8)
    jr nz, +
    ld a, (v_inputDataChanges)
    and $10
    ret z
    set 6, (ix + Entity.unknown8)
+:
    ld de, $040C
    call interactWithTileAtOffset
    ld de, $140C
    call interactWithTileAtOffset
    ld de, $1C0C
    call interactWithTileAtOffset
    bit 0, (ix + Entity.unknown8)
    jr nz, +
    ld a, (v_inputDataChanges)
    and $20
    call nz, _LABEL_4453_
+:
    call ++
    call _LABEL_37D5_
    bit ALEX_UKNW3_FACING_RIGHT_BIT, (ix + Entity.unknown3)
    ld hl, alexFlyingPeticopterLeftAnimationDescriptor
    jr z, +
    ld hl, alexFlyingPeticopterRightAnimationDescriptor
+:
    ld a, (v_alex.animationTimerResetValue)
    inc a
    cp $14
    jp nc, loadAlexAnimationDescriptor
    ld (v_alex.animationTimerResetValue), a
    jp loadAlexAnimationDescriptor

++:
    bit ALEX_UKNW3_MOVING_RIGHT_BIT, (ix + Entity.unknown3)
    jp nz, _LABEL_378F_
    ld de, $0302
    ld a, $0C
    ld b, $02
    call _LABEL_39ED_
    jr c, +
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr nz, ++
    bit JOY_RIGHT_BIT, a
    jr nz, +++
    ld de, $0020
    jp _LABEL_3B4B_

+:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    ld a, (v_alex.unknown3)
    or ALEX_UKNW3_FACING_RIGHT | ALEX_UKNW3_MOVING_RIGHT
    ld (v_alex.unknown3), a
    ret

++:
    set 2, (ix + Entity.unknown3)
    ld de, $FFC0
    ld bc, $FE00
    jp accelerateAlexLeft

+++:
    set 0, (ix + Entity.unknown3)
    ld de, $0040
    jp leftBrake

_LABEL_378F_:
    ld de, $0316
    ld a, $0C
    ld b, $02
    call _LABEL_39ED_
    jr c, +
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr nz, ++
    bit JOY_LEFT_BIT, a
    jr nz, +++
    ld de, $FFE0
    jp _LABEL_3B9C_

+:
    call resetEntityUnknown3AndAlexSpeed
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    ld a, (v_alex.unknown3)
    and $F8
    ld (v_alex.unknown3), a
    ret

++:
    set 2, (ix + Entity.unknown3)
    ld de, $0040
    ld bc, $0200
    jp accelerateAlexRight

+++:
    res 0, (ix + Entity.unknown3)
    ld de, $FFC0
    jp rightBrake

_LABEL_37D5_:
    bit 3, (ix + Entity.unknown3)
    jp nz, _LABEL_382B_
    ld de, $0204
    ld a, $10
    call _LABEL_3A41_
    jp c, _LABEL_388E_
    ld a, (v_alex.stateTimer)
    or a
    jr nz, ++
    ld a, (v_inputDataChanges)
    and $10
    jr nz, +
    ld a, (v_alex.yPos.high)
    cp $04
    jr c, +++
    ld de, $0020
    jp _LABEL_3BF7_

+:
    ld (ix + Entity.stateTimer), $07
++:
    dec (ix + Entity.stateTimer)
    ld (ix + Entity.animationTimerResetValue), $02
    ld a, (v_alex.yPos.high)
    cp $04
    jr c, +++
    ld de, $FFC0
    ld bc, $FE00
    jp _LABEL_3BE1_

+++:
    res 4, (ix + Entity.unknown3)
    set 3, (ix + Entity.unknown3)
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ret

_LABEL_382B_:
    ld de, $2004
    call getNearEntityTileAttrWithOffset
    bit 7, a
    jr nz, _LABEL_3875_
    ld a, (v_nametableEntryAttrLastThreeBits)
    or a
    jp nz, _LABEL_388E_
    ld e, $08
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    jr c, _LABEL_3875_
    ld e, $08
    call _LABEL_7C94_
    ld a, (hl)
    rlca
    jr c, _LABEL_3875_
    ld a, (v_alex.stateTimer)
    or a
    jr nz, _LABEL_3868_
    ld a, (v_inputDataChanges)
    and $10
    jr nz, _LABEL_3864_
    ld de, $0020
    ld bc, $0100
    jp _LABEL_3C12_

_LABEL_3864_:
    ld (ix + Entity.stateTimer), $07
_LABEL_3868_:
    dec (ix + Entity.stateTimer)
    ld (ix + Entity.animationTimerResetValue), $02
    ld de, $FFC0
    jp _LABEL_3C28_

_LABEL_3875_:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    res 4, (ix + Entity.unknown3)
    ld a, (v_alex.stateTimer)
    or a
    jp nz, _LABEL_3868_
    ld a, (v_inputDataChanges)
    and $10
    jr nz, _LABEL_3864_
    ret

_LABEL_388E_:
    ld hl, (v_level)
    ld h, $00
    ld de, _DATA_3904_ - 1
    add hl, de
    ld a, (hl)
    or a
    jp z, _LABEL_43F2_
_LABEL_389C_:
    ; Reset v_shouldSpawnRidingBoat_RAM_C051_ and _RAM_C054_
    xor a
    ld (v_shouldSpawnRidingBoat_RAM_C051_), a
    ld (_RAM_C054_), a
    call _LABEL_4415_
    call resetEntityUnknown3AndAlexSpeed
    ld (v_alex.ySpeed), hl
    res 0, (ix + Entity.unknown8)
    ld a, (v_alex.unknown3)
    or $18
    ld (v_alex.unknown3), a
    ld (ix + Entity.state), $1B
    ld a, SOUND_FALLING
    ld (v_soundControl), a
    ret

; 28th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_38C2:
    jp resetEntityUnknown3AndAlexSpeed

; 20th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_38C5:
    call resetEntityUnknown3AndAlexSpeed
    ld hl, _DATA_9122_
    call loadAlexSpriteDescriptor
    ld de, $1904
    ld a, $08
    call _LABEL_3A41_
    ld hl, $0300
    jr nc, +
    ld a, (v_alex.yPos.high)
    cp $04
    jr c, +
    ld hl, $0000
+:
    ld (v_alex.ySpeed), hl
    ld (ix + Entity.unknown8), $00
    ld hl, _RAM_C20B_
    ld a, (v_scrollFlags)
    and SCROLL_DOWN
    or (hl)
    ret nz
    ld de, $0008
    call getNearEntityTileAttrWithOffset
    and $E0
    cp $20
    jp z, splash
    ret

; Data from 3904 to 3918 (21 bytes)
_DATA_3904_:
.db $01 $00 $00 $00 $01 $00 $00 $00 $01 $00 $00 $00 $00 $00 $00 $00
.db $00 $DD $36 $06 $14

; 22nd entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3919:
    call _LABEL_3928_
    ld a, (v_alex.battleDecision)
    ld (v_entities.28.battleDecision), a
    ld hl, _DATA_8D2A_
    jp loadAlexAnimationDescriptor

_LABEL_3928_:
    ld a, (v_inputDataChanges)
    bit 0, a
    jr z, +
    dec (ix+23)
    ret p
    ld (ix+23), $02
    ret

+:
    bit 1, a
    ret z
    inc (ix+23)
    ld a, (v_alex.battleDecision)
    cp $03
    ret c
    ld (ix+23), $00
    ret

; 25th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3949:
    ld a, (ix+23)
    add a, a
    ld e, a
    ld d, $00
    ld hl, _DATA_395B_
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp loadAlexSpriteDescriptor

; Pointer Table from 395B to 3960 (3 entries, indexed by _RAM_CF97_)
_DATA_395B_:
.dw _DATA_8E9D_ _DATA_8EBE_ _DATA_8EDF_

; 23rd entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3961:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ld a, (v_alex.xPos.high)
    cp $28
    jr z, ++
    jr nc, +
    ld hl, $0100
    ld (v_alex.xSpeed), hl
    ld hl, alexWalkingRightAnimationDescriptor
    jp loadAlexAnimationDescriptor

+:
    ld hl, $FF00
    ld (v_alex.xSpeed), hl
    ld hl, alexWalkingLeftAnimationDescriptor
    jp loadAlexAnimationDescriptor

++:
    call resetEntityUnknown3AndAlexSpeed
    ld (v_alex.ySpeed), hl
    ld (ix + Entity.state), $17
    ld a, ($000A)
    ld (v_alex.unknown3), a
    call saveTempAlexCopy
    ld a, $01
    ld (_RAM_C25A_), a
    ld (ix + Entity.animationTimerResetValue), $14
    ret

; 24th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_39A5:
    call _LABEL_3928_
    ld a, (v_alex.battleDecision)
    ld (v_entities.28.battleDecision), a
    ld hl, _DATA_8CE6_
    jp loadAlexAnimationDescriptor

; 26th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_39B4:
    call resetEntityUnknown3AndAlexSpeed
    bit 6, (ix + Entity.unknown3)
    jr nz, +
    call _LABEL_3A68_
    jr ++

+:
    ld (v_alex.ySpeed), hl
++:
    ld hl, _DATA_90D1_
    call loadAlexSpriteDescriptor
    dec (ix+24)
    ret nz
    set 7, (ix + Entity.flags)
    ret

; 27th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_39D4:
    call resetEntityUnknown3AndAlexSpeed
    ld (v_alex.ySpeed), hl
    ret
