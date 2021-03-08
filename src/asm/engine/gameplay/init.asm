initGameplayState:
	call clearVDPTablesAndDisableScreen
	call clearEntities
	ld a, $82
	ld (Mapper_Slot2), a
	call resetSoundAndInitVolume
	ld hl, v_levelWidth
	ld de, v_levelWidth + 1
	ld bc, $002A
	ld (hl), $00
	ldir
	ld a, ENTITY_ARRAY_SIZE
	ld (v_entitydataArrayLength), a
	ld hl, v_entity1
	ld (v_entitydataArrayPointer), hl
	call loadLevelPalette
	call loadLevelSpriteTiles

	; Load Rice Ball tiles
	ld hl, _DATA_1F0A9_
	ld de, $61A0
	ld bc, $0060
	call writeBcBytesToVRAM

	; Load Money Bag tiles (plus another one)
	ld hl, _DATA_1D349_
	ld de, $66C0
	ld bc, $0100
	call writeBcBytesToVRAM

	ld a, (v_level)
	ld hl, _DATA_E1F_ - 1
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	or a
	jp z, +++
	cp $01
	jp nz, +
	ld a, $01
	ld (_RAM_C051_), a
	jp ++

+:
	ld a, $09
	ld (_RAM_C054_), a
++:
	ld hl, _DATA_1DB29_
	ld de, $6200
	ld bc, $0020
	call writeBcBytesToVRAM
	ld hl, _DATA_1D429_
	ld de, $6220
	ld bc, $01C0
	call writeBcBytesToVRAM
+++:
	; Load character tiles
	ld a, $85
	ld (Mapper_Slot2), a
	ld de, $5600
	ld hl, _DATA_172B1_
	call decompress4BitplanesToVRAM

	; Load boxes tiles
	ld a, $83
	ld (Mapper_Slot2), a
	ld hl, _DATA_C000_
	ld de, $4020
	ld bc, $0480
	call writeBcBytesToVRAM

	; Load level tiles
	call _LABEL_E6C_

	; @TODO
	call loadLevel

	ld a, (v_level)
	ld hl, _DATA_D70_ - 3
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
	ld (_RAM_C0FD_), hl
	ld a, $82
	ld (Mapper_Slot2), a
	ld a, (v_level)
	ld hl, entitiesDescriptorsPointers - 2
	call _LABEL_10_
	ld (v_entitydataPointersPointer), hl
	xor a
	ld (_RAM_C08E_), a
	ld (v_hasJankenMatchStarted), a
	ld hl, _RAM_D900_
	ld (hl), $00
	ld de, _RAM_D900_ + 1
	ld bc, $05FF
	ldir
	ld a, (v_level)
	cp $0B
	jp c, _LABEL_C43_
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
	jp z, _LABEL_C43_
	ex de, hl
	ld hl, (_RAM_C078_)
	ld bc, $0100
	add hl, bc
	ld (_RAM_C078_), hl
	ex de, hl
	ld b, $05
	jp ---

_LABEL_BF3_:
	cp $10
	jp nz, _LABEL_C43_
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
	jp z, _LABEL_C43_
	ex de, hl
	ld hl, (_RAM_C078_)
	ld bc, $0100
	add hl, bc
	ld (_RAM_C078_), hl
	ex de, hl
	ld b, $07
	jp ---
