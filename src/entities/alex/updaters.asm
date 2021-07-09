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

updateAlexWalking:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    bit 4, (ix+28)
    jp nz, _LABEL_3DFB_
    call _LABEL_3C45_
    ld a, (v_alex.state)
    cp ALEX_WALKING
    ret nz
    ld de, $1904
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A4F_
    jp nc, _LABEL_2CA1_
    jr ++

+:
    ld a, $08
    call _LABEL_3A41_
    jp nc, _LABEL_2CA1_
    call _LABEL_3D07_
    ld a, (v_alex.state)
    cp ALEX_WALKING
    ret nz
++:
    ld a, (_RAM_C007_)
    bit 5, a
    jr z, +
    ld (ix + Entity.state), $01
    call _LABEL_3B56_
    jp _LABEL_4508_

+:
    bit 4, a
    jp nz, _LABEL_2CAE_
    bit 1, (ix+20)
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
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit JOY_RIGHT_BIT, a
    jp nz, walkRight
    bit JOY_LEFT_BIT, a
    jr nz, _LABEL_2BDC_
    jp alex_LABEL_2BFA_

+++:
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    jr z, +
    set 2, (ix + Entity.unknown3)
    ld de, $FFC0
    ld bc, $FE00
    call _LABEL_3B2B_
_LABEL_2BDC_:
    ld hl, _DATA_8CEB_
    jp _LABEL_4189_

+:
    bit JOY_RIGHT_BIT, a
    jp nz, +
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit 2, (ix + Entity.unknown3)
    jr z, alex_LABEL_2BFA_
    ld de, $0020
    call _LABEL_3B50_
    jr nc, _LABEL_2BDC_

alex_LABEL_2BFA_:
    ld a, $05
    ld (v_alex.animationTimerResetValue), a
    ld a, ALEX_IDLE
    ld (v_alex.state), a
_LABEL_2C04_:
    ld hl, _DATA_90A7_
    ld a, (v_alex.unknown3)
    bit 0, a
    jp z, loadAlexAnimationDescriptor
    ld hl, _DATA_90BC_
    jp loadAlexAnimationDescriptor

+:
    set 0, (ix + Entity.unknown3)
    ld de, $0040
    call _LABEL_3B61_
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

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
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit JOY_LEFT_BIT, a
    jp nz, walkLeft
    bit JOY_RIGHT_BIT, a
    jr nz, _LABEL_2C6C_
    jp alex_LABEL_2BFA_

+++:
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    set 2, (ix+20)
    ld de, $0040
    ld bc, $0200
    call _LABEL_3B7E_
_LABEL_2C6C_:
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

+:
    bit JOY_LEFT_BIT, a
    jr nz, +
    bit JOY_DOWN_BIT, a
    jp nz, crouch
    bit 2, (ix+20)
    jp z, alex_LABEL_2BFA_
    ld de, $FFE0
    call _LABEL_3BA1_
    jr c, _LABEL_2C6C_
    jp alex_LABEL_2BFA_

+:
    set 2, (ix+20)
    res 0, (ix+20)
    ld de, $FFC0
    call _LABEL_3BB1_
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

_LABEL_2CA1_:
    ld a, (v_alex.unknown3)
    and $BF
    or $80
    set 2, (ix+28)
    jr +

_LABEL_2CAE_:
    ld a, $91
    ld (v_soundControl), a
    ld (ix+27), $16
    ld a, (v_alex.unknown3)
    and $3F
+:
    ld (v_alex.unknown3), a
    bit 0, a
    ld (ix + Entity.state), $03
    ld hl, _DATA_8F00_
    jr z, +
    ld hl, _DATA_8F15_
+:
    call loadAlexAnimationDescriptor
; 4th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexInAir:
    call _LABEL_3C45_
    ld a, (v_alex.state)
    cp ALEX_IN_AIR 
    ret nz
    ld a, (_RAM_C213_)
    or a
    jp nz, _LABEL_3498_
    bit 0, (ix+28)
    jr z, ++
    call _LABEL_462E_
    jr nz, +++
    ld hl, _DATA_8F00_
    bit 0, (ix+20)
    jr z, +
    ld hl, _DATA_8F15_
+:
    call loadAlexAnimationDescriptor
    jr +++

++:
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4508_
+++:
    bit 2, (ix+28)
    jp nz, _LABEL_2D4A_
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, ++
    dec (ix+27)
    jr z, ++
    ld de, (v_alex.xSpeed)
    bit 7, d
    jr nz, +
    xor a
    ld h, a
    ld l, a
    sbc hl, de
    ex de, hl
+:
    sra d
    rr e
    sra d
    rr e
    ld hl, $FE00
    add hl, de
    ld (v_alex.ySpeed), hl
    ld de, $0104
    call _LABEL_3A7E_
    bit 7, (ix+20)
    jr z, _LABEL_2D7F_
    set 2, (ix+28)
    jr _LABEL_2D7F_

++:
    set 2, (ix+28)
_LABEL_2D4A_:
    ld de, $0104
    call _LABEL_3A68_
    bit 6, (ix+20)
    jr z, _LABEL_2D7F_
    res 2, (ix+28)
    ld a, $B1
    ld (v_soundControl), a
    ld a, (v_alex.unknown8)
    bit 0, a
    jr z, +
    bit 1, a
    jr nz, +
    res 2, (ix+20)
    ld (ix + Entity.state), $01
    jp alex_LABEL_2BFA_

+:
    bit 2, (ix+20)
    jp z, alex_LABEL_2BFA_
    call walk
_LABEL_2D7F_:
    bit 1, (ix+20)
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
    ld de, $0008
    jp _LABEL_3B4B_

+++:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    set 1, (ix+20)
    ret

++++:
    set 2, (ix+20)
    ld de, $FFF0
    ld bc, $FE00
    jp _LABEL_3B2B_

+++++:
    ld a, (v_alex.unknown3)
    set 0, a
    ld (v_alex.unknown3), a
    ld hl, _DATA_8F15_
    ld a, (v_alex.unknown8)
    and $03
    cp $01
    jr nz, +
    ld hl, _DATA_8DE9_
+:
    call loadAlexAnimationDescriptor
    ld de, $0010
    jp _LABEL_3B61_

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
    ld de, $FFF8
    jp _LABEL_3B9C_

+++:
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    res 1, (ix+20)
    ret

++++:
    set 2, (ix+20)
    ld de, $0010
    ld bc, $0200
    jp _LABEL_3B7E_

+++++:
    ld a, (v_alex.unknown3)
    bit 0, a
    res 0, a
    ld (v_alex.unknown3), a
    ld hl, _DATA_8F00_
    ld a, (v_alex.unknown8)
    and $03
    cp $01
    jr nz, +
    ld hl, _DATA_8DD1_
+:
    call loadAlexAnimationDescriptor
    ld de, $FFF0
    jp _LABEL_3BB1_

; 5th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexCrouched:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    bit 4, (ix+28)
    jp nz, _LABEL_3E0B_
    call _LABEL_3C45_
    ld a, (v_alex.state)
    cp ALEX_CROUCHED
    ret nz
    ld de, $1904
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    jr z, +
    call _LABEL_3A4F_
    jp nc, _LABEL_2CA1_
    jr ++

+:
    ld a, $08
    call _LABEL_3A41_
    jp nc, _LABEL_2CA1_
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
    bit 2, (ix+20)
    jr z, +
    bit 1, (ix+20)
    jp nz, _LABEL_2F2C_
    ld de, $0902
    ld a, $0D
    call _LABEL_3A03_
    jp c, _LABEL_3B56_
    ld de, $0020
    jp _LABEL_3B4B_

+:
    ld a, (v_inputData)
    ld c, a
    ld a, (v_alex.unknown3)
    and $FB
    bit 2, c
    jr nz, ++
    bit 3, c
    ret z
    bit 1, c
    jr nz, +
    ld de, $090E
    ld a, $0D
    call _LABEL_3A03_
    jr c, +
    ld hl, $0020
    ld (v_alex.xSpeed), hl
    set 2, a
+:
    or $03
    bit 0, (ix+20)
    ld (v_alex.unknown3), a
    ret nz
    ld hl, _DATA_8DBC_
    jp loadAlexAnimationDescriptor

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
    bit 0, (ix + Entity.unknown3)
    ld (v_alex.unknown3), a
    ret z
    ld hl, _DATA_8DA7_
    jp loadAlexAnimationDescriptor

_LABEL_2F22_:
    bit 2, (ix + Entity.unknown3)
    jp z, alex_LABEL_2BFA_
    jp walk

_LABEL_2F2C_:
    ld de, $090E
    ld a, $0D
    call _LABEL_3A03_
    jp c, _LABEL_3B56_
    ld de, $FFE0
    call _LABEL_3BA1_
    jp nc, _LABEL_3B56_
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
    ld a, $89
    ld (v_soundControl), a
    ret

; 16th entry of Jump Table from 2982 (indexed by v_alex.state)
.INCLUDE "entities/alex/updaters/updateDead.asm"

; 9th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexRidingMotorcycle:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ld de, $0C0C
    call _LABEL_3C48_
    ld de, $1805
    ld a, $0F
    call _LABEL_3A41_
    jp nc, _LABEL_3013_
    ld a, (_RAM_C007_)
    bit 4, a
    jp nz, _LABEL_301D_
    ld a, (v_alex.xSpeed.high)
    cpl
    add a, $07
    ld (v_alex.animationTimerResetValue), a
    ld hl, _DATA_8D19_
    call _LABEL_4189_
_LABEL_2FD5_:
    ld de, $0214
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    rlca
    jp nc, _LABEL_43F2_
    call _LABEL_4578_
    jr ++

+:
    ld de, $1218
    call getTileNearEntityWithXYOffset
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
    jp _LABEL_3B7E_

+:
    bit 2, a
    ret z
    ld de, $FFC0
    ld bc, $0100
    jp _LABEL_3BCF_

_LABEL_3013_:
    set 7, (ix+20)
    set 2, (ix+28)
    jr +

_LABEL_301D_:
    ld (ix+27), $10
    res 7, (ix + Entity.unknown3)
+:
    ld (ix + Entity.state), ALEX_RIDING_MOTORCYCLE_IN_AIR
    ld hl, _DATA_8F60_
    call loadAlexAnimationDescriptor
; 10th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_302F:
    ld de, $0C0C
    call _LABEL_3C48_
    bit 2, (ix+28)
    jr nz, ++
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, +
    dec (ix+27)
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
    bit 7, (ix+20)
    jp z, _LABEL_2FD5_
    set 2, (ix+28)
    jp _LABEL_2FD5_

+:
    set 2, (ix+28)
++:
    ld de, $0102
    call _LABEL_3A68_
    bit 6, (ix+20)
    jp z, _LABEL_2FD5_
    ld a, (v_alex.unknown3)
    and $3F
    ld (v_alex.unknown3), a
    res 2, (ix+28)
    ld (ix + Entity.state), $08
    jp _LABEL_2FD5_

; 12th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexRidingBoat:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ld de, $0C0C
    call _LABEL_3C48_
    bit 0, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4453_
+:
    ld a, (_RAM_C007_)
    bit 4, a
    jp nz, _LABEL_30F5_
    ld a, (v_alex.xSpeed.high)
    cpl
    add a, $07
    ld (v_alex.animationTimerResetValue), a
    ld hl, _DATA_8D1E_
    call _LABEL_4189_
_LABEL_30C5_:
    ld de, $0212
    call getTileNearEntityWithXYOffset
    rlca
    jp c, _LABEL_389C_
    ld de, $1214
    call getTileNearEntityWithXYOffset
    rlca
    jp c, _LABEL_389C_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    jr z, +
    ld de, $0040
    ld bc, $0280
    jp _LABEL_3B7E_

+:
    bit 2, a
    ret z
    ld de, $FFC0
    ld bc, $0100
    jp _LABEL_3BCF_

_LABEL_30F5_:
    ld (ix+27), $10
    res 7, (ix+20)
    ld (ix + Entity.state), $0C
    ld hl, _DATA_9137_
    call loadAlexAnimationDescriptor
; 13th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexRidingBoatInAir:
    ld de, $0C0C
    call _LABEL_3C48_
    bit 0, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4453_
+:
    bit 2, (ix+28)
    jr nz, ++
    ld a, (v_inputData)
    bit JOY_BTN1_BIT, a
    jr z, +
    dec (ix+27)
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
    bit 7, (ix+20)
    jp z, _LABEL_30C5_
    set 2, (ix+28)
    jp _LABEL_30C5_

+:
    set 2, (ix+28)
++:
    ld de, $0102
    call _LABEL_3AE8_
    ld a, (v_alex.state)
    cp ALEX_DIVING
    ret z
    bit 6, (ix+20)
    jp z, _LABEL_30C5_
    ld a, (v_alex.unknown3)
    and $3F
    ld (v_alex.unknown3), a
    res 2, (ix+28)
    ld (ix + Entity.state), $0B
    jp _LABEL_30C5_

; 14th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3180:
    ld a, (v_shopEntranceHorizontalPosition)
    ld hl, (v_horizontalScroll)
    add a, h
    cp (ix+12)
    jr z, +
    jr c, ++
    ld hl, $0080
    ld (v_alex.xSpeed), hl
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

+:
    ld (ix + Entity.state), $0E
    ld (ix+27), $21
    ld a, $81
    ld (v_nametableChangeRequest), a
    ret

; 15th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_31A8:
    dec (ix+27)
    jr nz, ++
    call _LABEL_3B56_
    ld hl, v_gameState
    ld a, (hl)
    cp $85
    jr z, +
    ld a, $05
    ld (hl), a
    ret

+:
    ld a, $C5
    ld (hl), a
    ret

++:
    ld hl, $FF80
    ld (v_alex.xSpeed), hl
    ld hl, _DATA_8CEB_
    jp _LABEL_4189_

; 18th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_31CC:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ld a, (v_shopEntranceHorizontalPosition)
    ld hl, (v_horizontalScroll)
    add a, h
    cp (ix+12)
    jr z, ++
    jr c, +
    ld hl, $0080
    ld (v_alex.xSpeed), hl
    set 1, (ix+20)
    ld hl, _DATA_8D02_
    jp _LABEL_4189_

+:
    ld hl, $FF80
    ld (v_alex.xSpeed), hl
    res 1, (ix+20)
    ld hl, _DATA_8CFD_
    jp _LABEL_4189_

++:
    ld (ix + Entity.state), $12
    ld (ix+27), $40
    ld a, $82
    ld (v_nametableChangeRequest), a
    ld hl, $00D0
    ld (v_alex.ySpeed), hl
    call _LABEL_3B56_
    push ix
    call _LABEL_6671_
    pop ix
    ld hl, v_scrollFlags
    set 0, (hl)
    ret

; 19th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3223:
    ld hl, $0300
    ld (v_verticalScrollSpeed), hl
    dec (ix+27)
    ret nz
    jp _LABEL_3498_

_LABEL_3230_:
    ld a, (_RAM_C211_)
    add a, a
    add a, a
    and $F0
    ld (v_alex.xPos.high), a
    call _LABEL_3B56_
    ld hl, v_alex.unknown3
    ld a, (hl)
    and $2B
    ld (hl), a
    res 2, (ix+20)
    ld (ix+6), $04
    ld (ix + Entity.state), $0A
    ld a, $B1
    ld (v_soundControl), a
    ret

; 11th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_3256:
    call _LABEL_3B56_
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
    ld (ix+20), $07
    jp _LABEL_2CA1_

+:
    ld de, $07FF
    ld a, $08
    ld e, $02
    ld b, $01
    call _LABEL_39ED_
    ret c
    ld hl, $FF00
    ld (v_alex.xSpeed), hl
    ld (ix+20), $04
    jp _LABEL_2CA1_

++:
    ld a, (v_alex.isOffScreenFlags.high)
    or a
    ret nz
    ld de, $0008
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    dec hl
    ld a, (hl)
    cp $3F
    ret nz
+:
    ld de, $0C08
    call getTileNearEntityWithXYOffset
    dec hl
    ld a, (hl)
    cp $3F
    jr z, +
    ld de, $1908
    call getTileNearEntityWithXYOffset
    rlca
    ret nc
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, alex_LABEL_2BFA_
+:
    res 3, (ix+20)
    ld hl, $FF00
    ld (v_alex.ySpeed), hl
    ld hl, _DATA_9188_
    jp _LABEL_4189_

_LABEL_32DC_:
    ld de, $0C08
    call getTileNearEntityWithXYOffset
    dec hl
    ld a, (hl)
    cp $3F
    jr nz, +
    ld a, (v_alex.yPos.high)
    add a, $18
    cp $C0
    jr nc, _LABEL_3301_
    ld de, $1808
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, _LABEL_3301_
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, alex_LABEL_2BFA_
_LABEL_3301_:
    set 3, (ix+20)
    ld hl, $0100
    ld (v_alex.ySpeed), hl
    ld hl, _DATA_9188_
    jp _LABEL_4189_

+:
    ld de, $1808
    call getTileNearEntityWithXYOffset
    dec hl
    ld a, (hl)
    cp $3F
    jp nz, _LABEL_2CA1_
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
    and $0F
    ret nz
    ld hl, (v_alexVerticalSpeedTemporaryCopy)
    ld (v_alex.ySpeed), hl
    ld hl, (v_alexHorizontalSpeedTemporaryCopy)
    ld (v_alex.xSpeed), hl
    ld a, (v_alexStateTemporaryCopy)
    ld (v_alex.state), a
    cp $14
    jr nz, saveTempAlexCopy
    call alex_LABEL_2BFA_
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
    call _LABEL_3B56_
    ld (v_alex.ySpeed), hl
    res 4, (ix+20)
    res 2, (ix+20)
    call _LABEL_3C45_
    ld a, (_RAM_C054_)
    cp $01
    jp nz, _LABEL_345E_
    bit 0, (ix+28)
    jr z, ++
    call _LABEL_462E_
    ret nz
_LABEL_3392_:
    bit 1, (ix+20)
    jr z, +
    ld hl, _DATA_90BC_
    jp loadAlexAnimationDescriptor

+:
    ld hl, _DATA_90A7_
    jp loadAlexAnimationDescriptor

++:
    ld a, (_RAM_C007_)
    bit 5, a
    jp nz, _LABEL_4508_
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
    inc (ix+27)
    bit 2, (ix+27)
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
    res 3, (ix+20)
    res 7, (ix+20)
    set 4, (ix+20)
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
    set 3, (ix+20)
    set 7, (ix+20)
    set 4, (ix+20)
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
    jp _LABEL_2CA1_

; 21st entry of Jump Table from 2982 (indexed by v_alex.state)
updateAutoWalkingRight:
    ld hl, $0180
    ld (v_alex.xSpeed), hl
    set 2, (ix+20)
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

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

    ; Return if _RAM_C054_ is 2
    ld hl, _RAM_C054_
    ld a, (hl)
    cp $02
    ret z

    ; Otherwise, set it to 0
    xor a
    ld (hl), a
    ret

_LABEL_3498_:
    ld a, $92
    ld (v_soundControl), a
    ld (ix + Entity.state), $05
    ld (ix+6), $0A
    call clearEntities2to4AndMaybeReset0xC054
    bit 7, (ix+18)
    set 3, (ix+20)
    jr z, updateAlexSwiming
    res 3, (ix+20)
; 6th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexSwiming:
    bit 4, (ix+28)
    jp nz, _LABEL_3E01_
    ld de, $080C
    call _LABEL_3C48_
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
    bit 0, (ix+28)
    jr z, ++
    call _LABEL_462E_
    jr nz, +++
    ld hl, _DATA_8E01_
    bit 0, (ix+20)
    jr z, +
    ld hl, _DATA_8E25_
+:
    call loadAlexAnimationDescriptor
    jr +++

++:
    ld a, (_RAM_C007_)
    and $20
    jr z, +++
    call _LABEL_44E2_
+++:
    ld de, $110C
    call _LABEL_3D0A_
    call +++
    call _LABEL_363E_
    bit 0, (ix+28)
    ret nz
    ld c, $14
    ld a, (v_inputData)
    bit 0, (ix+20)
    jr nz, ++
    bit JOY_BTN1_BIT, a
    jr z, +
    ld c, $0A
+:
    ld (ix+6), c
    ld hl, _DATA_8CFD_
    jp _LABEL_4189_

++:
    ld c, $14
    bit JOY_BTN1_BIT, a
    jr z, +
    ld c, $0A
+:
    ld (ix+6), c
    ld hl, _DATA_8D02_
    jp _LABEL_4189_

+++:
    bit 3, (ix+20)
    jp nz, _LABEL_35F8_
    ld a, (v_alex.yPos.high)
    add a, (ix+18)
    cp $02
    jr c, _LABEL_35BE_
    ld de, $0103
    call getTileNearEntityWithXYOffset
    bit 7, a
    jr nz, _LABEL_35E3_
    ld de, $010C
    call getTileNearEntityWithXYOffset
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
    bit 4, (ix+20)
    jp nz, _LABEL_3BF7_
    set 3, (ix+20)
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
    set 7, (ix+1)
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
    res 4, (ix+20)
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret z
    set 3, (ix+20)
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
    res 4, (ix+20)
    ld a, (v_inputData)
    bit JOY_DOWN_BIT, a
    ret nz
    res 3, (ix+20)
    ret

_LABEL_363E_:
    bit 1, (ix+20)
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
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    ld a, (v_alex.unknown3)
    or $03
    ld (v_alex.unknown3), a
    ret

++:
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $FFF0
    ld bc, $FF00
    jp _LABEL_3B2B_

+:
    ld de, $FFE0
    ld bc, $FE80
    jp _LABEL_3B2B_

+++:
    set 0, (ix+20)
    ld de, $0010
    bit 4, a
    jp z, _LABEL_3B61_
    ld de, $0020
    jp _LABEL_3B61_

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
    call _LABEL_3B56_
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
    jp _LABEL_3B7E_

+:
    ld de, $0020
    ld bc, $0180
    jp _LABEL_3B7E_

+++:
    res 0, (ix+20)
    bit JOY_BTN1_BIT, a
    jr nz, +
    ld de, $FFF0
    jp _LABEL_3BB1_

+:
    ld de, $FFE0
    jp _LABEL_3BB1_

; 7th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexFlyingPeticopter:
    bit 6, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $10
    ret z
    set 6, (ix+28)
+:
    ld de, $040C
    call _LABEL_3C48_
    ld de, $140C
    call _LABEL_3C48_
    ld de, $1C0C
    call _LABEL_3C48_
    bit 0, (ix+28)
    jr nz, +
    ld a, (_RAM_C007_)
    and $20
    call nz, _LABEL_4453_
+:
    call ++
    call _LABEL_37D5_
    bit 0, (ix+20)
    ld hl, _DATA_8D07_
    jr z, +
    ld hl, _DATA_8D10_
+:
    ld a, (v_alex.animationTimerResetValue)
    inc a
    cp $14
    jp nc, _LABEL_4189_
    ld (v_alex.animationTimerResetValue), a
    jp _LABEL_4189_

++:
    bit 1, (ix+20)
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
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_RIGHT_BIT, a
    ret z
    ld a, (v_alex.unknown3)
    or $03
    ld (v_alex.unknown3), a
    ret

++:
    set 2, (ix+20)
    ld de, $FFC0
    ld bc, $FE00
    jp _LABEL_3B2B_

+++:
    set 0, (ix+20)
    ld de, $0040
    jp _LABEL_3B61_

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
    call _LABEL_3B56_
    ld a, (v_inputData)
    bit JOY_LEFT_BIT, a
    ret z
    ld a, (v_alex.unknown3)
    and $F8
    ld (v_alex.unknown3), a
    ret

++:
    set 2, (ix+20)
    ld de, $0040
    ld bc, $0200
    jp _LABEL_3B7E_

+++:
    res 0, (ix+20)
    ld de, $FFC0
    jp _LABEL_3BB1_

_LABEL_37D5_:
    bit 3, (ix+20)
    jp nz, _LABEL_382B_
    ld de, $0204
    ld a, $10
    call _LABEL_3A41_
    jp c, _LABEL_388E_
    ld a, (v_alex.stateTimer)
    or a
    jr nz, ++
    ld a, (_RAM_C007_)
    and $10
    jr nz, +
    ld a, (v_alex.yPos.high)
    cp $04
    jr c, +++
    ld de, $0020
    jp _LABEL_3BF7_

+:
    ld (ix+27), $07
++:
    dec (ix+27)
    ld (ix+6), $02
    ld a, (v_alex.yPos.high)
    cp $04
    jr c, +++
    ld de, $FFC0
    ld bc, $FE00
    jp _LABEL_3BE1_

+++:
    res 4, (ix+20)
    set 3, (ix+20)
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    ret

_LABEL_382B_:
    ld de, $2004
    call getTileNearEntityWithXYOffset
    bit 7, a
    jr nz, _LABEL_3875_
    ld a, (_RAM_C213_)
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
    ld a, (_RAM_C007_)
    and $10
    jr nz, _LABEL_3864_
    ld de, $0020
    ld bc, $0100
    jp _LABEL_3C12_

_LABEL_3864_:
    ld (ix+27), $07
_LABEL_3868_:
    dec (ix+27)
    ld (ix+6), $02
    ld de, $FFC0
    jp _LABEL_3C28_

_LABEL_3875_:
    ld hl, $0000
    ld (v_alex.ySpeed), hl
    res 4, (ix+20)
    ld a, (v_alex.stateTimer)
    or a
    jp nz, _LABEL_3868_
    ld a, (_RAM_C007_)
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
    call _LABEL_3B56_
    ld (v_alex.ySpeed), hl
    res 0, (ix+28)
    ld a, (v_alex.unknown3)
    or $18
    ld (v_alex.unknown3), a
    ld (ix + Entity.state), $1B
    ld a, $9B
    ld (v_soundControl), a
    ret

; 28th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_38C2:
    jp _LABEL_3B56_

; 20th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_38C5:
    call _LABEL_3B56_
    ld hl, _DATA_9122_
    call loadAlexAnimationDescriptor
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
    ld (ix+28), $00
    ld hl, _RAM_C20B_
    ld a, (v_scrollFlags)
    and $01
    or (hl)
    ret nz
    ld de, $0008
    call getTileNearEntityWithXYOffset
    and $E0
    cp $20
    jp z, _LABEL_3498_
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
    jp _LABEL_4189_

_LABEL_3928_:
    ld a, (_RAM_C007_)
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
    jp loadAlexAnimationDescriptor

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
    ld hl, _DATA_8CF4_
    jp _LABEL_4189_

+:
    ld hl, $FF00
    ld (v_alex.xSpeed), hl
    ld hl, _DATA_8CEB_
    jp _LABEL_4189_

++:
    call _LABEL_3B56_
    ld (v_alex.ySpeed), hl
    ld (ix + Entity.state), $17
    ld a, ($000A)
    ld (v_alex.unknown3), a
    call saveTempAlexCopy
    ld a, $01
    ld (_RAM_C25A_), a
    ld (ix+6), $14
    ret

; 24th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_39A5:
    call _LABEL_3928_
    ld a, (v_alex.battleDecision)
    ld (v_entities.28.battleDecision), a
    ld hl, _DATA_8CE6_
    jp _LABEL_4189_

; 26th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_39B4:
    call _LABEL_3B56_
    bit 6, (ix+20)
    jr nz, +
    call _LABEL_3A68_
    jr ++

+:
    ld (v_alex.ySpeed), hl
++:
    ld hl, _DATA_90D1_
    call loadAlexAnimationDescriptor
    dec (ix+24)
    ret nz
    set 7, (ix+1)
    ret

; 27th entry of Jump Table from 2982 (indexed by v_alex.state)
alexHandler_39D4:
    call _LABEL_3B56_
    ld (v_alex.ySpeed), hl
    ret
