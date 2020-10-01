handleInterruptLevelStartingState:

	ld a, :_DATA_1618D_ | $80
	ld (Mapper_Slot2), a

	; Draw revealed map block
	ld hl, (v_currentMapOrTextNametablePointer)
	ld de, (v_currentMapNametableDestinationPointer)
	ld bc, $1202
	call copyNameTableBlockToVRAM

	; Draw right side of map parchmennt
	ld de, (v_currentMapNametableDestinationPointer)
	inc de
	inc de
	ld (v_currentMapNametableDestinationPointer), de
	ld hl, _DATA_1618D_
	ld bc, $1202
	call copyNameTableBlockToVRAM
	ld de, (v_currentMapNametableDestinationPointer)
	inc de
	inc de
	ld (v_currentMapNametableDestinationPointer), de
	ld hl, _DATA_161B1_
	ld bc, $1202
	call copyNameTableBlockToVRAM
	ld de, (v_currentMapNametableDestinationPointer)

	; @TODO: Why 4 decs?
	dec de
	dec de
	dec de
	dec de
	ld (v_currentMapNametableDestinationPointer), de
	ret
