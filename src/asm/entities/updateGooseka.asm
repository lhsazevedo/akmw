; 29th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateGooseka:
	ld a, (v_entities.6.state)
	ld hl, goosekaUpdaters
	rst $20	; loadAthJumptablePointer
	ret
