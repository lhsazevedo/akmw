; 6th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateEntity0x06:
    ld a, (_RAM_C369_)
    or (ix + Entity.isOffScreenFlags.high)
    jp nz, _LABEL_485A_
    ld hl, $0000
    ld (_RAM_C36F_), hl
    ld (_RAM_C371_), hl
    dec (ix + Entity.unknown11)
    ret nz
    ld iy, v_entities.2
    ld a, (iy+0)
    or a
    jr z, +
    ld iy, _RAM_C340_
    ld a, (iy+0)
    or a
    jr z, +
    ld (ix + Entity.unknown11), $01
    ret

+:
    ld a, $A5
    ld (v_soundControl), a
    ld (ix + Entity.unknown11), $1E
    ld (iy+0), $09
    ld a, (_RAM_C36C_)
    ld (iy+12), a
    ld a, (_RAM_C36E_)
    ld (iy+14), a
    ld a, (_RAM_C374_)
    and $02
    ld (iy+20), a
    dec (ix + Entity.unknown10)
    jp z, clearCurrentEntity
    ret
