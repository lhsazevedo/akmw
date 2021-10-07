handleInterruptDemoState:
    ld a, $85
    ld (Mapper_Slot2), a

    ; Return if to menu on button press.
    ld a, (v_inputData)
    and JOY_FIREA | JOY_FIREB
    jr z, +

    
    ld a, STATE_TITLE_FROM_DEMO
    ld (v_gameState), a
    ld hl, v_inputFlags
    res 5, (hl)
    ret

+:
    ld bc, (v_demoCurrentInputData)
    djnz @tickData

    ld hl, (v_demoInputDataPointer)
    inc hl
    ld a, (hl)
    or a
    jr nz, +

    ; Return to title on data end.
    ld a, STATE_TITLE
    ld (v_gameState), a
    ld hl, v_inputFlags
    res 5, (hl)
    ret

+:
    ; Load duration byte.
    ld b, a

    ; Load input byte.
    inc hl
    ld a, c
    ld c, (hl)

    ld (v_demoInputDataPointer), hl

    ; Update input changes.
    xor c
    and c
    ld (v_inputDataChanges), a

@tickData:
    ; Tick input data.
    ld (v_demoCurrentInputData), bc
    ld a, c
    ld (v_inputData), a

    ; Jump to game play interrupt handler.
    jp handleInterruptGameplayState

; Data from A7C to A7F (4 bytes)
demoLevels:
.db $02 $03 $04 $05
