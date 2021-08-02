; - Increment state (0x0 to 0x1: updateBattleMakeAlexGetIntoPosition)
; - Maybe set opponent sprite descriptor pointer
; - Copy opponent settings
updateBattleInit:
    inc (ix + Entity.state)

    ; a = 0
    xor a
    ld (v_hasBattleEnded), a
    ld (v_hasBattleStarted), a

    ; a = 1
    inc a
    ld (v_entities.6.animationTimer), a
    ld (v_entities.6.unknown11), a

    ld a, (v_entities.6.data)
    and 0b11111110
    add a, a
    add a, a
    add a, a

    ; Choose sprite descriptor based on opponent data
    ; If data greater than 1, load the null descriptor.
    ; Else, load the generic character sprite descriptor.
    ld hl, nullSpriteDescriptor
    jr nz, @skipDescriptor
    ld hl, characterSpriteDescriptor
    @skipDescriptor:

    ld (v_entities.6.spriteDescriptorPointer), hl

    ; Load opponent settings
    ; Address is opponentSettings + (v_entities.6.data & 0b11111110) * 8
    ld l, a
    ld h, $00
    ld de, opponentSettings
    add hl, de
    ld de, v_battleOpponentSpriteDescriptorPointer
    ld bc, $0010
    ldir
    ret

; - Wait until the opponent is on screen, scrolling stops, alex is on ground
;   (e.g.: he can be on a Peticopter)
; - Increment state (0x1 to 0x2: updateBattleLoadOpponentTilesAndShowTextbox1)
; - Set Alex state to ALEX_BATTLE_GO_TO_POSITION
updateBattleMakeAlexGetIntoPosition:
    ; Return if offscreen
    ld a, (v_entities.6.isOffScreenFlags.high)
    or (ix + Entity.isOffScreenFlags.low)
    ret nz

    ; Return if screen is scrolling
    ld a, (v_scrollFlags)
    and SCROLL_ANY
    ret nz

    ; Return if alex isn't walking
    ld a, (v_alex.state)
    cp ALEX_IN_AIR 
    ret nc

    ; Increment state
    inc (ix + Entity.state)

    ; Set Alex "go to battle position" state
    ld a, ALEX_BATTLE_GO_TO_POSITION
    ld (v_alex.state), a
    ret

; - Wait for Alex to start dancing
; - Increment state (0x2 to 0x3: updateBattleShowTextbox2)
; - Load opponent sprite descriptor and maybe adjust position
; - Mark match as started
; - Destroy entities, reset sound and load match tiles
; - Load opponent tiles
; - Request textbox message
updateBattleLoadOpponentTilesAndShowTextbox1:
    ; Wait for Alex start dancing
    ld a, (v_alex.state)
    cp ALEX_BATTLE_DANCING
    ret nz

    inc (ix + Entity.state)

    ; Delete entities 2 to 4, and maybe reset _RAM_C054_
    call clearEntities2to4AndMaybeReset0xC054

    ; Load opponent sprite descriptor
    ld hl, (v_battleOpponentSpriteDescriptorPointer)
    ld (v_entities.6.spriteDescriptorPointer), hl
    ld a, (v_entities.6.data)
    cp $01

    ; Adjust opponent position if data bit 1 is set.
    jr nz, @skipAdjust
    ld (ix + Entity.xPos.high), $B8
    ld (ix + Entity.yPos.high), $80
    @skipAdjust:

    ld a, $01
    ld (v_hasBattleStarted), a

    call prepareForBattle

    ; Load opponent tiles
    ld hl, (v_battleOpponentTilesPointer)
    ld de, $6400
    call decompressTilesToVRAM
    ei

    ld a, $82
    ld (Mapper_Slot2), a

    ; Set up text message
    ld a, STATE_TEXT_BOX
    ld (v_gameState), a
    ld a, (v_battleOpponentMessagePointer)
    ld (v_textBoxMessageIndex), a
    ret

; - Wait for player to close first textbox 
; - Draw thought clouds, names and spaw entity 0x0C
; - Request second textbox ("You must choose...")
; - Increment state (0x4 to 0x5: updateBattleStartRound)
updateBattleShowTextbox2:
    call isTextboxGameState
    ret z

    ld hl, (v_opponentNamePointer)

    call drawThoughtClouds
    call drawAlexName_LABEL_7941_

    ld a, STATE_TEXT_BOX
    ld (v_gameState), a
    ld a, $07
    ld (v_textBoxMessageIndex), a

    inc (ix + Entity.state)
    ld (ix + Entity.animationTimerResetValue), $10
    ret

isTextboxGameState:
    ld a, (v_gameState)
    and $0F
    cp $07
    ret

; - Wait for player to close textbox
; - Request music
; - Increment state (0x5 to 0x6: updateBattleDance)
updateBattleStartRound:
    call isTextboxGameState
    ret z

    ld a, ALEX_BATTLE_DANCING
    ld (v_alex.state), a

    ; Request music
    ld a, SOUND_JANKEN_MUSIC
    ld (v_soundControl), a

    inc (ix + Entity.state)
    ld (ix + Entity.unknown11), $FF
    ld (ix + Entity.unknown6), $14
    ret

; - Simulates opponent deciding
; - Wait for dance music to end
; - Request match counting sound
; - Increment state (0x6 to 0x7: updateBattleThrow)
updateBattleDance:
    call simulateOpponentChoosing_LABEL_7941_
    
    ld a, (v_soundBattleSoundFlags)
    cp $80
    jr z, @musicEnded

    ld hl, (v_opponentAnimationDescriptorPointer)
    jp handleEntityAnimation

    @musicEnded:
    ; Request match counting sfx
    ld a, SOUND_JANKEN_COUNT
    ld (v_soundControl), a

    inc (ix + Entity.state)

    ld (ix + Entity.animationTimerResetValue), $14

    ld a, $01
    ld (v_entities.6.animationTimer), a
    ld (v_alex.animationTimer), a

    ld a, ALEX_BATTLE_COUNTING
    ld (v_alex.state), a

    ; @TODO
    ld (ix + Entity.unknown11), $46
    ret

; - Simulate opponent deciding while couting
; - Request throw sound effect
; - Increment state (0x7 to 0x8: updateBattleHandleThrows)
; - Set alex throw state
; - Load opponent sprite descriptor for the current throw 
updateBattleThrow:
    call simulateOpponentChoosing_LABEL_7941_

    ld a, (v_soundBattleSoundFlags)
    cp $10
    jr z, @countingEnded

    ld hl, (v_opponentCountdownAnimationDescriptorPointer)
    jp handleEntityAnimation

    @countingEnded:
    ld hl, (v_opponentThrowSpriteDescriptorPointer)

    ld a, SOUND_JANKEN_THROW
    ld (v_soundControl), a

    inc (ix + Entity.state)

    ld a, ALEX_BATTLE_THROW
    ld (v_alex.state), a

    ; Load opponent sprite descriptor for throw
    ld a, (v_entities.6.battleDecision)
    add a, a
    ld e, a
    ld d, $00
    add hl, de
    ld e, (hl)
    inc hl
    ld d, (hl)
    ex de, hl
    ld (v_entities.6.spriteDescriptorPointer), hl

    ; @TODO
    ld (ix + Entity.unknown6), $1E
    ret

; - Wait for unknown6 timer
; - Choose a handler based on decisions (?)
; - Set textbox gamestate
updateBattleHandleThrows:
    dec (ix + Entity.unknown6)
    ret nz

    ld a, (v_alex.battleDecision)
    ld e, (ix + Entity.battleDecision)
    add a, e
    add a, e
    add a, e
    ld hl, battleRoundResultHandlers
    rst jumpToAthPointer
    ld a, STATE_TEXT_BOX
    ld (v_gameState), a
    ret

;           Alex | Opponent
;           -----|---------
; Rock        0  |    0
; Scissors    1  |    3
; Paper       2  |    6
battleRoundResultHandlers:
.dw updateBattleRoundTie    ; 0:     Rock vs Rock
.dw updateBattleRoundLost   ; 1: Scissors vs Rock
.dw updateBattleRoundWon    ; 2:    Paper vs Rock
.dw updateBattleRoundWon    ; 3:     Rock vs Scissors
.dw updateBattleRoundTie    ; 4: Scissors vs Scissors
.dw updateBattleRoundLost   ; 5:    Paper vs Scissors
.dw updateBattleRoundLost   ; 6:     Rock vs Paper
.dw updateBattleRoundWon    ; 7: Scissors vs Paper
.dw updateBattleRoundTie    ; 8:    Paper vs Paper

updateBattleRoundTie:
    ld a, TXT_BATTLE_ROUND_TIE
    ld (v_textBoxMessageIndex), a
    ld (ix + Entity.state), $04
    ret

updateBattleRoundLost:
    ; "I win. You got it." - Opponent
    ld a, TXT_BATTLE_ROUND_LOST
    ld (v_textBoxMessageIndex), a

    ; Patch temporary results sprite descriptor
    ld e, (ix + Entity.unknown7)
    ld d, $00
    ld hl, $C2A6
    add hl, de
    add hl, de
    ld (hl), $A5

    dec hl
    dec hl
    ld a, (hl)
    cp $A5
    jr z, @opponentWon

    ; Sudden-death from round 3 onwards
    inc (ix + Entity.unknown7)
    ld a, (v_entities.6.unknown7)
    cp $03
    jr nc, @opponentWon

    ; updateBattleStartRound
    ld (ix + Entity.state), $04
    ret

    @opponentWon:
    ; updateBattleShowBattleLostTextbox
    ld (ix + Entity.state), $08
    jp restoreSomeNametableStuff_LABEL_796D_

; - Show opponent lost textbox
; - Update results
; - Decide next state (0x04 updateBattleStartRound or 0x0B updateBattleBattleWonAndSetupNametablePatches)
updateBattleRoundWon:
    ; "Darn it. I lose." - Opponent
    ld a, TXT_BATTLE_ROUND_WON
    ld (v_textBoxMessageIndex), a

    ; Patch temporary results sprite descriptor
    ld e, (ix + Entity.unknown7)
    ld d, $00
    ld hl, $C2A6
    add hl, de
    add hl, de
    ld (hl), $A4

    ; Alex wins match on two consecutive round wins
    dec hl
    dec hl
    ld a, (hl)
    cp $A4
    jr z, @opponentLost

    ; Sudden-death from round 3 onwards
    inc (ix + Entity.unknown7)
    ld a, (v_entities.6.unknown7)
    cp $03
    jr nc, @opponentLost

    ; updateBattleStartRound
    ld (ix + Entity.state), $04
    ret

    @opponentLost:
    ; updateBattleBattleWonAndSetupNametablePatches
    ld (ix + Entity.state), $0B
    jp restoreSomeNametableStuff_LABEL_796D_

; - Wait player close textbox
; - Cleanup battle entities
; - Show battle lost textbox
updateBattleShowBattleLostTextbox:
    call isTextboxGameState
    ret z

    call destroyBattleEntities

    ld a, TXT_BATTLE_LOST
    ld (v_textBoxMessageIndex), a
    ld a, STATE_TEXT_BOX

    ld (v_gameState), a
    inc (ix + Entity.state)
    ret

; - Wait player close textbox
; - Request statue sfx
; - Change alex state
updateBattleTurnAlexIntoStatue:
    call isTextboxGameState
    ret z

    ld (ix + Entity.animationTimerResetValue), $14

    ld a, SOUND_BATTLE_LOST
    ld (v_soundControl), a

    ld a, ALEX_BATTLE_STATUE
    ld (v_alex.state), a

    ; @TODO: Timer?
    ld a, $3C
    ld (v_alex.unknown6), a

    inc (ix + Entity.state)
    ret

; - Wait alex death animation
; - Recreate opponent entity
updateBattleRespawOpponent:
    ld a, (v_gameState)
    cp STATE_LIFE_LOST
    jr z, @lifeLost
    ld hl, (v_opponentAnimationDescriptorPointer)
    jp handleEntityAnimation

    @lifeLost:
    ld b, (ix + Entity.type)
    ld c, (ix + Entity.data)
    ld e, (ix + Entity.xPos.high)
    ld d, (ix + Entity.yPos.high)

    exx
    call destroyCurrentEntity
    exx

    ; Update opponent sprite descritpor
    ld hl, nullSpriteDescriptor
    ld (v_entities.6.spriteDescriptorPointer), hl

    ; Restore opponent position
    ld (ix + Entity.type), b
    ld (ix + Entity.data), c
    ld (ix + Entity.xPos.high), e
    ld (ix + Entity.yPos.high), d
    ld a, c
    or a
    ret nz

    ; Fix opponent position
    ld (ix + Entity.xPos.high), $C0
    ld (ix + Entity.yPos.high), $98
    ret

; 12th entry of Jump Table from 7152 (indexed by v_entities.6.state)
_LABEL_73AE_:
    call updateBattleBattleWon
    ld (ix+24), $60
    ld hl, jankenBlockEntranceNametableChanges
    ld (_RAM_C219_), hl
    ld a, $03
    ld (_RAM_C218_), a
    xor a
    ld (v_entities.6.unknown1), a
    ld hl, $961A
    ld (v_entities.6.spriteDescriptorPointer), hl
    ret

; - Wait for player to close textbox
; - Request sfx
; - Advance state
updateBattleStartFight:
    call isTextboxGameState
    ret z

    ld a, SOUND_CASTLE_SONG
    ld (v_soundControl), a

    inc (ix + Entity.state)
    ret

; 15th entry of Jump Table from 7152 (indexed by v_entities.6.state)
_LABEL_73D8_:
    ld a, (ix+10)
    or a
    ret nz
    ld (ix+19), $CC
    call tryToKillAlexIfColliding
    ld hl, v_alex.unknown8
    bit 3, (hl)
    jr z, ++
    res 3, (hl)
    ld (ix+19), $D0
    call checkAlexEntityCollision_LABEL_7D0B_
    jr c, ++
    inc (ix+2)
    ld a, (v_entities.6.unknown1)
    cp $03
    jr c, +
    inc (ix + Entity.state)
    ret

+:
    ld a, $8D
    ld (v_soundControl), a
++:
    ld a, (v_alex.state)
    cp ALEX_DEAD
    ret nc
    dec (ix+24)
    ret nz
    inc (ix+24)
    ld iy, v_entities.7
    ld a, (v_entities.7.type)
    or a
    jr z, +
    ld iy, v_entities.8
    ld a, (v_entities.8.type)
    or a
    ret nz
+:
    ld (ix+24), $60
    ld (iy+0), $19
    ld a, (v_entities.6.xPos.high)
    add a, $08
    ld (iy+12), a
    ld a, (v_entities.6.yPos.high)
    add a, $10
    ld (iy+14), a
    ld a, $96
    ld (v_soundControl), a
    ret

; 16th entry of Jump Table from 7152 (indexed by v_entities.6.state)
_LABEL_7447_:
    call audioEngine.handler_LABEL_99D3_
    ld a, $95
    ld (v_soundControl), a
    inc (ix + Entity.state)
    ret

; 18th entry of Jump Table from 7152 (indexed by v_entities.6.state)
_LABEL_7453_:
    ld hl, v_alex.state
    ld a, (hl)
    cp ALEX_BATTLE_DANCING
    ret nz
    ld (hl), $1A
    ld hl, _DATA_12AFE_
    ld (_RAM_C21B_), hl
    ld a, $88
    ld (v_nametableChangeRequest), a
    xor a
    ld (_RAM_C218_), a
    inc (ix + Entity.state)
    ret

; 19th entry of Jump Table from 7152 (indexed by v_entities.6.state)
_LABEL_746F_:
    ld a, (v_nametableChangeRequest)
    or a
    ret nz
    ld hl, jankenLadderNametableChanges
    ld (_RAM_C219_), hl
    ld a, $06
    ld (_RAM_C218_), a
    inc (ix + Entity.state)
    ld iy, v_entities.9.type
    ld (iy+0), $52
    ld (iy+3), $04
    ld (iy+12), $A8
    ld (iy+14), $A0
    ld (iy+1), $00
    ld a, $01
    ld (v_hasMoonstoneMedallion), a
    ld l, SCORE_10000
    jp addScore

; - Wait namespace change opportunity
; - Patch nametable
; - Advance state
; - Fallthrough
updateBattlePatchNametable:
    ld a, (v_nametableChangeRequest)
    or a
    ret nz

    ld hl, _RAM_C218_
    dec (hl)
    jr z, +

    ; Remove ladder
    ld a, (hl)
    add a, a
    add a, a
    ld e, a
    ld d, $00
    ld hl, (_RAM_C219_)
    add hl, de
    ld de, _RAM_C204_
    ld bc, $0004
    ldir

    ld a, $80
    ld (v_nametableChangeRequest), a
    ret

+:
    call alex_LABEL_2BFA_
    inc (ix + Entity.state)

updateBattleNop:
    ret
