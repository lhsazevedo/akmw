; @TODO
unknownAnimate:
    ld l, (ix + Entity.stateTimer)
    ld a, (ix + Entity.unknown8)
    and $01
    ld (ix + Entity.unknown8), a

    ld h, a
    add hl, hl
    ld a, l
    and $7E
    ld c, a
    add hl, hl
    ld a, h
    add a, a
    ld e, a
    ld d, $00
    ld hl, unknownAnimateStateUpdaters
    add hl, de
    ld a, (hl)
    inc hl
    ld h, (hl)
    ld l, a
    jp (hl)

unknownAnimateStateUpdaters:
.dw unknownAnimateState1Updater
.dw unknownAnimateState2Updater
.dw unknownAnimateState3Updater
.dw unknownAnimateState4Updater
.dw unknownAnimateState5Updater
.dw unknownAnimateState6Updater
.dw unknownAnimateState7Updater
.dw unknownAnimateState8Updater

unknownAnimateState1Updater:
    ld hl, octopus_DATA_6CA_
    ld b, $00
    add hl, bc
    ld a, (hl)

    exx

    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    add a, h
    ld (ix + Entity.yPos.high), a

    ld a, (ix + Entity.unknown7)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a

    exx

    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown11)
    add a, h
    ld (ix + Entity.xPos.high), a

    ld a, (ix + Entity.state)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a

    ret

unknownAnimateState2Updater:
    ld hl, octopus_DATA_6CA_ + 2
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix+31)
    add a, h
    ld (ix + Entity.xPos.high), a
    ld a, (ix + Entity.state)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    add a, h
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown7)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a
    ret

unknownAnimateState3Updater:
    ld hl, octopus_DATA_6CA_ + 2
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix+31)
    sub h
    ld (ix + Entity.xPos.high), a
    ld a, (ix + Entity.state)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    add a, h
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown7)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a
    ret

unknownAnimateState4Updater:
    ld hl, octopus_DATA_6CA_
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    add a, h
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown7)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown11)
    sub h
    ld (ix + Entity.xPos.high), a
    ld a, (ix + Entity.state)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a
    ret

unknownAnimateState5Updater:
    ld hl, octopus_DATA_6CA_
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    sub h
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown7)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown11)
    sub h
    ld (ix + Entity.xPos.high), a
    ld a, (ix + Entity.state)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a
    ret

unknownAnimateState6Updater:
    ld hl, octopus_DATA_6CA_ + 2
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown11)
    sub h
    ld (ix + Entity.xPos.high), a
    ld a, (ix + Entity.state)
    adc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    sub h
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown7)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a
    ret

unknownAnimateState7Updater:
    ld hl, octopus_DATA_6CA_ + 2
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown11)
    add a, h
    ld (ix + Entity.xPos.high), a
    ld a, (ix + Entity.state)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    sub h
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown7)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a
    ret

unknownAnimateState8Updater:
    ld hl, octopus_DATA_6CA_
    ld a, c
    cpl
    add a, $7F
    ld c, a
    ld b, $00
    add hl, bc
    ld a, (hl)
    exx
    ld e, a
    ld l, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown10)
    sub h
    ld (ix + Entity.yPos.high), a
    ld a, (ix + Entity.unknown7)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.high), a
    exx
    inc hl
    ld l, (hl)
    ld e, (ix + Entity.unknown9)
    call _LABEL_74C_
    ld a, (ix + Entity.unknown11)
    add a, h
    ld (ix + Entity.xPos.high), a
    ld a, (ix+26)
    sbc a, $00
    ld (ix + Entity.isOffScreenFlags.low), a
    ret

; Data from 6CA to 74B (130 bytes)
; @TODO
octopus_DATA_6CA_:
.db $00 $FF $03 $FF $06 $FF $09 $FF $0D $FF $10 $FF $13 $FE $16 $FE
.db $19 $FE $1C $FD $1F $FD $22 $FD $25 $FC $29 $FC $2C $FB $2F $FB
.db $32 $FA $35 $F9 $38 $F9 $3B $F8 $3E $F7 $41 $F7 $44 $F6 $47 $F5
.db $4A $F4 $4D $F3 $50 $F2 $53 $F1 $56 $F0 $59 $EF $5C $EE $5F $ED
.db $62 $EC $64 $EA $67 $E9 $6A $E8 $6D $E7 $70 $E5 $73 $E4 $75 $E2
.db $78 $E1 $7B $DF $7E $DE $80 $DC $83 $DB $86 $D9 $88 $D7 $8B $D6
.db $8E $D4 $90 $D2 $93 $D0 $95 $CF $98 $CD $9A $CB $9D $C9 $9F $C7
.db $A2 $C5 $A4 $C3 $A7 $C1 $A9 $BF $AB $BD $AE $BB $B0 $B9 $B2 $B7
.db $B4 $B4
