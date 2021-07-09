opponentSettings:
.dw _DATA_954B_            ; Pointer to sprite descriptor
.dw _DATA_12357_           ; Pointer to ??? tiles
.dw _DATA_76AB_
.dw _DATA_9500_            ; Animation descriptor
.dw _DATA_9505_            ; Countdown animation descriptor
.dw _DATA_7691_            ; Throw sprite descriptor
.dw _DATA_76E3_            ; Decisions
.db TXT_JANKEN             ; Message index
.db $00

.dw _DATA_9316_             ; Pointer to opponent sprite descriptor
.dw goosekaTiles            ; Pointer to Gooseka tiles
.dw _DATA_76B9_
.dw $92F2                   ; Pointer to opponent animation descriptor
.dw $92F7                   ; Pointer to countdown animation descriptor
.dw _DATA_7697_
.dw _DATA_7703_
.db TXT_PARPLIN             ; Index to message to show to the opponent 
.db $00

.dw _DATA_9316_
.dw chokkinnaTilesA
.dw _DATA_76C7_
.dw $92F2
.dw $9415
.dw _DATA_769D_
.dw _DATA_7723_
.db TXT_CHOKKINNA
.db $00

.dw _DATA_9316_
.dw parplinTiles
.dw _DATA_76D5_
.dw $92F2
.dw $92F7
.dw _DATA_7697_
.dw _DATA_7743_
.db TXT_GOOSEKA
.db $00
