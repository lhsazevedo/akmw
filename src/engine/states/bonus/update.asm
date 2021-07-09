updateBonusLevelState:
    exx
    bit 7, (hl)
    jp z, _LABEL_1735_
    ld a, $09
    call waitForInterrupt
    ld a, (_RAM_D800_)
    or a
    jr nz, +
    ld a, $8A
    ld (v_gameState), a
    ld b, $0A
    jp sleepTenthsOfSecond

+:
    ld a, (_RAM_C095_)
    or a
    ret nz
    ld hl, $0000
    ld (v_verticalScrollSpeed), hl
    ld a, $BD
    ld (_RAM_C014_), a
-:
    ld a, $01
    call waitForInterrupt
    ld hl, _RAM_C014_
    dec (hl)
    jp nz, -
    ld a, $82
    ld (Mapper_Slot2), a
    call audioEngine.reset
    ld hl, v_money
    ld de, v_moneyByteTwo
    ld (hl), $00
    ldi
    ldi
    ld a, $01
    ld (v_lives), a
    ld a, $06
    ld (v_gameState), a
    ret
