updateChokkinna:
    ld a, (v_entities.6.state)
    ld hl, chokkinnaUpdaters
    rst jumpToAthPointer
    ret

; Jump Table from 781E to 783B (15 entries, indexed by v_entities.6.state)
chokkinnaUpdaters:
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
.dw updateBattleBattleWon
.dw updateBattleStartFight
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
