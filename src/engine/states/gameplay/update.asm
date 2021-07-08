; 10th entry of Jump Table from 3B (indexed by v_gameState)
updateGameplayState:
    exx
    bit 7, (hl)
    jp z, initGameplayState
_LABEL_A8E_:
    call updateScrollFlags
    call loadNewEntities
    call updateEntities
    ; Somothing related to scrolling
    call _LABEL_67C4_
    ; Something related to nametable
    call _LABEL_6B49_
    ld a, $09
    call waitForInterrupt

    ; Return if map shouldn't be displayed
    ld a, (v_shouldOpenMap)
    or a
    ret z

    ; Change state to map
    xor a
    ld (v_shouldOpenMap), a
    ld a, STATE_MAP
    ld (v_gameState), a
    ret
