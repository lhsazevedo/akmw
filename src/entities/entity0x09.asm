updateEntity0x09:
    bit 0, (ix + Entity.flags)
    jp z, _LABEL_47F1_
    bit 7, (ix + Entity.flags)
    jp nz, _LABEL_4854_
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.ySpeed.high), $00
    call _LABEL_4846_
    ret nc
    bit 0, (ix + Entity.unknown9)
    jr z, +++
    ld l, (ix + Entity.stateTimer)
    ld h, (ix + Entity.unknown8)
    ld a, (hl)
    or a
    jr z, ++
    push hl
    pop iy
    ld a, (iy+12)
    bit 1, (ix + Entity.unknown3)
    jr nz, +
    sub (ix + Entity.xPos.high)
    cp $D0
    jr nc, ++++
    jr +++

+:
    sub (ix + Entity.xPos.high)
    cp $10
    jr c, ++++
    jr +++

++:
    res 0, (ix + Entity.unknown9)
+++:
    ld de, $1004
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    bit 1, (ix + Entity.unknown3)
    jr nz, _LABEL_47D0_
_LABEL_47CA_:
    ld hl, _DATA_8522_
    jp handleEntityAnimation

_LABEL_47D0_:
    ld hl, _DATA_8537_
    jp handleEntityAnimation

+:
    ld (ix + Entity.type), $0A
    set 7, (ix + Entity.unknown3)
    ret

++++:
    ld a, $A7
    ld (v_soundControl), a
    res 0, (ix + Entity.unknown9)
    ld (ix + Entity.type), $0A
    ld (ix + Entity.ySpeed.high), $FD
    ret

_LABEL_47F1_:
    set 0, (ix + Entity.flags)
    ld (ix + Entity.animationTimerResetValue), $05
    call +++
    jr z, ++
    push hl
    pop iy
    set 0, (ix + Entity.unknown9)
    ld (ix + Entity.stateTimer), l
    ld (ix + Entity.unknown8), h
    ld a, (iy+12)
    sub (ix + Entity.xPos.high)
    jr c, +
    set 1, (ix + Entity.unknown3)
    ld (ix + Entity.xSpeed.high), $02
    jr _LABEL_47CA_

+:
    res 1, (ix + Entity.unknown3)
    ld (ix + Entity.xSpeed.high), $FE
    jr _LABEL_47D0_

++:
    bit 1, (ix + Entity.unknown3)
    ld (ix + Entity.xSpeed.high), $02
    jr nz, _LABEL_47D0_
    ld (ix + Entity.xSpeed.high), $FE
    jr _LABEL_47CA_

+++:
    ld hl, v_entities.7
    ld de, $0020
    ld b, $0A
-:
    ld a, (hl)
    or a
    ret nz
    add hl, de
    djnz -
    ret

_LABEL_4846_:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_4854_
    ld a, (ix + Entity.yPos.high)
    cp $AC
    ret c
_LABEL_4854_:
    ld a, (v_entities.4.type)
    or a
    jr nz, +

; Shared
_LABEL_485A_:
    ld hl, v_alex.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    xor a
    ld (_RAM_C054_), a
+:
    call destroyCurrentEntity
    or a
    ret
