; 29th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x1D:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_779E_
	rst $20	; loadAthJumptablePointer
	ret
