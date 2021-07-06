; 30th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateChokkinna:
    ld a, (v_entities.6.state)
    ld hl, chokkinnaUpdaters
    rst $20    ; loadAthJumptablePointer
    ret

; Jump Table from 781E to 783B (15 entries, indexed by _RAM_C3BA_)
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
.dw _LABEL_78CE_
.dw _LABEL_73CB_
.dw _LABEL_783C_
.dw _LABEL_786F_

; 14th entry of Jump Table from 781E (indexed by _RAM_C3BA_)
_LABEL_783C_:
    ld hl, $9458
    ld (v_entities.6.spriteDescriptorPointer), hl
    dec (ix+22)
    ret nz
    ld hl, $9480
    ld (v_entities.6.spriteDescriptorPointer), hl
    ld iy, v_entities.7
    ld (iy+0), $0E
    ld a, (_RAM_C3AC_)
    ld (_RAM_C3CC_), a
    ld a, (_RAM_C3AE_)
    ld (_RAM_C3CE_), a
    ld hl, $9472
    ld (_RAM_C3C7_), hl
    inc (ix+26)
    ld a, $AC
    ld (v_soundControl), a
    ret

; 15th entry of Jump Table from 781E (indexed by _RAM_C3BA_)
_LABEL_786F_:
    call tryToKillAlexIfColliding
    ld a, (v_entities.7.type)
    or a
    jp z, updateOpponentDefeated
    ld a, (_RAM_C3E0_)
    or a
    ret nz
    ld iy, _RAM_C3E0_
    ld (iy+0), $1A
    ld a, (_RAM_C3AC_)
    ld (_RAM_C3EC_), a
    ld a, (_RAM_C3AE_)
    add a, $10
    ld (_RAM_C3EE_), a
    ld hl, $FF00
    ld (_RAM_C3EF_), hl
    ld hl, $974B
    ld (_RAM_C3E7_), hl
    set 1, (iy+1)
    ret
