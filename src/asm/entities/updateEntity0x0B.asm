updateEntity0x0B:
	ld a, (ix+23)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_763B_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld (ix+7), a
	ld (ix+8), h
	ret
