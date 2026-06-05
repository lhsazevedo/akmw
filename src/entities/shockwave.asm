updateShockwave:
    ; Bail if offscreen
    ld a, (v_entities.2.isOffScreenFlags)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    ; Bail if past either screen edge
    ld a, (v_entities.2.xPos.high)
    cp $0C
    jr c, + ; x < 12 → destroy
    cp $F4
    jr nc, + ; x ≥ 244 → destroy
    ld de, $0404
    call getNearEntityTileAttrWithOffset
    ; analyse tile attributes
    rlca
    ret nc
    rlca
    jp c, _LABEL_4578_ ; bits 7+6 set → breakable, go break it
+:
    ld hl, v_alex.unknown8
    ld a, (hl)
    and $F4
    ld (hl), a
    jp destroyCurrentEntity
