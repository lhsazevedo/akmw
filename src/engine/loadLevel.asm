loadLevel:
    ; Get level descriptor pointer
    ld a, (v_level)
    ld hl, LevelDescriptorPointerTable - 2
    rst loadAthPointer

    ; Load level bank number
    ld a, (hl)
    ld (Mapper_Slot2), a
    ld (v_levelBankNumber), a

    ; Load level layout pointer
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld (v_levelLayoutPointer), de

    ; Load Second level layout pointer
    ; @TODO: Analyze the second layout pointer 
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld (v_SecondLevelLayoutPointer), de

    ; Load initial screen numbers
    inc hl
    ld a, (hl)
    ld (v_horizontalScreenNumber), a
    inc hl
    ld a, (hl)
    ld (v_verticalScreenNumber), a

    ; Load level width and height
    inc hl
    ld a, (hl)
    ld (v_levelWidth), a
    inc hl
    ld a, (hl)
    ld (v_levelHeight), a

    ; Load level scroll flags
    inc hl
    ld a, (hl)
    ld (v_levelScrollFlags), a

    ; Load metatile nametable pointer
    inc hl
    ld e, (hl)
    inc hl
    ld d, (hl)
    ld (v_metatileNametablePointer), de

    ; @TODO
    ld hl, $7800
    ld (_RAM_C0B7_), hl
    ld (_RAM_C0C5_), hl

    ; @TODO...
    ; Draw first screen
@firstScreenLoop:
    ld hl, $0100
    ld (v_horizontalScrollSpeed), hl
    call updateScroll_LABEL_67C4_
    call updateNametable_LABEL_6B49_
    call draw_LABEL_6920_
    ld hl, (v_horizontalScroll)
    ld a, h
    or l
    jr nz, @firstScreenLoop

    ld a, (v_verticalScreenNumber)
    ld (v_currentScreenNumber), a

    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl

    ld a, (v_level)
    cp $01
    jr nz, @notFirstLevel

; @TODO: Use meaningful label names
@verticalLevel:
    xor a
    ld (v_verticalScreenNumber), a
    ld a, $81
    ld (v_currentScreenNumber), a

    ; Draw next row
    ld a, $10
    ld (v_columnsToLoadToNametable), a
    call _LABEL_6A73_
    call updateNametable_LABEL_6B49_
    call draw_LABEL_6920_

    ; Show first column
    ld de, $8000 | VDP_R0_CHANGE_HEIGHT_IN_MODE_4 | VDP_R0_USE_MODE_4
    ld a, e
    ld (v_VDPRegister0Value), a
    rst setVdpAddress

    ld a, (v_levelScrollFlags)
    ld (v_scrollFlags), a
    ret

@notFirstLevel:
    cp $11
    jp z, @verticalLevel

    cp $0D
    jr z, @reverseLevel

    ld a, (v_levelScrollFlags)
    ld (v_scrollFlags), a

    ; Make alex start walking if scroll bit 7 is set
    rlca
    ret nc
    ld a, $01
    ld (v_shouldAlexStartWalkingtoNextScreen), a
    ld a, (v_levelHeight)
    ld (v_entityIndex), a
    ret

@reverseLevel:
    ld a, $07
    ld (v_currentScreenNumber), a

    ld a, (v_levelScrollFlags)
    ld (v_scrollFlags), a

    ret
