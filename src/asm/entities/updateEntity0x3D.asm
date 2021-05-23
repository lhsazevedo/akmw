; 61st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x3D:
    bit 0, (ix + Entity.flags)
    jr nz, +
    set 0, (ix + Entity.flags)
    ld (ix + Entity.animationTimer), $10
    ld (ix + Entity.animationTimerResetValue), $10
    ld a, (ix + Entity.xPos.high)
    ld (ix + Entity.unknown11), a
    ld a, (ix + Entity.yPos.high)
    ld (ix + Entity.unknown10), a
    ld (ix + Entity.unknown9), $20
    ld (ix + Entity.stateTimer), $00
    ld (ix + Entity.unknown8), $00
    ld a, (ix + Entity.isOffScreenFlags.low)
    ld (ix + Entity.state), a
    ld a, (ix + Entity.isOffScreenFlags.high)
    ld (ix + Entity.unknown7), a
    jr _LABEL_5E0E_

+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, +
    call tryToKillAlexIfColliding
+:
    ld hl, (v_horizontalScrollSpeed)
    ld a, h
    or l
    jr z, +
    ld d, (ix + Entity.unknown11)
    ld e, (ix + Entity.data)
    add hl, de
    ld (ix + Entity.unknown11), h
    ld (ix + Entity.data), l
    jr c, +
    inc (ix + Entity.state)
+:
    ld bc, $0002
    ld l, (ix + Entity.stateTimer)
    ld h, (ix + Entity.unknown8)
    add hl, bc
    ld (ix + Entity.stateTimer), l
    ld (ix + Entity.unknown8), h
    call _LABEL_4CE_
    ld a, (ix + Entity.isOffScreenFlags.low)
    cp $01
    jr nz, _LABEL_5E0E_
    set 1, (ix + Entity.flags)
_LABEL_5E0E_:
    ld hl, _DATA_85A6_
    jp handleEntityAnimation
