updateChokkinnaHead:
    ld a, (_RAM_C3DA_)
    ld hl, chokkinnaHeadStateUpdaters
    rst $20    ; loadAthJumptablePointer
    ret

chokkinnaHeadStateUpdaters:
.dw updateChokkinnaHeadState0
.dw updateChokkinnaHeadState1
.dw updateChokkinnaHeadState2
.dw updateOpponentHeadState3

updateChokkinnaHeadState0:
    ld a, (_RAM_C3CE_)
    cp $28
    jr nc, +
    inc (ix + Entity.state)
    ld hl, $0200
    ld (_RAM_C3CF_), hl
    ld hl, $FB34
    ld (_RAM_C3D1_), hl
    set 1, (ix+20)
    ret

+:
    ld hl, $FF00
    ld (_RAM_C3D1_), hl
    ret

updateChokkinnaHeadState1:
    call _LABEL_7B18_
    ld a, (_RAM_C3CE_)
    cp $28
    jr c, ++
    inc (ix + Entity.state)
    ld hl, $04CC
    ld (_RAM_C3D1_), hl
    ld hl, _RAM_C3D4_
    ld a, (hl)
    xor $02
    ld (hl), a
    ld hl, $FE00
    jr z, +
    ld hl, $0200
+:
    ld (_RAM_C3CF_), hl
    ret

++:
    ld hl, (_RAM_C3D1_)
    ld de, $005E
    add hl, de
    ld (_RAM_C3D1_), hl
    ret

updateChokkinnaHeadState2:
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_7A41_
    ld a, (_RAM_C3CE_)
    cp $28
    jr nc, +
    dec (ix+26)
    ld hl, $FB34
    ld (_RAM_C3D1_), hl
    ret

+:
    ld hl, (_RAM_C3D1_)
    ld de, $FFE2
    add hl, de
    ld (_RAM_C3D1_), hl
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
    ld hl, (_RAM_C3CF_)
    add hl, de
    ld (_RAM_C3CF_), hl
    ret

