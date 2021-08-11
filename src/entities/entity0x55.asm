; 85th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x55:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.animationTimer), $08
    ld (ix + Entity.animationTimerResetValue), $08
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    jr nz, _LABEL_63EA_
    ld (ix + Entity.xSpeed.low), $80
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.ySpeed.high), $FF
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.unknown6), $0E
+:
    call tryToKillAlexIfColliding
    call checkAlexEntityCollision_LABEL_7D0B_
    jp nc, _LABEL_55A5_
    ld a, (ix + Entity.unknown6)
    xor $0C
    ld e, a
    ld d, $01
    ld a, $08
    call _LABEL_3A03_
    jr nc, +
    ld a, (ix + Entity.xSpeed.high)
    cpl
    ld (ix + Entity.xSpeed.high), a
    ld a, (ix + Entity.xSpeed.low)
    cpl
    inc a
    ld (ix + Entity.xSpeed.low), a
    ld a, (ix + Entity.unknown6)
    xor $0C
    ld (ix + Entity.unknown6), a
+:
    ld de, $1108
    call getNearEntityTileAttrWithOffset
    rlca
    jr nc, +
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.ySpeed.high), $FF
+:
    ld h, (ix + Entity.ySpeed.high)
    ld l, (ix + Entity.ySpeed.low)
    ld de, $0010
    add hl, de
    ld (ix + Entity.ySpeed.low), l
    ld (ix + Entity.ySpeed.high), h
_LABEL_63EA_:
    ld hl, _DATA_84C2_
    ld a, (ix + Entity.xSpeed.high)
    cp $FF
    jp nz, handleEntityAnimation
    ld hl, _DATA_84A1_
    jp handleEntityAnimation
