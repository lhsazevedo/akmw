updateLevelCompletedState:
    exx
    bit 7, (hl)
    jp z, +
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, $01
    call waitForInterrupt
    ld hl, v_level
    inc (hl)
    ld a, $85
    ld (Mapper_Slot2), a
    ld a, $03
    ld (v_gameState), a
    ret

+:
    set 7, (hl)
    call audioEngine.reset
    ld b, $05
    call sleepTenthsOfSecond
    call clearVDPTablesAndDisableScreen
    ld hl, _RAM_D7D0_
    ld de, _RAM_D7D0_ + 1
    ld (hl), $00
    ld bc, $000E
    ldir
    xor a
    ld (_RAM_C08E_), a
    ld b, ENTITY_ARRAY_SIZE
    ld de, $0020
    ld ix, v_entities
-:
    call destroyCurrentEntity
    add ix, de
    djnz -
    ld hl, _RAM_D800_
    ld de, _RAM_D800_ + 1
    ld (hl), $00
    ld bc, $0007
    ldir
    ld a, (v_level)
    cp $0A
    jp nz, +
    ld hl, _RAM_D802_
    set 0, (hl)
+:
    ld de, $8026
    call setVDPAddress

    ; Reset some values
    xor a
    ld (v_newEntityHorizontalOffset), a
    ld (v_shopFlags), a
    ld (_RAM_C054_), a
    ld (v_shouldSpawnRidingBoat_RAM_C051_), a
    ld (v_currentLevelIsBonusLevel), a

    ei
    jp enableDisplay
