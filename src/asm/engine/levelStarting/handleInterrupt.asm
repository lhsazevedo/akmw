handleInterruptLevelStartingState:
	; Draw revealed map block
	ld a, $85
	ld (Mapper_Slot2), a
	ld hl, (_RAM_C038_)
	ld de, (v_mapCurrentNametableDestinationPointer)
	ld bc, $1202
	call copyNameTableBlockToVRAM

	; Draw right side of map parchmennt
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
	ld de, (v_mapCurrentNametableDestinationPointer)

	; @TODO: Why 4 decs?
	dec de
	dec de
	dec de
	dec de
	ld (v_mapCurrentNametableDestinationPointer), de
	ret
