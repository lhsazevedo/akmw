handleInterruptGameplayState:
    call updateInvincibility
    call handleNametableChangeRequest
    call updateLevelTiles
    jp draw
