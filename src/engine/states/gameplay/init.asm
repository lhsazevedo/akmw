initGameplayState:
    call clearVDPTablesAndDisableScreen
    call clearEntities
    ld a, $82
    ld (Mapper_Slot2), a
    call audioEngine.reset
    ld hl, v_levelWidth
    ld de, v_levelWidth + 1
    ld bc, $002A
    ld (hl), $00
    ldir
    ld a, ENTITY_ARRAY_SIZE
    ld (v_entitydataArrayLength), a
    ld hl, v_entities
    ld (v_entitydataArrayPointer), hl
    call loadLevelPalette
    call loadLevelSpriteTiles

    ; Load Rice Ball tiles
    ld hl, _DATA_1F0A9_
    ld de, $61A0
    ld bc, $0060
    call copyBytesToVRAM

    ; Load Money Bag tiles (plus another one)
    ld hl, _DATA_1D349_
    ld de, $66C0
    ld bc, $0100
    call copyBytesToVRAM

    ; If current level data is 1:
    ;    Set v_shouldSpawnRidingBoat_RAM_C051_ to $1 and load bullet tiles
    ; If current level data is > 1:
    ;   Set v_alexActionState to $9 and load bullet tiles
    ld a, (v_level)
    ld hl, levelSpawnStates - 1
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    or a

    jp z, @done
    cp $01
    jp nz, @dataIsBiggerThanOne

    ld a, $01
    ld (v_shouldSpawnRidingBoat_RAM_C051_), a
    jp @loadBulletTiles

@dataIsBiggerThanOne:
    ld a, $09
    ld (v_alexActionState), a

@loadBulletTiles
    ld hl, _DATA_1DB29_
    ld de, $6200
    ld bc, $0020
    call copyBytesToVRAM
    ld hl, _DATA_1D429_
    ld de, $6220
    ld bc, $01C0
    call copyBytesToVRAM

@done:
    ; Load character tiles
    ld a, $85
    ld (Mapper_Slot2), a
    ld de, $5600
    ld hl, _DATA_172B1_
    call decompressTilesToVram

    ; Load boxes tiles
    ld a, $83
    ld (Mapper_Slot2), a
    ld hl, _DATA_C000_
    ld de, $4020
    ld bc, $0480
    call copyBytesToVRAM

    ; Load level tiles
    call loadLevelTiles

    ; @TODO
    call loadLevel

    ld a, (v_level)
    ld hl, shopDoorsConfigs - 3
    ld c, a
    add a, a
    add a, c
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    ld (v_shopEntranceHorizontalPosition), a
    inc hl
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld (v_shopDoorNametableAddressPointer), hl
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld hl, entitiesDescriptorsPointers - 2
    call loadAthPointer
    ld (v_entitydataPointersPointer), hl
    xor a
    ld (_RAM_C08E_), a
    ld (v_hasBattleStarted), a
    ld hl, _RAM_D900_
    ld (hl), $00
    ld de, _RAM_D900_ + 1
    ld bc, $05FF
    ldir
    ld a, (v_level)
    cp $0B
    jp c, initGameplayStateSecondary
    jp nz, _LABEL_BF3_
    ld a, $01
    ld (_RAM_C08E_), a
    ld hl, _DATA_97DD_
    ld b, $05
    ld de, _RAM_D900_
---:
    ld (_RAM_C078_), de
    ld (_RAM_C07A_), de
--:
    push bc
    ld a, (hl)
    or a
    inc hl
    jp z, +
    inc a
    dec hl
-:
    ldi
    inc de
    dec a
    jp nz, -
+:
    ex de, hl
    ld hl, (_RAM_C07A_)
    ld bc, $0020
    add hl, bc
    ld (_RAM_C07A_), hl
    ex de, hl
    pop bc
    djnz --
    ld a, (hl)
    cp $FF
    jp z, initGameplayStateSecondary
    ex de, hl
    ld hl, (_RAM_C078_)
    ld bc, $0100
    add hl, bc
    ld (_RAM_C078_), hl
    ex de, hl
    ld b, $05
    jp ---

; @TODO
_LABEL_BF3_:
    cp $10
    jp nz, initGameplayStateSecondary
    ld a, $01
    ld (_RAM_C08E_), a
    ld hl, _DATA_9800_
    ld b, $07
    ld de, _RAM_D900_
---:
    ld (_RAM_C078_), de
    ld (_RAM_C07A_), de
--:
    push bc
    ld a, (hl)
    or a
    inc hl
    jp z, +
    inc a
    dec hl
-:
    ldi
    inc de
    dec a
    jp nz, -
+:
    ex de, hl
    ld hl, (_RAM_C07A_)
    ld bc, $0020
    add hl, bc
    ld (_RAM_C07A_), hl
    ex de, hl
    pop bc
    djnz --
    ld a, (hl)
    cp $FF
    jp z, initGameplayStateSecondary
    ex de, hl
    ld hl, (_RAM_C078_)
    ld bc, $0100
    add hl, bc
    ld (_RAM_C078_), hl
    ex de, hl
    ld b, $07
    jp ---

; @TODO: What is the condition for this to be executed?
initGameplayStateSecondary:
    ld ix, v_alex
    ld (ix + Entity.type), ENTITY_ALEX

    ld a, (v_level)
    add a, a
    ld c, a
    ld b, $00
    ld hl, startingPositions - 2
    add hl, bc
    ld a, (hl)
    ld (ix + Entity.xPos.high), a
    inc hl
    ld a, (hl)
    ld (ix + Entity.yPos.high), a

    call updateAlexSpawning
    call updateEntities

    ld a, (v_level)
    ld hl, paletteUpdatersPointers - 2
    call loadAthPointer
    ld (paletteUpdaterPointer), hl

    ; @TODO: ???
    ld hl, levelTileUpdatersPointers - 2
    ld a, (v_level)
    add a, a
    ld e, a
    ld d, $00
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    ld (v_levelTileUpdaterPointer), hl
    ld a, $01
    ld (v_levelTileUpdateTimer), a

    ld a, (v_level)
    ld hl, scrollFlagsUpdatersPointers - 2
    call loadAthPointer
    ld (scrollFlagsUpdaterPointer), hl

    ; @TODO: Maybe change to entitySpawner
    ld a, (v_level)
    ld hl, entityLoadersPointers - 2
    call loadAthPointer
    ld (newEntitiesLoaderPointer), hl

    ; @TODO: Understand v_questionMarkBoxIndex better
    ld a, (v_level)
    ld c, a
    ld b, $00
    ld hl, levelQuestionMarkBoxIndexes - 1
    add hl, bc
    ld a, (hl)
    ld (v_questionMarkBoxIndex), a

    ld a, $80 | :_DATA_1EFC9_
    ld (Mapper_Slot2), a

    ; Load Ghost left tiles
    ld hl, _DATA_1EFC9_
    ld de, $6400
    ld bc, $00E0
    call copyBytesToVRAM

    ; Load Ghost right tiles
    ld hl, _DATA_1EFC9_
    ld bc, $00E0
    call copyMirroredTilesToVramAtCurrentAddress

    ; Load 1up tiles
    ld a, $80 | :_DATA_17191_
    ld (Mapper_Slot2), a
    ld hl, _DATA_17191_
    ld de, $65C0
    ld bc, $0080
    call copyBytesToVRAM

    ; Load Power Bracelet tiles
    ld hl, _DATA_170B1_
    ld de, $6640
    ld bc, $0060
    call copyBytesToVRAM
    ld hl, _DATA_170F1_
    ld bc, $0020
    call copyMirroredTilesToVramAtCurrentAddress

    ; Load level bgm
    ld a, $82
    ld (Mapper_Slot2), a
    ld a, (v_level)
    ld c, a
    ld b, $00
    ld hl, levelSongs - 1
    add hl, bc
    ld a, (hl)
    ld (v_soundControl), a

    ; Mark state as inititalized
    ld hl, v_gameState
    set 7, (hl)
    ei
    jp enableDisplay
