; 29th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateGooseka:
	ld a, (v_entities.6.state)
	ld hl, _DATA_779E_
	rst $20	; loadAthJumptablePointer
	ret
