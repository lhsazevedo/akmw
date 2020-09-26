; 1st entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptTitleScreenState:
	; Wait for v_titleScreenTimer
	ld hl, v_titleScreenTimer
	dec (hl)
	ret nz

	; Reset timer to $20 and check if we are at the last tile screen.
	; If so, apply logo animation. If not, show the next tile.
	ld (hl), $20
	inc hl
	ld a, (hl)
	cp $06
	jr c, advanceTitleScreenLevelTile

	; Set logo color duration
	dec hl
	ld (hl), $03

	; Increment color index
	inc hl
	inc hl
	inc (hl)

	; Load color indexed by current logo color
	ld a, (hl)
	and $03
	ld hl, titleLogoAnimationColors
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	ld de, $C002
	jp writeAToVRAM


advanceTitleScreenLevelTile:
	inc (hl)
	ld hl, _RAM_FFFF_
	ld (hl), $84
	ld hl, titleScreenLevelTileUpdatersPointers
	jp loadAthJumptablePointer


showTitleUnderwaterFrame:
	ld hl, titleUnderwaterFrameNametable
	ld de, $7828
	ld bc, $0718
	call copyNameTableBlockToVRAM
	jp createTitleEntityAlexSwiming


showTitleBoatFrame:
	ld hl, titleBoatFrameNametable
	ld de, $7B98
	ld bc, $061C
	call copyNameTableBlockToVRAM
	jp createTitleEntityAlexRidingBoat


showTitleTreeFrame:
	ld hl, titleTreeFrameNametable
	ld de, $7800
	ld bc, $080E
	jp copyNameTableBlockToVRAM


showTitlePeticopterFrame:
	ld hl, titlePeticopterFrameNametable
	ld de, $79F4
	ld bc, $0C0C
	call copyNameTableBlockToVRAM
	jp createTitleEntityAlexFlyingPeticopter


showTitleJankenFrame:
	ld hl, titleJankenFrameNametable 
	ld de, $7A00
	ld bc, $1018
	call copyNameTableBlockToVRAM
	jp createTitleEntitiesJankenFlight


showTitlePushStartFrame:
	ld hl, titlePushStartFrameNametable
	ld de, $7D1A
	ld bc, $0322
	jp copyNameTableBlockToVRAM


; Data from 8C6 to 8C9 (4 bytes)
titleScreenPalette:
.db $2F $00 $03 $04

; 5th entry of Pointer Table from 1BF61 (indexed by unknown)
; Data from 8CA to 8E5 (28 bytes)
_DATA_8CA_:
.db $0C $08 $05 $0B $30 $38 $3C $3F $02 $06 $2F $00
.db $2F $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A


titleScreenLevelTileUpdatersPointers:
.dw showTitleUnderwaterFrame
.dw showTitleBoatFrame
.dw showTitleTreeFrame
.dw showTitlePeticopterFrame
.dw showTitleJankenFrame
.dw showTitlePushStartFrame


titleLogoAnimationColors:
.db $03 $0F $08 $0F
