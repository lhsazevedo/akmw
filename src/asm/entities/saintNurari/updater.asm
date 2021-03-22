; 69th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateSaintNurari:
    ld (ix+7), <_DATA_82DE_
    ld (ix+8), >_DATA_82DE_
    bit 0, (ix+1)
    jr nz, +
    ld a, (v_scrollFlags)
    or a
    ret nz
    ld a, $0D
    ld hl, _DATA_82D9_
_LABEL_60D4_:
    set 0, (ix+1)
    ld (v_messageToShowInTheTextBoxIndex), a
    ld a, $01
    ld (v_shouldShowNuraiOrOldMan), a
    ld a, $07
    ld (v_gameState), a
    ld (v_nuraiOrOldManEntityAnimationDescriptorTemporaryPointer), hl
    push ix
    pop hl
    ld (v_nuraiOrOldManEntityTemporaryPointer), hl
    ret

+:
    bit 1, (ix+1)
    ret nz
    set 1, (ix+1)
    ld iy, _RAM_C640_
    ld (iy+0), $52
    ld (iy+12), $72
    ld (iy+14), $70
    ld (iy+3), $08
    ret
