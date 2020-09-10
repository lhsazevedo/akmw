; 1st entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptTitleScreenState:
	ld hl, _RAM_C226_
	dec (hl)
	ret nz
	ld (hl), $20
	inc hl
	ld a, (hl)
	cp $06
	jr c, +
	dec hl
	ld (hl), $03
	inc hl
	inc hl
	inc (hl)
	ld a, (hl)
	and $03
	ld hl, _DATA_8F2_
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	ld de, $C002
	jp _LABEL_13F_

+:
	inc (hl)
	ld hl, _RAM_FFFF_
	ld (hl), $84
	ld hl, _DATA_8E6_
	jp loadAthJumptablePointer

; 1st entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_872_:
	ld hl, _DATA_12EFC_
	ld de, $7828
	ld bc, $0718
	call _LABEL_193_
	jp _LABEL_9C2_

; 2nd entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_881_:
	ld hl, _DATA_130A4_
	ld de, $7B98
	ld bc, $061C
	call _LABEL_193_
	jp _LABEL_97E_

; 3rd entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_890_:
	ld hl, _DATA_12FA4_
	ld de, $7800
	ld bc, $080E
	jp _LABEL_193_

; 4th entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_89C_:
	ld hl, _DATA_13014_
	ld de, $79F4
	ld bc, $0C0C
	call _LABEL_193_
	jp _LABEL_967_

; 5th entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_8AB_:
	ld hl, _DATA_131B2_
	ld de, $7A00
	ld bc, $1018
	call _LABEL_193_
	jp _LABEL_995_

; 6th entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_8BA_:
	ld hl, _DATA_1314C_
	ld de, $7D1A
	ld bc, $0322
	jp _LABEL_193_

; Data from 8C6 to 8C9 (4 bytes)
titleScreenPalette:
.db $2F $00 $03 $04

; 5th entry of Pointer Table from 1BF61 (indexed by unknown)
; Data from 8CA to 8E5 (28 bytes)
_DATA_8CA_:
.db $0C $08 $05 $0B $30 $38 $3C $3F $02 $06 $2F $00 $2F $3F $05 $0B
.db $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; Jump Table from 8E6 to 8F1 (6 entries, indexed by _RAM_C227_)
_DATA_8E6_:
.dw _LABEL_872_ _LABEL_881_ _LABEL_890_ _LABEL_89C_ _LABEL_8AB_ _LABEL_8BA_

; Data from 8F2 to 8F5 (4 bytes)
_DATA_8F2_:
.db $03 $0F $08 $0F
