; 45th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
;
; function handleMonterbirdLeft(Entity entity)
; 	if not entity.flags and 1 then
;	begin
;   	entity.unknown3 = $04
; 		entity.animationTimer = $10
; 		entity.animationTimerResetValue = $1;
;	end
;
;	if entity.isOffScreenFlags then
;	begin
;		entity.xSpeed = $FF80
;		entity.flags := entity.flags or %10
; 		_LABEL_7D99_
;		_LABEL_7D0B_
;		if something then
; 			goto _LABEL_55A5_
;		de := $0100
;		a := $08
;		r := _LABEL_3A03_
;		if (r) then
;		begin
;			ld (ix + Entity.type), ENTITY_MONSTERBIRD_RIGHT
;			ld (ix + Entity.xSpeed.high), $00
;			ld (ix + Entity.xSpeed.low), $80
;		end
;	end
;	hl = monsterbirdLeftAnimationDescriptor
;	goto handleEntityAnimation
;
updateMonsterbirdLeft:
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
	ld (ix + Entity.xSpeed.high), $FF
	ld (ix + Entity.xSpeed), $80
	set 1, (ix + Entity.flags)
	call _LABEL_7D99_
	call _LABEL_7D0B_
	jp nc, _LABEL_55A5_
	ld de, $0100
	ld a, $08
	call _LABEL_3A03_
	jr nc, ++
	ld (ix + Entity.type), ENTITY_MONSTERBIRD_RIGHT
	ld (ix + Entity.xSpeed.high), $00
	ld (ix + Entity.xSpeed.low), $80
++:
	ld hl, monsterbirdLeftAnimationDescriptor
	; Handle animation
	; Ticks timer, advances frames, always set the sprite descriptor
	jp handleEntityAnimation
