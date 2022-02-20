DEMO_COUNT = $05

updateDemoState:
    ; Skip if the state was already initialized.
    ld hl, v_gameState
    bit 7, (hl)
    jp nz, updateGameplayState

    ; Mark as initialized.
    set 7, (hl)

    ; Reset demo index if needed.
    ld a, (v_nextDemoIndex)
    inc a
    cp DEMO_COUNT
    jp c, @endif
        ld a, $01
    @endif:
    ld (v_nextDemoIndex), a

    ; Load demo level index.
    ld c, a
    ld b, $00
    ld hl, demoLevels - 1
    add hl, bc
    ld a, (hl)
    ld (v_level), a

    ; If on level 2, make Alex start riding motorcycle. During normal
    ; gameplay, the player would have to buy it first on the shop.
    cp $02
    jp nz, @endif2
        ld a, ALEX_C054_RIDING_MOTORCYCLE
        ld (v_alexActionState), a
    @endif2:

    ld a, $85
    ld (Mapper_Slot2), a

    ; Load demo input data pointer.
    ld a, (v_nextDemoIndex)
    ld hl, demoInputPointers - 2
    rst loadAthPointer
    dec hl
    ld (v_demoInputDataPointer), hl

    ; TODO: Understand input flags.
    ld hl, v_inputFlags
    ld a, (hl)
    and $03
    or $20
    ld (hl), a

    ; Set initial demo input data.
    ld hl, $01FF
    ld (v_demoCurrentInputData), hl

    jp initGameplayState

    ; Unreachable return.
    ret
