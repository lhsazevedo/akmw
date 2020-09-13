createTitleEntityAlexFlyingPeticopter:
	ld ix, v_entity1
	ld (ix+0), $18
	ld hl, _RAM_C800_
	ld (v_entities.1.spriteDescriptorPointer), hl
	ld (ix+12), $DC
	ld (ix+14), $46
	ret

createTitleEntityAlexRidingBoat:
	ld ix, v_entities.2
	ld (ix+0), $18
	ld hl, $C828
	ld (v_entities.2.spriteDescriptorPointer), hl
	ld (ix+12), $70
	ld (ix+14), $7C
	ret

createTitleEntitiesJankenFlight:
	ld ix, _RAM_C340_
	ld (ix+0), $18
	ld hl, $C850
	ld (_RAM_C347_), hl
	ld (ix+12), $18
	ld (ix+14), $4F
	ld ix, _RAM_C3C0_
	ld (ix+0), $18
	ld hl, $961A
	ld (_RAM_C3C7_), hl
	ld (ix+12), $30
	ld (ix+14), $77
	ret

createTitleEntityAlexSwiming:
	ld ix, _RAM_C360_
	ld (ix+0), $18
	ld hl, $C878
	ld (_RAM_C367_), hl
	ld (ix+12), $C9
	ld (ix+14), $0C
	ret
