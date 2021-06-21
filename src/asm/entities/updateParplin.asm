; 31st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateParplin:
	ld a, (_RAM_C3BA_)
	ld hl, parplinUpdaters
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 78B0 to 78CD (15 entries, indexed by _RAM_C3BA_)
parplinUpdaters:
.dw updateOpponentInit updateOpponentMakeAlexGetIntoPosition updateOpponentLoadOpponentTilesAndShowTextbox1 updateOpponentShowTextbox2 updateOpponentStartRound updateOpponentDance updateOpponentThrow updateOpponentHandleThrows
.dw updateOpponentShowStatueOrTieTextbox updateOpponentTurnAlexIntoStatue _LABEL_7372_ _LABEL_78CE_ _LABEL_73CB_ _LABEL_78F1_ _LABEL_780B_

; 12th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_78CE_:
	call isTextboxGameState
	ret z
	call _LABEL_2BFA_
	call _LABEL_7641_
	bit 0, (ix + Entity.data)
	jp z, _LABEL_5547_
	inc (ix + Entity.state)
	ld (ix + Entity.unknown5), $28
	ld a, $0B
	ld (v_messageToShowInTheTextBoxIndex), a
	ld a, $07
	ld (v_gameState), a
	ret

; 14th entry of Jump Table from 78B0 (indexed by _RAM_C3BA_)
_LABEL_78F1_:
	ld hl, $936D
	ld (_RAM_C3A7_), hl
	dec (ix + Entity.unknown5)
	ret nz
	ld hl, $9395
	ld (_RAM_C3A7_), hl
	ld iy, _RAM_C3C0_
	ld (iy+0), $0F
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a
	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a
	ld hl, $9387
	ld (_RAM_C3C7_), hl
	inc (ix + Entity.state)
	ld a, $AC
	ld (v_soundControl), a
	ret
