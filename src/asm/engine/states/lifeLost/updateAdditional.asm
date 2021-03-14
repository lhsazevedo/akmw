_LABEL_6EAF_:
	ld a, (ix+24)
	ld (ix+14), a
	ld a, (ix+22)
	ld (ix+12), a
_LABEL_6EBB_:
	exx
	ld a, (ix+12)
	ld (ix+25), a
	ld de, $0100
	ld a, $08
	ld b, (ix+26)
	call _LABEL_39ED_
	exx
	jp nc, +
--:
	ld a, $08
	add a, (ix+14)
	ld (ix+14), a
	cp $90
	jp c, _LABEL_6EBB_
	ld a, $08
	add a, (ix+22)
	ld (ix+22), a
	cp $60
	jp c, _LABEL_6EAF_
	ret

+:
	ld b, (ix+26)
	ld a, $08
	add a, (ix+25)
	ld (ix+12), a
-:
	exx
	ld de, $0100
	ld a, $08
	ld b, (ix+23)
	call _LABEL_39ED_
	exx
	jp nc, +
	ld a, (ix+25)
	ld (ix+12), a
	jp --

+:
	ld a, $08
	add a, (ix+12)
	ld (ix+12), a
	djnz -
	ld a, (ix+25)
	ld (ix+12), a
	ret

_LABEL_6F21_:
	ld a, (_RAM_C0BC_)
	cp $07
	ret nc
	ld b, a
	ld a, (ix+14)
	sub b
	ld (ix+14), a
	ret

; Pointer Table from 6F30 to 6F37 (4 entries, indexed by _RAM_C3C2_)
_DATA_6F30_:
.dw _DATA_6F38_ _DATA_6F3B_ _DATA_6F3E_ _DATA_6F41_

; 1st entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F38 to 6F3A (3 bytes)
_DATA_6F38_:
.db $25 $B0 $70

; 2nd entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F3B to 6F3D (3 bytes)
_DATA_6F3B_:
.db $46 $C0 $88

; 3rd entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F3E to 6F40 (3 bytes)
_DATA_6F3E_:
.db $25 $B0 $90

; 4th entry of Pointer Table from 6F30 (indexed by _RAM_C3C2_)
; Data from 6F41 to 6F43 (3 bytes)
_DATA_6F41_:
.db $25 $B0 $90
