; 66th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x42:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_82BD_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_82BD_
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $80
    ld (ix + Entity.ySpeed.high), $FF
    ld (ix + Entity.ySpeed.low), $00
    ld (ix + Entity.unknown6), $02
    ld a, r
    and $07
    cp $04
    ret c
    ld (ix + Entity.unknown6), $04
    ret

+:
    call tryToKillAlexIfColliding
    call isAlexAttackingEntity
    jp nc, killEnemy
    ld h, (ix + Entity.ySpeed.high)
    ld l, (ix + Entity.ySpeed.low)
    ld d, $00
    ld e, (ix + Entity.unknown6)
    add hl, de
    ld (ix + Entity.ySpeed.high), h
    ld (ix + Entity.ySpeed.low), l
    ld a, h
    bit 7, a
    ret nz
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_82CB_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_82CB_
    ret
