; 16th entry of Jump Table from 2982 (indexed by v_alex.state)
updateAlexDead:
    ld hl, _DATA_8D23_
    call _LABEL_4189_
    ld a, (v_alex.yPos.high)
    cp $A8
    ret nc
    cp $A3
    ret c
    ld a, (v_alex.isOffScreenFlags.high)
    inc a
    ret nz
    call destroyCurrentEntity
    ld a, $06
    ld (v_gameState), a
    ret
