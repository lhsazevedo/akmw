; @TODO Document - Colision related
; @param ix - Entity A
; @param iy - Entity B
checkEntityCollision:
	ld a, (iy + Entity.isOffScreenFlags.low)
	or (iy + Entity.isOffScreenFlags.high)
	scf
	ret nz
	ld l, (iy + Entity.unknown2)
	ld h, $00
	ld bc, _DATA_91D0_
	add hl, bc
	ex de, hl
	ld l, (ix + Entity.unknown2)
	ld h, $00
	add hl, bc
	ld a, (de)
	ld b, a
	inc de
	ld a, (de)
	add a, b
	add a, (iy + Entity.xPos.high)
	jr nc, _LABEL_7CE6_
	ld a, $FF
_LABEL_7CE6_:
	sub (hl)
	sub (ix + Entity.xPos.high)
	ret c
	ld c, a
	inc hl
	ld a, (de)
	add a, (hl)
	cp c
	ret c
	inc de
	inc hl
	ld a, (de)
	ld b, a
	inc de
	ld a, (de)
	add a, b
	add a, (iy + Entity.yPos.high)
	sub (hl)
	sub (ix + Entity.yPos.high)
	ret c
	inc hl
	ld c, a
	ld a, (de)
	add a, (hl)
	cp c
	ret c
	set 7, (ix + Entity.flags)
	ret
