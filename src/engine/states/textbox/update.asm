; 8th entry of Jump Table from 3B (indexed by v_gameState)
updateTextBoxState:
    exx
    bit 7, (hl)
    jp z, _LABEL_7ED3_
    ld a, $09
    call waitForInterrupt
    ld a, $01
    ld (v_nextMapNametableUpdateTimer), a
    ld hl, v_textBoxCounter
    bit 7, (hl)
    jp z, +
    res 7, (hl)
    dec (hl)
    set 7, (hl)
    jp nz, +++
    ld hl, (v_currentMapOrTextNametablePointer)
    inc hl
    jp ++

+:
    dec (hl)
    jp nz, +++
    ld hl, (v_currentMapOrTextNametablePointer)
++:
    ld a, (hl)
    ld (v_textBoxCounter), a
    inc hl
    ld a, (hl)
    ld (v_textBoxFlags), a
    inc hl
    ld (v_currentMapOrTextNametablePointer), hl
+++:
    ld a, (v_textBoxFlags)
    and $E0
    jp z, +++
    bit 7, a
    jp nz, ++
    rlca
    rlca
    jp c, +
    ld a, $08
    add a, (ix+12)
    ld (ix+12), a
    ret

+:
    ld a, (ix+12)
    sub $08
    ld (ix+12), a
    ret

++:
    rlca
    rlca
    jp c, +
    ld a, $08
    add a, (ix+14)
    ld (ix+14), a
    ret

+:
    ld a, (ix+14)
    sub $08
    ld (ix+14), a
    ret

+++:
    ld a, $B1
    ld (v_soundControl), a
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, (v_shouldShowNuraiOrOldMan)
    or a
    jp z, _LABEL_7E5E_
    ld hl, (v_nuraiOrOldManEntityTemporaryPointer)
    push hl
    pop ix
    ld (ix+5), $0A
    ld (ix+6), $0A
_LABEL_7E5E_:
    ld a, $01
    call waitForInterrupt
    ld a, (v_inputData)
    and (JOY_FIREA | JOY_FIREB)
    jp nz, ++
    ld a, (v_shouldShowNuraiOrOldMan)
    or a
    jp z, +
    ld hl, (v_nuraiOrOldManEntityAnimationDescriptorTemporaryPointer)
    call handleEntityAnimation
    ld hl, v_tempSprites
    ld (v_spriteTerminatorPointer), hl
    call updateEntitySprites
+:
    jp _LABEL_7E5E_

++:
    xor a
    ld (v_shouldShowNuraiOrOldMan), a
    ld hl, v_tempSprites
    ld (hl), $E0
    ld de, v_tempSprites + 1
    ld bc, $0005
    ldir
    ld ix, $C300
    ld a, $89
    ld (v_gameState), a
    ld a, (v_hasBattleStarted)
    or a
    jp nz, +
    ld a, $8A
    ld (v_gameState), a
    ld a, (v_shopFlags)
    or a
    jp z, +
    ld a, $85
    ld (v_gameState), a
+:
    call updateEntities
    ld a, $01
    call waitForInterrupt
    di
    call disableDisplay
    ld hl, _RAM_C800_
    ld de, $7800
    ld bc, $0700
    call copyBytesToVRAM
    call enableDisplay
    ei
    ret

_LABEL_7ED3_:
    ld a, $82
    ld (Mapper_Slot2), a
    call updateEntities
    ld a, $01
    call waitForInterrupt
    ld hl, v_gameState
    set 7, (hl)
    ld a, (v_hasBattleStarted)
    or a
    jp z, +
    ld a, $84
    ld (v_soundControl), a
+:
    ld a, $87
    ld (Mapper_Slot2), a
    ld a, (v_textBoxMessageIndex)
    ld hl, textPointers - 2
    rst loadAthPointer
    ld a, (hl)
    ld (v_textBoxCounter), a
    inc hl
    ld a, (hl)
    ld (v_textBoxFlags), a
    inc hl
    ld (v_currentMapOrTextNametablePointer), hl
    ld hl, $0100
    ld (_RAM_C074_), hl
    ld ix, v_textboxCursor
    ld (ix+14), $11
    ld (ix+12), $09
    xor a
    ld (v_textBoxMessageIndex), a
    ld (v_nextMapNametableUpdateTimer), a
    ld a, $94
    ld (v_soundControl), a
    ret
