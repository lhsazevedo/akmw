; 8th entry of Jump Table from 127 (indexed by v_gameState)
handleInterruptTextBoxState:
    ld a, (v_nextMapNametableUpdateTimer)
    or a
    ret z
    ld de, $0100
    call getNearEntityTileAttrWithOffset
    ld a, h
    xor $B0
    ld h, a
    dec hl
    ex de, hl
    rst setVdpAddress
    ld hl, (v_currentMapOrTextNametablePointer)
    ld a, (hl)
    out (Port_VDPData), a
    ld a, $10
    out (Port_VDPData), a
    ld a, (v_textBoxCounter)
    bit 7, a
    ret nz
    inc hl
    ld (v_currentMapOrTextNametablePointer), hl
    ret

textPointers:
.dw txtShopWelcome
.dw txtShopInsufficientFunds
.dw txtShopItemPurchased
.dw txtGoosekaIntroduction
.dw txtChokkinnaIntroduction
.dw txtParplinIntroduction
.dw txtBattleGuide
.dw txtBattleRoundLost
.dw txtBattleRoundWon
.dw txtBattleRoundTie
.dw txtBossFight
.dw txtJankenIntroduction
.dw txtSaintNurari
.dw txtVillageElder
.dw txtEgle
.dw txtKingHighStone
.dw txtKingHighStoneNoLetter
.dw txtPrincessLora
.dw txtPrincessLora
.dw txtPrincessLora
.dw txtBattleLost
.dw txtShopSoldOut
