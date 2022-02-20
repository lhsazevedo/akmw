; 1st entry of Jump Table from D0A (indexed by v_level)
scrollFlagsUpdater_LABEL_6462_:
    ld a, (v_scrollFlags)
    or a
    ret z

    bit SCROLL_VERTICAL_BIT, a
    ret z

    and SCROLL_UP | SCROLL_DOWN
    ret nz

    di
    ld de, $8000 | VDP_R0_MASK_COL_0 | VDP_R0_CHANGE_HEIGHT_IN_MODE_4 | VDP_R0_USE_MODE_4
    ld a, e
    ld (v_VDPRegister0Value), a
    rst setVdpAddress
    ei

    ld a, SCROLL_RIGHT
    ld (v_scrollFlags), a
    ret

; 11th entry of Jump Table from D0A (indexed by v_level)
scrollFlagsUpdater_LABEL_647D_:
    ld a, (v_scrollFlags)
    ; Unary XOR is the same as NOT
    and $FF ~ SCROLL_VERTICAL
    ret z
    ld b, a
    and $03
    ld hl, (_RAM_C0C2_)
    ld de, (_RAM_C0BB_)
    jr nz, ++
    ld a, (v_shouldBlankLeftmostColumn)
    or a
    jr nz, +
    ld a, $01
    ld (v_shouldBlankLeftmostColumn), a
    di
    ld de, $8026
    ld a, e
    ld (v_VDPRegister0Value), a
    rst setVdpAddress
    ei
+:
    ld hl, (v_horizontalScroll)
    ld de, (_RAM_C0AD_)
++:
    ld a, (v_specialLevelScrollFlags)
    or a
    jp nz, _LABEL_6502_
    ld a, (v_currentScreenNumber)
    bit 7, a
    jr z, _LABEL_6502_
    ld a, $01
    ld (v_specialLevelScrollFlags), a
    ld a, b
    bit 0, a
    ld a, (v_verticalScreenNumber)
    jr z, +
    inc a
+:
    push af
    exx
    ld b, a
    ld c, $00
    ld hl, _RAM_D900_
    add hl, bc
    pop af
    ld b, a
    ld a, (v_currentScreenNumber)
    and $7F
    sub b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $00
    ld c, a
    add hl, bc
    ld (_RAM_C078_), hl
    ld a, (hl)
    or a
    jr z, ++
    ld b, a
    inc hl
-:
    ld a, (hl)
    or a
    jr z, +
    inc hl
    push hl
    ld a, (hl)
    ld e, a
    ld d, $00
    ld hl, _RAM_D700_
    add hl, de
    ld a, $00
    ld (hl), a
    pop hl
    dec hl
+:
    inc hl
    inc hl
    djnz -
++:
    exx
_LABEL_6502_:
    ld a, h
    or l
    ret nz
    ex de, hl
    ld a, h
    or l
    ret nz
    ld a, (v_scrollFlags)
    bit SCROLL_DOWN_BIT, a
    jr z, +
    ld hl, v_currentScreenNumber
    dec (hl)
    res 7, (hl)
+:
    and $80
    ld (v_scrollFlags), a
    xor a
    ld (v_shouldBlankLeftmostColumn), a
    ld (v_shouldAlexStartWalkingtoNextScreen), a
    ld (v_specialLevelScrollFlags), a
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld (v_verticalScrollSpeed), hl
    di
    ld de, $8006
    ld a, e
    ld (v_VDPRegister0Value), a
    rst setVdpAddress
    ei
    ret

; 5th entry of Jump Table from D0A (indexed by v_level)
scrollFlagsUpdater_LABEL_6539_:
    ld a, (v_scrollFlags)
    or a
    ret z
    bit SCROLL_VERTICAL_BIT, a
    jr nz, +
    and SCROLL_UP | SCROLL_DOWN
    ret z
    ld a, (v_scrollFlags)
    res SCROLL_RIGHT_BIT, a
    set SCROLL_VERTICAL_BIT, a
    ld (v_scrollFlags), a
    ret

+:
    and SCROLL_UP | SCROLL_DOWN
    ret nz
    ld a, $01
    ld (v_verticalScreenNumber), a
    ld hl, $0000
    ld (_RAM_C0B4_), hl
    ld (_RAM_C0B3_), hl
    ld (_RAM_C0B7_), hl
    ld a, (v_horizontalScreenNumber)
    cp $03
    jr nc, +
    ld a, SCROLL_RIGHT
    ld (v_scrollFlags), a
    ld a, $03
    ld (v_levelWidth), a
    ret

+:
    xor a
    ld (v_scrollFlags), a
    ret

; 3rd entry of Jump Table from D0A (indexed by v_level)
scrollFlagsUpdater_LABEL_657B_:
    ld a, (v_scrollFlags)
    or a
    ret z
    bit SCROLL_VERTICAL_BIT, a
    jr nz, +
    and SCROLL_UP | SCROLL_DOWN
    ret z
    ld a, (v_scrollFlags)
    res SCROLL_RIGHT_BIT, a
    set SCROLL_VERTICAL_BIT, a
    ld (v_scrollFlags), a
    ret

+:
    and $03
    ret nz
    ld hl, $0000
    ld (_RAM_C0B4_), hl
    ld (_RAM_C0B3_), hl
    ld (_RAM_C0B7_), hl
    ld a, $01
    ld (v_verticalScreenNumber), a
    ld a, $01
    ld (v_levelWidth), a
    ld a, SCROLL_RIGHT
    ld (v_scrollFlags), a
    ret
