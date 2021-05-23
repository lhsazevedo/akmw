; 12th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x0C:
	bit 0, (ix+1)
	ret nz
	set 0, (ix+1)
	ld hl, $C2A0
	ld (_RAM_C5C7_), hl
	ld (ix+12), $28
	ld (ix+14), $30
	ret
