; 12th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptMapState:
	jp _LABEL_263D_

_LABEL_1FE9_:
	call _LABEL_9DF3_
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_311_
	ld de, _RAM_C800_
	ld hl, _RAM_D000_
	ld bc, $0700
	ldir
	ld hl, _RAM_C800_
	ld de, $7800
	ld bc, $0700
	call _LABEL_145_
	call _LABEL_69B5_
	ld hl, v_entity1
	ld (v_entitydataArrayPointer), hl
	ld a, $1E
	ld (v_entitydataArrayLength), a
	ld hl, v_temporaryLevelDataCopy
	ld de, v_levelWidth
	ld bc, $002A
	ldir
	ld a, (v_level)
	push af
	ld a, (v_currentLevelIsBonusLevel)
	or a
	jr z, +
	ld hl, v_level
	inc (hl)
+:
	call _LABEL_10FF_
	ld a, $83
	ld (_RAM_FFFF_), a
	call _LABEL_E6C_
	ld hl, _DATA_C000_
	ld de, $4020
	ld bc, $0480
	call _LABEL_145_
	pop af
	ld (v_level), a
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_172B1_
	ld de, $5600
	call _LABEL_293_
	ld a, $87
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C054_)
	cp $03
	jr nz, +
	ld hl, _DATA_1DCC9_
	ld de, $6200
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1DCC9_
	ld bc, $0080
	call _LABEL_2C5_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_16FB1_
	ld de, $6300
	ld bc, $0080
	call _LABEL_145_
	jr ++

+:
	cp $04
	jr nz, +
	ld hl, _DATA_1C4C9_
	ld de, $6280
	ld bc, $00C0
	call _LABEL_145_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_17031_
	ld de, $6200
	ld bc, $0080
	call _LABEL_145_
	jr ++

+:
	cp $05
	jr nz, ++
	ld hl, _DATA_1C3A9_
	ld de, $6200
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_1C3A9_
	ld bc, $0020
	call _LABEL_2C5_
++:
	ld a, (v_level)
	push af
	ld a, (v_currentLevelIsBonusLevel)
	or a
	jr z, +
	ld hl, v_level
	inc (hl)
+:
	ld a, $87
	ld (_RAM_FFFF_), a
	call _LABEL_1134_
	pop af
	ld (v_level), a
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C054_)
	cp $01
	jr nz, +
	ld ix, v_entity1
	call _LABEL_2A6E_
+:
	ld ix, _RAM_CF80_
	call _LABEL_278A_
	ld ix, _RAM_CFA0_
	call _LABEL_278A_
	ld ix, _RAM_CFC0_
	call _LABEL_278A_
	ld ix, $C300
	call updateEntities
	call _LABEL_67C4_
	call _LABEL_6B49_
	ld ix, $C300
	ld a, (v_level)
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (v_soundControl), a
	ld a, (v_currentLevelIsBonusLevel)
	or a
	jr z, +
	ld a, $82
	ld (v_soundControl), a
	jr ++

+:
	ld a, (v_entities.1.state)
	cp ALEX_SWIMING
	jr nz, ++
	ld a, $83
	ld (v_soundControl), a
	ld a, (v_level)
	cp $10
	jp nz, ++
	ld a, $84
	ld (v_soundControl), a
++:
	ld a, (_RAM_C054_)
	cp $07
	jp c, ++
	jp nz, +
	ld a, $85
	ld (v_soundControl), a
	jp ++

+:
	cp $08
	jp z, ++
	ld a, $88
	ld (v_soundControl), a
++:
	ei
	ld a, $8A
	ld (v_gameState), a
	ld a, $09
	call _LABEL_2E6_
	ld a, (_RAM_C054_)
	or a
	jr z, ++
	cp $03
	jr nc, ++
	ld b, $AA
	cp $01
	jr z, +
	ld b, $AB
+:
	ld a, b
	ld (v_soundControl), a
++:
	call _LABEL_2F6_
	ld b, $0A
	jp _LABEL_343_

_LABEL_2198_:
	set 7, (hl)
	call _LABEL_9DF3_
	ld hl, v_levelWidth
	ld de, v_temporaryLevelDataCopy
	ld bc, $002A
	ldir
	dec hl
	ld (hl), $00
	ld d, h
	ld e, l
	dec de
	ld bc, $0029
	lddr
	call _LABEL_311_
	ld b, $05
	call _LABEL_343_
	ld hl, _RAM_C800_
	ld de, _RAM_D000_
	ld bc, $0700
	ldir
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $06FF
	ld (hl), $00
	ldir
	xor a
	ld (_RAM_C03C_), a
	ld a, $85
	ld (_RAM_FFFF_), a
	ld b, $18
	ld de, _RAM_C808_
	ld (_RAM_C03A_), de
	ld hl, _DATA_11E75_
	ld (_RAM_C038_), hl
-:
	push bc
	ld de, (_RAM_C03A_)
	ld hl, (_RAM_C038_)
	ld bc, $1202
	call _LABEL_2522_
	ld de, (_RAM_C03A_)
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld hl, _RAM_C03C_
	inc (hl)
	ld a, (hl)
	add a, a
	ld b, $00
	ld c, a
	ld hl, _DATA_15E45_
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C038_), hl
	pop bc
	djnz -
	xor a
	ld (v_inventoryItemSelectionState), a
	ld a, $03
	ld (v_entitydataArrayLength), a
	ld hl, _RAM_CF80_
	ld (v_entitydataArrayPointer), hl
	ld de, _RAM_CF80_ + 1
	ld bc, $005F
	ld (hl), $00
	ldir
	call _LABEL_69B5_
	ld a, $87
	ld (_RAM_FFFF_), a
	ld de, $6800
	ld bc, $0020
	ld l, $00
	call _LABEL_184_
	ld hl, _DATA_1E209_
	ld de, $6820
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_1C269_
	ld de, $6840
	ld bc, $0140
	call _LABEL_145_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld ix, _RAM_CF80_
	ld (ix+0), $21
	ld (ix+7), <_DATA_8A1D_
	ld (ix+8), >_DATA_8A1D_
	ld (ix+6), $08
	ld (ix+5), $08
	ld (ix+12), $74
	ld (ix+14), $8E
	set 0, (ix+1)
	ld ix, _RAM_CFA0_
	ld (ix+0), $56
	res 0, (ix+1)
	call updateEntities
	ld a, (v_level)
	cp $10
	jr c, +
	ld ix, _RAM_CFC0_
	ld (ix+0), $58
	ld (ix+12), $98
	ld (ix+14), $38
+:
	ld a, $82
	ld (_RAM_FFFF_), a
	ld de, $5800
	ld hl, _DATA_B385_
	ld bc, $0050
	ld a, $01
	call _LABEL_1D6_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, mapTiles
	ld de, $4000
	call _LABEL_293_
	ld hl, _DATA_16F11_
	ld de, $5980
	ld bc, $01C0
	call _LABEL_145_
	ld hl, _DATA_170B1_
	ld de, $5BA0
	ld bc, $01E0
	call _LABEL_145_
	ld a, $87
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1C000_
	ld de, $5F80
	call _LABEL_293_
	ld hl, _DATA_1C3C9_
	ld de, $5B20
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1E229_
	ld de, $5D80
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1C169_
	ld de, $5E00
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1C1E9_
	ld de, $5E80
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1D349_
	ld de, $5780
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1E189_
	ld de, $5F00
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_23FD_
	ld de, $C000
	ld bc, $0020
	call _LABEL_145_
	call _LABEL_24EC_
	ld de, $7800
	ld hl, _RAM_C800_
	ld bc, $0600
	call _LABEL_145_
	ld hl, _DATA_2429_
	ld de, $7D42
	ld bc, $0204
	call _LABEL_193_
	ld hl, $C025
	ld de, $7D88
	ld c, $01
	call _LABEL_456_
	ld hl, _DATA_2431_
	ld de, $7CC2
	ld bc, $0204
	call _LABEL_193_
	ld a, $C0
	ld de, $7D12
	call _LABEL_13F_
	ld hl, $C032
	ld de, $7D06
	call _LABEL_454_
	ld a, $08
	ld (_RAM_C10A_), a
	ld hl, _DATA_241D_
	ld de, $7D94
	ld b, $0C
	call _LABEL_159_
	ld hl, $C022
	ld de, $7D9E
	call _LABEL_454_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (v_level)
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (v_soundControl), a
	ld a, (v_entities.1.state)
	cp ALEX_SWIMING
	jr nz, +
	ld a, $83
	ld (v_soundControl), a
	ld a, (v_level)
	cp $10
	jp nz, +
	ld a, $84
	ld (v_soundControl), a
+:
	ld a, (_RAM_C054_)
	cp $07
	jp c, ++
	jp nz, +
	ld a, $85
	ld (v_soundControl), a
	jp ++

+:
	cp $08
	jp z, ++
	ld a, $88
	ld (v_soundControl), a
++:
	ld a, (v_currentLevelIsBonusLevel)
	or a
	jr z, +
	ld a, $82
	ld (v_soundControl), a
+:
	ei
	call _LABEL_2F6_
	ret

; Data from 23FD to 241C (32 bytes)
_DATA_23FD_:
.db $00 $2F $0B $06 $01 $0C $08 $04 $3F $3E $38 $03 $30 $00 $0F $00
.db $00 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; Data from 241D to 2428 (12 bytes)
_DATA_241D_:
.db $FC $FD $FE $FF $00 $00 $00 $00 $00 $00 $00 $C0

; Data from 2429 to 2430 (8 bytes)
_DATA_2429_:
.db $E4 $08 $E5 $08 $E6 $08 $E7 $08

; Data from 2431 to 2438 (8 bytes)
_DATA_2431_:
.db $BC $08 $BD $08 $BE $08 $BF $08

; 33rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_2439_:
	ld b, (ix+20)
	ld (ix+7), <_DATA_8A1D_
	ld (ix+8), >_DATA_8A1D_
	res 4, b
	ld a, (v_inputData)
	ld c, a
	and $03
	ld hl, $0000
	call nz, _LABEL_24B6_
	ld (ix+17), l
	ld (ix+18), h
	ld hl, $0000
	call _LABEL_24CF_
	ld (ix+15), l
	ld (ix+16), h
	set 1, b
	ld (ix+20), b
	ld a, (v_entities.1.state)
	cp $10
	ret z
	ld a, (_RAM_C054_)
	cp $07
	ret nc
	ld a, (_RAM_C051_)
	or a
	ret nz
	ld a, (v_inventoryItemSelectionState)
	or a
	ret nz
	ld de, $1404
	call _LABEL_7C4B_
	and $E0
	ret z
	ld d, a
	exx
	ld hl, _DATA_8A18_
	call handleEntityAnimation
	exx
	ld a, (v_inputData)
	and $30
	ret z
	ld a, $8F
	ld (v_soundControl), a
	ld a, $81
	ld (v_inventoryItemSelectionState), a
	xor a
	ld (v_invincibilityTimer), a
	ld a, d
	rrca
	rrca
	rrca
	rrca
	ld c, a
	ld b, $00
	ld hl, _DATA_2544_ - 2
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

_LABEL_24B6_:
	ret

; Data from 24B7 to 24CE (24 bytes)
.db $0F $DD $7E $0E $38 $09 $FE $9C $D0 $21 $00 $02 $CB $E0 $C9 $FE
.db $88 $D8 $21 $00 $FE $CB $98 $C9

_LABEL_24CF_:
	ld a, c
	and $0C
	res 2, b
	ret z
	set 2, b
	and $04
	ld a, (ix+12)
	jr nz, +
	cp $E8
	ret nc
	ld hl, $0200
	ret

+:
	cp $70
	ret c
	ld hl, $FE00
	ret

_LABEL_24EC_:
	ld hl, v_hasSunstoneMedallion
	set 0, (hl)
	ld hl, v_hasMagicCapsuleA
	ld b, $0A
-:
	ld a, (hl)
	or a
	jr z, +
	push hl
	push bc
	ld a, b
	add a, a
	ld e, a
	ld d, $00
	ld a, $86
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1BDB9_ - 2
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld bc, $0204
	call _LABEL_2522_
	pop bc
	pop hl
+:
	inc hl
	djnz -
	ret

_LABEL_2522_:
	push bc
	ld b, $00
	push de
	ldir
	pop de
	ex de, hl
	ld c, $40
	add hl, bc
	ex de, hl
	pop bc
	djnz _LABEL_2522_
	ret

_LABEL_2532_:
	ld hl, $0040
	push bc
	push de
	xor a
-:
	ld (de), a
	inc de
	dec c
	jr nz, -
	pop de
	add hl, de
	ex de, hl
	pop bc
	djnz _LABEL_2532_
	ret

; Jump Table from 2544 to 2551 (7 entries, indexed by _RAM_C801_)
_DATA_2544_:
.dw _LABEL_255A_ _LABEL_2568_ _LABEL_2576_ _LABEL_2580_ _LABEL_2594_ _LABEL_25D3_ _LABEL_25A8_

; Data from 2552 to 2559 (8 bytes)
.db $E4 $08 $E5 $08 $E6 $08 $E7 $08

; 1st entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_255A_:
	xor a
	ld (v_hasMagicCapsuleA), a
	ld hl, $7CF4
	ld de, _RAM_CCF4_
	ld a, $03
	jr _LABEL_25B4_

; 2nd entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2568_:
	xor a
	ld (v_hasMagicCapsuleB), a
	ld hl, $7CF8
	ld de, _RAM_CCF8_
	ld a, $04
	jr _LABEL_25B4_

; 3rd entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2576_:
	ld hl, $7CE0
	ld de, _RAM_CCE0_
	ld a, $06
	jr _LABEL_25B4_

; 4th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2580_:
	xor a
	ld (v_hasCaneOfFlight), a
	ld hl, $05FF
	ld (v_invincibilityTimer), hl
	ld hl, $7CF0
	ld de, _RAM_CCF0_
	ld a, $01
	jr _LABEL_25B4_

; 5th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2594_:
	xor a
	ld (v_hasTeleportPowder), a
	ld hl, $05FF
	ld (v_invincibilityTimer), hl
	ld hl, $7CEC
	ld de, _RAM_CCEC_
	ld a, $02
	jr _LABEL_25B4_

; 7th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_25A8_:
	xor a
	ld (v_hasPowerBracelet), a
	ld hl, $7CDC
	ld de, _RAM_CCDC_
	ld a, $05
_LABEL_25B4_:
	ld (_RAM_C054_), a
	ld (v_selectedItemNametablePointer), hl
	ld bc, $0204
	call _LABEL_2532_
	ld hl, v_entities.2
	ld b, $03
-:
	call clearEntity
	inc hl
	djnz -
	ld hl, v_entities.1.unknown8
	ld a, (hl)
	and $F4
	ld (hl), a
	ret

; 6th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_25D3_:
	call _LABEL_9DF3_
	call _LABEL_311_
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld (hl), $00
	ld bc, $06FF
	ldir
	ld hl, _DATA_2674_
	ld de, $C000
	ld bc, $0020
	call _LABEL_145_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_15924_
	ld de, $7892
	ld bc, $1218
	call _LABEL_193_
	ld hl, _DATA_15AD4_
	ld de, $4000
	call _LABEL_293_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld ix, _RAM_CF80_
	ld b, $03
	ld de, $0020
-:
	call _LABEL_278A_
	add ix, de
	djnz -
	call updateEntities
	ei
	call _LABEL_2F6_
-:
	ld a, $01
	call _LABEL_2E6_
	call updateEntities
	ld a, (v_triggerMapScreenToggle)
	or a
	jr z, -
	xor a
	ld (v_triggerMapScreenToggle), a
	jp _LABEL_1FE9_

_LABEL_263D_:
	ld hl, v_inventoryItemSelectionState
	bit 7, (hl)
	ret z
	res 7, (hl)
	ld de, (v_selectedItemNametablePointer)
	ld bc, $0204
	jp _LABEL_1C5_
