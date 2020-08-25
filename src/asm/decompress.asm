; Alex Kidd in Miracle World uses "Phantasy Star RLE" for tile data compression
; This function decompresses data from HL to VRAM DE.
;
; _LABEL_2A0_
decompressToVRAM:
	ld a, (hl)
	inc hl
    ; Return if we hit $0000
	or a
	ret z
	; b = Number of block bytes
	ld b, a
	; c = Run type control bit
	ld c, a
	res 7, b
-:
	ld a, e
	out (Port_VDPAddress), a
	ld a, d
	out (Port_VDPAddress), a
	ld a, (hl)
	out (Port_VDPData), a
	; If identical bytes, skip address increment
	bit 7, c
	jp z, +
	inc hl
+:
	inc de
	inc de
	inc de
	inc de
	djnz -
	jp nz, decompressToVRAM
	inc hl
	jp decompressToVRAM
