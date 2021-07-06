updateGooseka:
	ld a, (v_entities.6.state)
	ld hl, goosekaUpdaters
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 779E to 77BD (16 entries, indexed by _RAM_C3BA_)
goosekaUpdaters:
.dw updateOpponentInit	                            ; 0x0
.dw updateOpponentMakeAlexGetIntoPosition	        ; 0x1
.dw updateOpponentLoadOpponentTilesAndShowTextbox1	; 0x2
.dw updateOpponentShowTextbox2	                    ; 0x3
.dw updateOpponentStartRound	                    ; 0x4
.dw updateOpponentDance	                            ; 0x5
.dw updateOpponentThrow	                            ; 0x6
.dw updateOpponentHandleThrows	                    ; 0x7
.dw updateOpponentShowBattleLostTextbox	        ; 0x8
.dw updateOpponentTurnAlexIntoStatue	            ; 0x9
.dw updateOpponentRespawOpponent	                                ; 0xA
.dw _LABEL_77BE_	                                ; 0xB
.dw _LABEL_73CB_	                                ; 0xC
.dw _LABEL_74A4_	                                ; 0xD
.dw _LABEL_77CD_	                                ; 0xE
.dw _LABEL_780B_	                                ; 0xF

; 12th entry of Jump Table from 779E (indexed by _RAM_C3BA_)
_LABEL_77BE_:
	call _LABEL_78CE_

	ld hl, _DATA_778E_
	ld (_RAM_C219_), hl

	ld a, $02
	ld (_RAM_C218_), a

	ret

; 15th entry of Jump Table from 779E (indexed by _RAM_C3BA_)
_LABEL_77CD_:
	ld hl, $936D
	ld (v_entities.6.spriteDescriptorPointer), hl

	dec (ix+22)
	ret nz

	ld hl, $9395
	ld (v_entities.6.spriteDescriptorPointer), hl

	ld hl, v_entities.7
	call clearEntity

	ld iy, v_entities.7
	ld (iy+0), $0D

	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a

	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a

	sub $20
	ld (_RAM_C3D7_), a

	ld hl, $9387
	ld (_RAM_C3C7_), hl

	inc (ix+26)
	ld a, $AC
	ld (v_soundControl), a
	ret

; 15th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
; Shared with Parplin
_LABEL_780B_:
	call tryToKillAlexIfColliding
	ld a, (v_entities.7.type)
	or a
	jp z, updateOpponentDefeated
	ret
