; $9D9
clearEntities:
	ld b, $1E
	ld hl, v_entity1
-:
	call clearEntity
	inc hl
	djnz -
	ret
