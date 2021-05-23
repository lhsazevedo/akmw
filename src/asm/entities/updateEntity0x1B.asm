; 28th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x1C:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_7152_
	rst $20	; loadAthJumptablePointer
	ret
