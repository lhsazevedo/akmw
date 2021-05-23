updateEntity0x09:
    bit 0, (ix+1)
    jp z, _LABEL_47F1_
    bit 7, (ix+1)
    jp nz, _LABEL_4854_
    ld (ix+17), $00
    ld (ix+18), $00
    call _LABEL_4846_
    ret nc
    bit 0, (ix+29)
    jr z, +++
    ld l, (ix+27)
    ld h, (ix+28)
    ld a, (hl)
    or a
    jr z, ++
    push hl
    pop iy
    ld a, (iy+12)
    bit 1, (ix+20)
    jr nz, +
    sub (ix+12)
    cp $D0
    jr nc, ++++
    jr +++

+:
    sub (ix+12)
    cp $10
    jr c, ++++
    jr +++

++:
    res 0, (ix+29)
+++:
    ld de, $1004
    call getTileNearEntityWithXYOffset
    rlca
    jr nc, +
    bit 1, (ix+20)
    jr nz, _LABEL_47D0_
_LABEL_47CA_:
    ld hl, _DATA_8522_
    jp handleEntityAnimation

_LABEL_47D0_:
    ld hl, _DATA_8537_
    jp handleEntityAnimation

+:
    ld (ix+0), $0A
    set 7, (ix+20)
    ret

++++:
    ld a, $A7
    ld (v_soundControl), a
    res 0, (ix+29)
    ld (ix+0), $0A
    ld (ix+18), $FD
    ret

_LABEL_47F1_:
    set 0, (ix+1)
    ld (ix+6), $05
    call +++
    jr z, ++
    push hl
    pop iy
    set 0, (ix+29)
    ld (ix+27), l
    ld (ix+28), h
    ld a, (iy+12)
    sub (ix+12)
    jr c, +
    set 1, (ix+20)
    ld (ix+16), $02
    jr _LABEL_47CA_

+:
    res 1, (ix+20)
    ld (ix+16), $FE
    jr _LABEL_47D0_

++:
    bit 1, (ix+20)
    ld (ix+16), $02
    jr nz, _LABEL_47D0_
    ld (ix+16), $FE
    jr _LABEL_47CA_

+++:
    ld hl, _RAM_C3C0_
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
    ld a, (ix+9)
    or (ix+10)
    jr nz, _LABEL_4854_
    ld a, (ix+14)
    cp $AC
    ret c
_LABEL_4854_:
    ld a, (_RAM_C360_)
    or a
    jr nz, +

; Shared
_LABEL_485A_:
    ld hl, v_entities.1.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    xor a
    ld (_RAM_C054_), a
+:
    call clearCurrentEntity
    or a
    ret
