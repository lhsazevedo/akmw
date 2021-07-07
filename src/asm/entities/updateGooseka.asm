updateGooseka:
    ld a, (v_entities.6.state)
    ld hl, goosekaUpdaters
    rst $20    ; loadAthJumptablePointer
    ret

; Jump Table from 779E to 77BD (16 entries, indexed by v_entities.6.state)
goosekaUpdaters:
.dw updateOpponentInit                                  ; 0x0
.dw updateOpponentMakeAlexGetIntoPosition               ; 0x1
.dw updateOpponentLoadOpponentTilesAndShowTextbox1      ; 0x2
.dw updateOpponentShowTextbox2                          ; 0x3
.dw updateOpponentStartRound                            ; 0x4
.dw updateOpponentDance                                 ; 0x5
.dw updateOpponentThrow                                 ; 0x6
.dw updateOpponentHandleThrows                          ; 0x7
.dw updateOpponentShowBattleLostTextbox                 ; 0x8
.dw updateOpponentTurnAlexIntoStatue                    ; 0x9
.dw updateOpponentRespawOpponent                        ; 0xA
.dw updateOpponentBattleWonAndSetupNametablePatches     ; 0xB
.dw updateOpponentStartFight                            ; 0xC
.dw updateOpponentPatchNametable                                        ; 0xD
.dw updateGoosekaSpawnHead                              ; 0xE
.dw updateOpponentDestroyWhenDefeated                   ; 0xF

; - Call updateOpponentBattleWon
; - Setup nametable changes
updateOpponentBattleWonAndSetupNametablePatches:
    call updateOpponentBattleWon

    ld hl, goosekaNametableChanges
    ld (_RAM_C219_), hl
    ld a, $02
    ld (_RAM_C218_), a

    ret

; - Change opponent sprite and spawn boss head
; - Advance state
; - Request head sfx
updateGoosekaSpawnHead:
    ld hl, $936D
    ld (v_entities.6.spriteDescriptorPointer), hl

    dec (ix + Entity.unknown5)
    ret nz

    ; @TODO
    ld hl, $9395
    ld (v_entities.6.spriteDescriptorPointer), hl

    ; Spawn head
    ld hl, v_entities.7
    call clearEntity

    ld iy, v_entities.7
    ld (iy + Entity.type), ENTITY_GOOSEKA_HEAD

    ld a, (v_entities.6.xPos.high)
    ld (v_entities.7.xPos.high), a

    ld a, (v_entities.6.yPos.high)
    ld (v_entities.7.yPos.high), a

    sub $20
    ld (v_entities.7.jankenMatchDecision), a

    ld hl, $9387
    ld (v_entities.7.spriteDescriptorPointer), hl

    inc (ix + Entity.state)

    ld a, SOUND_BOSS_HEAD
    ld (v_soundControl), a
    ret

; 15th entry of Jump Table from 78B0 (indexed by v_entities.6.state)
; Shared with Parplin
updateOpponentDestroyWhenDefeated:
    call tryToKillAlexIfColliding
    ld a, (v_entities.7.type)
    or a
    jp z, killOpponent
    ret
