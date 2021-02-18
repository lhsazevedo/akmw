; 3rd entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptDemoState:
    ld a, $85
    ld (Mapper_Slot2), a
    ld a, (v_inputData)
    and $30
    jr z, +
    ld a, $01
    ld (v_gameState), a
    ld hl, v_inputFlags
    res 5, (hl)
    ret

+:
    ld bc, (v_demoCurrentInputData)
    djnz ++
    ld hl, (v_demoInputDataTimer)
    inc hl
    ld a, (hl)
    or a
    jr nz, +
    ld a, $00
    ld (v_gameState), a
    ld hl, v_inputFlags
    res 5, (hl)
    ret

+:
    ld b, a
    inc hl
    ld a, c
    ld c, (hl)
    ld (v_demoInputDataTimer), hl
    xor c
    and c
    ld (_RAM_C007_), a
++:
    ld (v_demoCurrentInputData), bc
    ld a, c
    ld (v_inputData), a
    jp handleInterruptGameplayState

; Data from A7C to A7F (4 bytes)
_DATA_A7C_:
.db $02 $03 $04 $05
