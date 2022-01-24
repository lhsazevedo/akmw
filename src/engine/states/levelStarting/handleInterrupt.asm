handleInterruptLevelStartingState:

    ld a, :mapParchmentRightSideColumn1 | $80
    ld (Mapper_Slot2), a

    ; Draw revealed map block
    ld hl, (v_currentMapOrTextNametablePointer)
    ld de, (v_currentMapNametableDestinationPointer)
    ld bc, $1202
    call copyNameTableBlockToVram

    ; Draw right side of map parchment, in two columns.
    ld de, (v_currentMapNametableDestinationPointer)
    inc de
    inc de
    ld (v_currentMapNametableDestinationPointer), de
    ld hl, mapParchmentRightSideColumn1
    ld bc, $1202
    call copyNameTableBlockToVram

    ld de, (v_currentMapNametableDestinationPointer)
    inc de
    inc de
    ld (v_currentMapNametableDestinationPointer), de
    ld hl, mapParchmentRightSideColumn2
    ld bc, $1202
    call copyNameTableBlockToVram

    ld de, (v_currentMapNametableDestinationPointer)

    ; Restore map pointer (changed while drawing the right roll)
    dec de
    dec de
    dec de
    dec de
    ld (v_currentMapNametableDestinationPointer), de

    ret
