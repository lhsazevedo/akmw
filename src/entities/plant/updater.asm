; 44th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updatePlant:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_856E_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_856E_
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    set 0, (ix + Entity.flags)
    set 1, (ix + Entity.flags)
    ld (ix + Entity.ySpeed.high), $FF
    ld (ix + Entity.ySpeed.low), $80
    ret

+:
    call tryToKillAlexIfColliding
    inc (ix + Entity.battleDecision)
    ld a, (ix + Entity.battleDecision)
    cp $40
    ret c
    ld a, (ix + Entity.ySpeed.high)
    cpl
    ld (ix + Entity.ySpeed.high), a
    ld a, (ix + Entity.ySpeed.low)
    cpl
    inc a
    ld (ix + Entity.ySpeed.low), a
    ld (ix + Entity.battleDecision), $00
    ret
