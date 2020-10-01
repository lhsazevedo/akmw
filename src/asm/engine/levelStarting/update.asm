; 4th entry of Jump Table from 3B (indexed by v_gameState)
updateLevelStartingState:
	exx

	bit 7, (hl)
	jp z, initLevelStartingState

	ld a, (v_mapLoadingState)
	cp $15
	jp z, updateLevelStartingStateMapAnimated
	ld a, $82
	ld (Mapper_Slot2), a
	ld a, (v_shouldUpdateMapNametable)
	or a
	ld a, $09
	jp nz, +
	ld a, $01
+:
	call setAndWaitForInterruptFlags
	call updateEntities
	ld a, $85
	ld (Mapper_Slot2), a
	xor a
	ld (v_shouldUpdateMapNametable), a
	ld a, (v_nextMapNametableUpdateTimer)
	dec a
	ld (v_nextMapNametableUpdateTimer), a
	ret nz
	ld hl, v_mapLoadingState
	inc (hl)
	ld a, (hl)
	add a, a
	ld b, $00
	ld c, a
	ld hl, _DATA_15E45_
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C038_), hl
	ld a, $03
	ld (v_nextMapNametableUpdateTimer), a
	ld a, $01
	ld (v_shouldUpdateMapNametable), a
	ld hl, (v_mapCurrentNametableDestinationPointer)
	inc hl
	inc hl
	ld (v_mapCurrentNametableDestinationPointer), hl
	ret

updateLevelStartingStateMapAnimated:
	; Display arrow entity
	ld ix, v_entities.1
	ld (ix+0), ENTITY_ARROW

	; Display Janken's castle if level > 16
	ld a, (v_level)
	cp $10
	jp c, _LABEL_19CB_
	ld ix, v_entities.2
	ld (ix+0), ENTITY_JANKENS_CASTLE
	ld (ix+12), $98
	ld (ix+14), $50

_LABEL_19CB_:
	ld a, $82
	ld (Mapper_Slot2), a

	ld a, $01
	call setAndWaitForInterruptFlags
	call updateEntities

	ld hl, v_levelStartingTimer
	dec (hl)
	jp nz, _LABEL_19CB_

	; Clear entities
	ld ix, v_entity1
	call clearCurrentEntity
	ld ix, v_entities.2
	call clearCurrentEntity
	ld ix, v_entities.3
	call clearCurrentEntity
	call updateEntities

	ld a, STATE_GAMEPLAY
	ld (v_gameState), a

	; @TODO Sleep?
	ld b, $05
	jp _LABEL_343_
