createTitleEntityAlexFlyingPeticopter:
	ld ix, v_entities.1
	ld (ix + Entity.type), $18
	ld hl, _RAM_C800_
	ld (v_entities.1.spriteDescriptorPointer), hl
	ld (ix + Entity.xPos.high), $DC
	ld (ix + Entity.yPos.high), $46
	ret

createTitleEntityAlexRidingBoat:
	ld ix, v_entities.2
	ld (ix + Entity.type), $18
	ld hl, $C828
	ld (v_entities.2.spriteDescriptorPointer), hl
	ld (ix + Entity.xPos.high), $70
	ld (ix + Entity.yPos.high), $7C
	ret

createTitleEntitiesJankenFlight:
	ld ix, _RAM_C340_
	ld (ix + Entity.type), $18
	ld hl, $C850
	ld (_RAM_C347_), hl
	ld (ix + Entity.xPos.high), $18
	ld (ix + Entity.yPos.high), $4F
	ld ix, _RAM_C3C0_
	ld (ix + Entity.type), $18
	ld hl, $961A
	ld (_RAM_C3C7_), hl
	ld (ix + Entity.xPos.high), $30
	ld (ix + Entity.yPos.high), $77
	ret

createTitleEntityAlexSwiming:
	ld ix, _RAM_C360_
	ld (ix + Entity.type), $18
	ld hl, $C878
	ld (_RAM_C367_), hl
	ld (ix + Entity.xPos.high), $C9
	ld (ix + Entity.yPos.high), $0C
	ret
