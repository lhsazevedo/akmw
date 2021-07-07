updateGoosekaHead:
    ld a, (v_entities.7.state)
    ld hl, goosekaHeadStateUpdaters
    rst $20    ; loadAthJumptablePointer
    ret

goosekaHeadStateUpdaters:
.dw updateGoosekaHeadState0
.dw updateGoosekaHeadState1
.dw updateGoosekaHeadState2
.dw updateOpponentHeadState3

updateGoosekaHeadState0:
    ld a, (v_entities.7.yPos.high)
    cp (ix + Entity.jankenMatchDecision)
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
    cp (ix + Entity.jankenMatchDecision)
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
    cp (ix + Entity.jankenMatchDecision)
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
