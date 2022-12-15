updateOctopusArm:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.data), $00
    ld (ix + Entity.stateTimer), $C0
    ld (ix + Entity.unknown8), $00
    ld (ix + Entity.unknown9), $08
    ld (ix + Entity.xSpeed.high), $00
    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_84E3_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_84E3_
    ld a, (ix + Entity.isOffScreenFlags.low)
    ld (ix + Entity.state), a
    ld a, (ix + Entity.isOffScreenFlags.high)
    ld (ix + Entity.unknown7), a
+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, _LABEL_4CDE_
    call tryToKillAlexIfColliding
    call isAlexAttackingEntity
    jp c, _LABEL_4CDE_
    ld a, (ix + Entity.unknown4)
    or a
    jp nz, _LABEL_4D92_
    ld a, (v_alex.unknown8)
    bit 3, a
    jp z, _LABEL_4CDE_
    res 3, a
    ld (v_alex.unknown8), a
    inc (ix + Entity.data)
    ld a, (ix + Entity.data)
    cp $03
    jp c, _LABEL_4CDE_
    ld b, $08
    ld de, $0020
-:
    ld a, (ix + Entity.type)
    cp $24
    jr nz, +
    ld (ix + Entity.type), $2B
    res 0, (ix + Entity.flags)
+:
    add ix, de
    djnz -
    ld a, SOUND_BOSS_DEFEATED
    ld (v_soundControl), a
    ld ix, $C3C0
    ld a, $83
    ld (v_nametableChangeRequest), a
    ld a, (v_level)
    cp $05
    jr c, +
    ld a, $84
    ld (v_nametableChangeRequest), a
    ret

+:
    ld a, (v_currentScreenNumber)
    and $7F
    cp $03
    ret c
    ld a, $84
    ld (v_nametableChangeRequest), a
    ret

_LABEL_4CDE_:
    ld bc, $0000
    ld a, (ix + Entity.unknown5)
    or a
    jr z, +
    dec (ix + Entity.unknown5)
    jr ++

+:
    ld bc, $0002
    ld a, (ix + Entity.unknown6)
    ld d, a
    or a
    jr z, +
    ld bc, $FFFE
+:
    inc (ix + Entity.battleDecision)
    ld a, (ix + Entity.battleDecision)
    cp $60
    jr c, ++
    ld a, d
    cpl
    ld (ix + Entity.unknown6), a
    ld (ix + Entity.battleDecision), $00
++:
    ld a, (ix + Entity.unknown4)
    or a
    jr z, +
    ld hl, (_RAM_C0F4_)
    ld (ix + Entity.unknown11), h
    ld (ix + Entity.unknown10), l
    ld a, (_RAM_C0FF_)
    ld (ix + Entity.unknown7), a
    ld a, (_RAM_C0FB_)
    ld (ix + Entity.state), a
    jp _LABEL_4D67_

+:
    ld hl, (v_horizontalScrollSpeed)
    ld a, h
    or l
    jr z, +
    ld d, (ix + Entity.unknown11)
    ld e, (ix + Entity.animationTimerResetValue)
    add hl, de
    ld (ix + Entity.unknown11), h
    ld (ix + Entity.animationTimerResetValue), l
    jr c, _LABEL_4D67_
    inc (ix + Entity.state)
    jr _LABEL_4D67_

+:
    ld hl, (v_verticalScrollSpeed)
    ld a, h
    or l
    jr z, _LABEL_4D67_
    ld d, (ix + Entity.unknown10)
    ld e, (ix + Entity.unknown1)
    ex de, hl
    or a
    sbc hl, de
    ld (ix + Entity.unknown10), h
    ld (ix + Entity.unknown1), l
    jr nc, _LABEL_4D67_
    ld a, h
    sub $40
    ld (ix + Entity.unknown10), a
    dec (ix + Entity.unknown7)
_LABEL_4D67_:
    ld l, (ix + Entity.stateTimer)
    ld h, (ix + Entity.unknown8)
    add hl, bc
    ld (ix + Entity.stateTimer), l
    ld (ix + Entity.unknown8), h
    call unknownAnimate
    ld h, (ix + Entity.xPos.high)
    ld l, (ix + Entity.yPos.high)
    ld (_RAM_C0F4_), hl
    ld a, (ix + Entity.isOffScreenFlags.high)
    ld (_RAM_C0FF_), a
    ld a, (ix + Entity.isOffScreenFlags.low)
    ld (_RAM_C0FB_), a
    cp $01
    jp z, destroyCurrentEntity
    ret

_LABEL_4D92_:
    ld a, (v_alex.unknown8)
    bit 3, a
    jp z, _LABEL_4CDE_
    res 3, a
    ld (v_alex.unknown8), a
    inc (ix + Entity.data)
    ld a, (ix + Entity.data)
    cp $03
    jp c, _LABEL_4CDE_
    jp killEnemy
