; 12th entry of Jump Table from 3B (indexed by v_gameState)
updateMapState:
	exx
	bit 7, (hl)
	jp z, initMapState
	call updateEntities
	ld a, $09
	call setAndWaitForInterruptFlags
	ld a, (v_shouldOpenMap)
	or a
	ret z
	xor a
	ld (v_shouldOpenMap), a
	jr _LABEL_1FE9_
