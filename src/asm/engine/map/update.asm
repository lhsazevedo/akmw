; 12th entry of Jump Table from 3B (indexed by v_gameState)
updateMapState:
	exx
	bit 7, (hl)
	jp z, _LABEL_2198_
	call updateEntities
	ld a, $09
	call _LABEL_2E6_
	ld a, (v_shouldOpenMap)
	or a
	ret z
	xor a
	ld (v_shouldOpenMap), a
	jr _LABEL_1FE9_
