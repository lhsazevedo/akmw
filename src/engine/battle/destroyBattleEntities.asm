destroyBattleEntities:
    ld hl, v_entities.27
    call clearEntity
    inc hl
    call clearEntity
    ld hl, v_entities.23
    jp clearEntity
