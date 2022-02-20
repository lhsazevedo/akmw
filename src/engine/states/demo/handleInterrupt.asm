handleInterruptDemoState:
    ld a, $85
    ld (Mapper_Slot2), a

    ; Return to menu on button press.
    ld a, (v_inputData)
    and JOY_FIREA | JOY_FIREB
    jr z, @endif
        ld a, STATE_TITLE_FROM_DEMO
        ld (v_gameState), a
        ld hl, v_inputFlags
        res 5, (hl)
        ret
    @endif:

    ; Jump to @tickData if current data timer isn't up yet.
    ld bc, (v_demoCurrentInputData)
    djnz @tickData

    ; Load next input command. If it's 0, then the demo is over
    ; and we return after changing the game state to STATE_TITLE.
    ld hl, (v_demoInputDataPointer)
    inc hl
    ld a, (hl)
    or a
    jr nz, @endif2
        ld a, STATE_TITLE
        ld (v_gameState), a
        ld hl, v_inputFlags
        res 5, (hl)
        ret
    @endif2:

    ; Load duration byte.
    ld b, a

    ; Load input byte.
    inc hl
    ld a, c
    ld c, (hl)

    ; Save both bytes in memory.
    ld (v_demoInputDataPointer), hl

    ; XOR new input data with old one to get input changes.
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


demoLevels:
.db $02
.db $03
.db $04
.db $05
