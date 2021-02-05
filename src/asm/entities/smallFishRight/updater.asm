; 52nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateSmallFishRight:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	call _LABEL_7D99_
	call _LABEL_7D0B_
	jp nc, _LABEL_55A5_
	ld de, $0110
	ld a, $08
	call _LABEL_3A03_
	jr nc, +
	ld (ix+0), ENTITY_SMALL_FISH_LEFT
	ld (ix+16), $FF
	ld (ix+15), $A0
+:
	ld hl, smallFishRightAnimationDescriptor
	jp handleEntityAnimation
