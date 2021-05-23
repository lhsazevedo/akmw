; 83rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x53:
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_80E1_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_80E1_
    ld a, (v_scrollFlags)
    or a
    ret nz
    set 0, (ix + Entity.flags)
    ld a, $07
    ld (v_gameState), a
    ld a, $11
    ld (v_messageToShowInTheTextBoxIndex), a
    ld a, (v_hasLetterToNibana)
    or a
    ret z
    ld a, $10
    ld (v_messageToShowInTheTextBoxIndex), a
    ret

+:
    bit 1, (ix + Entity.flags)
    ret nz
    set 1, (ix + Entity.flags)
    ld iy, _RAM_C640_
    ld b, $4F
    ld de, $30D8
    ld a, (v_hasLetterToNibana)
    or a
    jr z, +
    ld b, $52
    ld de, $8858
    ld (iy+3), $03
+:
    ld (iy+0), b
    ld (iy+12), e
    ld (iy+14), d
    ret
