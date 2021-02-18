; 16th entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexDead:
    ld hl, _DATA_8D23_
    call _LABEL_4189_
    ld a, (v_entities.1.yPos.high)
    cp $A8
    ret nc
    cp $A3
    ret c
    ld a, (v_entities.1.isOffScreenFlags.high)
    inc a
    ret nz
    call clearCurrentEntity
    ld a, $06
    ld (v_gameState), a
    ret
