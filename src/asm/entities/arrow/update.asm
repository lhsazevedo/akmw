; 86th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateArrow:
	bit 0, (ix + Entity.flags)
	jp nz, realUpdateArrow

    ; Initialize arrow
	set 0, (ix + Entity.flags)
	ld (ix + Entity.animationTimer), $08
	ld (ix + Entity.animationTimerResetValue), $08
	ld a, (v_level)
	add a, a
	ld c, a
	ld b, $00
	ld hl, mapArrowPositions - 2
	add hl, bc
	ld a, (hl)
	ld (ix + Entity.xPos.high), a
	inc hl
	ld a, (hl)
	ld b, a
	ld a, (v_gameState)
	and $7F
	cp STATE_LEVEL_STARTING
	jp z, +
	ld a, b
	sub $18
	ld b, a
	ld a, (v_currentLevelIsBonusLevel)
	or a
	jr z, +
	ld (ix + Entity.xPos.high), $5E
	ld (ix + Entity.yPos.high), $46
	jr realUpdateArrow

+:
	ld a, b
	ld (ix + Entity.yPos.high), a
realUpdateArrow:
	ld hl, arrowAnimationDescriptor
	jp handleEntityAnimation
