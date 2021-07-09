updateGoosekaHead:
    ld a, (v_entities.7.state)
    ld hl, goosekaHeadStateUpdaters
    rst jumpToAthPointer
    ret

goosekaHeadStateUpdaters:
.dw updateGoosekaHeadState0
.dw updateGoosekaHeadState1
.dw updateGoosekaHeadState2
.dw updateBattleHeadState3

updateGoosekaHeadState0:
    ld a, (v_entities.7.yPos.high)
    cp (ix + Entity.battleDecision)
    jr nc, +
    inc (ix + Entity.state)
    ld hl, $FF00
    ld (v_entities.7.xSpeed), hl
    ld hl, $FE00
    ld (v_entities.7.ySpeed), hl
    ret

+:
    ld hl, $FF00
    ld (v_entities.7.ySpeed), hl
    ret

updateGoosekaHeadState1:
    call _LABEL_7A10_
    ld a, (v_entities.7.yPos.high)
    cp (ix + Entity.battleDecision)
    jr c, +
    inc (ix + Entity.state)
    ld hl, $0200
    ld (v_entities.7.ySpeed), hl
    ret

+:
    ld hl, (v_entities.7.ySpeed)
    ld de, $0010
    add hl, de
    ld (v_entities.7.ySpeed), hl
    ret

updateGoosekaHeadState2:
    call _LABEL_7A10_
    ld a, (v_entities.7.yPos.high)
    cp (ix + Entity.battleDecision)
    jr nc, +
    dec (ix + Entity.state)
    ld hl, $FE00
    ld (v_entities.7.ySpeed), hl
    ret

+:
    ld hl, (v_entities.7.ySpeed)
    ld de, $FFF0
    add hl, de
    ld (v_entities.7.ySpeed), hl
    ret

_LABEL_7A10_:
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jr nc, _LABEL_7A40_
    bit 1, (ix + Entity.unknown3)
    jr z, +
    ld hl, $0100
    ld (v_entities.7.xSpeed), hl
    ld a, (v_entities.7.xPos.high)
    cp $E0
    ret c
    res 1, (ix + Entity.unknown3)
    ret

+:
    ld hl, $FF00
    ld (v_entities.7.xSpeed), hl
    ld a, (v_entities.7.xPos.high)
    cp $11
    ret nc
    set 1, (ix + Entity.unknown3)
    ret

_LABEL_7A40_:
    pop af
_LABEL_7A41_:
    res 7, (ix+1)
    inc (ix+2)
    ld a, (v_entities.7.unknown1)
    cp $03
    jp nc, _LABEL_55A5_
    ld a, $8D
    ld (v_soundControl), a
    ld a, (v_entities.7.state)
    ld (v_entities.7.unknown6), a
    ld (ix+26), $03
    ld (ix+22), $3C
    ld hl, (v_entities.7.ySpeed)
    ld (v_entities.7.unknown10), hl
    ld hl, (v_entities.7.xSpeed)
    ld (v_entities.7.unknown8), hl
    ld hl, $0000
    ld (v_entities.7.ySpeed), hl
    ld (v_entities.7.xSpeed), hl
    ret

; 4th entry of Jump Table from 79A9 (indexed by v_entities.7.state)
; Shared
updateBattleHeadState3:
    dec (ix+22)
    ret nz
    ld a, (v_entities.7.unknown6)
    ld (v_entities.7.state), a
    ld hl, (v_entities.7.unknown10)
    ld (v_entities.7.ySpeed), hl
    ld hl, (v_entities.7.unknown8)
    ld (v_entities.7.xSpeed), hl
    ret
