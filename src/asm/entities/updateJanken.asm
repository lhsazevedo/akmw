; 28th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateJanken:
	ld a, (_RAM_C3BA_)
	ld hl, jankenUpdaters
	rst $20	; loadAthJumptablePointer
	ret

; Jump Table from 7152 to 717B (21 entries, indexed by _RAM_C3BA_)
jankenUpdaters:
.dw updateOpponentInit
.dw updateOpponentMakeAlexGetIntoPosition
.dw updateOpponentLoadOpponentTilesAndShowTextbox1
.dw updateOpponentShowTextbox2
.dw updateOpponentStartRound
.dw updateOpponentCount
.dw updateOpponentThrow
.dw _LABEL_72B3_
.dw updateOpponentShowStatueTextbox
.dw updateOpponentTurnAlexIntoStatue
.dw _LABEL_7372_
.dw _LABEL_73AE_
.dw _LABEL_73CB_
.dw _LABEL_74A4_
.dw _LABEL_73D8_
.dw _LABEL_7447_
.dw updateOpponentMakeAlexGetIntoPosition
.dw _LABEL_7453_
.dw _LABEL_746F_
.dw _LABEL_74A4_
.dw _LABEL_74CD_
