; $9D9
clearEntities:
    ld b, ENTITY_ARRAY_SIZE
    ld hl, v_entities
-:
    call clearEntity
    inc hl
    djnz -
    ret
