_LABEL_6EAF_:
    ld a, (ix + Entity.unknown6)
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown5)
    ld (ix + Entity.xPos.high), a
_LABEL_6EBB_:
    exx
    ld a, (ix + Entity.xPos.high)
    ld (ix + Entity.unknown7), a
    ld de, $0100
    ld a, $08
    ld b, (ix + Entity.state)
    call _LABEL_39ED_
    exx
    jp nc, +
--:
    ld a, $08
    add a, (ix + Entity.yPos.high)
    ld (ix + Entity.yPos.high), a
    cp $90
    jp c, _LABEL_6EBB_
    ld a, $08
    add a, (ix + Entity.unknown5)
    ld (ix + Entity.unknown5), a
    cp $60
    jp c, _LABEL_6EAF_
    ret

+:
    ld b, (ix + Entity.state)
    ld a, $08
    add a, (ix + Entity.unknown7)
    ld (ix + Entity.xPos.high), a
-:
    exx
    ld de, $0100
    ld a, $08
    ld b, (ix + Entity.jankenMatchDecision)
    call _LABEL_39ED_
    exx
    jp nc, +
    ld a, (ix + Entity.unknown7)
    ld (ix + Entity.xPos.high), a
    jp --

+:
    ld a, $08
    add a, (ix + Entity.xPos.high)
    ld (ix + Entity.xPos.high), a
    djnz -
    ld a, (ix + Entity.unknown7)
    ld (ix + Entity.xPos.high), a
    ret

_LABEL_6F21_:
    ld a, (_RAM_C0BC_)
    cp $07
    ret nc
    ld b, a
    ld a, (ix + Entity.yPos.high)
    sub b
    ld (ix + Entity.yPos.high), a
    ret

; Pointer Table from 6F30 to 6F37 (4 entries, indexed by v_entities.7.unknown1)
_DATA_6F30_:
.dw _DATA_6F38_ _DATA_6F3B_ _DATA_6F3E_ _DATA_6F41_

; 1st entry of Pointer Table from 6F30 (indexed by v_entities.7.unknown1)
; Data from 6F38 to 6F3A (3 bytes)
_DATA_6F38_:
.db $25 $B0 $70

; 2nd entry of Pointer Table from 6F30 (indexed by v_entities.7.unknown1)
; Data from 6F3B to 6F3D (3 bytes)
_DATA_6F3B_:
.db $46 $C0 $88

; 3rd entry of Pointer Table from 6F30 (indexed by v_entities.7.unknown1)
; Data from 6F3E to 6F40 (3 bytes)
_DATA_6F3E_:
.db $25 $B0 $90

; 4th entry of Pointer Table from 6F30 (indexed by v_entities.7.unknown1)
; Data from 6F41 to 6F43 (3 bytes)
_DATA_6F41_:
.db $25 $B0 $90
