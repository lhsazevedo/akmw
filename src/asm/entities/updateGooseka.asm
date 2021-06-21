updateGooseka:
	ld a, (v_entities.6.state)
	ld hl, goosekaUpdaters
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 779E to 77BD (16 entries, indexed by _RAM_C3BA_)
goosekaUpdaters:
.dw updateOpponentInit
.dw updateOpponentMakeAlexGetIntoPosition
.dw updateOpponentLoadOpponentTilesAndShowTextbox1
.dw updateOpponentShowTextbox2
.dw updateOpponentStartRound
.dw updateOpponentDance
.dw updateOpponentThrow
.dw updateOpponentHandleThrows
.dw updateOpponentShowStatueOrTieTextbox
.dw updateOpponentTurnAlexIntoStatue
.dw _LABEL_7372_
.dw _LABEL_77BE_
.dw _LABEL_73CB_
.dw _LABEL_74A4_
.dw _LABEL_77CD_
.dw _LABEL_780B_

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
	ld (_RAM_C3A7_), hl
	dec (ix+22)
	ret nz
	ld hl, $9395
	ld (_RAM_C3A7_), hl
	ld hl, _RAM_C3C0_
	call clearEntity
	ld iy, _RAM_C3C0_
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
	ld a, (_RAM_C3C0_)
	or a
	jp z, _LABEL_5547_
	ret
