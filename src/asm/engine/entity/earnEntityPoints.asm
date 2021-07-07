earnEntityPoints:
    ld a, (ix + Entity.type)
    ld c, a
    ld b, $00
    ld hl, entityPoints - 1
    add hl, bc
    ld l, (hl)
    jp addScore
