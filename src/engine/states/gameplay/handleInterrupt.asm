; 10th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptGameplayState:
    call _LABEL_264F_
    call handleNametableChangeRequest
    call updateLevelTiles
    jp _LABEL_6920_
