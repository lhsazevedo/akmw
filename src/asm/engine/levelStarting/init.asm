initLevelStartingState:
	set 7, (hl)

	call clearVDPTablesAndDisableScreen
	call clearEntities
	call clearScroll

    ; @TODO: ?
	ld a, $82
	ld (Mapper_Slot2), a

	call resetSoundAndInitVolume

    ; Init state
	xor a
	ld (v_mapLoadingState), a
	ld (v_shouldUpdateMapNametable), a
	ld a, $03
	ld (v_nextMapNametableUpdateTimer), a

    ; @TODO: ?
	ld a, $85
	ld (Mapper_Slot2), a

    ; Load pallete
	ld hl, levelStartingPalette
	ld de, $C000
	ld bc, $0010
	call writeBcBytesToVRAM

    ; Set color 16 (sprite 0) black
	xor a
	ld de, $C010
	call writeAToVRAM

	; Decompress map tiles to VRAM
	ld hl, mapTiles
	ld de, $4000
	call decompress4BitplanesToVRAM

    ; Draw closed map parchment
	ld de, $78C8
	ld (v_mapCurrentNametableDestinationPointer), de
	ld hl, _DATA_15E75_
	ld bc, $1202
	call copyNameTableBlockToVRAM
	ld de, (v_mapCurrentNametableDestinationPointer)
	inc de
	inc de
	ld (v_mapCurrentNametableDestinationPointer), de
	ld hl, _DATA_15E99_
	ld bc, $1202
	call copyNameTableBlockToVRAM
	ld de, (v_mapCurrentNametableDestinationPointer)
	inc de
	inc de
	ld (v_mapCurrentNametableDestinationPointer), de
	ld hl, _DATA_1618D_
	ld bc, $1202
	call copyNameTableBlockToVRAM
	ld de, (v_mapCurrentNametableDestinationPointer)
	inc de
	inc de
	ld (v_mapCurrentNametableDestinationPointer), de
	ld hl, _DATA_161B1_
	ld bc, $1202
	call copyNameTableBlockToVRAM

	ld de, $78C8
	inc de
	inc de
	ld (v_mapCurrentNametableDestinationPointer), de

	ld a, $01
	ld (v_mapLoadingState), a

	ld a, $87
	ld (Mapper_Slot2), a

	ld de, $6800
	ld bc, $0020
	ld l, $00
	call fillVRAM

	; Load map arrow tile
	ld hl, _DATA_1E209_
	ld de, $6820
	ld bc, $0020
	call writeBcBytesToVRAM

	; Load Janken's castle tiles
	ld hl, _DATA_1C269_
	ld de, $6840
	ld bc, $0140
	call writeBcBytesToVRAM

	ld a, $03
	ld (v_entitydataArrayLength), a
	ld hl, v_entity1
	ld (v_entitydataArrayPointer), hl

	ld a, $83
	ld (Mapper_Slot2), a

	ld hl, tiles_AlexKiddEatingRiceBall
	ld de, $6C00
	call decompress4BitplanesToVRAM

	ld ix, v_entities.3
	ld (ix + Entity.type), $62

	ld a, $82
	ld (Mapper_Slot2), a

	call updateEntities

	ld a, $85
	ld (Mapper_Slot2), a

	ld a, $50
	ld (v_levelStartingTimer), a

	ld a, SOUND_LEVEL_STARTING
	ld (v_soundControl), a

	ei
	jp enableDisplay
