simulateOpponentChoosing_LABEL_7941_:
    ; Return if opponent unknown11 is 0 
    ld hl, v_entities.6.unknown11
    ld a, (hl)
    or a
    ret z

    ; @TODO: Probably simulates opponent choosing a throw
    dec (hl)

    ld c, (ix + Entity.data)
    ld b, $00
    ld hl, _DATA_7763_
    add hl, bc
    ld c, (hl)
    ld de, (v_opponentDecisionsPointer)
    dec (ix + Entity.unknown6)
    ret p

    ld (ix + Entity.unknown6), c
    ld hl, v_BattleOpponentDecisionIndex
    inc (hl)
    ld a, (hl)
    and $1F
    ld l, a
    ld h, $00
    add hl, de
    ld l, (hl)
    ld (ix + Entity.battleDecision), l

    ; Update thought preview if Alex has Telapathy Ball
    ld a, (v_hasTelepathyBall)
    or a
    ret z
    ld a, l
    ld (v_entities.27.battleDecision), a
    ret
