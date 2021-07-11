updateChokkinnaHead:
    ld a, (v_entities.7.state)
    ld hl, chokkinnaHeadStateUpdaters
    rst jumpToAthPointer
    ret

chokkinnaHeadStateUpdaters:
.dw updateChokkinnaHeadState0
.dw updateChokkinnaHeadState1
.dw updateChokkinnaHeadState2
.dw updateBattleHeadState3

updateChokkinnaHeadState0:
    ld a, (v_entities.7.yPos.high)
    cp $28
    jr nc, +
    inc (ix + Entity.state)
    ld hl, $0200
    ld (v_entities.7.xSpeed), hl
    ld hl, $FB34
    ld (v_entities.7.ySpeed), hl
    set 1, (ix+20)
    ret

+:
    ld hl, $FF00
    ld (v_entities.7.ySpeed), hl
    ret

updateChokkinnaHeadState1:
    call _LABEL_7B18_
    ld a, (v_entities.7.yPos.high)
    cp $28
    jr c, ++
    inc (ix + Entity.state)
    ld hl, $04CC
    ld (v_entities.7.ySpeed), hl
    ld hl, v_entities.7.unknown3
    ld a, (hl)
    xor $02
    ld (hl), a
    ld hl, $FE00
    jr z, +
    ld hl, $0200
+:
    ld (v_entities.7.xSpeed), hl
    ret

++:
    ld hl, (v_entities.7.ySpeed)
    ld de, $005E
    add hl, de
    ld (v_entities.7.ySpeed), hl
    ret

updateChokkinnaHeadState2:
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_7A41_
    ld a, (v_entities.7.yPos.high)
    cp $28
    jr nc, +
    dec (ix+26)
    ld hl, $FB34
    ld (v_entities.7.ySpeed), hl
    ret

+:
    ld hl, (v_entities.7.ySpeed)
    ld de, $FFE2
    add hl, de
    ld (v_entities.7.ySpeed), hl
    ret

_LABEL_7B18_:
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_7A40_
    bit 1, (ix+20)
    ld de, $0028
    jr z, +
    ld de, $FFD8
+:
    ld hl, (v_entities.7.xSpeed)
    add hl, de
    ld (v_entities.7.xSpeed), hl
    ret

