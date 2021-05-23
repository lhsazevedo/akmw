; 65th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x41:
    call tryToKillAlexIfColliding
    ld h, (ix + Entity.xSpeed.high)
    ld l, (ix + Entity.xSpeed.low)
    ld de, $0008
    add hl, de
    ld (ix + Entity.xSpeed.high), h
    ld (ix + Entity.xSpeed.low), l
    ld a, h
    cp $FF
    ret z
    ld a, (ix + Entity.unknown6)
    or a
    jr nz, +
    ld (ix + Entity.unknown6), $01
    ld a, $9E
    ld (v_soundControl), a
+:
    ld a, (ix + Entity.animationFrame)
    cp $13
    jr nz, +
    ld a, (ix + Entity.animationTimer)
    cp $01
    jr nz, +
    ld (ix + Entity.type), $40
    res 0, (ix + Entity.flags)
    ld (ix + Entity.unknown6), $00
    ret

+:
    ld hl, _DATA_85E9_
    jp handleEntityAnimation
