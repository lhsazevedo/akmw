; 3rd entry of Jump Table from 3B (indexed by v_gameState)
updateDemoState:
    ld hl, v_gameState
    bit 7, (hl)
    jp nz, _LABEL_A8E_
    set 7, (hl)
    ld a, (v_nextDemoIndex)
    inc a
    cp $05
    jp c, +
    ld a, $01
+:
    ld (v_nextDemoIndex), a
    ld c, a
    ld b, $00
    ld hl, _DATA_A7C_ - 1
    add hl, bc
    ld a, (hl)
    ld (v_level), a
    cp $02
    jp nz, +
    ld a, $07
    ld (_RAM_C054_), a
+:
    ld a, $85
    ld (Mapper_Slot2), a
    ld a, (v_nextDemoIndex)
    ld hl, demoInputPointers - 2
    rst $10    ; _LABEL_10_
    dec hl
    ld (v_demoInputDataTimer), hl
    ld hl, v_inputFlags
    ld a, (hl)
    and $03
    or $20
    ld (hl), a
    ld hl, $01FF
    ld (v_demoCurrentInputData), hl
    jp initGameplayState
