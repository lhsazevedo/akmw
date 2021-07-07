; 64th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x40:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_85D5_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_85D5_
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.unknown6), $00
    ld (ix + Entity.xSpeed.high), $FF
    ld (ix + Entity.xSpeed.low), $00
    ld (ix + Entity.animationTimer), $01
    ld (ix + Entity.animationTimerResetValue), $01
    ld (ix + Entity.animationFrame), $00
    ret

+:
    call tryToKillAlexIfColliding
    inc (ix + Entity.unknown6)
    ld a, (ix + Entity.unknown6)
    cp $10
    ret c
    ld (ix + Entity.type), $41
    ld (ix + Entity.unknown6), $00
    ret
