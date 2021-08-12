; 80th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x50:
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_802F_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_802F_
    ld a, (_RAM_C07F_)
    or a
    ret nz
    bit 0, (ix + Entity.flags)
    jr nz, +
    ld (ix + Entity.yPos.high), $88
    ld iy, v_entities.6
    ld (iy+0), $44
    ld (iy+12), $98
    ld (iy+14), $60
    ld a, $0E
    ld hl, _DATA_802A_
    jp _LABEL_60D4_

+:
    bit 1, (ix + Entity.flags)
    ret nz
    set 1, (ix + Entity.flags)
    ld a, SOUND_STAR_BOX
    ld (v_soundControl), a
    ret
