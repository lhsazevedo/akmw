updateBatLeft:
	bit 0, (ix+1)
	jr nz, +
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_4F7C_
	set 0, (ix+1)
	ld a, (ix+14)
	ld (ix+22), a
	ld (ix+5), $08
	ld (ix+6), $08
+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, clearCurrentEntity
	set 1, (ix+1)
	ld (ix+16), $FF
	ld (ix+15), $80
	call tryToKillAlexIfColliding
	call _LABEL_7D0B_
	jp nc, _LABEL_55A5_
	ld de, $0100
	call getTileNearEntityWithXYOffset
	rlca
	jr nc, _LABEL_4F43_
	ld (ix+0), $36
	ld (ix+16), $00
	ld (ix+15), $80
_LABEL_4F43_:
	inc (ix+24)
	ld a, (ix+24)
	cp $40
	jr nz, +
	xor a
	ld (ix+24), a
+:
	ld hl, _DATA_524F_
	ld c, a
	ld b, $00
	add hl, bc
	ld h, (hl)
	ld de, (v_verticalScrollSpeed)
	ld a, d
	cpl
	inc a
	ld d, a
	ld a, e
	cpl
	inc a
	ld e, a
	ld a, h
	ld h, (ix+22)
	ld l, (ix+23)
	add hl, de
	ld (ix+22), h
	ld (ix+23), l
	add a, h
	cp $C0
	jp nc, clearCurrentEntity
	ld (ix+14), a
_LABEL_4F7C_:
	ld hl, _DATA_8BBD_
	jp handleEntityAnimation