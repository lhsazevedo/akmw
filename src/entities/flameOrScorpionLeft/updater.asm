updateflameOrScorpionLeft:
    ; if not initialized
    bit 0, (ix + Entity.flags)
    jr nz, +
    ; Initialize
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_5E60_
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    ld (ix + Entity.xSpeed.low), $80
    ld (ix + Entity.xSpeed.high), $FF
    jr _LABEL_5E60_
    
+:
    call tryToKillAlexIfColliding

    ; if is Scorpion (data == 0)
    ld a, (ix + Entity.data)
    or a
    jr nz, +
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ; else
+:
    ld de, $0900
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, +
    
-:
    ld (ix + Entity.type), ENTITY_FLAME_OR_SCORPION_RIGHT
    ld (ix + Entity.xSpeed.low), $80
    ld (ix + Entity.xSpeed.high), $00
_LABEL_5E60_:
    ld hl, _DATA_85A6_
    ld a, (ix + Entity.data)
    or a
    jp nz, handleEntityAnimation
    ld hl, _DATA_826B_
    jp handleEntityAnimation

+:
    ld d, $08
    call _LABEL_7CA3_
    ld a, (hl)
    rlca
    jr c, _LABEL_5E60_
    jr -
