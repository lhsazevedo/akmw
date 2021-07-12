updatePalette:
    ld a, (v_gameState)
    cp STATE_CHANGED | STATE_JANKEN_GAME
    ret c

    cp STATE_CHANGED | STATE_MAP
    ret z

    ld hl, (paletteUpdaterPointer)
    jp (hl)
