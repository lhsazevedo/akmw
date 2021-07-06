; 31st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateParplin:
    ld a, (v_entities.6.state)
    ld hl, parplinUpdaters
    rst $20    ; loadAthJumptablePointer
    ret

; Jump Table from 78B0 to 78CD (15 entries, indexed by v_entities.6.state)
parplinUpdaters:
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
.dw updateOpponentBattleWon
.dw updateOpponentStartFight
.dw updateParplinSpawnHead
.dw updateOpponentDestroyWhenDefeated

; - Wait for textbox
; - Maybe go to bossfight
updateOpponentBattleWon:
    call isTextboxGameState
    ret z

    ; @TODO Set some alex descriptors
    call alex_LABEL_2BFA_
    call destroyBattleEntities

    ; Skip boss fight if data bit 0 is zero
    bit 0, (ix + Entity.data)
    jp z, killOpponent

    inc (ix + Entity.state)

    ld (ix + Entity.unknown5), $28

    ; "Well it looks like..."
    ld a, $0B
    ld (v_messageToShowInTheTextBoxIndex), a
    ld a, STATE_TEXT_BOX
    ld (v_gameState), a
    ret

; 14th entry of Jump Table from 78B0 (indexed by v_entities.6.state)
updateParplinSpawnHead:
    ld hl, $936D
    ld (v_entities.6.spriteDescriptorPointer), hl

    dec (ix + Entity.unknown5)
    ret nz

    ld hl, $9395
    ld (v_entities.6.spriteDescriptorPointer), hl

    ld iy, v_entities.7
    ld (iy + Entity.type), ENTITY_PARPLIN_HEAD

    ld a, (v_entities.6.xPos.high)
    ld (v_entities.7.xPos.high), a

    ld a, (v_entities.6.yPos.high)
    ld (v_entities.7.yPos.high), a

    ld hl, $9387
    ld (v_entities.7.spriteDescriptorPointer), hl

    inc (ix + Entity.state)

    ld a, SOUND_BOSS_HEAD
    ld (v_soundControl), a
    ret
