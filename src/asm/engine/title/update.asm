; 1st entry of Jump Table from 3B (indexed by v_gameState)
updateTitleScreenState:
	exx

	; Skip initialization
	bit 7, (hl)
	jp nz, realUpdateTitleScreenState

	set 7, (hl)

	xor a
	ld (_RAM_C10A_), a
	call _LABEL_311_
	ld de, $6000
	ld bc, $0020
	ld l, $00
	call fillVRAM
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_9DF3_
	call _LABEL_43B_
	ld hl, v_score
	ld de, v_score + 1
	ld bc, $1DDF
	ld (hl), $00
	ldir
	ld hl, v_titleScreenTimer
	ld (hl), TITLE_SCREEN_DURATION
	xor a
	ld (v_currentTitleScreen), a
	ld (v_titleScreenLogoTimer), a
	ld a, $84
	ld (_RAM_FFFF_), a
	ld hl, _DATA_13332_
	ld de, $4020
	call decompress4BitplanesToVRAM
	ld hl, _DATA_12D9E_
	ld de, $788E
	ld bc, $061C

	; Init title scren tile map
	call copyNameTableBlockToVRAM
	ld hl, _DATA_12E46_
	ld de, $79DA
	ld bc, $071A
	call copyNameTableBlockToVRAM

	; Set titlescreen palette
	ld hl, titleScreenPalette
	ld de, $C000
	ld b, $20
	rst $30	; memcpyToVRAM

	; Copy alex/janken sprite tiles to VRAM
	call loadTitleSprites

	call enableDisplay
	ei
	ld hl, $01D0
	ld (v_introTimer), hl
	ld a, $81
	ld (v_soundControl), a


realUpdateTitleScreenState:
	ld a, $09
	call setAndWaitForInterruptFlags
	call updateEntities

	; Exit title on button press
	ld a, (v_inputData)
	ld b, a
	and (JOY_FIREA + JOY_FIREB)
	jr nz, startGame

	; Tick intro timer
	ld hl, (v_introTimer)
	dec hl
	ld (v_introTimer), hl

	; Start demo on timer end
	ld a, h
	or l
	ret nz
	ld a, $02
	ld (v_gameState), a
	ret


startGame:
	; Update VDP register 0 as following:
	; VDP_R0_CHANGE_HEIGHT_IN_MODE_4
	; | VDP_R0_USE_MODE_4
	; | VDP_R0_ENABLE_LINE_INTERRUPT
	ld a, $26
	ld (v_VDPRegister0Value), a
	ld hl, initialValues
	ld de, v_gameState
	ld bc, $0019
	ldir

	xor a
	ld (_RAM_C10A_), a
	; Reset input flags
	ld (v_inputFlags), a

	ret
