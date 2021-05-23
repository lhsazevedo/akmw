; 72nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x48:
    ld a, (ix + Entity.xPos.high)
    cp $D8
    jr nc, ++
    call tryToKillAlexIfColliding
    call _LABEL_7D0B_
    jr c, +
    inc (ix + Entity.jankenMatchDecision)
    ld a, (ix + Entity.jankenMatchDecision)
    cp $08
    jp nc, _LABEL_5D7B_
    ld a, $8B
    ld (v_soundControl), a
    ld (ix + Entity.type), $49
    res 0, (ix + Entity.flags)
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_840A_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_840A_
    jp _LABEL_5CA0_

+:
    ld hl, _DATA_8405_
    jp handleEntityAnimation

++:
    ld (ix + Entity.type), $46
    jp _LABEL_5CA0_
