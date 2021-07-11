updateJanken:
    ld a, (v_entities.6.state)
    ld hl, jankenUpdaters
    rst jumpToAthPointer
    ret

jankenUpdaters:
.dw updateBattleInit
.dw updateBattleMakeAlexGetIntoPosition
.dw updateBattleLoadOpponentTilesAndShowTextbox1
.dw updateBattleShowTextbox2
.dw updateBattleStartRound
.dw updateBattleDance
.dw updateBattleThrow
.dw updateBattleHandleThrows
.dw updateBattleShowBattleLostTextbox
.dw updateBattleTurnAlexIntoStatue
.dw updateBattleRespawOpponent
.dw _LABEL_73AE_
.dw updateBattleStartFight
.dw updateBattlePatchNametable
.dw _LABEL_73D8_
.dw _LABEL_7447_
.dw updateBattleMakeAlexGetIntoPosition
.dw _LABEL_7453_
.dw _LABEL_746F_
.dw updateBattlePatchNametable
.dw updateBattleNop
