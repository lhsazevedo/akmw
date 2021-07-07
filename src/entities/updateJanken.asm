; 28th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateJanken:
    ld a, (v_entities.6.state)
    ld hl, jankenUpdaters
    rst jumpToAthPointer
    ret

; Jump Table from 7152 to 717B (21 entries, indexed by v_entities.6.state)
jankenUpdaters:
.dw updateOpponentInit
.dw updateOpponentMakeAlexGetIntoPosition
.dw updateOpponentLoadOpponentTilesAndShowTextbox1
.dw updateOpponentShowTextbox2
.dw updateOpponentStartRound
.dw updateOpponentDance
.dw updateOpponentThrow
.dw updateOpponentHandleThrows
.dw updateOpponentShowBattleLostTextbox
.dw updateOpponentTurnAlexIntoStatue
.dw updateOpponentRespawOpponent
.dw _LABEL_73AE_
.dw updateOpponentStartFight
.dw updateOpponentPatchNametable
.dw _LABEL_73D8_
.dw _LABEL_7447_
.dw updateOpponentMakeAlexGetIntoPosition
.dw _LABEL_7453_
.dw _LABEL_746F_
.dw updateOpponentPatchNametable
.dw updateOpponentNop
