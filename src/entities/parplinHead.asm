updateParplinHead:
    call tryToKillAlexIfColliding
    ld a, (v_entities.7.stateTimer)
    or a
    jr z, +
    dec (ix + Entity.stateTimer)
    jr ++

+:
    call isAlexAttackingEntity
    jr c, ++
    inc (ix + Entity.unknown1)
    ld a, (v_entities.7.unknown1)
    cp $03
    jp nc, killEnemy
    ld a, $8D
    ld (v_soundControl), a
    ld (ix + Entity.stateTimer), $1E
++:
    ld a, (v_entities.7.state)
    ld hl, _DATA_7B64_
    rst jumpToAthPointer
    ret

; Jump Table from 7B64 to 7B77 (10 entries, indexed by v_entities.7.state)
_DATA_7B64_:
.dw _LABEL_7B78_ _LABEL_7B88_ _LABEL_7B99_ _LABEL_7B88_ _LABEL_7BAA_ _LABEL_7BB4_ _LABEL_7BC5_ _LABEL_7BB4_
.dw _LABEL_7BD6_ _LABEL_7BEC_

; 1st entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7B78_:
    ld hl, $FE00
    ld (v_entities.7.ySpeed), hl
    ld a, (v_entities.7.yPos.high)
    cp $70
    ret nc
    inc (ix + Entity.state)
    ret

; 2nd entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7B88_:
    call _LABEL_7C10_
    call _LABEL_7C1B_
    ret nz
    ld hl, $FE00
    ld (v_entities.7.xSpeed), hl
    inc (ix + Entity.state)
    ret

; 3rd entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7B99_:
    call _LABEL_7C28_
    call _LABEL_7C03_
    ret nz
    ld hl, $FE00
    ld (v_entities.7.ySpeed), hl
    inc (ix + Entity.state)
    ret

; 5th entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7BAA_:
    ld a, (v_entities.7.xPos.high)
    cp $48
    ret nc
    inc (ix + Entity.state)
    ret

; 6th entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7BB4_:
    call _LABEL_7C40_
    call _LABEL_7C03_
    ret nz
    ld hl, $0200
    ld (v_entities.7.ySpeed), hl
    inc (ix + Entity.state)
    ret

; 7th entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7BC5_:
    call _LABEL_7C10_
    call _LABEL_7C33_
    ret nz
    ld hl, $0200
    ld (v_entities.7.ySpeed), hl
    inc (ix + Entity.state)
    ret

; 9th entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7BD6_:
    ld a, (v_entities.7.yPos.high)
    cp $88
    ret c
    ld hl, $0000
    ld (v_entities.7.ySpeed), hl
    ld hl, $0400
    ld (v_entities.7.xSpeed), hl
    inc (ix + Entity.state)
    ret

; 10th entry of Jump Table from 7B64 (indexed by v_entities.7.state)
_LABEL_7BEC_:
    ld a, (v_entities.7.xPos.high)
    cp $B0
    ret c
    ld hl, $0000
    ld (v_entities.7.xSpeed), hl
    ld hl, $FE00
    ld (v_entities.7.ySpeed), hl
    ld (ix + Entity.state), $00
    ret

_LABEL_7C03_:
    ld hl, (v_entities.7.xSpeed)
    ld de, $0020
    or a
    adc hl, de
    ld (v_entities.7.xSpeed), hl
    ret

_LABEL_7C10_:
    ld hl, (v_entities.7.xSpeed)
    ld de, $FFE0
    add hl, de
    ld (v_entities.7.xSpeed), hl
    ret

_LABEL_7C1B_:
    ld hl, (v_entities.7.ySpeed)
    ld de, $0020
    or a
    adc hl, de
    ld (v_entities.7.ySpeed), hl
    ret

_LABEL_7C28_:
    ld hl, (v_entities.7.ySpeed)
    ld de, $FFE0
    add hl, de
    ld (v_entities.7.ySpeed), hl
    ret

_LABEL_7C33_:
    ld hl, (v_entities.7.ySpeed)
    ld de, $FFE0
    or a
    adc hl, de
    ld (v_entities.7.ySpeed), hl
    ret

_LABEL_7C40_:
    ld hl, (v_entities.7.ySpeed)
    ld de, $0020
    add hl, de
    ld (v_entities.7.ySpeed), hl
    ret
