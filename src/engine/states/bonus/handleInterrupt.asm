handleInterruptBonusLevelState:
    ld a, (_RAM_D800_)
    or a
    ret z
    call updateVdpAddressAfterDraw
    ld hl, (v_verticalScrollSpeed)
    ld de, (v_verticalScroll)
    add hl, de
    ld a, h
    cp $E0
    jr c, +
    ld c, $20
    add a, c
    ld h, a
+:
    ld (v_verticalScroll), hl
    cp d
    ret z
    and $07
    ret nz
    ld a, h
    add a, $C0
    ld c, $20
    jr c, +
    cp $E0
    jr nc, +
    ld c, $00
+:
    add a, c
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $7800
    add hl, de
    ex de, hl
    ld a, $83
    ld (Mapper_Slot2), a
    ld hl, (v_endingSequencePointer)
    ld a, (hl)
    inc hl
    or a
    jp z, _LABEL_170D_
    ld b, a
    inc a
    jp z, _LABEL_1730_
    inc a
    jr z, +
    push de
    exx
    pop de
    ld l, $00
    ld bc, $0040
    call fillVram
    exx
    ld a, (hl)
    or e
    ld e, a
    inc hl
    xor a
    ld (v_nametableCopyFlags), a
    call copyNametableEntriesToVRAM
_LABEL_170D_:
    ld (v_endingSequencePointer), hl
    ret

+:
    push hl
    ld a, d
    add a, e
    ld hl, $0100
    cp $FE
    ld bc, $0040
    jr c, +
    ld bc, $0020
    call fillVram
    ld bc, $0020
    ld de, $7800
+:
    call fillVram
    pop hl
    jr _LABEL_170D_

_LABEL_1730_:
    xor a
    ld (_RAM_C095_), a
    ret

_LABEL_1735_:
    call audioEngine.reset
    ld b, $05
    call sleepTenthsOfSecond
    call clearVDPTablesAndDisableScreen
    ld hl, v_levelWidth
    ld de, v_levelWidth + 1
    ld bc, $002A
    ld (hl), $00
    ldir
    xor a
    ld (v_newEntityHorizontalOffset), a
    ld a, (v_level)
    cp $11
    jp z, +
    ld a, $01
    ld (v_currentLevelIsBonusLevel), a
    ld a, $83
    ld (Mapper_Slot2), a
    ld a, (v_level)
    push af
    inc a
    ld (v_level), a
    call loadLevelTiles
    call loadLevelPalette
    ld a, $87
    ld (Mapper_Slot2), a
    call loadLevelSpriteTiles
    pop af
    ld (v_level), a
    ld hl, $8AD6
    ld de, $8AD6
    ld bc, $0607
    jr ++

+:
    ld a, (_RAM_D800_)
    or a
    jp nz, _LABEL_189A_
    ld hl, $BC53
    ld de, $BC53
    ld bc, $0300
    ld a, (_RAM_C07F_)
    or a
    jr z, ++
    ld bc, $0400
++:
    ld a, $85
    ld (Mapper_Slot2), a
    ld (v_levelLayoutPointer), hl
    ld (v_SecondLevelLayoutPointer), de
    ld a, b
    ld (v_horizontalScreenNumber), a
    xor a
    ld (v_verticalScreenNumber), a
    ld a, c
    ld (v_levelWidth), a
    xor a
    ld (v_levelHeight), a
    ld a, $08
    ld (v_levelScrollFlags), a
    ld hl, $7800
    ld (_RAM_C0B7_), hl
    ld (_RAM_C0C5_), hl
-:
    ld hl, $0100
    ld (v_horizontalScrollSpeed), hl
    call updateScroll_LABEL_67C4_
    call updateNametable_LABEL_6B49_
    call draw
    ld hl, (v_horizontalScroll)
    ld a, h
    or l
    jr nz, -
    ld a, $88
    ld (v_currentScreenNumber), a
    ld hl, $0000
    ld (v_horizontalScrollSpeed), hl
    ld a, (v_levelScrollFlags)
    ld (v_scrollFlags), a
    ld ix, v_entities
    ld de, $0020
    ld a, (v_entitydataArrayLength)
    ld b, a
-:
    call destroyCurrentEntity
    add ix, de
    djnz -
    ld a, $82
    ld (Mapper_Slot2), a
    ld ix, v_alex
    ld (ix+0), $01
    ld a, (v_level)
    cp $11
    jr z, +
    ld (ix+12), $10
    ld (ix+14), $88
    jr _LABEL_1874_

+:
    xor a
    ld (v_scrollFlags), a
    ld (ix+12), $10
    ld (ix+14), $88
    ld a, (_RAM_C07F_)
    or a
    jr nz, +
    ld c, $4C
    ld de, $88F0
    ld b, $01
    ld (ix+12), $70
    ld (ix+14), $A0
    ld (ix+10), $FF
    ld ix, v_entities.6
    ld (ix+0), c
    ld (ix+12), e
    ld (ix+14), d
    ld (ix+3), b
+:
    ld c, $60
    ld de, $98C0
    ld a, (_RAM_C07F_)
    or a
    jr z, +
    ld c, $61
    ld de, $9008
+:
    ld ix, v_entities.7
    ld (ix+0), c
    ld (ix+12), e
    ld (ix+14), d
_LABEL_1874_:
    ld ix, v_alex
    call updateAlexSpawning
    call updateEntities
    ld de, $8026
    rst setVdpAddress
    ld a, (v_level)
    inc a
    ld c, a
    ld b, $00
    ld hl, levelSongs - 1
    add hl, bc
    ld a, (hl)
    ld (v_soundControl), a
    ld hl, v_gameState
    set 7, (hl)
    ei
    jp enableDisplay

_LABEL_189A_:
    xor a
    ld de, $C000
    call writeAToVRAM
    xor a
    ld de, $C010
    call writeAToVRAM
    call clearEntities
    call updateEntities
    ld a, $83
    ld (Mapper_Slot2), a
    ld hl, data_endingSequenceText
    ld (v_endingSequencePointer), hl
    ld hl, $0039
    ld (v_verticalScrollSpeed), hl
    ld a, SOUND_ENDING_SONG
    ld (v_soundControl), a
    ld hl, v_gameState
    set 7, (hl)
    ei
    jp enableDisplay
