updateKillerFishRight:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_5249_
    call tryToKillAlexIfColliding
    call isAlexAttackingEntity
    jp nc, killEnemy
    ld de, $0118
    ld a, $08
    call isEntityCollidingWithTerrainAtOffset
    jr nc, +
    ld (ix + Entity.type), $2E
    jr _LABEL_5249_

+:
    inc (ix + Entity.unknown6)
    ld a, (ix + Entity.unknown6)
    cp $40
    jr nz, +
    xor a
    ld (ix + Entity.unknown6), a
+:
    ld hl, highSine
    ld c, a
    ld b, $00
    add hl, bc
    ld h, (hl)
    ld de, (v_verticalScrollSpeed)
    ld a, d
    cpl
    inc a
    ld d, a
    ld a, e
    cpl
    inc a
    ld e, a
    ld a, h
    add a, d
    ld h, (ix + Entity.unknown5)
    ld l, (ix + Entity.battleDecision)
    add hl, de
    ld (ix + Entity.unknown5), h
    ld (ix + Entity.battleDecision), l
    add a, h
    ld (ix + Entity.yPos.high), a
_LABEL_5249_:
    ld hl, _DATA_83D8_
    jp handleEntityAnimation
