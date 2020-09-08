; 10th entry of Jump Table from 3B (indexed by v_gameState)
updateGameplayState:
	exx
	bit 7, (hl)
	jp z, _LABEL_ABD_
_LABEL_A8E_:
	call _LABEL_645E_
	call _LABEL_6F44_
	call updateEntities
	call _LABEL_67C4_
	call _LABEL_6B49_
	ld a, $09
	call _LABEL_2E6_
	ld a, (v_triggerMapScreenToggle)
	or a
	ret z
	xor a
	ld (v_triggerMapScreenToggle), a
	ld a, $0B
	ld (v_gameState), a
	ret
