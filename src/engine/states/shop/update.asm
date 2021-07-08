; 6th entry of Jump Table from 3B (indexed by v_gameState)
updateShopState:
    exx
    bit 7, (hl)
    jp z, _LABEL_1D04_
    bit 6, (hl)
    jp nz, _LABEL_1C33_
    ld a, $09
    call waitForInterrupt
    ld a, (v_messageToShowInTheTextBoxIndex)
    or a
    jr z, +
    ld a, $07
    ld (v_gameState), a
    ret

+:
    call updateEntities
    ld hl, $C055
    jp _LABEL_1EAF_
