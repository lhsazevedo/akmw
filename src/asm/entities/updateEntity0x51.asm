; 81st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x51:
    bit 0, (ix + Entity.flags)
    jp nz, _LABEL_603E_
    ld a, (_RAM_D800_)
    or a
    jp nz, clearCurrentEntity
    bit 1, (ix + Entity.flags)
    jr nz, ++
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_830B_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_830B_
    ld a, (ix + Entity.data)
    or a
    jr nz, +
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_815C_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_815C_
+:
    ld a, (ix + Entity.isOffScreenFlags.low)
    or (ix + Entity.isOffScreenFlags.high)
    ret nz
    set 1, (ix + Entity.flags)
    ld (ix + Entity.unknown6), $40
++:
    ld a, (ix + Entity.data)
    or a
    jr z, _LABEL_6054_
    ld a, (_RAM_C07F_)
    cp $02
    ret nz
    bit 0, (ix + Entity.flags)
    jr nz, _LABEL_603E_
    dec (ix + Entity.unknown6)
    jr nz, _LABEL_603E_
_LABEL_6001_:
    set 0, (ix + Entity.flags)
    ld l, SCORE_1000
    call addScore
    xor a
    ld (_RAM_C07F_), a
    ld hl, _RAM_D800_
    set 0, (hl)
    ld a, (ix + Entity.data)
    or a
    jr nz, +
    ld a, $14
    ld hl, _DATA_812F_
    ld iy, v_entities.23
    ld (iy+0), $44
    ld (iy+12), $80
    ld (iy+14), $80
    jp _LABEL_60D4_

+:
    ld hl, _RAM_D802_
    res 0, (hl)
    ld a, $0F
    ld hl, _DATA_8306_
    jp _LABEL_60D4_

_LABEL_603E_:
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_8331_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_8331_
    ld a, (ix + Entity.data)
    or a
    ret nz
    ld (ix + Entity.spriteDescriptorPointer.low), <_DATA_8134_
    ld (ix + Entity.spriteDescriptorPointer.high), >_DATA_8134_
    ret

_LABEL_6054_:
    ld a, (v_scrollFlags)
    and $7F
    or a
    ret nz
    ld a, (v_entities.1.state)
    cp ALEX_WALKING
    ret nz
    ld a, $80
    ld (v_nametableChangeRequest), a
    ld hl, _RAM_CE84_
    ld (_RAM_C204_), hl
    ld a, $85
    ld (Mapper_Slot2), a
    ld hl, _DATA_14B5D_
    ld (v_pointerToANametableEntry_RAM_C206_), hl
    ld a, $82
    ld (Mapper_Slot2), a
    jr _LABEL_6001_
