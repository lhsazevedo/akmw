; 8th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptTextBoxState:
	ld a, (v_nextMapNametableUpdateTimer)
	or a
	ret z
	ld de, $0100
	call getTileNearEntityWithXYOffset
	ld a, h
	xor $B0
	ld h, a
	dec hl
	ex de, hl
	rst $08	; setVDPAddress
	ld hl, (v_currentMapOrTextNametablePointer)
	ld a, (hl)
	out (Port_VDPData), a
	ld a, $10
	out (Port_VDPData), a
	ld a, (v_textBoxCounter)
	bit 7, a
	ret nz
	inc hl
	ld (v_currentMapOrTextNametablePointer), hl
	ret

; Pointer Table from 7F50 to 7F7B (22 entries, indexed by v_messageToShowInTheTextBoxIndex)
_DATA_7F50_:
.dw _DATA_1F109_ _DATA_1F155_ _DATA_1F19D_ _DATA_1F32C_ _DATA_1F272_ _DATA_1F1B8_ _DATA_1F3E6_ _DATA_1F474_
.dw _DATA_1F497_ _DATA_1F4B8_ _DATA_1F4FA_ _DATA_1F569_ _DATA_1F664_ _DATA_1F7DC_ _DATA_1F8E5_ _DATA_1FA5D_
.dw _DATA_1FB41_ _DATA_1FB89_ _DATA_1FB89_ _DATA_1FB89_ _DATA_1FC48_ _DATA_1FC84_
