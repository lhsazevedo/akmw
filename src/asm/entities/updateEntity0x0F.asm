; 15th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x0F:
	call tryToKillAlexIfColliding
	ld a, (_RAM_C3DB_)
	or a
	jr z, +
	dec (ix+27)
	jr ++

+:
	call _LABEL_7D0B_
	jr c, ++
	inc (ix+2)
	ld a, (_RAM_C3C2_)
	cp $03
	jp nc, _LABEL_55A5_
	ld a, $8D
	ld (v_soundControl), a
	ld (ix+27), $1E
++:
	ld a, (_RAM_C3DA_)
	ld hl, _DATA_7B64_
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 7B64 to 7B77 (10 entries, indexed by _RAM_C3DA_)
_DATA_7B64_:
.dw _LABEL_7B78_ _LABEL_7B88_ _LABEL_7B99_ _LABEL_7B88_ _LABEL_7BAA_ _LABEL_7BB4_ _LABEL_7BC5_ _LABEL_7BB4_
.dw _LABEL_7BD6_ _LABEL_7BEC_

; 1st entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7B78_:
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ld a, (_RAM_C3CE_)
	cp $70
	ret nc
	inc (ix+26)
	ret

; 2nd entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7B88_:
	call _LABEL_7C10_
	call _LABEL_7C1B_
	ret nz
	ld hl, $FE00
	ld (_RAM_C3CF_), hl
	inc (ix+26)
	ret

; 3rd entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7B99_:
	call _LABEL_7C28_
	call _LABEL_7C03_
	ret nz
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 5th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BAA_:
	ld a, (_RAM_C3CC_)
	cp $48
	ret nc
	inc (ix+26)
	ret

; 6th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BB4_:
	call _LABEL_7C40_
	call _LABEL_7C03_
	ret nz
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 7th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BC5_:
	call _LABEL_7C10_
	call _LABEL_7C33_
	ret nz
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 9th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BD6_:
	ld a, (_RAM_C3CE_)
	cp $88
	ret c
	ld hl, $0000
	ld (_RAM_C3D1_), hl
	ld hl, $0400
	ld (_RAM_C3CF_), hl
	inc (ix+26)
	ret

; 10th entry of Jump Table from 7B64 (indexed by _RAM_C3DA_)
_LABEL_7BEC_:
	ld a, (_RAM_C3CC_)
	cp $B0
	ret c
	ld hl, $0000
	ld (_RAM_C3CF_), hl
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ld (ix+26), $00
	ret

_LABEL_7C03_:
	ld hl, (_RAM_C3CF_)
	ld de, $0020
	or a
	adc hl, de
	ld (_RAM_C3CF_), hl
	ret

_LABEL_7C10_:
	ld hl, (_RAM_C3CF_)
	ld de, $FFE0
	add hl, de
	ld (_RAM_C3CF_), hl
	ret

_LABEL_7C1B_:
	ld hl, (_RAM_C3D1_)
	ld de, $0020
	or a
	adc hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C28_:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE0
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C33_:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE0
	or a
	adc hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C40_:
	ld hl, (_RAM_C3D1_)
	ld de, $0020
	add hl, de
	ld (_RAM_C3D1_), hl
	ret
