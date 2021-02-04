; 56th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateDebrisTopLeft:
	bit 0, (ix + Entity.flags)
	jr nz, _LABEL_596B_
	set 0, (ix + Entity.flags)
	set 1, (ix + Entity.flags)
	ld (ix + Entity.xSpeed.high), $FF
	ld (ix + Entity.xSpeed.low), $80
	ld (ix + Entity.ySpeed.high), $FF
	ld (ix + Entity.ySpeed.low), $80
	ld (ix + Entity.animationTimer), $08
	ld (ix + Entity.animationTimerResetValue), $08
	ld a, (ix + Entity.unknown6)
	ld de, $0020
	ld iy, _RAM_C5E0_
	ld (iy+0), $39
	ld (iy+24), a
	res 0, (iy+1)
	set 1, (iy+1)
	add iy, de
	ld (iy+0), $3A
	ld (iy+24), a
	res 0, (iy+1)
	set 1, (iy+1)
	add iy, de
	ld (iy+0), $3B
	ld (iy+24), a
	res 0, (iy+1)
	set 1, (iy+1)
	jr +

_LABEL_596B_:
	ld a, (ix + Entity.xPos.high)
	cp $F8
	jp nc, clearCurrentEntity
	ld a, (ix + Entity.isOffScreenFlags.low)
	or (ix + Entity.isOffScreenFlags.high)
	jp nz, clearCurrentEntity
	ld h, (ix + Entity.ySpeed.high)
	ld l, (ix + Entity.ySpeed.low)
	ld de, $0030
	add hl, de
	ld (ix + Entity.ySpeed.high), h
	ld (ix + Entity.ySpeed.low), l
+:
	ld a, (ix + Entity.unknown6)
	ld hl, _DATA_5D8C_
	rst $10	; _LABEL_10_
	jp handleEntityAnimation
