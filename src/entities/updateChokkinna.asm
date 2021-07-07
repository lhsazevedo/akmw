; 30th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateChokkinna:
    ld a, (v_entities.6.state)
    ld hl, chokkinnaUpdaters
    rst $20    ; loadAthJumptablePointer
    ret

; Jump Table from 781E to 783B (15 entries, indexed by v_entities.6.state)
chokkinnaUpdaters:
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
.dw updateChokkinnaSpawnHead
.dw updateChokkinnaCastSpells

; 14th entry of Jump Table from 781E (indexed by v_entities.6.state)
updateChokkinnaSpawnHead:
    ld hl, $9458
    ld (v_entities.6.spriteDescriptorPointer), hl

    dec (ix+22)
    ret nz

    ld hl, $9480
    ld (v_entities.6.spriteDescriptorPointer), hl

    ld iy, v_entities.7
    ld (iy + Entity.type), ENTITY_CHOKKINNA_HEAD

    ld a, (v_entities.6.xPos.high)
    ld (v_entities.7.xPos.high), a

    ld a, (v_entities.6.yPos.high)
    ld (v_entities.7.yPos.high), a

    ld hl, $9472
    ld (v_entities.7.spriteDescriptorPointer), hl

    inc (ix + Entity.state)

    ld a, SOUND_BOSS_HEAD
    ld (v_soundControl), a
    ret

; 15th entry of Jump Table from 781E (indexed by v_entities.6.state)
updateChokkinnaCastSpells:
    call tryToKillAlexIfColliding
    ld a, (v_entities.7.type)
    or a
    jp z, killOpponent

    ld a, (v_entities.8.type)
    or a
    ret nz

    ld iy, v_entities.8
    ld (iy + Entity.type), ENTITY_CHOKKINNA_SPELL

    ld a, (v_entities.6.xPos.high)
    ld (v_entities.8.xPos.high), a

    ld a, (v_entities.6.yPos.high)
    add a, $10
    ld (v_entities.8.yPos.high), a

    ld hl, $FF00
    ld (v_entities.8.xSpeed), hl

    ld hl, $974B
    ld (v_entities.8.spriteDescriptorPointer), hl

    set 1, (iy + Entity.flags)

    ret
