createTitleEntityAlexFlyingPeticopter:
    ld ix, v_entities.1
    ld (ix + Entity.type), ENTITY_STATIC
    ld hl, _RAM_C800_
    ld (v_entities.1.spriteDescriptorPointer), hl
    ld (ix + Entity.xPos.high), $DC
    ld (ix + Entity.yPos.high), $46
    ret

createTitleEntityAlexRidingBoat:
    ld ix, v_entities.2
    ld (ix + Entity.type), ENTITY_STATIC
    ld hl, $C828
    ld (v_entities.2.spriteDescriptorPointer), hl
    ld (ix + Entity.xPos.high), $70
    ld (ix + Entity.yPos.high), $7C
    ret

createTitleEntitiesJankenFlight:
    ld ix, v_entities.3
    ld (ix + Entity.type), ENTITY_STATIC
    ld hl, $C850
    ld (v_entities.3.spriteDescriptorPointer), hl
    ld (ix + Entity.xPos.high), $18
    ld (ix + Entity.yPos.high), $4F

    ld ix, v_entities.7
    ld (ix + Entity.type), ENTITY_STATIC
    ld hl, $961A
    ld (v_entities.7.spriteDescriptorPointer), hl
    ld (ix + Entity.xPos.high), $30
    ld (ix + Entity.yPos.high), $77
    ret

createTitleEntityAlexSwiming:
    ld ix, v_entities.4
    ld (ix + Entity.type), ENTITY_STATIC
    ld hl, $C878
    ld (v_entities.4.spriteDescriptorPointer), hl
    ld (ix + Entity.xPos.high), $C9
    ld (ix + Entity.yPos.high), $0C
    ret
