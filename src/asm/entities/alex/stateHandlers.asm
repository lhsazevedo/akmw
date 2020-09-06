; 1st entry of Jump Table from 2982 (indexed by v_entities.1.state)
alexState0Handler:
	ld (ix + Entity.xPos.high), $80
	ld (ix + Entity.yPos.high), $60
_LABEL_29C2_:
	set 0, (ix + Entity.flags)
	ld (ix + Entity.flags), $00
	ld (ix + Entity.unknown3), $03
	ld (ix + Entity.animationTimer), $01
	ld a, (v_shouldAlexStartWalkingtoNextScreen)
	or a
	jp nz, _LABEL_2A84_
	ld a, (_RAM_C051_)
	or a
	jr nz, _LABEL_2A49_
	ld a, (_RAM_C054_)
	cp $07
	jr z, +
	cp $09
	jr z, ++
	ld (ix + Entity.unknown11), $18
	ld (ix + Entity.unknown9), $08
	call _LABEL_2BFA_
	ret

+:
	ld a, $85
	ld (v_soundControl), a
	ld hl, $0040
	ld (v_entities.1.xSpeed), hl
	ld (ix+6), $04
	ld (ix+31), $18
	ld (ix+29), $0F
	ld (ix+26), $08
	ld hl, _DATA_8F2A_
	jp _LABEL_41AA_

++:
	ld (ix+26), $06
	ld a, $88
	ld (v_soundControl), a
	ld a, (v_entities.1.yPos.high)
	sub $10
	ld (v_entities.1.yPos.high), a
	ld (ix+6), $04
	ld (ix+31), $18
	ld (ix+29), $08
	ld a, (v_level)
	cp $0D
	ld hl, _DATA_9011_
	jp nz, _LABEL_41AA_
	ld (ix+20), $00
	ld hl, _DATA_8F7B_
	jp _LABEL_41AA_


_LABEL_2A49_:
	ld hl, $0040
	ld (v_entities.1.xSpeed), hl
	ld (ix+14), $90
	ld (ix+6), $04
	ld (ix+31), $10
	ld (ix+29), $0F
	ld (ix+26), $0B
	ld a, $08
	ld (_RAM_C054_), a
	ld hl, _DATA_9152_
	jp _LABEL_41AA_