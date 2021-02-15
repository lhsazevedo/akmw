; 51st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateMonsterbirdRight:
	; Reset animation if bit 0 is set
	bit 0, (ix + Entity.flags)
	jr nz, +
	set 0, (ix + Entity.flags)
	ld (ix + Entity.unknown3), $04
	ld (ix + Entity.animationTimer), $10
	ld (ix + Entity.animationTimerResetValue), $10
	jr ++

+:
	ld a, (ix + Entity.isOffScreenFlags.low)
	or (ix + Entity.isOffScreenFlags.high)
	jr nz, ++
	; Skip to ++ if monster is offscreen
	ld (ix+ Entity.xSpeed.high), $00
	ld (ix+ Entity.xSpeed), $80
	set 1, (ix + Entity.flags)
	ld a, (ix + Entity.isOffScreenFlags.low)
	or (ix + Entity.isOffScreenFlags.high)
	jr nz, ++
	call tryToKillAlexIfColliding
	; Something related to alex state being $05
	call _LABEL_7D0B_
	jp nc, _LABEL_55A5_
	ld de, $0118
	ld a, $08
	call _LABEL_3A03_
	jr nc, ++
	ld (ix + Entity.type), ENTITY_MONSTERBIRD_LEFT
	ld (ix + Entity.xSpeed.high), $FF
	ld (ix + Entity.xSpeed.low), $80
++:
	ld hl, monsterbirdRightAnimationDescriptor ; unique
	jp handleEntityAnimation
