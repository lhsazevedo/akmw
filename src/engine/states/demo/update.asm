; 3rd entry of Jump Table from 3B (indexed by v_gameState)
updateDemoState:
    ld hl, v_gameState
    bit 7, (hl)
    jp nz, updateGameplayState
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
    ld hl, demoLevels - 1
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
    rst loadAthPointer
    dec hl
    ld (v_demoInputDataPointer), hl
    ld hl, v_inputFlags
    ld a, (hl)
    and $03
    or $20
    ld (hl), a
    ld hl, $01FF
    ld (v_demoCurrentInputData), hl
    jp initGameplayState

; Data from A34 to A34 (1 bytes)
.db $C9
