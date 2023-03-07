.INCLUDE "src/data/audio/songIntro.asm"
.INCLUDE "src/data/audio/songDefault.asm"

; 3rd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from A3BD to A3C0 (4 bytes)
songUnderwater:
.db $04

.db $80
.db $80
.db $08
.dw _DATA_A3E2_
.db $FA $01 $05 $0B

.db $80
.db $A0
.db $08
.db $6D $A4
.db $06 $00 $03 $0A

.db $80
.db $C0
.db $08
.db $01 $A5
.db $FA $01 $05 $0B

.db $80
.db $E0
.db $08
.db $50 $A5
.db $00 $00 $00 $00

; 1st entry of Pointer Table from A3C1 (indexed by unknown)
; Data from A3E2 to A57C (411 bytes)
_DATA_A3E2_:
.db $EA $F5 $A3 $80 $08 $EA $F5 $A3 $80 $02 $A0 $A2 $A4 $EA $32 $A4
.db $E5 $E2 $A3 $E4 $04 $A9 $02 $80 $04 $A9 $02 $A7 $80 $04 $A7 $02
.db $A5 $02 $80 $04 $A5 $02 $E4 $05 $A5 $A4 $04 $A5 $02 $A5 $06 $A4
.db $12 $80 $08 $E4 $04 $A7 $02 $80 $04 $A7 $02 $A5 $80 $04 $A5 $02
.db $A4 $02 $80 $04 $E4 $05 $A4 $02 $A9 $02 $04 $A7 $02 $A5 $18 $EB
.db $E4 $05 $EA $42 $A4 $80 $02 $A0 $A2 $A4 $EA $42 $A4 $80 $08 $EB
.db $A5 $06 $A4 $02 $A2 $06 $A4 $02 $A5 $06 $A4 $02 $A7 $02 $A5 $04
.db $A4 $02 $A4 $06 $A2 $12 $80 $08 $A4 $06 $A2 $02 $A0 $06 $A2 $02
.db $A4 $04 $80 $A9 $02 $04 $A7 $02 $A5 $18 $EB $EA $86 $A4 $EA $86
.db $A4 $EA $BB $A4 $8D $02 $88 $8A $8C $EA $BB $A4 $8D $02 $94 $92
.db $91 $E5 $6D $A4 $8D $02 $80 $01 $8D $88 $02 $8D $EC $00 $03 $86
.db $A4 $8D $8F $04 $8D $02 $88 $02 $80 $01 $88 $83 $02 $88 $EC $00
.db $07 $98 $A4 $88 $88 $8A $8C $8D $02 $80 $01 $8D $88 $02 $8D $EC
.db $00 $03 $A9 $A4 $88 $94 $92 $91 $EB $8D $02 $80 $01 $8D $88 $02
.db $8D $EC $00 $03 $BB $A4 $8F $E4 $06 $8D $04 $E4 $03 $8C $02 $8A
.db $02 $80 $01 $8A $85 $02 $8A $EC $00 $03 $D1 $A4 $8A $8A $8C $8A
.db $88 $02 $80 $01 $88 $83 $02 $88 $EC $00 $03 $E2 $A4 $88 $88 $8A
.db $8C $8D $02 $80 $01 $8D $88 $02 $8D $EC $00 $03 $F3 $A4 $EB $EA
.db $11 $A5 $EA $11 $A5 $EE $0C $EA $32 $A4 $EE $F4 $E5 $01 $A5 $E4
.db $04 $A5 $02 $80 $04 $A5 $02 $A4 $80 $04 $A4 $02 $A2 $02 $80 $04
.db $A2 $02 $E4 $05 $A2 $A0 $04 $A2 $02 $A2 $06 $A0 $12 $80 $08 $E4
.db $04 $A4 $02 $80 $04 $A4 $02 $A2 $80 $04 $A2 $02 $A0 $02 $80 $04
.db $A0 $02 $E4 $05 $A5 $02 $04 $A4 $02 $A2 $18 $80 $08 $EB $E3 $04
.db $E1 $09 $E4 $01 $8D $03 $01 $E1 $0B $E4 $02 $04 $EC $00 $0F $52
.db $A5 $E1 $09 $E4 $01 $02 $E1 $09 $E4 $02 $01 $80 $E1 $0B $E4 $02
.db $8D $80 $E1 $0D $E4 $02 $8D $02 $E5 $52 $A5

; 4th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from A57D to A580 (4 bytes)
songCastle_DATA_A57D_:
.db $04 $80 $80 $07

; Pointer Table from A581 to A582 (1 entries, indexed by unknown)
.dw _DATA_A5A2_

; Data from A583 to A5A1 (31 bytes)
.db $FD $01 $08 $0B $80 $A0 $07 $F5 $A5 $FD $00 $03 $0C $80 $C0 $07
.db $A0 $A6 $FD $01 $03 $0A $80 $E0 $07 $4F $A7 $00 $00 $00 $00

; 1st entry of Pointer Table from A581 (indexed by unknown)
; Data from A5A2 to A756 (437 bytes)
_DATA_A5A2_:
.db $A0 $02 $9F $01 $A0 $80 $02 $A4 $A3 $80 $04 $A2 $02 $A1 $80 $04
.db $A7 $02 $A6 $80 $06 $A0 $02 $9F $01 $A0 $80 $02 $A4 $A3 $80 $A2
.db $A1 $80 $A7 $A6 $08 $80 $04 $EC $00 $02 $A2 $A5 $9F $08 $A2 $A1
.db $9E $9F $10 $80 $10 $9F $08 $A2 $A1 $A4 $A3 $10 $80 $10 $A5 $08
.db $A8 $A7 $A5 $A5 $10 $80 $10 $A7 $08 $AB $AA $A7 $AA $10 $80 $10
.db $E5 $A2 $A5 $E4 $08 $88 $02 $87 $01 $88 $80 $02 $8C $8B $80 $04
.db $8A $02 $89 $80 $04 $8F $02 $8E $80 $06 $88 $02 $87 $01 $88 $80
.db $02 $8C $8B $80 $8A $89 $80 $8F $8E $08 $80 $04 $EC $00 $02 $F5
.db $A5 $E4 $03 $8A $02 $02 $80 $06 $87 $02 $02 $02 $80 $08 $E4 $00
.db $8F $06 $80 $02 $E4 $03 $8A $02 $02 $80 $06 $87 $02 $02 $02 $80
.db $10 $8A $02 $02 $80 $06 $87 $02 $02 $02 $80 $08 $E4 $00 $8F $06
.db $80 $02 $E4 $03 $8A $02 $02 $80 $06 $87 $02 $02 $02 $80 $10 $8D
.db $02 $02 $80 $06 $89 $02 $8A $8B $80 $08 $E4 $00 $91 $06 $80 $02
.db $E4 $03 $8D $02 $02 $80 $06 $89 $02 $8A $8B $80 $10 $8F $02 $02
.db $80 $06 $8B $02 $8C $8D $80 $08 $E4 $00 $92 $06 $80 $02 $E4 $03
.db $8F $02 $02 $80 $06 $8B $02 $8C $8D $80 $10 $E5 $F5 $A5 $9D $02
.db $9C $01 $9D $80 $02 $A0 $9F $80 $04 $9B $02 $99 $80 $04 $A2 $02
.db $A1 $80 $06 $9D $02 $9C $01 $9D $80 $02 $A0 $9F $80 $9B $99 $80
.db $A2 $A1 $08 $80 $04 $EC $00 $02 $A0 $A6 $9D $02 $02 $80 $9B $9A
.db $9B $01 $9D $9F $02 $A0 $01 $A2 $A0 $02 $9F $80 $0C $9D $02 $02
.db $80 $04 $9B $02 $9A $9B $9D $04 $9F $02 $A2 $80 $0A $9D $02 $02
.db $80 $04 $9B $02 $9A $9B $9D $9F $A0 $A2 $80 $04 $A3 $02 $A2 $A0
.db $A2 $02 $A0 $01 $9F $9B $04 $80 $18 $A0 $02 $02 $80 $06 $9F $02
.db $A0 $A2 $A3 $A2 $A0 $80 $04 $A0 $02 $9D $9B $9A $02 $9B $9D $80
.db $04 $A0 $02 $9D $9B $80 $10 $A2 $02 $02 $80 $06 $A6 $02 $A3 $A2
.db $A3 $01 $A2 $A0 $04 $80 $0A $A2 $02 $02 $80 $06 $A5 $02 $A3 $A2
.db $A3 $02 $A0 $01 $A2 $A0 $02 $A2 $80 $08 $E5 $A0 $A6 $E3 $04 $EA
.db $79 $A2 $E5 $51 $A7

; 5th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from A757 to A75A (4 bytes)
songBike_DATA_A57D_:
.db $04 $80 $80 $04

; Pointer Table from A75B to A75C (1 entries, indexed by unknown)
.dw _DATA_A77C_

; Data from A75D to A77B (31 bytes)
.db $03 $01 $04 $0B $80 $A0 $04 $E4 $A7 $03 $00 $03 $0A $80 $C0 $04
.db $37 $A8 $03 $01 $04 $0B $80 $E0 $04 $A3 $A8 $00 $00 $00 $00

; 1st entry of Pointer Table from A75B (indexed by unknown)
; Data from A77C to A8DF (356 bytes)
_DATA_A77C_:
.db $EA $B3 $A7 $A1 $04 $04 $9D $08 $EA $B3 $A7 $A1 $04 $9F $9D $08
.db $EA $CF $A7 $9F $02 $04 $9D $02 $9F $9F $A1 $9F $9D $04 $9F $A1
.db $08 $EA $CF $A7 $9F $02 $04 $9D $02 $9F $04 $A1 $A2 $02 $80 $9D
.db $80 $A2 $04 $80 $E5 $7C $A7 $A2 $02 $9D $9D $9D $9D $06 $9D $02
.db $9F $02 $9B $04 $9F $02 $9D $04 $9A $9B $02 $98 $98 $98 $98 $06
.db $98 $02 $EB $A2 $02 $04 $A1 $02 $A2 $A2 $01 $01 $A4 $02 $A2 $A1
.db $9D $9D $9D $9D $06 $80 $02 $EB $EA $29 $A8 $89 $89 $85 $85 $EA
.db $29 $A8 $89 $89 $02 $87 $85 $04 $04 $8A $8A $8A $8A $8A $02 $85
.db $85 $85 $85 $04 $04 $87 $87 $87 $87 $85 $87 $89 $85 $8A $8A $8A
.db $8A $8A $02 $85 $85 $85 $85 $06 $80 $02 $83 $02 $04 $02 $85 $02
.db $02 $87 $89 $8A $04 $85 $8A $06 $80 $02 $E5 $E4 $A7 $8A $04 $04
.db $04 $04 $83 $83 $8A $8A $85 $85 $85 $87 $EB $EA $73 $A8 $9D $04
.db $9D $9A $06 $80 $02 $EA $73 $A8 $9D $04 $9B $9A $06 $80 $02 $EA
.db $8E $A8 $9B $02 $04 $9A $02 $9B $9B $9D $9B $9A $04 $9B $9D $06
.db $80 $02 $EA $8E $A8 $98 $02 $04 $02 $9A $04 $9B $9D $02 $80 $98
.db $80 $9D $04 $80 $E5 $37 $A8 $9F $02 $9A $9A $9A $9A $06 $9A $02
.db $9B $02 $98 $04 $9B $02 $9A $04 $96 $98 $02 $95 $02 $02 $02 $06
.db $02 $EB $9D $02 $04 $9B $02 $9D $9D $01 $01 $9F $02 $9D $9B $9A
.db $9A $9A $9A $06 $80 $02 $EB $E3 $04 $EA $65 $A3 $EA $82 $A3 $EA
.db $82 $A3 $EA $9E $A3 $EA $65 $A3 $EA $82 $A3 $EA $82 $A3 $EA $9E
.db $A3 $EA $79 $A2 $EA $AD $A3 $EA $79 $A2 $E4 $02 $E1 $0B $04 $04
.db $08 $EA $79 $A2 $EA $AD $A3 $EA $79 $A2 $E4 $02 $E1 $0B $04 $04
.db $08 $E5 $A5 $A8

; 6th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from A8E0 to A8E3 (4 bytes)
songLevelStarting:
.db $03 $80 $80 $04

; Pointer Table from A8E4 to A8E5 (1 entries, indexed by unknown)
.dw _DATA_A905_

; Data from A8E6 to A904 (31 bytes)
.db $03 $01 $04 $0B $80 $A0 $04 $16 $A9 $03 $01 $04 $0A $80 $C0 $04
.db $27 $A9 $03 $01 $04 $0B $80 $E0 $04 $37 $A9 $03 $01 $01 $0D

; 1st entry of Pointer Table from A8E4 (indexed by unknown)
; Data from A905 to A936 (50 bytes)
_DATA_A905_:
.db $9F $02 $04 $9D $02 $9F $04 $A1 $A2 $02 $80 $9D $80 $A2 $04 $80
.db $E2 $83 $02 $04 $02 $85 $02 $02 $87 $89 $8A $04 $85 $8A $06 $80
.db $02 $E2 $98 $02 $04 $02 $9A $04 $9B $9D $02 $80 $98 $80 $9D $04
.db $80 $E2

; 7th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from A937 to A93A (4 bytes)
songBattle:
.db $04 $80 $80 $04

; Pointer Table from A93B to A93C (1 entries, indexed by unknown)
.dw _DATA_A95C_

; Data from A93D to A95B (31 bytes)
.db $03 $01 $07 $0C $80 $A0 $04 $CC $A9 $03 $00 $03 $0B $80 $C0 $04
.db $34 $AA $03 $00 $07 $0C $80 $E0 $04 $A1 $AA $00 $00 $00 $00

; 1st entry of Pointer Table from A93B (indexed by unknown)
; Data from A95C to AAD0 (373 bytes)
_DATA_A95C_:
.db $80 $03 $A2 $01 $9D $03 $A0 $01 $A2 $03 $01 $9D $03 $A0 $01 $80
.db $03 $A5 $01 $A2 $03 $A0 $01 $A2 $02 $80 $A2 $80 $80 $03 $A0 $01
.db $9B $03 $9D $01 $A0 $03 $01 $9B $03 $9D $01 $80 $03 $A0 $01 $A2
.db $03 $A0 $01 $A2 $02 $80 $A0 $80 $80 $03 $A2 $01 $9D $03 $A0 $01
.db $A2 $03 $01 $9D $03 $A0 $01 $80 $03 $A5 $01 $A2 $03 $A0 $01 $A2
.db $02 $80 $A2 $80 $80 $03 $9B $01 $9D $03 $A0 $01 $A2 $03 $A0 $01
.db $A2 $03 $A0 $01 $80 $03 $A2 $01 $A5 $02 $80 $A5 $80 $06 $F0 $80
.db $80 $03 $8A $01 $03 $85 $01 $8A $03 $85 $01 $8A $03 $85 $01 $80
.db $03 $8A $01 $03 $85 $01 $8A $03 $85 $01 $8A $02 $80 $80 $03 $88
.db $01 $03 $83 $01 $88 $03 $83 $01 $88 $03 $83 $01 $80 $03 $88 $01
.db $03 $83 $01 $88 $02 $80 $8C $88 $80 $03 $8A $01 $03 $85 $01 $8A
.db $03 $85 $01 $8A $03 $85 $01 $80 $03 $8A $01 $03 $85 $01 $8A $03
.db $85 $01 $8A $02 $80 $80 $03 $83 $01 $02 $80 $85 $80 $88 $85 $80
.db $04 $8D $02 $80 $8D $80 $06 $E2 $80 $03 $9D $01 $98 $03 $9B $01
.db $9D $03 $01 $98 $03 $9B $01 $80 $03 $9D $01 $9B $03 $9D $01 $A0
.db $02 $80 $9D $80 $E1 $0B $80 $03 $96 $01 $91 $03 $94 $01 $96 $03
.db $01 $91 $03 $94 $01 $80 $03 $96 $01 $9B $03 $96 $01 $9D $02 $80
.db $9B $80 $E1 $0D $80 $03 $9D $01 $98 $03 $9B $01 $9D $03 $01 $98
.db $03 $9B $01 $80 $03 $9D $01 $9B $03 $9D $01 $A0 $02 $80 $9D $80
.db $80 $03 $96 $01 $98 $02 $80 $02 $9B $80 $9D $80 $80 $04 $A0 $02
.db $80 $A0 $80 $06 $E2 $E3 $04 $EA $3E $A3 $EC $00 $03 $A3 $AA $E1
.db $09 $E4 $01 $8D $03 $01 $E1 $0B $E4 $02 $04 $E1 $09 $E4 $01 $03
.db $01 $E1 $0B $E4 $02 $03 $01 $E1 $09 $E4 $01 $8D $03 $01 $E1 $0B
.db $E4 $02 $04 $04 $E2

; 8th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AAD1 to AAD4 (4 bytes)
songPeticopter:
.db $04 $80 $80 $08

; Pointer Table from AAD5 to AAD6 (1 entries, indexed by unknown)
.dw _DATA_AAF6_

; Data from AAD7 to AAF5 (31 bytes)
.db $03 $01 $04 $0B $80 $A0 $08 $5D $AB $03 $00 $03 $0A $80 $C0 $08
.db $DF $AB $03 $01 $04 $0B $80 $E0 $08 $43 $AC $00 $00 $00 $00

; 1st entry of Pointer Table from AAD5 (indexed by unknown)
; Data from AAF6 to AC55 (352 bytes)
_DATA_AAF6_:
.db $A0 $02 $A5 $80 $A2 $A4 $A2 $A2 $A0 $A0 $A5 $80 $A2 $A4 $A2 $A4
.db $A5 $A0 $A5 $80 $A2 $A4 $A2 $A2 $A0 $A5 $A7 $A5 $A7 $A4 $A4 $80
.db $A5 $9E $A7 $80 $A0 $02 $9E $A4 $9D $A2 $9E $A7 $9E $A5 $9B $02
.db $A4 $A4 $A2 $9D $A5 $80 $9E $02 $9D $A2 $9B $A0 $99 $A5 $9B $A4
.db $9D $A2 $A2 $A2 $9E $A7 $80 $A0 $9E $A4 $9D $A2 $9E $A7 $9E $A5
.db $9B $A4 $A5 $A4 $99 $A5 $9E $A2 $A2 $A4 $A0 $A2 $A5 $A7 $A5 $A7
.db $A4 $A7 $A7 $A7 $E5 $F6 $AA $8D $02 $80 $01 $8D $88 $02 $8D $EC
.db $00 $06 $5D $AB $8F $02 $80 $01 $8F $8A $02 $8F $8F $02 $80 $01
.db $8F $8A $02 $8A $8F $02 $80 $01 $8F $8A $02 $8F $EC $00 $03 $7A
.db $AB $8F $02 $80 $01 $8F $8A $02 $8A $8D $02 $80 $01 $8D $88 $02
.db $8D $8D $02 $80 $01 $8D $88 $02 $8D $8D $02 $80 $01 $8F $88 $02
.db $8D $8D $02 $80 $01 $8D $88 $02 $88 $8F $02 $80 $01 $8F $8A $02
.db $91 $8F $02 $80 $01 $8F $8A $02 $8A $EC $00 $02 $AF $AB $8D $02
.db $80 $01 $8D $88 $02 $02 $8D $02 $80 $01 $8D $8F $02 $8D $92 $80
.db $92 $92 $91 $91 $91 $91 $E5 $5D $AB $9D $02 $80 $04 $9D $02 $9D
.db $80 $9D $9D $9D $80 $04 $9D $02 $9D $08 $9D $02 $80 $04 $9D $02
.db $9D $80 $02 $9D $9D $A2 $80 $A2 $80 $A0 $08 $9B $02 $80 $04 $9B
.db $02 $9B $80 $99 $80 $9B $80 $9B $80 $98 $08 $99 $02 $80 $04 $99
.db $02 $99 $80 $98 $80 $96 $80 $98 $80 $99 $08 $9B $02 $80 $04 $9B
.db $02 $9B $80 $99 $80 $9B $80 $9B $80 $98 $08 $96 $02 $80 $9B $80
.db $9E $80 $9D $80 $A2 $80 $A2 $80 $A0 $08 $E5 $DF $AB $E3 $04 $EA
.db $EE $A2 $EC $00 $0A $45 $AC $EA $91 $A2 $EA $06 $A3 $E5 $45 $AC

; 9th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AC56 to AC59 (4 bytes)
songDead:
.db $03 $A0 $80 $04

; Pointer Table from AC5A to AC5B (1 entries, indexed by unknown)
.dw _DATA_AC72_

; Data from AC5C to AC71 (22 bytes)
.db $03 $01 $00 $0B $A0 $A0 $04 $72 $AC $00 $01 $00 $0B $A0 $C0 $04
.db $72 $AC $FD $01 $00 $0B

; 1st entry of Pointer Table from AC5A (indexed by unknown)
; Data from AC72 to AC80 (15 bytes)
_DATA_AC72_:
.db $A5 $A2 $03 $80 $80 $02 $EE $FE $EC $00 $08 $72 $AC $F0 $80

; 10th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AC81 to AC84 (4 bytes)
_DATA_AC81_:
.db $01 $A8 $C0 $01

; Pointer Table from AC85 to AC86 (1 entries, indexed by unknown)
.dw _DATA_AC8B_

; Data from AC87 to AC8A (4 bytes)
.db $03 $01 $01 $0D

; 1st entry of Pointer Table from AC85 (indexed by unknown)
; Data from AC8B to AC9A (16 bytes)
_DATA_AC8B_:
.db $01 $80 $00 $F0 $04 $01 $40 $00 $D0 $06 $00 $D0 $01 $40 $03 $E2

; 11th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AC9B to AC9E (4 bytes)
_DATA_AC9B_:
.db $01 $A8 $E0 $01

; Pointer Table from AC9F to ACA0 (1 entries, indexed by unknown)
.dw _DATA_ACA5_

; Data from ACA1 to ACA4 (4 bytes)
.db $00 $01 $02 $0D

; 1st entry of Pointer Table from AC9F (indexed by unknown)
; Data from ACA5 to ACB1 (13 bytes)
_DATA_ACA5_:
.db $E3 $07 $00 $10 $00 $30 $04 $00 $17 $00 $10 $06 $E2

; 12th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from ACB2 to ACB5 (4 bytes)
_DATA_ACB2_:
.db $01 $80 $E0 $01

; Pointer Table from ACB6 to ACB7 (1 entries, indexed by unknown)
.dw _DATA_ACBC_

; Data from ACB8 to ACBB (4 bytes)
.db $03 $00 $00 $0F

; 1st entry of Pointer Table from ACB6 (indexed by unknown)
; Data from ACBC to ACC8 (13 bytes)
_DATA_ACBC_:
.db $E3 $07 $A0 $03 $80 $02 $9B $04 $80 $05 $99 $02 $E2

; 13th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from ACC9 to ACCC (4 bytes)
_DATA_ACC9_:
.db $02 $80 $A0 $01

; Pointer Table from ACCD to ACCE (1 entries, indexed by unknown)
.dw _DATA_ACDC_

; Data from ACCF to ACDB (13 bytes)
.db $05 $00 $02 $0D $80 $C0 $01 $DC $AC $03 $01 $02 $0D

; 1st entry of Pointer Table from ACCD (indexed by unknown)
; Data from ACDC to ACE0 (5 bytes)
_DATA_ACDC_:
.db $A5 $01 $9B $05 $E2

; 14th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from ACE1 to ACE4 (4 bytes)
_DATA_ACE1_:
.db $02 $88 $A0 $01

; Pointer Table from ACE5 to ACE6 (1 entries, indexed by unknown)
.dw _DATA_ACF4_

; Data from ACE7 to ACF3 (13 bytes)
.db $00 $00 $07 $0F $88 $C0 $01 $FB $AC $00 $01 $07 $0F

; 1st entry of Pointer Table from ACE5 (indexed by unknown)
; Data from ACF4 to AD01 (14 bytes)
_DATA_ACF4_:
.db $00 $1A $06 $00 $09 $15 $E2 $00 $1E $06 $00 $11 $15 $E2

; 15th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AD02 to AD05 (4 bytes)
_DATA_AD02_:
.db $02 $80 $A0 $03

; Pointer Table from AD06 to AD07 (1 entries, indexed by unknown)
.dw _DATA_AD15_

; Data from AD08 to AD14 (13 bytes)
.db $05 $01 $04 $0D $80 $C0 $03 $15 $AD $00 $01 $04 $0D

; 1st entry of Pointer Table from AD06 (indexed by unknown)
; Data from AD15 to AD1D (9 bytes)
_DATA_AD15_:
.db $99 $02 $9D $9F $9D $9B $A0 $0E $E2

; 16th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AD1E to AD21 (4 bytes)
_DATA_AD1E_:
.db $01 $A0 $C0 $04

; Pointer Table from AD22 to AD23 (1 entries, indexed by unknown)
.dw _DATA_AD28_

; Data from AD24 to AD27 (4 bytes)
.db $03 $00 $03 $0D

; 1st entry of Pointer Table from AD22 (indexed by unknown)
; Data from AD28 to AD2B (4 bytes)
_DATA_AD28_:
.db $A5 $99 $06 $E2

; 17th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AD2C to AD2F (4 bytes)
_DATA_AD2C_:
.db $01 $A8 $C0 $01

; Pointer Table from AD30 to AD31 (1 entries, indexed by unknown)
.dw _DATA_AD36_

; Data from AD32 to AD35 (4 bytes)
.db $03 $00 $00 $0B

; 1st entry of Pointer Table from AD30 (indexed by unknown)
; Data from AD36 to AD45 (16 bytes)
_DATA_AD36_:
.db $01 $56 $00 $D0 $07 $00 $90 $00 $40 $02 $00 $A8 $00 $50 $1A $E2

; 18th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AD46 to AD49 (4 bytes)
_DATA_AD46_:
.db $02 $A8 $A0 $01

; Pointer Table from AD4A to AD4B (1 entries, indexed by unknown)
.dw _DATA_AD59_

; Data from AD4C to AD58 (13 bytes)
.db $03 $00 $00 $0D $A8 $E0 $01 $76 $AD $03 $00 $07 $0F

; 1st entry of Pointer Table from AD4A (indexed by unknown)
; Data from AD59 to AD8C (52 bytes)
_DATA_AD59_:
.db $03 $50 $03 $FF $06 $00 $00 $00 $00 $04 $E1 $09 $03 $20 $02 $C0
.db $04 $03 $20 $03 $FF $10 $00 $00 $00 $00 $1E $F1 $E2 $E3 $07 $00
.db $03 $00 $04 $06 $00 $00 $00 $00 $04 $00 $10 $00 $18 $14 $00 $00
.db $00 $00 $1E $E2

; 19th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AD8D to AD90 (4 bytes)
_DATA_AD8D_:
.db $01 $A8 $C0 $01

; Pointer Table from AD91 to AD92 (1 entries, indexed by unknown)
.dw _DATA_AD97_

; Data from AD93 to AD96 (4 bytes)
.db $03 $00 $08 $0D

; 1st entry of Pointer Table from AD91 (indexed by unknown)
; Data from AD97 to ADA6 (16 bytes)
_DATA_AD97_:
.db $01 $46 $01 $C0 $0D $00 $52 $00 $F0 $06 $00 $C0 $00 $F0 $08 $E2

; 20th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from ADA7 to ADAA (4 bytes)
_DATA_ADA7_:
.db $01 $80 $C0 $01

; Pointer Table from ADAB to ADAC (1 entries, indexed by unknown)
.dw _DATA_ADB1_

; Data from ADAD to ADB0 (4 bytes)
.db $03 $00 $04 $0D

; 1st entry of Pointer Table from ADAB (indexed by unknown)
; Data from ADB1 to ADCB (27 bytes)
_DATA_ADB1_:
.db $99 $01 $9D $A0 $A3 $EE $01 $EC $00 $03 $B1 $AD $99 $01 $9D $A0
.db $A3 $EE $FF $EC $00 $03 $BD $AD $E5 $B1 $AD

; 21st entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from ADCC to ADCF (4 bytes)
_DATA_ADCC_:
.db $02 $A8 $A0 $02

; Pointer Table from ADD0 to ADD1 (1 entries, indexed by unknown)
.dw _DATA_ADDF_

; Data from ADD2 to ADDE (13 bytes)
.db $03 $00 $03 $0D $A8 $C0 $02 $1C $AE $03 $00 $03 $0D

; 1st entry of Pointer Table from ADD0 (indexed by unknown)
; Data from ADDF to AE58 (122 bytes)
_DATA_ADDF_:
.db $02 $00 $02 $30 $04 $00 $E0 $00 $20 $04 $00 $00 $00 $00 $04 $02
.db $00 $02 $90 $04 $02 $50 $02 $00 $04 $00 $00 $00 $00 $04 $02 $00
.db $01 $80 $04 $01 $00 $00 $A0 $04 $00 $00 $00 $00 $02 $03 $00 $03
.db $20 $04 $00 $00 $00 $00 $02 $03 $20 $03 $C0 $08 $E2 $01 $A0 $02
.db $00 $04 $00 $D0 $00 $30 $04 $00 $00 $00 $00 $04 $01 $A0 $02 $60
.db $04 $02 $40 $01 $A0 $04 $00 $00 $00 $00 $04 $01 $A0 $01 $60 $04
.db $00 $E0 $00 $90 $04 $00 $00 $00 $00 $02 $03 $20 $03 $40 $04 $00
.db $00 $00 $00 $02 $03 $00 $03 $A0 $08 $E2

; 22nd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AE59 to AE5C (4 bytes)
_DATA_AE59_:
.db $01 $A8 $C0 $02

; Pointer Table from AE5D to AE5E (1 entries, indexed by unknown)
.dw _DATA_AE63_

; Data from AE5F to AE62 (4 bytes)
.db $00 $00 $04 $0B

; 1st entry of Pointer Table from AE5D (indexed by unknown)
; Data from AE63 to AE7E (28 bytes)
_DATA_AE63_:
.db $00 $60 $01 $40 $05 $01 $40 $00 $B0 $07 $00 $B0 $01 $40 $07 $01
.db $80 $00 $90 $07 $00 $F2 $00 $C0 $07 $E5 $68 $AE

; 23rd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AE7F to AE82 (4 bytes)
_DATA_AE7F_:
.db $01 $A8 $C0 $02

; Pointer Table from AE83 to AE84 (1 entries, indexed by unknown)
.dw _DATA_AE89_

; Data from AE85 to AE88 (4 bytes)
.db $03 $00 $08 $0D

; 1st entry of Pointer Table from AE83 (indexed by unknown)
; Data from AE89 to AEA2 (26 bytes)
_DATA_AE89_:
.db $01 $B0 $01 $10 $04 $00 $00 $00 $00 $01 $01 $40 $00 $C0 $04 $01
.db $20 $00 $A0 $04 $01 $00 $00 $80 $05 $E2

; 24th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AEA3 to AEA6 (4 bytes)
_DATA_AEA3_:
.db $01 $A8 $C0 $01

; Pointer Table from AEA7 to AEA8 (1 entries, indexed by unknown)
.dw _DATA_AEAD_

; Data from AEA9 to AEAC (4 bytes)
.db $00 $00 $09 $0E

; 1st entry of Pointer Table from AEA7 (indexed by unknown)
; Data from AEAD to AEB2 (6 bytes)
_DATA_AEAD_:
.db $00 $1E $00 $1A $05 $E2

; 25th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AEB3 to AEB6 (4 bytes)
_DATA_AEB3_:
.db $01 $A8 $E0 $01

; Pointer Table from AEB7 to AEB8 (1 entries, indexed by unknown)
.dw _DATA_AEBD_

; Data from AEB9 to AEBC (4 bytes)
.db $03 $00 $08 $0F

; 1st entry of Pointer Table from AEB7 (indexed by unknown)
; Data from AEBD to AECB (15 bytes)
_DATA_AEBD_:
.db $E3 $07 $00 $40 $00 $FF $0A $E4 $07 $01 $00 $01 $70 $04 $E2

; 26th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AECC to AECF (4 bytes)
_DATA_AECC_:
.db $01 $88 $C0 $01

; Pointer Table from AED0 to AED1 (1 entries, indexed by unknown)
.dw _DATA_AED6_

; Data from AED2 to AED5 (4 bytes)
.db $03 $01 $01 $0D

; 1st entry of Pointer Table from AED0 (indexed by unknown)
; Data from AED6 to AEE2 (13 bytes)
_DATA_AED6_:
.db $03 $F0 $01 $03 $E0 $02 $00 $00 $05 $03 $80 $02 $E2

; 27th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AEE3 to AEE6 (4 bytes)
_DATA_AEE3_:
.db $02 $A0 $A0 $04

; Pointer Table from AEE7 to AEE8 (1 entries, indexed by unknown)
.dw _DATA_AEF6_

; Data from AEE9 to AEF5 (13 bytes)
.db $03 $01 $00 $0D $A0 $C0 $04 $F6 $AE $00 $01 $00 $0D

; 1st entry of Pointer Table from AEE7 (indexed by unknown)
; Data from AEF6 to AEF9 (4 bytes)
_DATA_AEF6_:
.db $B1 $99 $30 $E2

; 28th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AEFA to AEFD (4 bytes)
_DATA_AEFA_:
.db $01 $A8 $C0 $01

; Pointer Table from AEFE to AEFF (1 entries, indexed by unknown)
.dw _DATA_AF04_

; Data from AF00 to AF03 (4 bytes)
.db $00 $01 $02 $0C

; 1st entry of Pointer Table from AEFE (indexed by unknown)
; Data from AF04 to AF13 (16 bytes)
_DATA_AF04_:
.db $02 $00 $01 $60 $03 $00 $00 $00 $00 $01 $00 $C2 $01 $B0 $09 $E2

; 29th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AF14 to AF17 (4 bytes)
_DATA_AF14_:
.db $01 $A8 $C0 $01

; Pointer Table from AF18 to AF19 (1 entries, indexed by unknown)
.dw _DATA_AF1E_

; Data from AF1A to AF1D (4 bytes)
.db $00 $01 $00 $05

; 1st entry of Pointer Table from AF18 (indexed by unknown)
; Data from AF1E to AF35 (24 bytes)
_DATA_AF1E_:
.db $00 $80 $00 $D0 $14 $01 $20 $00 $F0 $18 $00 $C0 $01 $20 $06 $EC
.db $00 $03 $23 $AF $E5 $1E $AF $E2

; 30th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AF36 to AF39 (4 bytes)
_DATA_AF36_:
.db $02 $A8 $A0 $02

; Pointer Table from AF3A to AF3B (1 entries, indexed by unknown)
.dw _DATA_AF49_

; Data from AF3C to AF48 (13 bytes)
.db $03 $01 $00 $09 $A8 $E0 $02 $59 $AF $03 $01 $00 $0D

; 1st entry of Pointer Table from AF3A (indexed by unknown)
; Data from AF49 to AF6C (36 bytes)
_DATA_AF49_:
.db $02 $F0 $03 $50 $02 $01 $80 $02 $00 $04 $03 $00 $03 $FF $10 $E2
.db $E3 $07 $00 $04 $00 $10 $02 $00 $40 $00 $80 $04 $E4 $00 $00 $80
.db $01 $D0 $10 $E2

; 31st entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AF6D to AF70 (4 bytes)
_DATA_AF6D_:
.db $01 $80 $E0 $01

; Pointer Table from AF71 to AF72 (1 entries, indexed by unknown)
.dw _DATA_AF77_

; Data from AF73 to AF76 (4 bytes)
.db $03 $01 $00 $06

; 1st entry of Pointer Table from AF71 (indexed by unknown)
; Data from AF77 to AF83 (13 bytes)
_DATA_AF77_:
.db $E3 $04 $8D $5A $00 $00 $00 $00 $14 $E5 $77 $AF $E2

; 32nd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AF84 to AF87 (4 bytes)
_DATA_AF84_:
.db $02 $A8 $A0 $01

; Pointer Table from AF88 to AF89 (1 entries, indexed by unknown)
.dw _DATA_AF97_

; Data from AF8A to AF96 (13 bytes)
.db $03 $00 $03 $0D $A8 $E0 $01 $A9 $AF $03 $00 $03 $0F

; 1st entry of Pointer Table from AF88 (indexed by unknown)
; Data from AF97 to AFBC (38 bytes)
_DATA_AF97_:
.db $03 $F0 $03 $20 $03 $03 $00 $03 $F0 $05 $E4 $07 $03 $C0 $03 $FF
.db $10 $E2 $E3 $07 $00 $F0 $00 $40 $03 $00 $E0 $01 $E0 $05 $E4 $07
.db $01 $E0 $01 $EF $10 $E2

; 33rd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AFBD to AFC0 (4 bytes)
_DATA_AFBD_:
.db $01 $80 $C0 $04

; Pointer Table from AFC1 to AFC2 (1 entries, indexed by unknown)
.dw _DATA_AFC7_

; Data from AFC3 to AFC6 (4 bytes)
.db $03 $00 $03 $0D

; 1st entry of Pointer Table from AFC1 (indexed by unknown)
; Data from AFC7 to AFC9 (3 bytes)
_DATA_AFC7_:
.db $A5 $02 $E2

; 34th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AFCA to AFCD (4 bytes)
_DATA_AFCA_:
.db $02 $A8 $A0 $01

; Pointer Table from AFCE to AFCF (1 entries, indexed by unknown)
.dw _DATA_AFDD_

; Data from AFD0 to AFDC (13 bytes)
.db $00 $00 $09 $0F $A8 $C0 $01 $E3 $AF $00 $00 $09 $0F

; 1st entry of Pointer Table from AFCE (indexed by unknown)
; Data from AFDD to AFE8 (12 bytes)
_DATA_AFDD_:
.db $02 $F0 $02 $A0 $20 $E2 $03 $F0 $03 $5F $20 $E2

; 35th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from AFE9 to AFEC (4 bytes)
_DATA_AFE9_:
.db $02 $A8 $A0 $01

; Pointer Table from AFED to AFEE (1 entries, indexed by unknown)
.dw _DATA_AFFC_

; Data from AFEF to AFFB (13 bytes)
.db $00 $01 $00 $0F $A8 $C0 $01 $18 $B0 $00 $00 $00 $0F

; 1st entry of Pointer Table from AFED (indexed by unknown)
; Data from AFFC to B033 (56 bytes)
_DATA_AFFC_:
.db $00 $15 $00 $12 $02 $00 $18 $00 $15 $03 $00 $00 $00 $00 $02 $00
.db $15 $00 $13 $05 $E4 $07 $00 $11 $00 $10 $06 $E2 $00 $18 $00 $10
.db $02 $00 $10 $00 $08 $03 $00 $00 $00 $00 $02 $00 $12 $00 $10 $05
.db $E4 $07 $00 $14 $00 $14 $06 $E2

; 36th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B034 to B037 (4 bytes)
_DATA_B034_:
.db $01 $A8 $E0 $01

; Pointer Table from B038 to B039 (1 entries, indexed by unknown)
.dw _DATA_B03E_

; Data from B03A to B03D (4 bytes)
.db $03 $00 $08 $0D

; 1st entry of Pointer Table from B038 (indexed by unknown)
; Data from B03E to B04C (15 bytes)
_DATA_B03E_:
.db $E3 $07 $00 $A0 $00 $10 $06 $E4 $00 $00 $D0 $00 $10 $19 $E2

; 37th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B04D to B050 (4 bytes)
_DATA_B04D_:
.db $01 $A8 $C0 $01

; Pointer Table from B051 to B052 (1 entries, indexed by unknown)
.dw _DATA_B057_

; Data from B053 to B056 (4 bytes)
.db $03 $00 $03 $0D

; 1st entry of Pointer Table from B051 (indexed by unknown)
; Data from B057 to B061 (11 bytes)
_DATA_B057_:
.db $02 $00 $01 $90 $02 $01 $00 $00 $10 $03 $E2

; 38th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B062 to B065 (4 bytes)
_DATA_B062_:
.db $01 $88 $C0 $01

; Pointer Table from B066 to B067 (1 entries, indexed by unknown)
.dw _DATA_B06C_

; Data from B068 to B06B (4 bytes)
.db $03 $00 $01 $0D

; 1st entry of Pointer Table from B066 (indexed by unknown)
; Data from B06C to B075 (10 bytes)
_DATA_B06C_:
.db $00 $E0 $04 $00 $00 $02 $00 $80 $04 $E2

; 39th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B076 to B079 (4 bytes)
_DATA_B076_:
.db $01 $A8 $C0 $01

; Pointer Table from B07A to B07B (1 entries, indexed by unknown)
.dw _DATA_B080_

; Data from B07C to B07F (4 bytes)
.db $03 $00 $03 $0D

; 1st entry of Pointer Table from B07A (indexed by unknown)
; Data from B080 to B08F (16 bytes)
_DATA_B080_:
.db $00 $80 $00 $40 $02 $00 $20 $00 $10 $01 $00 $E0 $00 $50 $06 $E2

; 40th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B090 to B093 (4 bytes)
_DATA_B090_:
.db $01 $A8 $C0 $01

; Pointer Table from B094 to B095 (1 entries, indexed by unknown)
.dw _DATA_B09A_

; Data from B096 to B099 (4 bytes)
.db $03 $00 $07 $0D

; 1st entry of Pointer Table from B094 (indexed by unknown)
; Data from B09A to B0A9 (16 bytes)
_DATA_B09A_:
.db $01 $00 $00 $90 $05 $00 $D0 $00 $60 $03 $00 $D0 $00 $40 $04 $E2

; 41st entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B0AA to B0AD (4 bytes)
_DATA_B0AA_:
.db $01 $88 $C0 $01

; Pointer Table from B0AE to B0AF (1 entries, indexed by unknown)
.dw _DATA_B0B4_

; Data from B0B0 to B0B3 (4 bytes)
.db $03 $00 $03 $0D

; 1st entry of Pointer Table from B0AE (indexed by unknown)
; Data from B0B4 to B0BD (10 bytes)
_DATA_B0B4_:
.db $01 $00 $03 $00 $00 $02 $00 $80 $03 $E2

; 42nd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B0BE to B0C1 (4 bytes)
_DATA_B0BE_:
.db $01 $A8 $C0 $01

; Pointer Table from B0C2 to B0C3 (1 entries, indexed by unknown)
.dw _DATA_B0C8_

; Data from B0C4 to B0C7 (4 bytes)
.db $03 $01 $08 $0A

; 1st entry of Pointer Table from B0C2 (indexed by unknown)
; Data from B0C8 to B0DC (21 bytes)
_DATA_B0C8_:
.db $01 $D0 $01 $30 $06 $E4 $00 $01 $00 $00 $B0 $03 $00 $B0 $01 $00
.db $06 $E5 $C8 $B0 $E2

; 43rd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B0DD to B0E0 (4 bytes)
_DATA_B0DD_:
.db $01 $88 $C0 $01

; Pointer Table from B0E1 to B0E2 (1 entries, indexed by unknown)
.dw _DATA_B0E7_

; Data from B0E3 to B0E6 (4 bytes)
.db $03 $00 $01 $0A

; 1st entry of Pointer Table from B0E1 (indexed by unknown)
; Data from B0E7 to B0F3 (13 bytes)
_DATA_B0E7_:
.db $02 $00 $03 $00 $00 $02 $01 $00 $05 $E5 $E7 $B0 $E2

; 44th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B0F4 to B0F7 (4 bytes)
_DATA_B0F4_:
.db $01 $A8 $C0 $02

; Pointer Table from B0F8 to B0F9 (1 entries, indexed by unknown)
.dw _DATA_B0FE_

; Data from B0FA to B0FD (4 bytes)
.db $03 $01 $00 $0B

; 1st entry of Pointer Table from B0F8 (indexed by unknown)
; Data from B0FE to B11C (31 bytes)
_DATA_B0FE_:
.db $02 $30 $01 $80 $08 $01 $20 $00 $80 $05 $02 $00 $02 $80 $06 $01
.db $80 $01 $10 $06 $01 $C0 $01 $F0 $05 $01 $E0 $02 $10 $08 $E2

; 45th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B11D to B120 (4 bytes)
_DATA_B11D_:
.db $01 $A8 $C0 $01

; Pointer Table from B121 to B122 (1 entries, indexed by unknown)
.dw _DATA_B127_

; Data from B123 to B126 (4 bytes)
.db $03 $01 $00 $0D

; 1st entry of Pointer Table from B121 (indexed by unknown)
; Data from B127 to B16E (72 bytes)
_DATA_B127_:
.db $01 $00 $00 $E0 $02 $00 $D0 $00 $A0 $04 $00 $A0 $00 $F0 $03 $00
.db $00 $00 $00 $02 $01 $20 $01 $30 $02 $01 $50 $01 $A0 $06 $00 $00
.db $00 $00 $14 $01 $00 $00 $E0 $02 $00 $D0 $00 $A0 $04 $00 $A0 $00
.db $F0 $03 $00 $00 $00 $00 $02 $01 $20 $01 $30 $02 $01 $50 $01 $A0
.db $06 $00 $00 $00 $00 $14 $F0 $10

; 46th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B16F to B172 (4 bytes)
_DATA_B16F_:
.db $01 $A8 $C0 $01

; Pointer Table from B173 to B174 (1 entries, indexed by unknown)
.dw _DATA_B179_

; Data from B175 to B178 (4 bytes)
.db $00 $01 $00 $0D

; 1st entry of Pointer Table from B173 (indexed by unknown)
; Data from B179 to B188 (16 bytes)
_DATA_B179_:
.db $01 $00 $00 $D0 $02 $00 $70 $00 $C0 $06 $01 $20 $01 $50 $03 $E2

; 47th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B189 to B18C (4 bytes)
_DATA_B189_:
.db $03 $80 $80 $06

; Pointer Table from B18D to B18E (1 entries, indexed by unknown)
.dw _DATA_B1A5_

; Data from B18F to B1A4 (22 bytes)
.db $00 $01 $04 $0D $80 $A0 $06 $B5 $B1 $00 $01 $03 $0D $80 $C0 $06
.db $C5 $B1 $00 $01 $04 $0D

; 1st entry of Pointer Table from B18D (indexed by unknown)
; Data from B1A5 to B1D3 (47 bytes)
_DATA_B1A5_:
.db $A0 $03 $9E $01 $9D $03 $99 $01 $9D $04 $9B $E4 $05 $99 $08 $E2
.db $9D $03 $9B $01 $99 $03 $94 $01 $99 $04 $94 $E4 $05 $94 $08 $E2
.db $8D $03 $01 $88 $03 $91 $01 $88 $04 $8D $E4 $06 $91 $08 $E2

; 48th entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from B1D4 to B1D7 (4 bytes)
_DATA_B1D4_:
.db $04 $80 $80 $06

; Pointer Table from B1D8 to B1D9 (1 entries, indexed by unknown)
.dw $9FB9
; .dw _DATA_9FB9_

; Data from B1DA to B1F8 (31 bytes)
.db $EC $01 $04 $0B $80 $A0 $06 $87 $A0 $F8 $01 $03 $0A $80 $C0 $06
.db $5F $A1 $EC $01 $04 $0B $80 $E0 $06 $2D $A2 $00 $00 $00 $00

; Pointer Table from B1F9 to B21C (18 entries, indexed by _RAM_C11F_)
envelopes:
.dw _DATA_B21D_ _DATA_B21F_ _DATA_B226_ _DATA_B22B_ _DATA_B233_ _DATA_B23C_ _DATA_B244_ _DATA_B24C_
.dw _DATA_B251_ _DATA_B258_ _DATA_B25E_ _DATA_B263_ _DATA_B269_ _DATA_B273_ _DATA_B278_ _DATA_B27A_
.dw _DATA_B27C_ _DATA_B283_

; 1st entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B21D to B21E (2 bytes)
_DATA_B21D_:
.db $FF $02

; 2nd entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B21F to B225 (7 bytes)
_DATA_B21F_:
.db $FF $ED $DC $CB $BA $A9 $02

; 3rd entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B226 to B22A (5 bytes)
_DATA_B226_:
.db $DF $FF $FF $F7 $02

; 4th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B22B to B232 (8 bytes)
_DATA_B22B_:
.db $BF $FF $FD $CC $BB $AA $BB $02

; 5th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B233 to B23B (9 bytes)
_DATA_B233_:
.db $BF $FF $FD $CC $BB $AA $BB $03 $05

; 6th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B23C to B243 (8 bytes)
_DATA_B23C_:
.db $DF $FF $FF $FE $EC $CE $03 $07

; 7th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B244 to B24B (8 bytes)
_DATA_B244_:
.db $FF $EE $DD $CC $BB $AA $99 $01

; 8th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B24C to B250 (5 bytes)
_DATA_B24C_:
.db $9A $BC $DE $EF $01

; 9th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B251 to B257 (7 bytes)
_DATA_B251_:
.db $FB $F0 $84 $FC $F1 $A1 $00

; 10th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B258 to B25D (6 bytes)
_DATA_B258_:
.db $FE $DC $BA $98 $76 $01

; 11th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B25E to B262 (5 bytes)
_DATA_B25E_:
.db $FD $DD $DC $CC $01

; 12th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B263 to B268 (6 bytes)
_DATA_B263_:
.db $FD $CB $A9 $87 $65 $01

; 13th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B269 to B272 (10 bytes)
_DATA_B269_:
.db $FD $CB $A9 $87 $65 $00 $54 $00 $33 $01

; 14th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B273 to B277 (5 bytes)
_DATA_B273_:
.db $FD $A7 $54 $32 $02

; 15th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B278 to B279 (2 bytes)
_DATA_B278_:
.db $FB $00

; 16th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B27A to B27B (2 bytes)
_DATA_B27A_:
.db $F7 $02

; 17th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B27C to B282 (7 bytes)
_DATA_B27C_:
.db $CC $BA $A9 $87 $76 $53 $01

; 18th entry of Pointer Table from B1F9 (indexed by _RAM_C11F_)
; Data from B283 to B289 (7 bytes)
_DATA_B283_:
.db $CA $A9 $88 $76 $65 $43 $01

; Pointer Table from B28A to B2A7 (15 entries, indexed by _RAM_C11E_)
vibratos:
.dw _DATA_B2A8_ _DATA_B2B3_ _DATA_B2C1_ _DATA_B2D0_ _DATA_B2DB_ _DATA_B2DE_ _DATA_B2E2_ _DATA_B2E7_
.dw _DATA_B2EA_ _DATA_B2ED_ _DATA_B2F0_ _DATA_B2F4_ _DATA_B2F7_ _DATA_B2FB_ _DATA_B2FF_

; 1st entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2A8 to B2B2 (11 bytes)
_DATA_B2A8_:
.db $EE $EE $EE $EE $EE $FF $EE $DD $EF $FE $DD

; 2nd entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2B3 to B2C0 (14 bytes)
_DATA_B2B3_:
.db $EF $FE $DC $CD $EF $FE $DC $CD $DE $FF $FE $DC $BC $DE

; 3rd entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2C1 to B2CF (15 bytes)
_DATA_B2C1_:
.db $FE $DB $AB $CD $EF $ED $CB $AB $CD $EF $EE $01 $FF $EE $00

; 4th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2D0 to B2DA (11 bytes)
_DATA_B2D0_:
.db $FF $EE $FF $FF $EE $DD $CC $DD $EE $03 $07

; 5th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2DB to B2DD (3 bytes)
_DATA_B2DB_:
.db $FE $DE $00

; 6th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2DE to B2E1 (4 bytes)
_DATA_B2DE_:
.db $FF $ED $EF $00

; 7th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2E2 to B2E6 (5 bytes)
_DATA_B2E2_:
.db $FF $FE $DE $0F $00

; 8th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2E7 to B2E9 (3 bytes)
_DATA_B2E7_:
.db $EF $FF $01

; 9th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2EA to B2EC (3 bytes)
_DATA_B2EA_:
.db $EE $FF $01

; 10th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2ED to B2EF (3 bytes)
_DATA_B2ED_:
.db $DE $FF $01

; 11th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2F0 to B2F3 (4 bytes)
_DATA_B2F0_:
.db $DD $EE $FF $01

; 12th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2F4 to B2F6 (3 bytes)
_DATA_B2F4_:
.db $CD $EF $01

; 13th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2F7 to B2FA (4 bytes)
_DATA_B2F7_:
.db $CC $DE $EF $01

; 14th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2FB to B2FE (4 bytes)
_DATA_B2FB_:
.db $AB $CD $EF $01

; 15th entry of Pointer Table from B28A (indexed by _RAM_C11E_)
; Data from B2FF to B384 (134 bytes)
_DATA_B2FF_:
.db $FD $CB $BC $DF $00 $FF
