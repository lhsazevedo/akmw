; 10th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptGameplayState:
    call updateInvincibility
    call handleNametableChangeRequest
    call updateLevelTiles
    jp draw_LABEL_6920_
