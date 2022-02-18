handleInterruptGameplayState:
    call updateInvincibility
    call handleNametableChangeRequest
    call updateLevelTiles
    jp draw_LABEL_6920_
