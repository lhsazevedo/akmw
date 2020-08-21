.INCDIR "src/data"

; 1st entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from 9ECD to 9ED0 (4 bytes)
_DATA_9ECD_:
.db $04 $80 $80 $04

; Pointer Table from 9ED1 to 9ED2 (1 entries, indexed by unknown)
.dw _DATA_9EF2_

; Data from 9ED3 to 9EF1 (31 bytes)
.db $EC $01 $04 $0B $80 $A0 $04 $18 $9F $F8 $01 $03 $0A $80 $C0 $04
.db $3F $9F $EC $01 $04 $0B $80 $E0 $04 $67 $9F $00 $00 $00 $00

; 1st entry of Pointer Table from 9ED1 (indexed by unknown)
; Data from 9EF2 to 9F80 (143 bytes)
_DATA_9EF2_:
.db $A7 $02 $04 $AB $02 $E4 $05 $AE $06 $80 $02 $E4 $04 $A9 $02 $04
.db $AC $02 $E4 $05 $B0 $06 $80 $02 $AE $04 $04 $B2 $AE $E4 $05 $B3
.db $0C $80 $04 $E4 $04 $E2 $8F $04 $80 $02 $8F $04 $8A $02 $8F $8A
.db $91 $04 $80 $02 $91 $04 $8C $02 $91 $8C $80 $04 $96 $02 $80 $02
.db $9A $80 $96 $80 $80 $9B $02 $02 $02 $02 $80 $06 $E2 $E4 $04 $A2
.db $02 $04 $A7 $02 $E4 $05 $AB $06 $80 $02 $E4 $04 $A4 $02 $04 $A9
.db $02 $E4 $05 $AC $06 $80 $02 $E4 $04 $AB $04 $04 $AC $AB $E4 $05
.db $B0 $0C $80 $04 $E2 $E3 $04 $EA $91 $A2 $EA $91 $A2 $EA $91 $A2
.db $80 $02 $E1 $0B $E4 $02 $01 $80 $8D $80 $8D $80 $8D $08 $E2

; 2nd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from 9F81 to 9F84 (4 bytes)
_DATA_9F81_:
.db $04 $80 $80 $04

; Pointer Table from 9F85 to 9F86 (1 entries, indexed by unknown)
.dw _DATA_9FA6_

; Data from 9F87 to 9FA5 (31 bytes)
.db $EC $01 $04 $0B $80 $A0 $04 $6E $A0 $F8 $01 $03 $0A $80 $C0 $04
.db $46 $A1 $EC $01 $04 $0B $80 $E0 $04 $1F $A2 $00 $00 $00 $00

; 1st entry of Pointer Table from 9F85 (indexed by unknown)
; Data from 9FA6 to 9FB8 (19 bytes)
_DATA_9FA6_:
.db $A7 $02 $02 $A2 $A2 $EC $00 $03 $A6 $9F $A7 $80 $A7 $80 $EC $01
.db $02 $A6 $9F

; 1st entry of Pointer Table from B1D8 (indexed by unknown)
; Data from 9FB9 to A3BC (1028 bytes)
_DATA_9FB9_:
.incbin "baserom_DATA_9FB9_.inc"

; 3rd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from A3BD to A3C0 (4 bytes)
_DATA_A3BD_:
.db $04 $80 $80 $08

; Pointer Table from A3C1 to A3C2 (1 entries, indexed by unknown)
.dw _DATA_A3E2_

; Data from A3C3 to A3E1 (31 bytes)
.db $FA $01 $05 $0B $80 $A0 $08 $6D $A4 $06 $00 $03 $0A $80 $C0 $08
.db $01 $A5 $FA $01 $05 $0B $80 $E0 $08 $50 $A5 $00 $00 $00 $00

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
_DATA_A57D_:
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
_DATA_A757_:
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
_DATA_A8E0_:
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
_DATA_A937_:
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
_DATA_AAD1_:
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
_DATA_AC56_:
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
.dw _DATA_9FB9_

; Data from B1DA to B1F8 (31 bytes)
.db $EC $01 $04 $0B $80 $A0 $06 $87 $A0 $F8 $01 $03 $0A $80 $C0 $06
.db $5F $A1 $EC $01 $04 $0B $80 $E0 $06 $2D $A2 $00 $00 $00 $00

; Pointer Table from B1F9 to B21C (18 entries, indexed by _RAM_C11F_)
_DATA_B1F9_:
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
_DATA_B28A_:
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
.db $FD $CB $BC $DF $00 $FF $00 $00 $00 $00 $00 $00 $00 $00 $08 $18
.db $18 $10 $10 $20 $20 $00 $28 $28 $00 $00 $00 $00 $00 $00 $08 $28
.db $7C $28 $7C $28 $20 $00 $10 $38 $50 $38 $14 $78 $10 $00 $00 $00
.db $24 $08 $10 $24 $00 $00 $10 $28 $28 $10 $2A $24 $1A $00 $18 $18
.db $08 $10 $00 $00 $00 $00 $0C $18 $30 $30 $30 $18 $0C $00 $30 $18
.db $0C $0C $0C $18 $30 $00 $00 $10 $54 $38 $54 $10 $00 $00 $00 $10
.db $10 $7C $10 $10 $00 $00 $00 $00 $00 $00 $18 $18 $08 $10 $00 $00
.db $00 $7C
.dsb 9, $00
.db $18 $18 $00 $00 $04 $08 $10 $20 $40 $00 $00

; Data from B385 to B504 (384 bytes)
_DATA_B385_:
.db $3C $42 $42 $62 $62 $62 $3C $00 $30 $10 $10 $10 $18 $18 $18 $00
.db $7C $02 $02 $3C $60 $60 $7E $00 $7C $02 $02 $3C $06 $06 $7C $00
.db $1C $24 $44 $4C $4C $7E $0C $00 $7C $40 $40 $7C $06 $06 $7C $00
.db $3C $60 $40 $7C $46 $46 $3C $00 $7E $42 $04 $08 $18 $18 $18 $00
.db $3C $62 $62 $3C $46 $46 $3C $00 $3C $62 $62 $3E $02 $06 $3C $00
.db $00 $18 $18 $00 $18 $18 $00 $00 $00 $18 $18 $00 $18 $18 $08 $10
.db $04 $08 $10 $30 $18 $0C $04 $00 $00 $00 $7C $00 $7C $00 $00 $00
.db $20 $10 $08 $0C $18 $30 $20 $00 $3C $46 $46 $0C $18 $00 $18 $00
.db $3C $42 $1A $2A $2A $2A $14 $00 $18 $24 $42 $62 $7E $62 $62 $00
.db $78 $44 $44 $7C $62 $62 $7C $00 $3C $42 $40 $60 $60 $62 $3C $00
.db $7C $42 $42 $62 $62 $62 $7C $00 $7E $40 $40 $7C $60 $60 $7E $00
.db $7E $40 $40 $7C $60 $60 $60 $00 $3C $42 $40 $66 $62 $62 $3C $00
.db $42 $42 $42 $7E $62 $62 $62 $00 $10 $10 $10 $18 $18 $18 $18 $00
.db $02 $02 $02 $06 $46 $46 $3C $00 $42 $44 $48 $70 $68 $64 $62 $00
.db $40 $40 $40 $60 $60 $60 $7E $00 $46 $6A $52 $46 $46 $46 $46 $00
.db $62 $52 $4A $46 $46 $46 $46 $00 $3C $42 $42 $62 $62 $62 $3C $00
.db $7C $42 $42 $62 $7C $60 $60 $00 $3C $42 $42 $62 $7A $64 $3A $00
.db $7C $42 $42 $62 $7C $62 $62 $00 $3C $42 $40 $3C $06 $46 $3C $00
.db $7E $10 $10 $18 $18 $18 $18 $00 $42 $42 $42 $62 $62 $62 $3C $00
.db $42 $42 $42 $62 $62 $34 $18 $00 $42 $4A $4A $6A $6A $6A $34 $00
.db $42 $26 $1C $18 $38 $64 $42 $00 $42 $62 $34 $18 $18 $18 $18 $00
.db $7E $06 $0C $18 $30 $60 $7E $00 $3C $62 $CD $D1 $D1 $CD $62 $3C
.db $7C $FC $E0 $F8 $7C $1C $FC $F8 $7C $FC $C0 $F8 $F8 $C0 $FC $7C
.db $7C $FC $C0 $DC $DC $CC $FC $7C $38 $38 $7C $5C $5C $CE $BE $BE

; Pointer Table from B505 to B526 (17 entries, indexed by v_level)
_DATA_B505_:
.dw _DATA_B527_ _DATA_B53F_ _DATA_B563_ _DATA_B579_ _DATA_B583_ _DATA_B5AB_ _DATA_B5BD_ _DATA_B5CF_
.dw _DATA_B5E7_ _DATA_B60F_ _DATA_B62D_ _DATA_B655_ _DATA_B65B_ _DATA_B66B_ _DATA_B66F_ _DATA_B685_
.dw _DATA_B6D9_

; 1st entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B527 to B53E (12 entries, indexed by v_entityIndex)
_DATA_B527_:
.dw _DATA_B6ED_ _DATA_B6EE_ _DATA_B6F3_ _DATA_B6FC_ _DATA_B705_ _DATA_B70E_ _DATA_B713_ _DATA_B71C_
.dw _DATA_B725_ _DATA_B726_ _DATA_B733_ _DATA_B73C_

; 2nd entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B53F to B562 (18 entries, indexed by v_entityIndex)
_DATA_B53F_:
.dw _DATA_B74E_ _DATA_B74F_ _DATA_B754_ _DATA_B75D_ _DATA_B76A_ _DATA_B777_ _DATA_B77C_ _DATA_B785_
.dw _DATA_B792_ _DATA_B79F_ _DATA_B7AC_ _DATA_B7B5_ _DATA_B7BE_ _DATA_B7C7_ _DATA_B7D0_ _DATA_B7DD_
.dw _DATA_B7E6_ _DATA_B7EB_

; 3rd entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B563 to B578 (11 entries, indexed by v_entityIndex)
_DATA_B563_:
.dw _DATA_B7F1_ _DATA_B7F2_ _DATA_B7F5_ _DATA_B802_ _DATA_B803_ _DATA_B806_ _DATA_B814_ _DATA_B81D_
.dw _DATA_B82F_ _DATA_B830_ _DATA_B85E_

; 4th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B579 to B582 (5 entries, indexed by v_entityIndex)
_DATA_B579_:
.dw _DATA_B874_ _DATA_B875_ _DATA_B87A_ _DATA_B87F_ _DATA_B88C_

; 5th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B583 to B5AA (20 entries, indexed by v_entityIndex)
_DATA_B583_:
.dw _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B1_ _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B1_
.dw _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B1_ _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B6_
.dw _DATA_B8BC_ _DATA_B8C5_ _DATA_B8D2_ _DATA_B8DF_

; 6th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B5AB to B5BC (9 entries, indexed by v_entityIndex)
_DATA_B5AB_:
.dw _DATA_B8F1_ _DATA_B8F2_ _DATA_B8F7_ _DATA_B900_ _DATA_B905_ _DATA_B90E_ _DATA_B91B_ _DATA_B928_
.dw _DATA_B935_

; 7th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B5BD to B5CE (9 entries, indexed by v_entityIndex)
_DATA_B5BD_:
.dw _DATA_B93E_ _DATA_B93F_ _DATA_B948_ _DATA_B955_ _DATA_B972_ _DATA_B97B_ _DATA_B98B_ _DATA_B990_
.dw _DATA_B99D_

; 8th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B5CF to B5E6 (12 entries, indexed by v_entityIndex)
_DATA_B5CF_:
.dw _DATA_B9A3_ _DATA_B9A4_ _DATA_B9A9_ _DATA_B9AE_ _DATA_B9B3_ _DATA_B9B8_ _DATA_B9C1_ _DATA_B9CA_
.dw _DATA_B9CB_ _DATA_B9D0_ _DATA_B9D5_ _DATA_B9DA_

; 9th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B5E7 to B60E (20 entries, indexed by v_entityIndex)
_DATA_B5E7_:
.dw _DATA_B9E3_ _DATA_B9E4_ _DATA_B9ED_ _DATA_B9F6_ _DATA_BA03_ _DATA_BA08_ _DATA_BA11_ _DATA_BA1A_
.dw _DATA_BA23_ _DATA_BA28_ _DATA_BA2D_ _DATA_BA36_ _DATA_BA3F_ _DATA_BA44_ _DATA_BA51_ _DATA_BA56_
.dw _DATA_BA5C_ _DATA_BA69_ _DATA_BA6E_ _DATA_BA7B_

; 10th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B60F to B62C (15 entries, indexed by v_entityIndex)
_DATA_B60F_:
.dw _DATA_BA85_ _DATA_BA86_ _DATA_BA8F_ _DATA_BA98_ _DATA_BAA9_ _DATA_BAAE_ _DATA_BAB3_ _DATA_BAC0_
.dw _DATA_BACD_ _DATA_BADA_ _DATA_BAE3_ _DATA_BAEC_ _DATA_BAF5_ _DATA_BB06_ _DATA_BB17_

; 11th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B62D to B654 (20 entries, indexed by v_entityIndex)
_DATA_B62D_:
.dw _DATA_BCDB_ _DATA_BC1C_ _DATA_BC21_ _DATA_BC2E_ _DATA_BC43_ _DATA_BCDB_ _DATA_BC52_ _DATA_BC5B_
.dw _DATA_BC64_ _DATA_BC71_ _DATA_BCDB_ _DATA_BC76_ _DATA_BC8B_ _DATA_BC98_ _DATA_BCA5_ _DATA_BCDB_
.dw _DATA_BCAB_ _DATA_BCBC_ _DATA_BCC1_ _DATA_BCCA_

; 12th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B655 to B65A (3 entries, indexed by v_entityIndex)
_DATA_B655_:
.dw _DATA_BB1D_ _DATA_BB1E_ _DATA_BB2B_

; 13th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B65B to B66A (8 entries, indexed by v_entityIndex)
_DATA_B65B_:
.dw _DATA_BB31_ _DATA_BB3F_ _DATA_BB4C_ _DATA_BB61_ _DATA_BB6E_ _DATA_BB7F_ _DATA_BB88_ _DATA_BB91_

; 14th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B66B to B66E (2 entries, indexed by v_entityIndex)
_DATA_B66B_:
.dw _DATA_BB92_ _DATA_BB93_

; 15th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B66F to B684 (11 entries, indexed by v_entityIndex)
_DATA_B66F_:
.dw _DATA_BB9D_ _DATA_BB9D_ _DATA_BB9E_ _DATA_BBA7_ _DATA_BBB4_ _DATA_BBC5_ _DATA_BBD2_ _DATA_BBDF_
.dw _DATA_BBE8_ _DATA_BBF1_ _DATA_BBFA_

; 16th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B685 to B6D8 (42 entries, indexed by v_entityIndex)
_DATA_B685_:
.dw _DATA_BE87_ _DATA_BE87_ _DATA_BCDC_ _DATA_BCE9_ _DATA_BD0B_ _DATA_BD27_ _DATA_BD3C_ _DATA_BE87_
.dw _DATA_BD41_ _DATA_BD46_ _DATA_BD59_ _DATA_BD70_ _DATA_BD84_ _DATA_BD95_ _DATA_BE87_ _DATA_BE87_
.dw _DATA_BD9B_ _DATA_BDB0_ _DATA_BE87_ _DATA_BDC0_ _DATA_BDCD_ _DATA_BE87_ _DATA_BE87_ _DATA_BDDE_
.dw _DATA_BDE7_ _DATA_BDFB_ _DATA_BE0C_ _DATA_BE87_ _DATA_BE87_ _DATA_BE19_ _DATA_BE1E_ _DATA_BE87_
.dw _DATA_BE23_ _DATA_BE34_ _DATA_BE87_ _DATA_BE87_ _DATA_BE40_ _DATA_BE5A_ _DATA_BE67_ _DATA_BE74_
.dw _DATA_BE79_ _DATA_BE7E_

; 17th entry of Pointer Table from B505 (indexed by v_level)
; Pointer Table from B6D9 to B6EC (10 entries, indexed by v_entityIndex)
_DATA_B6D9_:
.dw _DATA_BC00_ _DATA_BC01_ _DATA_BC1B_ _DATA_BC1B_ _DATA_BC00_ _DATA_BC01_ _DATA_BC1B_ _DATA_BC1B_
.dw _DATA_BC1B_ _DATA_BC1B_

; 1st entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B6ED to B6ED (1 bytes)
_DATA_B6ED_:
.db $00

; 2nd entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B6EE to B6F2 (5 bytes)
_DATA_B6EE_:
.db $01 $2D $78 $68 $00

; 3rd entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B6F3 to B6FB (9 bytes)
_DATA_B6F3_:
.db $02 $2D $20 $88 $00 $2D $98 $40 $00

; 4th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B6FC to B704 (9 bytes)
_DATA_B6FC_:
.db $02 $2D $10 $88 $00 $2D $A0 $60 $00

; 5th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B705 to B70D (9 bytes)
_DATA_B705_:
.db $02 $2D $20 $D0 $00 $2D $70 $88 $00

; 6th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B70E to B712 (5 bytes)
_DATA_B70E_:
.db $01 $2D $40 $50 $00

; 7th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B713 to B71B (9 bytes)
_DATA_B713_:
.db $02 $2D $20 $D0 $00 $2D $90 $30 $00

; 8th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B71C to B724 (9 bytes)
_DATA_B71C_:
.db $02 $2D $70 $28 $00 $2D $98 $B0 $00

; 9th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B725 to B725 (1 bytes)
_DATA_B725_:
.db $00

; 10th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B726 to B732 (13 bytes)
_DATA_B726_:
.db $03 $30 $68 $38 $00 $30 $50 $80 $00 $30 $78 $E0 $00

; 11th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B733 to B73B (9 bytes)
_DATA_B733_:
.db $02 $30 $30 $A0 $00 $30 $80 $90 $00

; 12th entry of Pointer Table from B527 (indexed by v_entityIndex)
; Data from B73C to B74D (18 bytes)
_DATA_B73C_:
.db $84 $44 $30 $E0 $00 $03 $2E $28 $A0 $00 $30 $68 $80 $00 $23 $80
.db $30 $00

; 1st entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B74E to B74E (1 bytes)
_DATA_B74E_:
.db $00

; 2nd entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B74F to B753 (5 bytes)
_DATA_B74F_:
.db $01 $3E $90 $B0 $00

; 3rd entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B754 to B75C (9 bytes)
_DATA_B754_:
.db $02 $3E $90 $70 $00 $3E $90 $D0 $00

; 4th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B75D to B769 (13 bytes)
_DATA_B75D_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 5th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B76A to B776 (13 bytes)
_DATA_B76A_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 6th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B777 to B77B (5 bytes)
_DATA_B777_:
.db $01 $3E $90 $60 $00

; 7th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B77C to B784 (9 bytes)
_DATA_B77C_:
.db $02 $3E $90 $40 $00 $3E $90 $80 $00

; 8th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B785 to B791 (13 bytes)
_DATA_B785_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 9th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B792 to B79E (13 bytes)
_DATA_B792_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 10th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B79F to B7AB (13 bytes)
_DATA_B79F_:
.db $03 $3E $90 $40 $00 $3E $90 $70 $00 $2F $90 $C0 $00

; 11th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7AC to B7B4 (9 bytes)
_DATA_B7AC_:
.db $02 $3E $90 $70 $00 $3E $90 $C0 $00

; 12th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7B5 to B7BD (9 bytes)
_DATA_B7B5_:
.db $02 $2F $90 $40 $00 $2F $90 $80 $00

; 13th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7BE to B7C6 (9 bytes)
_DATA_B7BE_:
.db $02 $3E $90 $50 $00 $2F $90 $A0 $00

; 14th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7C7 to B7CF (9 bytes)
_DATA_B7C7_:
.db $02 $2F $90 $88 $00 $2F $90 $B8 $00

; 15th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7D0 to B7DC (13 bytes)
_DATA_B7D0_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 16th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7DD to B7E5 (9 bytes)
_DATA_B7DD_:
.db $02 $3E $90 $50 $00 $2F $90 $80 $00

; 17th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7E6 to B7EA (5 bytes)
_DATA_B7E6_:
.db $01 $3E $90 $80 $00

; 18th entry of Pointer Table from B53F (indexed by v_entityIndex)
; Data from B7EB to B7F0 (6 bytes)
_DATA_B7EB_:
.db $84 $1D $80 $B0 $02 $00

; 1st entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B7F1 to B7F1 (1 bytes)
_DATA_B7F1_:
.db $00

; 2nd entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B7F2 to B7F4 (3 bytes)
_DATA_B7F2_:
.db $82 $01 $00

; 3rd entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B7F5 to B801 (13 bytes)
_DATA_B7F5_:
.db $03 $31 $28 $90 $00 $31 $20 $70 $00 $30 $70 $A0 $00

; 4th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B802 to B802 (1 bytes)
_DATA_B802_:
.db $00

; 5th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B803 to B805 (3 bytes)
_DATA_B803_:
.db $82 $02 $00

; 6th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B806 to B813 (14 bytes)
_DATA_B806_:
.db $84 $44 $30 $D0 $00 $02 $30 $90 $A0 $00 $2E $30 $B0 $00

; 7th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B814 to B81C (9 bytes)
_DATA_B814_:
.db $02 $30 $10 $B0 $00 $30 $90 $80 $00

; 8th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B81D to B82E (18 bytes)
_DATA_B81D_:
.db $81 $4C $00 $F0 $00 $03 $30 $90 $80 $00 $2E $48 $80 $00 $2E $68
.db $B0 $00

; 9th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B82F to B82F (1 bytes)
_DATA_B82F_:
.db $00

; 10th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B830 to B85D (46 bytes)
_DATA_B830_:
.db $88 $16 $07 $10 $CA $03 $14 $CA $03 $18 $CA $03 $1C $CA $03 $28
.db $CA $03 $2C $CA $03 $30 $CA $03 $81 $4B $78 $C0 $00 $04 $2D $20
.db $90 $00 $2D $58 $70 $00 $3E $98 $60 $00 $3E $98 $F0 $00

; 11th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B85E to B873 (22 bytes)
_DATA_B85E_:
.db $84 $44 $30 $E0 $00 $04 $3E $98 $30 $00 $3E $98 $D0 $00 $3E $20
.db $70 $00 $52 $20 $70 $05

; 1st entry of Pointer Table from B579 (indexed by v_entityIndex)
; Data from B874 to B874 (1 bytes)
_DATA_B874_:
.db $00

; 2nd entry of Pointer Table from B579 (indexed by v_entityIndex)
; Data from B875 to B879 (5 bytes)
_DATA_B875_:
.db $01 $2C $A8 $A8 $00

; 3rd entry of Pointer Table from B579 (indexed by v_entityIndex)
; Data from B87A to B87E (5 bytes)
_DATA_B87A_:
.db $01 $3E $98 $E0 $00

; 4th entry of Pointer Table from B579 (indexed by v_entityIndex)
; Data from B87F to B88B (13 bytes)
_DATA_B87F_:
.db $03 $3E $98 $30 $00 $3E $40 $B0 $00 $2D $70 $D8 $00

; 5th entry of Pointer Table from B579 (indexed by v_entityIndex)
; Data from B88C to B895 (10 bytes)
_DATA_B88C_:
.db $84 $44 $70 $C0 $00 $01 $45 $88 $98 $00

; 1st entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B896 to B89E (9 bytes)
_DATA_B896_:
.db $02 $2D $38 $A0 $00 $42 $BF $D0 $00

; 2nd entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B89F to B8A7 (9 bytes)
_DATA_B89F_:
.db $02 $2D $60 $B0 $00 $42 $BF $70 $00

; 3rd entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B8A8 to B8B0 (9 bytes)
_DATA_B8A8_:
.db $02 $2D $18 $60 $00 $42 $BF $B0 $00

; 4th entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B8B1 to B8B5 (5 bytes)
_DATA_B8B1_:
.db $01 $42 $BF $B0 $00

; 16th entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B8B6 to B8BB (6 bytes)
_DATA_B8B6_:
.db $84 $44 $20 $70 $00 $00

; 17th entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B8BC to B8C4 (9 bytes)
_DATA_B8BC_:
.db $01 $30 $88 $50 $00 $30 $30 $80 $00

; 18th entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B8C5 to B8D1 (13 bytes)
_DATA_B8C5_:
.db $03 $30 $68 $88 $00 $30 $28 $C8 $00 $30 $18 $38 $00

; 19th entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B8D2 to B8DE (13 bytes)
_DATA_B8D2_:
.db $03 $30 $70 $A8 $00 $30 $30 $58 $00 $30 $88 $70 $00

; 20th entry of Pointer Table from B583 (indexed by v_entityIndex)
; Data from B8DF to B8F0 (18 bytes)
_DATA_B8DF_:
.db $84 $44 $20 $C0 $00 $03 $2E $28 $C0 $00 $30 $78 $98 $00 $30 $58
.db $40 $00

; 1st entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B8F1 to B8F1 (1 bytes)
_DATA_B8F1_:
.db $00

; 2nd entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B8F2 to B8F6 (5 bytes)
_DATA_B8F2_:
.db $01 $55 $90 $90 $00

; 3rd entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B8F7 to B8FF (9 bytes)
_DATA_B8F7_:
.db $02 $55 $90 $A0 $00 $3E $60 $A0 $00

; 4th entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B900 to B904 (5 bytes)
_DATA_B900_:
.db $01 $3E $90 $D0 $00

; 5th entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B905 to B90D (9 bytes)
_DATA_B905_:
.db $02 $55 $50 $B0 $00 $3E $90 $C0 $00

; 6th entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B90E to B91A (13 bytes)
_DATA_B90E_:
.db $03 $55 $90 $70 $00 $55 $40 $A0 $00 $3D $78 $E0 $00

; 7th entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B91B to B927 (13 bytes)
_DATA_B91B_:
.db $03 $55 $40 $E0 $00 $3E $90 $A0 $00 $3D $70 $90 $00

; 8th entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B928 to B934 (13 bytes)
_DATA_B928_:
.db $03 $55 $90 $60 $00 $55 $90 $80 $00 $55 $90 $A0 $00

; 9th entry of Pointer Table from B5AB (indexed by v_entityIndex)
; Data from B935 to B93D (9 bytes)
_DATA_B935_:
.db $02 $46 $88 $D0 $01 $50 $C0 $C1 $00

; 1st entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B93E to B93E (1 bytes)
_DATA_B93E_:
.db $00

; 2nd entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B93F to B947 (9 bytes)
_DATA_B93F_:
.db $02 $54 $40 $60 $00 $20 $68 $B8 $00

; 3rd entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B948 to B954 (13 bytes)
_DATA_B948_:
.db $03 $3E $90 $18 $00 $54 $40 $B0 $00 $63 $30 $F0 $00

; 4th entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B955 to B971 (29 bytes)
_DATA_B955_:
.db $88 $0D $04 $A0 $CC $00 $A4 $CC $00 $20 $CD $00 $24 $CD $00 $81
.db $4B $A0 $60 $02 $02 $52 $A0 $30 $01 $20 $88 $E0 $00

; 5th entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B972 to B97A (9 bytes)
_DATA_B972_:
.db $02 $3D $60 $78 $00 $3E $90 $60 $00

; 6th entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B97B to B98A (16 bytes)
_DATA_B97B_:
.db $88 $04 $01 $38 $CA $00 $81 $4B $58 $B4 $02 $01 $54 $50 $B0 $00

; 7th entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B98B to B98F (5 bytes)
_DATA_B98B_:
.db $01 $3E $50 $40 $00

; 8th entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B990 to B99C (13 bytes)
_DATA_B990_:
.db $03 $3E $90 $10 $00 $20 $60 $90 $00 $3E $90 $B0 $00

; 9th entry of Pointer Table from B5BD (indexed by v_entityIndex)
; Data from B99D to B9A2 (6 bytes)
_DATA_B99D_:
.db $84 $1E $80 $B0 $04 $00

; 1st entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9A3 to B9A3 (1 bytes)
_DATA_B9A3_:
.db $00

; 2nd entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9A4 to B9A8 (5 bytes)
_DATA_B9A4_:
.db $01 $20 $48 $90 $00

; 3rd entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9A9 to B9AD (5 bytes)
_DATA_B9A9_:
.db $01 $20 $40 $80 $00

; 4th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9AE to B9B2 (5 bytes)
_DATA_B9AE_:
.db $01 $2A $10 $55 $00

; 5th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9B3 to B9B7 (5 bytes)
_DATA_B9B3_:
.db $01 $20 $38 $B0 $00

; 6th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9B8 to B9C0 (9 bytes)
_DATA_B9B8_:
.db $02 $20 $70 $60 $00 $20 $28 $C0 $00

; 7th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9C1 to B9C9 (9 bytes)
_DATA_B9C1_:
.db $02 $20 $80 $A0 $00 $2A $10 $5B $00

; 8th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9CA to B9CA (1 bytes)
_DATA_B9CA_:
.db $00

; 9th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9CB to B9CF (5 bytes)
_DATA_B9CB_:
.db $01 $20 $20 $B0 $00

; 10th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9D0 to B9D4 (5 bytes)
_DATA_B9D0_:
.db $01 $2A $20 $28 $00

; 11th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9D5 to B9D9 (5 bytes)
_DATA_B9D5_:
.db $01 $2A $10 $23 $00

; 12th entry of Pointer Table from B5CF (indexed by v_entityIndex)
; Data from B9DA to B9E2 (9 bytes)
_DATA_B9DA_:
.db $02 $25 $70 $D0 $00 $2A $10 $48 $00

; 1st entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from B9E3 to B9E3 (1 bytes)
_DATA_B9E3_:
.db $00

; 2nd entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from B9E4 to B9EC (9 bytes)
_DATA_B9E4_:
.db $01 $2D $40 $B0 $00 $42 $BF $E0 $00

; 3rd entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from B9ED to B9F5 (9 bytes)
_DATA_B9ED_:
.db $02 $42 $BF $80 $00 $2D $50 $C0 $00

; 4th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from B9F6 to BA02 (13 bytes)
_DATA_B9F6_:
.db $03 $2D $60 $80 $00 $2D $40 $A0 $00 $42 $BF $D0 $00

; 5th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA03 to BA07 (5 bytes)
_DATA_BA03_:
.db $01 $2D $30 $B0 $00

; 6th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA08 to BA10 (9 bytes)
_DATA_BA08_:
.db $01 $2D $50 $90 $00 $42 $BF $A0 $00

; 7th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA11 to BA19 (9 bytes)
_DATA_BA11_:
.db $02 $42 $BF $90 $00 $2D $60 $A0 $00

; 8th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA1A to BA22 (9 bytes)
_DATA_BA1A_:
.db $02 $2D $50 $B0 $00 $42 $BF $90 $00

; 9th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA23 to BA27 (5 bytes)
_DATA_BA23_:
.db $01 $2D $50 $80 $00

; 10th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA28 to BA2C (5 bytes)
_DATA_BA28_:
.db $01 $2D $48 $70 $00

; 11th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA2D to BA35 (9 bytes)
_DATA_BA2D_:
.db $02 $42 $BF $A0 $00 $2D $40 $B0 $00

; 12th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA36 to BA3E (9 bytes)
_DATA_BA36_:
.db $01 $2D $60 $80 $00 $42 $BF $70 $00

; 13th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA3F to BA43 (5 bytes)
_DATA_BA3F_:
.db $01 $2D $40 $B0 $00

; 14th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA44 to BA50 (13 bytes)
_DATA_BA44_:
.db $02 $2D $70 $A0 $00 $42 $BF $B0 $00 $42 $BF $80 $00

; 15th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA51 to BA55 (5 bytes)
_DATA_BA51_:
.db $01 $2D $40 $B0 $00

; 16th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA56 to BA5B (6 bytes)
_DATA_BA56_:
.db $84 $44 $70 $A0 $00 $00

; 17th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA5C to BA68 (13 bytes)
_DATA_BA5C_:
.db $03 $30 $30 $B8 $00 $30 $80 $B8 $00 $30 $50 $60 $00

; 18th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA69 to BA6D (5 bytes)
_DATA_BA69_:
.db $01 $30 $A0 $70 $00

; 19th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA6E to BA7A (13 bytes)
_DATA_BA6E_:
.db $03 $30 $40 $30 $00 $30 $60 $10 $00 $23 $78 $7C $00

; 20th entry of Pointer Table from B5E7 (indexed by v_entityIndex)
; Data from BA7B to BA84 (10 bytes)
_DATA_BA7B_:
.db $84 $44 $50 $A0 $00 $01 $23 $60 $88 $00

; 1st entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BA85 to BA85 (1 bytes)
_DATA_BA85_:
.db $00

; 2nd entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BA86 to BA8E (9 bytes)
_DATA_BA86_:
.db $02 $3E $50 $88 $00 $3E $50 $C0 $00

; 3rd entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BA8F to BA97 (9 bytes)
_DATA_BA8F_:
.db $02 $2C $A0 $30 $00 $2C $A0 $90 $00

; 4th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BA98 to BAA8 (17 bytes)
_DATA_BA98_:
.db $04 $40 $10 $C0 $00 $2C $A0 $38 $00 $2C $A0 $80 $00 $2C $A0 $C8
.db $00

; 5th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BAA9 to BAAD (5 bytes)
_DATA_BAA9_:
.db $01 $40 $10 $38 $00

; 6th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BAAE to BAB2 (5 bytes)
_DATA_BAAE_:
.db $01 $3E $90 $E0 $00

; 7th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BAB3 to BABF (13 bytes)
_DATA_BAB3_:
.db $03 $40 $20 $80 $00 $3E $90 $30 $00 $3E $90 $C0 $00

; 8th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BAC0 to BACC (13 bytes)
_DATA_BAC0_:
.db $03 $40 $20 $C0 $00 $3E $90 $60 $00 $3E $90 $C0 $00

; 9th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BACD to BAD9 (13 bytes)
_DATA_BACD_:
.db $03 $40 $10 $A0 $00 $57 $80 $30 $00 $57 $90 $C0 $00

; 10th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BADA to BAE2 (9 bytes)
_DATA_BADA_:
.db $02 $40 $20 $B0 $00 $3D $78 $70 $00

; 11th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BAE3 to BAEB (9 bytes)
_DATA_BAE3_:
.db $02 $57 $90 $40 $00 $3D $78 $A0 $00

; 12th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BAEC to BAF4 (9 bytes)
_DATA_BAEC_:
.db $02 $3D $78 $80 $00 $3D $78 $C0 $00

; 13th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BAF5 to BB05 (17 bytes)
_DATA_BAF5_:
.db $04 $40 $10 $20 $00 $57 $80 $60 $00 $3D $58 $A0 $00 $57 $60 $E0
.db $00

; 14th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BB06 to BB16 (17 bytes)
_DATA_BB06_:
.db $04 $40 $20 $C0 $00 $3D $38 $28 $00 $3D $40 $80 $00 $3D $50 $B0
.db $00

; 15th entry of Pointer Table from B60F (indexed by v_entityIndex)
; Data from BB17 to BB1C (6 bytes)
_DATA_BB17_:
.db $84 $1F $80 $B0 $06 $00

; 1st entry of Pointer Table from B655 (indexed by v_entityIndex)
; Data from BB1D to BB1D (1 bytes)
_DATA_BB1D_:
.db $00

; 2nd entry of Pointer Table from B655 (indexed by v_entityIndex)
; Data from BB1E to BB2A (13 bytes)
_DATA_BB1E_:
.db $03 $3E $90 $40 $00 $3E $90 $70 $00 $3D $58 $C0 $00

; 3rd entry of Pointer Table from B655 (indexed by v_entityIndex)
; Data from BB2B to BB30 (6 bytes)
_DATA_BB2B_:
.db $84 $1E $80 $C0 $05 $00

; 1st entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB31 to BB3E (14 bytes)
_DATA_BB31_:
.db $84 $44 $70 $10 $00 $02 $33 $20 $60 $00 $2C $A0 $B0 $00

; 2nd entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB3F to BB4B (13 bytes)
_DATA_BB3F_:
.db $03 $33 $18 $40 $00 $33 $40 $68 $00 $33 $60 $90 $00

; 3rd entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB4C to BB60 (21 bytes)
_DATA_BB4C_:
.db $05 $33 $20 $40 $00 $33 $50 $B0 $00 $2C $A0 $40 $00 $2C $A0 $78
.db $00 $2C $A0 $B0 $00

; 4th entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB61 to BB6D (13 bytes)
_DATA_BB61_:
.db $03 $33 $28 $80 $00 $2C $A0 $A0 $00 $2C $A0 $48 $00

; 5th entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB6E to BB7E (17 bytes)
_DATA_BB6E_:
.db $04 $33 $20 $D0 $00 $33 $50 $80 $00 $2C $A0 $48 $00 $2C $A0 $A8
.db $00

; 6th entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB7F to BB87 (9 bytes)
_DATA_BB7F_:
.db $02 $2C $A0 $B0 $00 $2C $A0 $60 $00

; 7th entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB88 to BB90 (9 bytes)
_DATA_BB88_:
.db $02 $2C $A0 $A0 $00 $2C $A0 $48 $00

; 8th entry of Pointer Table from B65B (indexed by v_entityIndex)
; Data from BB91 to BB91 (1 bytes)
_DATA_BB91_:
.db $00

; 1st entry of Pointer Table from B66B (indexed by v_entityIndex)
; Data from BB92 to BB92 (1 bytes)
_DATA_BB92_:
.db $00

; 2nd entry of Pointer Table from B66B (indexed by v_entityIndex)
; Data from BB93 to BB9C (10 bytes)
_DATA_BB93_:
.db $84 $44 $90 $C0 $00 $01 $53 $90 $C0 $00

; 1st entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BB9D to BB9D (1 bytes)
_DATA_BB9D_:
.db $00

; 3rd entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BB9E to BBA6 (9 bytes)
_DATA_BB9E_:
.db $02 $3E $90 $50 $00 $3E $90 $A0 $00

; 4th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBA7 to BBB3 (13 bytes)
_DATA_BBA7_:
.db $03 $2F $70 $20 $00 $3E $50 $60 $00 $3E $80 $90 $00

; 5th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBB4 to BBC4 (17 bytes)
_DATA_BBB4_:
.db $04 $3E $90 $20 $00 $3E $90 $70 $00 $2F $90 $B0 $00 $2C $A0 $D0
.db $00

; 6th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBC5 to BBD1 (13 bytes)
_DATA_BBC5_:
.db $03 $3E $90 $78 $00 $2C $A0 $A0 $00 $3E $90 $E0 $00

; 7th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBD2 to BBDE (13 bytes)
_DATA_BBD2_:
.db $03 $3E $90 $60 $00 $3E $90 $A0 $00 $2F $60 $F0 $00

; 8th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBDF to BBE7 (9 bytes)
_DATA_BBDF_:
.db $02 $3E $40 $80 $00 $3E $90 $60 $00

; 9th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBE8 to BBF0 (9 bytes)
_DATA_BBE8_:
.db $02 $3E $90 $60 $00 $2C $A0 $B0 $00

; 10th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBF1 to BBF9 (9 bytes)
_DATA_BBF1_:
.db $02 $2F $50 $B0 $00 $3E $90 $20 $00

; 11th entry of Pointer Table from B66F (indexed by v_entityIndex)
; Data from BBFA to BBFF (6 bytes)
_DATA_BBFA_:
.db $84 $1F $80 $B0 $07 $00

; 1st entry of Pointer Table from B6D9 (indexed by v_entityIndex)
; Data from BC00 to BC00 (1 bytes)
_DATA_BC00_:
.db $00

; 2nd entry of Pointer Table from B6D9 (indexed by v_entityIndex)
; Data from BC01 to BC1A (26 bytes)
_DATA_BC01_:
.db $81 $4C $B8 $8C $00 $05 $23 $B8 $82 $00 $30 $10 $B0 $00 $30 $38
.db $C8 $00 $30 $70 $80 $00 $30 $50 $48 $00

; 3rd entry of Pointer Table from B6D9 (indexed by v_entityIndex)
; Data from BC1B to BC1B (1 bytes)
_DATA_BC1B_:
.db $00

; 2nd entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC1C to BC20 (5 bytes)
_DATA_BC1C_:
.db $01 $2F $40 $70 $00

; 3rd entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC21 to BC2D (13 bytes)
_DATA_BC21_:
.db $03 $3E $40 $80 $00 $20 $20 $80 $00 $20 $70 $50 $00

; 4th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC2E to BC42 (21 bytes)
_DATA_BC2E_:
.db $05 $52 $50 $E0 $05 $3E $30 $60 $01 $3E $30 $B0 $01 $20 $78 $60
.db $00 $20 $78 $B0 $00

; 5th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC43 to BC51 (15 bytes)
_DATA_BC43_:
.db $81 $4B $20 $1D $01 $81 $4B $30 $3C $01 $01 $51 $90 $48 $01

; 7th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC52 to BC5A (9 bytes)
_DATA_BC52_:
.db $02 $3E $A0 $A0 $01 $20 $18 $90 $00

; 8th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC5B to BC63 (9 bytes)
_DATA_BC5B_:
.db $02 $20 $20 $18 $00 $52 $30 $10 $02

; 9th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC64 to BC70 (13 bytes)
_DATA_BC64_:
.db $03 $16 $20 $20 $03 $3E $A0 $28 $01 $3E $A0 $80 $00

; 10th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC71 to BC75 (5 bytes)
_DATA_BC71_:
.db $01 $20 $18 $C0 $00

; 12th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC76 to BC8A (21 bytes)
_DATA_BC76_:
.db $05 $10 $38 $20 $01 $10 $58 $40 $20 $10 $78 $60 $3F $10 $58 $80
.db $22 $10 $38 $A0 $05

; 13th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC8B to BC97 (13 bytes)
_DATA_BC8B_:
.db $03 $3E $A0 $D8 $01 $3E $A0 $60 $01 $3E $A0 $A0 $01

; 14th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BC98 to BCA4 (13 bytes)
_DATA_BC98_:
.db $03 $3E $A0 $D8 $01 $3E $A0 $60 $01 $3E $A0 $A0 $01

; 15th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BCA5 to BCAA (6 bytes)
_DATA_BCA5_:
.db $84 $1D $90 $C0 $03 $00

; 17th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BCAB to BCBB (17 bytes)
_DATA_BCAB_:
.db $04 $57 $50 $50 $00 $57 $50 $A0 $00 $57 $A0 $20 $00 $52 $90 $80
.db $01

; 18th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BCBC to BCC0 (5 bytes)
_DATA_BCBC_:
.db $01 $3E $A0 $70 $00

; 19th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BCC1 to BCC9 (9 bytes)
_DATA_BCC1_:
.db $02 $11 $28 $58 $3C $11 $28 $A8 $79

; 20th entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BCCA to BCDA (17 bytes)
_DATA_BCCA_:
.db $04 $3E $80 $40 $01 $3E $50 $80 $01 $3E $20 $50 $01 $3E $80 $A0
.db $01

; 1st entry of Pointer Table from B62D (indexed by v_entityIndex)
; Data from BCDB to BCDB (1 bytes)
_DATA_BCDB_:
.db $00

; 3rd entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BCDC to BCE8 (13 bytes)
_DATA_BCDC_:
.db $03 $2F $A0 $80 $00 $2F $A0 $60 $00 $2F $50 $A0 $00

; 4th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BCE9 to BD0A (34 bytes)
_DATA_BCE9_:
.db $88 $0A $03 $84 $CB $51 $04 $CC $52 $84 $CC $52 $81 $4B $90 $04
.db $00 $04 $12 $28 $24 $B6 $12 $28 $B4 $79 $13 $38 $34 $F0 $17 $90
.db $28 $03

; 5th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD0B to BD26 (28 bytes)
_DATA_BD0B_:
.db $88 $04 $01 $88 $CE $00 $81 $4B $14 $F4 $00 $04 $2F $A0 $48 $00
.db $3E $A0 $80 $00 $3E $60 $80 $00 $3E $20 $90 $00

; 6th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD27 to BD3B (21 bytes)
_DATA_BD27_:
.db $05 $3E $70 $D0 $01 $3E $70 $90 $01 $57 $30 $D8 $01 $2F $40 $B0
.db $00 $3E $70 $B0 $01

; 7th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD3C to BD40 (5 bytes)
_DATA_BD3C_:
.db $01 $51 $98 $A0 $00

; 9th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD41 to BD45 (5 bytes)
_DATA_BD41_:
.db $01 $16 $90 $7C $06

; 10th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD46 to BD58 (19 bytes)
_DATA_BD46_:
.db $88 $07 $02 $B0 $CC $00 $30 $CD $00 $81 $4B $74 $0C $00 $01 $15
.db $20 $14 $16

; 11th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD59 to BD6F (23 bytes)
_DATA_BD59_:
.db $88 $07 $02 $38 $CC $00 $B8 $CC $00 $81 $4B $A0 $64 $00 $02 $54
.db $40 $98 $00 $3E $90 $C0 $00

; 12th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD70 to BD83 (20 bytes)
_DATA_BD70_:
.db $88 $04 $01 $08 $C8 $50 $81 $4B $24 $24 $02 $02 $16 $90 $7C $06
.db $52 $40 $80 $07

; 13th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD84 to BD94 (17 bytes)
_DATA_BD84_:
.db $04 $3E $A0 $60 $00 $2F $50 $C0 $00 $3E $A0 $90 $01 $3E $A0 $C0
.db $01

; 14th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD95 to BD9A (6 bytes)
_DATA_BD95_:
.db $84 $1C $98 $C0 $01 $00

; 17th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BD9B to BDAF (21 bytes)
_DATA_BD9B_:
.db $05 $16 $50 $CC $04 $57 $A0 $60 $00 $57 $A0 $A0 $00 $57 $A0 $D0
.db $00 $57 $50 $A0 $00

; 18th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BDB0 to BDBF (16 bytes)
_DATA_BDB0_:
.db $88 $04 $01 $A0 $CA $10 $81 $4B $24 $F4 $00 $01 $57 $A0 $10 $00

; 20th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BDC0 to BDCC (13 bytes)
_DATA_BDC0_:
.db $03 $12 $28 $44 $3C $12 $28 $D4 $79 $13 $38 $54 $F2

; 21st entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BDCD to BDDD (17 bytes)
_DATA_BDCD_:
.db $04 $57 $A0 $90 $00 $57 $A0 $70 $00 $3E $50 $50 $01 $52 $40 $D0
.db $05

; 24th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BDDE to BDE6 (9 bytes)
_DATA_BDDE_:
.db $02 $3E $A0 $60 $01 $16 $70 $68 $04

; 25th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BDE7 to BDFA (20 bytes)
_DATA_BDE7_:
.db $88 $04 $01 $90 $C8 $00 $81 $4B $90 $A4 $00 $02 $16 $90 $28 $04
.db $57 $A0 $70 $00

; 26th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BDFB to BE0B (17 bytes)
_DATA_BDFB_:
.db $04 $2C $68 $50 $00 $2C $48 $80 $00 $2C $88 $A0 $00 $2C $58 $D0
.db $00

; 27th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE0C to BE18 (13 bytes)
_DATA_BE0C_:
.db $03 $2C $A8 $20 $00 $2C $58 $50 $00 $2C $78 $90 $00

; 30th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE19 to BE1D (5 bytes)
_DATA_BE19_:
.db $01 $57 $60 $C0 $00

; 31st entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE1E to BE22 (5 bytes)
_DATA_BE1E_:
.db $01 $3E $60 $C0 $01

; 33rd entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE23 to BE33 (17 bytes)
_DATA_BE23_:
.db $04 $2C $60 $C8 $00 $2C $60 $90 $00 $2C $60 $48 $00 $2C $60 $18
.db $00

; 34th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE34 to BE3F (12 bytes)
_DATA_BE34_:
.db $88 $04 $01 $94 $C9 $10 $81 $4B $64 $F4 $00 $00

; 37th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE40 to BE59 (26 bytes)
_DATA_BE40_:
.db $88 $07 $02 $80 $C8 $00 $00 $C9 $00 $04 $3E $A0 $80 $00 $2F $30
.db $70 $00 $2F $60 $A0 $00 $2F $80 $B0 $00

; 38th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE5A to BE66 (13 bytes)
_DATA_BE5A_:
.db $03 $3E $70 $98 $00 $16 $20 $B8 $02 $3E $60 $50 $00

; 39th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE67 to BE73 (13 bytes)
_DATA_BE67_:
.db $03 $3E $30 $78 $00 $3E $A0 $40 $01 $3E $A0 $B0 $01

; 40th entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE74 to BE78 (5 bytes)
_DATA_BE74_:
.db $01 $15 $20 $20 $18

; 41st entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE79 to BE7D (5 bytes)
_DATA_BE79_:
.db $01 $2F $80 $B0 $00

; 42nd entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE7E to BE86 (9 bytes)
_DATA_BE7E_:
.db $02 $3E $80 $68 $01 $3E $A0 $A0 $00

; 1st entry of Pointer Table from B685 (indexed by v_entityIndex)
; Data from BE87 to BFFF (377 bytes)
_DATA_BE87_:
.db $00
.dsb 376, $FF

.BANK 3
.ORG $0000

; Data from C000 to C47F (1152 bytes)
_DATA_C000_:
.incbin "baserom_DATA_C000_.inc"

; Pointer Table from C480 to C4A1 (17 entries, indexed by v_level)
_DATA_C480_:
.dw _DATA_CECE_ _DATA_D158_ _DATA_D317_ _DATA_D56A_ _DATA_CECE_ _DATA_DB82_ _DATA_DF1D_ _DATA_E24C_
.dw _DATA_CECE_ _DATA_D158_ _DATA_EA05_ _DATA_DB82_ _DATA_D158_ _DATA_F49B_ _DATA_D158_ _DATA_EE33_
.dw _DATA_F117_

; Data from C4A2 to C582 (225 bytes)
_DATA_C4A2_:
.db $8F $00 $0D $07 $03 $01 $07 $1F $3D $38 $7D $78 $7D $7D $3E $0F
.db $05 $00 $87 $1E $3F $3F $7F $00 $3C $7F $05 $FF $03 $7F $83 $3B
.db $03 $01 $02 $00 $04 $FF $02 $FE $86 $FC $00 $00 $0F $9F $DF $04
.db $FF $88 $00 $80 $C0 $D8 $F8 $FC $FC $FE $05 $FF $81 $3C $02 $00
.db $03 $FE $02 $7C $81 $30 $02 $00 $00 $90 $0D $12 $08 $04 $06 $18
.db $20 $42 $47 $82 $87 $82 $82 $41 $30 $0F $40 $00 $00 $9B $0D $12
.db $08 $04 $07 $18 $20 $42 $47 $82 $87 $82 $82 $41 $30 $0F $00 $00
.db $01 $1F $21 $40 $C0 $80 $7E $C3 $80 $05 $00 $03 $80 $84 $C4 $7C
.db $0E $07 $05 $00 $02 $01 $86 $03 $FE $0F $D0 $60 $20 $04 $00 $88
.db $80 $60 $38 $24 $06 $02 $03 $01 $05 $00 $83 $C3 $7E $38 $03 $01
.db $85 $83 $82 $CE $7C $30 $00 $12 $00 $89 $01 $1F $21 $40 $C0 $80
.db $7E $C3 $80 $05 $00 $03 $80 $84 $C4 $7C $0E $07 $05 $00 $02 $01
.db $86 $03 $FE $0F $D0 $60 $20 $04 $00 $88 $80 $60 $38 $24 $06 $02
.db $03 $01 $05 $00 $83 $C3 $7E $38 $03 $01 $85 $83 $82 $CE $7C $30
.db $00

; Data from C583 to C9E0 (1118 bytes)
_DATA_C583_:
.incbin "baserom_DATA_C583_.inc"

; Data from C9E1 to CE64 (1156 bytes)
_DATA_C9E1_:
.incbin "baserom_DATA_C9E1_.inc"

; Data from CE65 to CECD (105 bytes)
_DATA_CE65_:
.db $83 $00 $07 $1F $02 $3F $03 $7F $88 $00 $E0 $F8 $FC $FC $F6 $F2
.db $E2 $03 $7F $02 $38 $8B $1C $07 $00 $E2 $C6 $06 $0C $1C $78 $E0
.db $00 $00 $8D $07 $1F $38 $70 $61 $E7 $FF $CF $E0 $F8 $7C $7E $FE
.db $03 $FF $81 $CF $02 $FF $02 $7F $83 $3F $1F $07 $03 $FF $02 $FE
.db $83 $FC $F8 $E0 $00 $83 $07 $18 $20 $02 $40 $03 $80 $83 $E0 $18
.db $04 $02 $02 $03 $01 $03 $80 $02 $40 $83 $20 $18 $07 $03 $01 $02
.db $02 $83 $04 $18 $E0 $00 $20 $00 $00

; 1st entry of Pointer Table from C480 (indexed by v_level)
; Data from CECE to D157 (650 bytes)
_DATA_CECE_:
.db $84 $00 $07 $1F $3F $04 $7F $88 $00 $F0 $FC $FC $FE $C6 $FA $FE
.db $03 $7F $02 $3F $8E $1F $04 $00 $FC $FE $FE $7E $3C $B8 $E0 $00
.db $0E $70 $40 $02 $80 $04 $00 $81 $38 $02 $20 $02 $40 $85 $00 $40
.db $00 $00 $E8 $07 $00 $9A $03 $04 $00 $10 $00 $00 $1C $7E $7E $7F
.db $3D $2D $6E $3C $18 $7E $FE $FA $7C $7C $38 $EC $31 $71 $E0 $08
.db $04 $00 $97 $F8 $FE $E6 $C0 $08 $30 $20 $00 $3C $7F $7F $5E $2A
.db $26 $18 $00 $FC $FE $7C $6C $3C $50 $20 $02 $00 $02 $01 $05 $00
.db $81 $E0 $07 $00 $84 $1C $20 $20 $10 $05 $00 $85 $38 $60 $40 $00
.db $40 $03 $00 $85 $34 $60 $40 $00 $40 $03 $00 $81 $38 $02 $20 $02
.db $40 $86 $00 $40 $00 $00 $68 $40 $02 $80 $04 $00 $84 $03 $04 $00
.db $10 $04 $00 $81 $E8 $07 $00 $84 $03 $04 $00 $10 $02 $00 $00 $83
.db $1F $20 $47 $02 $9F $03 $BF $99 $FC $02 $F2 $F9 $D1 $01 $C1 $F9
.db $BF $9F $9E $9E $44 $40 $20 $1F $F9 $39 $39 $11 $01 $02 $04 $F8
.db $F1 $02 $81 $03 $00 $84 $80 $81 $FF $C7 $02 $C1 $02 $81 $86 $C1
.db $81 $C3 $FF $07 $01 $03 $00 $BD $0F $03 $87 $84 $C8 $F0 $C0 $C0
.db $F0 $E3 $81 $81 $80 $C2 $52 $91 $C3 $E7 $81 $01 $05 $83 $83 $C7
.db $13 $CE $8E $1F $07 $01 $00 $00 $0F $07 $01 $19 $3F $F2 $C0 $C0
.db $F0 $C3 $80 $80 $A1 $55 $59 $27 $1F $03 $01 $83 $93 $C3 $AD $D9
.db $E3 $07 $02 $02 $01 $04 $00 $89 $1B $07 $03 $81 $63 $1F $07 $01
.db $E1 $02 $40 $02 $20 $85 $10 $11 $0B $FF $C3 $05 $81 $84 $E3 $7F
.db $41 $81 $04 $80 $83 $81 $FF $C7 $02 $C1 $02 $81 $A2 $C1 $81 $43
.db $7F $07 $81 $00 $00 $80 $4F $03 $87 $84 $C8 $F0 $C0 $C0 $F0 $C3
.db $FF $07 $01 $00 $00 $01 $FE $03 $87 $84 $C8 $F0 $E0 $A0 $1F $00
.db $84 $00 $06 $1F $3F $04 $7F $9B $00 $30 $FC $FC $FE $C6 $FA $FE
.db $7F $7F $7E $3F $3F $1F $04 $00 $FC $7E $FE $7E $3C $B8 $E0 $00
.db $0E $70 $40 $02 $80 $04 $00 $81 $38 $02 $20 $02 $40 $85 $00 $40
.db $00 $00 $E8 $07 $00 $84 $03 $04 $00 $10 $02 $00 $05 $FF $83 $7F
.db $FF $7F $04 $FF $04 $FE $84 $7F $7B $1B $03 $04 $00 $03 $FF $82
.db $F7 $C2 $03 $00 $04 $FF $02 $7F $82 $3E $1C $04 $FF $85 $FE $FC
.db $78 $60 $00 $02 $01 $05 $00 $81 $E0 $07 $00 $84 $1C $20 $20 $10
.db $05 $00 $85 $38 $60 $40 $00 $40 $03 $00 $85 $34 $60 $40 $00 $40
.db $0C $00 $82 $68 $40 $02 $80 $0C $00 $81 $E8 $07 $00 $84 $03 $04
.db $00 $10 $02 $00 $00 $84 $1F $39 $60 $C0 $04 $80 $9B $FC $CE $02
.db $03 $01 $39 $05 $01 $80 $80 $81 $C0 $40 $60 $3B $1F $03 $81 $01
.db $81 $C3 $46 $1C $F8 $F1 $8F $BF $02 $7F $04 $FF $81 $C7 $02 $DF
.db $02 $BF $85 $FF $BF $FF $FF $17 $07 $FF $84 $FC $FB $FF $EF $26
.db $FF $02 $7F $82 $3F $1F $08 $FF $84 $07 $02 $02 $01 $04 $00 $81
.db $1F $03 $FF $9A $7F $1F $07 $01 $E3 $5F $5F $2F $3F $1F $1F $0F
.db $FF $C7 $9F $BF $FF $BF $FF $FF $7F $4B $9F $BF $FF $BF $0A $FF
.db $02 $7F $86 $17 $BF $7F $7F $FF $7F $0A $FF $81 $17 $04 $FF $89
.db $FE $FF $FF $FC $FB $FF $EF $BF $1F $00

; 2nd entry of Pointer Table from C480 (indexed by v_level)
; Data from D158 to D316 (447 bytes)
_DATA_D158_:
.db $83 $1F $3F $7F $05 $FF $83 $F8 $FC $FE $09 $FF $02 $7F $82 $3F
.db $1F $03 $FF $03 $FE $86 $FC $F8 $00 $07 $1F $3F $04 $7F $88 $00
.db $F8 $FC $FC $FE $C6 $FA $FE $03 $7F $03 $3F $8C $1E $00 $FC $FE
.db $FE $7E $3E $BA $EC $00 $1C $3F $04 $7F $8C $3F $01 $1E $3F $BF
.db $BF $DF $DE $DE $80 $3E $7F $04 $FF $84 $7E $38 $3C $3E $03 $7E
.db $8B $3C $1C $00 $49 $D9 $B6 $13 $F9 $1C $27 $A8 $05 $00 $83 $83
.db $CC $97 $03 $00 $85 $18 $CA $99 $35 $CE $00 $85 $3E $79 $E7 $DF
.db $9F $03 $BF $9A $3C $C6 $F3 $F3 $D1 $39 $C5 $F9 $BF $9F $9F $DC
.db $C4 $C0 $61 $3F $FB $B9 $39 $91 $C1 $45 $12 $FC $30 $40 $02 $80
.db $04 $00 $83 $04 $02 $01 $09 $00 $02 $80 $82 $40 $20 $03 $00 $03
.db $01 $84 $02 $04 $E3 $C0 $04 $80 $8C $C0 $FE $E1 $C0 $40 $40 $20
.db $21 $21 $7F $C1 $80 $04 $00 $84 $81 $C7 $C3 $C1 $03 $81 $8B $C3
.db $E3 $FF $FF $BE $FF $FF $CF $FF $FC $FF $05 $00 $81 $87 $02 $FF
.db $03 $00 $83 $10 $7E $FE $02 $FF $00 $83 $1F $3E $78 $02 $E0 $03
.db $C0 $9A $F8 $3C $0E $0F $2F $FF $3F $07 $C0 $E0 $E0 $E3 $7B $7F
.db $3F $1F $07 $47 $C7 $EE $FE $FE $FC $F8 $30 $40 $02 $80 $04 $00
.db $83 $04 $02 $01 $09 $00 $02 $80 $82 $40 $20 $03 $00 $03 $01 $84
.db $02 $04 $E3 $C0 $04 $80 $8C $C0 $FE $E1 $C0 $40 $40 $20 $21 $21
.db $7F $C1 $80 $04 $00 $84 $81 $C7 $C3 $C1 $03 $81 $8B $C3 $E3 $FF
.db $F9 $FF $BE $F3 $FF $FC $3F $EF $05 $00 $83 $83 $FE $9F $03 $00
.db $85 $18 $FA $9F $7D $FF $00 $83 $20 $41 $87 $02 $1F $03 $3F $E0
.db $04 $C2 $F1 $F0 $D0 $00 $C0 $F8 $3F $1F $1F $1C $84 $80 $40 $20
.db $F8 $B8 $38 $11 $01 $01 $02 $04 $0F $3E $7D $6A $F1 $E0 $D1 $E2
.db $F8 $FC $5E $2F $5F $FF $7F $AF $D5 $E0 $F1 $EB $75 $7F $3F $1F
.db $47 $E3 $D7 $EA $FE $FE $FC $F8 $1C $3F $75 $63 $75 $7F $3F $01
.db $1E $33 $B7 $AB $D7 $DE $DE $80 $3E $6B $C7 $EB $D7 $FF $7E $38
.db $34 $22 $56 $6A $76 $3C $1C $00 $B6 $67 $49 $EC $36 $E3 $DB $57
.db $05 $00 $83 $04 $33 $68 $03 $00 $85 $08 $B4 $67 $CA $31 $00

; 3rd entry of Pointer Table from C480 (indexed by v_level)
; Data from D317 to D569 (595 bytes)
_DATA_D317_:
.db $02 $00 $8F $03 $06 $0E $38 $F8 $8C $30 $F8 $1C $14 $26 $02 $02
.db $01 $02 $07 $00 $81 $01 $07 $00 $94 $1F $37 $10 $00 $60 $70 $7C
.db $4F $80 $F8 $BF $4F $0B $02 $00 $00 $63 $41 $00 $40 $04 $00 $84
.db $80 $60 $3C $4E $02 $04 $04 $00 $87 $C0 $60 $70 $1C $1F $31 $40
.db $07 $00 $8C $F8 $EC $08 $00 $06 $0E $3E $F2 $C6 $82 $00 $02 $04
.db $00 $81 $02 $07 $00 $81 $01 $07 $00 $84 $01 $06 $3C $72 $02 $20
.db $02 $00 $84 $C6 $82 $00 $02 $04 $00 $95 $01 $1F $FD $F2 $D0 $40
.db $00 $00 $F8 $EC $08 $00 $06 $0E $3E $F2 $30 $F8 $1C $14 $26 $02
.db $02 $02 $01 $08 $00 $81 $01 $05 $00 $81 $40 $05 $00 $8E $1C $2C
.db $42 $00 $01 $03 $04 $08 $08 $10 $00 $60 $B0 $08 $07 $00 $81 $20
.db $04 $00 $82 $02 $08 $04 $00 $83 $02 $06 $0A $08 $00 $82 $08 $14
.db $02 $10 $03 $20 $82 $00 $40 $04 $00 $03 $01 $85 $18 $24 $50 $88
.db $C0 $03 $00 $84 $04 $06 $0A $09 $02 $10 $04 $00 $81 $80 $05 $00
.db $00 $02 $FF $88 $FC $F8 $F0 $C0 $00 $00 $CF $07 $02 $03 $03 $01
.db $89 $00 $80 $C0 $E0 $F0 $F8 $FC $FE $FF $03 $00 $8F $01 $03 $07
.db $0F $1F $E0 $80 $E0 $F8 $9C $8F $83 $80 $7F $07 $03 $00 $83 $01
.db $81 $C1 $04 $80 $91 $C0 $F0 $FE $FF $7F $1F $03 $01 $03 $03 $07
.db $FF $E0 $E0 $30 $10 $08 $03 $00 $8F $01 $03 $06 $0C $18 $30 $70
.db $E0 $06 $00 $06 $1C $38 $F0 $C1 $05 $01 $8C $03 $0E $7C $F0 $80
.db $C0 $E0 $F0 $F8 $9C $0E $03 $03 $00 $8D $01 $03 $06 $0C $10 $FE
.db $F8 $C0 $80 $40 $40 $20 $1F $04 $01 $86 $03 $0E $78 $C0 $1E $E0
.db $03 $00 $8D $80 $81 $83 $04 $01 $07 $1F $39 $F1 $C1 $01 $CC $06
.db $02 $03 $03 $01 $04 $00 $87 $01 $03 $06 $0C $18 $00 $01 $05 $00
.db $92 $40 $01 $03 $0F $1F $3F $63 $C3 $81 $01 $02 $04 $18 $30 $70
.db $60 $FF $81 $05 $00 $85 $01 $03 $00 $00 $20 $04 $00 $89 $02 $09
.db $01 $03 $07 $07 $0D $09 $01 $08 $00 $89 $11 $01 $21 $21 $41 $43
.db $C3 $FF $41 $03 $03 $81 $07 $03 $0E $83 $E7 $C3 $81 $05 $01 $82
.db $1B $19 $02 $30 $02 $60 $8A $70 $FF $01 $81 $43 $63 $33 $1B $7F
.db $FF $00 $40 $00 $02 $1F $02 $0F $82 $07 $03 $04 $00 $86 $01 $03
.db $07 $0F $0F $1F $03 $01 $81 $03 $02 $01 $07 $00 $83 $01 $03 $0F
.db $05 $00 $83 $60 $F0 $FC $05 $00 $83 $01 $03 $0F $04 $00 $02 $80
.db $82 $C0 $E0 $05 $00 $84 $01 $07 $3F $E0 $07 $00 $81 $03 $07 $00
.db $82 $03 $01 $0B $00 $85 $01 $03 $07 $FF $FE $05 $FF $8E $BF $FE
.db $FC $F0 $E0 $C0 $80 $00 $00 $FE $FC $F8 $E0 $C0 $02 $80 $09 $00
.db $02 $FF $81 $DF $04 $FF $84 $FD $F6 $FE $FC $02 $F8 $03 $F0 $08
.db $FF $02 $E0 $02 $C0 $02 $80 $02 $00 $81 $BE $03 $FC $81 $F8 $03
.db $F0 $08 $00 $02 $E0 $02 $C0 $03 $80 $09 $00 $00 $7F $FF $7F $FF
.db $02 $FF $00

; 4th entry of Pointer Table from C480 (indexed by v_level)
; Data from D56A to DB81 (1560 bytes)
_DATA_D56A_:
.incbin "baserom_DATA_D56A_.inc"

; 6th entry of Pointer Table from C480 (indexed by v_level)
; Data from DB82 to DF1C (923 bytes)
_DATA_DB82_:
.db $02 $00 $88 $01 $07 $1F $3F $7F $FF $07 $3F $16 $FF $81 $80 $06
.db $BF $03 $BE $02 $BC $85 $B8 $B0 $B7 $B0 $01 $09 $FD $02 $7D $84
.db $3D $0D $ED $0D $0E $3F $82 $7F $3F $02 $FF $03 $F8 $05 $FF $83
.db $F6 $FC $F9 $05 $FF $83 $4F $9F $2F $03 $FF $83 $03 $1F $7F $07
.db $FF $04 $FE $85 $FF $FE $07 $1F $3F $02 $7F $0F $FF $81 $E7 $0B
.db $C3 $02 $00 $88 $01 $03 $07 $0F $1F $1F $0F $7F $06 $FF $02 $3F
.db $02 $7F $0C $FF $02 $FE $08 $FF $05 $E3 $0D $FF $81 $F7 $03 $E3
.db $04 $00 $02 $7E $0A $FF $05 $00 $81 $10 $03 $38 $93 $56 $6E $28
.db $06 $6E $56 $38 $10 $08 $10 $08 $10 $08 $10 $08 $15 $15 $10 $42
.db $03 $4A $87 $08 $05 $45 $54 $54 $50 $12 $02 $82 $24 $FF $0D $00
.db $82 $33 $67 $03 $5F $92 $7F $7E $1F $5F $5F $3F $7F $7F $32 $00
.db $F8 $FA $FA $FC $FE $FE $4C $00 $00 $02 $00 $8A $01 $07 $0F $1F
.db $3F $FF $07 $1B $E4 $F8 $04 $FF $87 $BF $9F $BF $9F $BF $9F $BF
.db $0A $FF $02 $C0 $04 $C1 $82 $C3 $CF $03 $C3 $85 $C7 $CF $C8 $CF
.db $FF $06 $03 $82 $83 $F3 $03 $83 $9B $C3 $F3 $13 $F3 $3F $20 $3F
.db $20 $3A $35 $3A $35 $3A $35 $3A $35 $3A $35 $3A $75 $BF $9F $B8
.db $98 $B8 $9F $BF $03 $FF $03 $F0 $05 $FF $03 $0F $03 $FF $83 $03
.db $1F $7F $06 $FF $04 $FC $86 $FD $FC $FD $07 $1F $3F $02 $7F $02
.db $FF $8E $00 $FF $AA $77 $AA $FF $AA $DD $AA $FF $AA $7F $FE $E7
.db $04 $C3 $04 $DB $03 $FF $02 $00 $88 $01 $03 $07 $0F $1F $1F $0F
.db $7F $06 $FF $02 $3F $02 $7F $03 $FF $81 $00 $07 $FF $81 $00 $02
.db $FE $08 $FF $84 $63 $E3 $E3 $EB $03 $FF $8F $AA $FF $AA $FF $AA
.db $FF $AA $FF $AA $FF $AA $F7 $A2 $EB $BE $04 $00 $84 $7E $56 $EB
.db $55 $08 $FF $04 $00 $8C $10 $28 $44 $44 $C7 $A9 $91 $56 $F9 $91
.db $A9 $46 $08 $18 $02 $EA $82 $EF $BD $03 $B5 $87 $F7 $FA $BA $AB
.db $AB $AF $ED $02 $7D $21 $FF $02 $00 $0D $FF $02 $00 $94 $27 $4C
.db $48 $48 $24 $1A $14 $0B $08 $10 $2C $32 $00 $00 $08 $D0 $10 $08
.db $34 $4C $02 $00 $00 $04 $00 $94 $13 $24 $48 $FF $07 $1B $64 $88
.db $08 $10 $10 $FF $C8 $E8 $C8 $E8 $C8 $E8 $C8 $FF $07 $10 $81 $FF
.db $03 $00 $04 $0F $81 $8F $06 $0F $82 $08 $8F $03 $00 $04 $F0 $81
.db $F1 $06 $F0 $83 $10 $F1 $3F $03 $20 $A9 $25 $2A $25 $2A $25 $2A
.db $25 $2A $25 $2A $25 $2A $C8 $EF $CF $EF $CF $EF $C8 $FF $10 $9F
.db $99 $93 $96 $9F $10 $FF $08 $F9 $B9 $69 $D9 $F9 $08 $FF $03 $0D
.db $12 $24 $FF $03 $A4 $8B $FF $A4 $A5 $A5 $FD $A5 $A4 $A5 $07 $1F
.db $3F $02 $7F $04 $FF $8C $77 $AA $77 $FF $DD $AA $DD $FF $77 $BE
.db $43 $99 $0B $BD $02 $00 $88 $01 $03 $07 $0F $1F $1F $0F $7F $06
.db $FF $02 $3F $02 $7F $02 $FF $81 $00 $07 $FF $8E $00 $FF $D0 $D0
.db $FF $C5 $C5 $FF $D1 $D1 $FF $41 $DD $5D $03 $DD $8E $C1 $FF $77
.db $FF $77 $FF $DD $FF $DD $FF $77 $FF $77 $EB $03 $DD $04 $00 $84
.db $7E $6A $D7 $AA $08 $FF $04 $00 $82 $10 $38 $02 $7C $03 $FF $81
.db $7E $03 $FF $89 $7E $10 $08 $10 $08 $10 $08 $10 $08 $10 $FF $84
.db $41 $82 $04 $08 $02 $10 $02 $20 $08 $00 $03 $40 $05 $80 $08 $01
.db $81 $FF $02 $00 $0D $FF $18 $00 $00 $02 $00 $85 $01 $07 $0C $1B
.db $37 $03 $00 $8E $80 $70 $F7 $EF $EF $00 $37 $17 $37 $17 $37 $17
.db $37 $00 $07 $EF $82 $00 $FF $06 $C0 $81 $40 $06 $C0 $83 $C7 $40
.db $FF $06 $03 $81 $02 $06 $03 $AF $E3 $02 $00 $00 $1F $00 $1A $15
.db $1A $15 $1A $15 $1A $15 $1A $15 $5A $55 $37 $10 $37 $17 $37 $10
.db $37 $00 $EF $60 $69 $63 $66 $60 $EF $00 $F7 $06 $B6 $66 $D6 $06
.db $F7 $00 $00 $12 $6D $DB $00 $03 $5B $88 $00 $58 $59 $59 $01 $58
.db $59 $58 $09 $00 $8B $88 $55 $88 $00 $22 $55 $22 $00 $88 $41 $BC
.db $05 $7E $04 $66 $03 $42 $16 $00 $81 $FF $07 $00 $A2 $FF $00 $2E
.db $2E $00 $3A $3A $00 $2E $2E $00 $BE $3E $BE $3E $36 $22 $3E $00
.db $88 $00 $88 $00 $22 $00 $22 $00 $88 $00 $88 $1C $3E $36 $22 $05
.db $00 $83 $14 $28 $55 $0C $00 $82 $10 $38 $02 $7C $03 $FF $81 $7E
.db $03 $FF $89 $7E $08 $10 $08 $10 $08 $10 $08 $10 $10 $FF $84 $BE
.db $7D $FB $F7 $02 $EF $02 $DF $08 $FF $03 $BF $05 $7F $08 $FE $10
.db $00 $98 $3F $7F $FF $FC $FE $F8 $FD $DF $F7 $FB $F8 $F6 $ED $FF
.db $7F $3F $CF $DF $1F $6F $B7 $FF $FE $FC $00

; 7th entry of Pointer Table from C480 (indexed by v_level)
; Data from DF1D to E24B (815 bytes)
_DATA_DF1D_:
.db $82 $0F $3F $02 $7F $04 $FF $97 $E0 $F0 $F0 $F8 $FA $F8 $E6 $D6
.db $FF $7F $4B $3F $2C $37 $1F $0C $4E $CE $CC $5C $B8 $B0 $40 $7F
.db $00 $70 $00 $A7 $03 $07 $07 $0E $FF $F7 $FF $5D $EA $55 $60 $F0
.db $FF $BF $EF $55 $BA $D5 $BA $55 $AA $55 $AA $55 $AA $14 $BA $55
.db $AA $55 $AA $55 $AA $45 $AA $14 $22 $00 $08 $03 $00 $84 $A8 $01
.db $22 $05 $0C $00 $00 $9D $0F $38 $70 $60 $C3 $CF $FF $CF $E0 $70
.db $20 $70 $F2 $F0 $E6 $D4 $CF $67 $4B $3C $20 $14 $00 $00 $4C $C8
.db $48 $50 $B0 $03 $00 $82 $3F $61 $02 $81 $02 $83 $92 $84 $88 $C6
.db $83 $83 $8F $FE $06 $03 $01 $98 $B8 $70 $30 $18 $08 $07 $00 $04
.db $01 $02 $03 $93 $02 $FC $7C $40 $80 $81 $81 $C3 $67 $3F $36 $3B
.db $73 $F3 $E1 $C1 $01 $01 $79 $04 $80 $8E $C0 $70 $1F $81 $C3 $C3
.db $67 $7F $3E $3C $F0 $E1 $C1 $C0 $05 $80 $83 $FB $E1 $C1 $02 $81
.db $02 $41 $8F $43 $80 $80 $81 $43 $42 $44 $28 $10 $42 $E2 $26 $34
.db $18 $08 $02 $00 $09 $FF $03 $F9 $03 $F0 $81 $E0 $08 $FF $90 $E0
.db $E3 $F3 $FF $F7 $C3 $83 $01 $FF $FE $FE $FC $F8 $F0 $F8 $FC $02
.db $01 $04 $00 $82 $18 $FD $02 $00 $03 $80 $03 $C0 $90 $E0 $90 $90
.db $98 $08 $08 $0C $04 $06 $C6 $CE $FF $EF $C3 $C1 $80 $05 $00 $02
.db $80 $02 $C0 $87 $60 $70 $30 $18 $0C $1E $3E $36 $00 $A7 $04 $08
.db $08 $10 $00 $08 $00 $A2 $15 $AA $10 $08 $00 $40 $10 $AA $45 $2A
.db $45 $AA $55 $AA $55 $AA $55 $EB $45 $AA $55 $AA $55 $AA $55 $BA
.db $55 $EB $DD $FF $F7 $03 $FF $84 $57 $FE $DD $FA $0C $FF $00 $84
.db $10 $00 $00 $80 $04 $00 $9A $18 $0C $06 $03 $01 $07 $1D $2D $00
.db $80 $87 $44 $50 $08 $03 $0C $97 $9F $3C $34 $58 $10 $58 $00 $3F
.db $61 $02 $81 $02 $83 $92 $84 $88 $C6 $83 $83 $8F $FE $06 $03 $01
.db $98 $B8 $70 $30 $18 $08 $07 $00 $04 $01 $02 $03 $93 $02 $FC $7C
.db $40 $80 $81 $81 $C3 $67 $3F $36 $3B $73 $F3 $E1 $C1 $01 $01 $79
.db $04 $80 $8E $C0 $70 $1F $81 $C3 $C3 $67 $7F $3E $3C $F0 $E1 $C1
.db $C0 $05 $80 $83 $FB $E1 $C1 $02 $81 $02 $41 $8F $43 $80 $80 $81
.db $43 $42 $44 $28 $10 $42 $E2 $26 $34 $18 $08 $04 $00 $03 $01 $03
.db $03 $88 $07 $09 $09 $19 $10 $10 $30 $20 $05 $00 $02 $01 $91 $03
.db $60 $63 $73 $FF $F7 $C3 $83 $01 $03 $06 $0E $0C $18 $30 $78 $7C
.db $02 $01 $04 $00 $82 $18 $FD $02 $00 $03 $80 $03 $C0 $90 $E0 $90
.db $90 $98 $08 $08 $0C $04 $06 $C6 $CE $FF $EF $C3 $C1 $80 $05 $00
.db $02 $80 $02 $C0 $87 $60 $70 $30 $18 $0C $1E $3E $36 $00 $84 $07
.db $0F $0F $1F $06 $FF $82 $F0 $F8 $26 $FF $08 $00 $00 $8C $1F $38
.db $70 $E0 $C3 $CF $FF $CF $F8 $7C $3E $7F $02 $FF $02 $FB $92 $CF
.db $FF $FC $7B $7F $7F $3C $13 $F9 $71 $F3 $EB $E6 $EE $BC $00 $00
.db $1E $02 $7E $02 $7C $8C $7B $77 $38 $7C $7C $70 $00 $F8 $FC $FE
.db $67 $47 $02 $0F $02 $07 $02 $00 $04 $FE $03 $FC $92 $00 $03 $3F
.db $7F $7E $7E $3C $18 $00 $C0 $C4 $8C $0C $1E $3E $FE $FE $06 $04
.db $7F $8E $3F $0F $00 $7E $3C $3C $98 $80 $C0 $C0 $00 $1E $3E $3F
.db $05 $7F $83 $04 $1E $3E $02 $7E $02 $BE $8D $BC $7F $7F $7E $3C
.db $3C $38 $10 $00 $BC $1C $18 $08 $04 $00 $02 $FF $03 $FE $03 $FC
.db $88 $F8 $F6 $F6 $E6 $EF $EF $CF $DF $05 $FF $02 $FE $91 $FC $9F
.db $9C $8C $00 $08 $3C $7C $FE $FC $F9 $F1 $F3 $E7 $CF $87 $83 $02
.db $FE $04 $FF $82 $E7 $02 $09 $00 $03 $60 $03 $F0 $02 $F8 $87 $38
.db $30 $00 $10 $3C $3E $7F $09 $00 $02 $80 $B5 $C0 $E0 $F0 $E0 $C0
.db $4F $FF $F9 $FC $69 $FF $FF $2E $E6 $FF $FF $5F $EE $F2 $AF $0F
.db $F7 $E3 $4B $3F $FF $17 $F1 $7F $FF $FF $4B $FE $C0 $3F $FF $78
.db $00 $E0 $F0 $58 $E8 $F0 $AC $0C $FE $FF $4B $FE $C0 $3F $FF $78
.db $06 $00 $84 $07 $0E $0C $1C $06 $FF $82 $30 $38 $2E $FF $00

; 8th entry of Pointer Table from C480 (indexed by v_level)
; Data from E24C to EA04 (1977 bytes)
_DATA_E24C_:
.incbin "baserom_DATA_E24C_.inc"

; 11th entry of Pointer Table from C480 (indexed by v_level)
; Data from EA05 to EE32 (1070 bytes)
_DATA_EA05_:
.incbin "baserom_DATA_EA05_.inc"

; 16th entry of Pointer Table from C480 (indexed by v_level)
; Data from EE33 to F116 (740 bytes)
_DATA_EE33_:
.db $9D $00 $7F $7F $7E $7D $7B $75 $6E $00 $FE $FE $7E $BE $DE $AE
.db $76 $6E $75 $7B $7D $7E $7F $7F $00 $76 $AE $DE $BE $7E $02 $FE
.db $02 $00 $05 $7F $81 $40 $02 $00 $05 $FC $02 $00 $82 $70 $00 $03
.db $7F $94 $00 $20 $70 $00 $3B $3B $38 $00 $38 $38 $7C $00 $BA $BA
.db $38 $00 $38 $38 $7C $FE $02 $7C $02 $38 $03 $10 $90 $AA $55 $AA
.db $55 $AA $55 $AA $55 $AA $55 $AA $55 $AA $D5 $6A $3C $07 $00 $81
.db $01 $02 $03 $06 $00 $02 $C0 $2E $00 $81 $01 $06 $02 $09 $01 $08
.db $80 $81 $01 $02 $00 $02 $03 $84 $07 $0F $00 $80 $02 $00 $02 $C0
.db $BC $E0 $F0 $00 $42 $3C $7E $7E $BD $7E $3C $42 $0F $16 $25 $41
.db $82 $E4 $C8 $F0 $7F $BF $DF $EF $F7 $FB $FD $AB $FE $FD $FB $F7
.db $EF $DF $BF $2A $7F $BF $DF $EF $F7 $FB $FD $AA $00 $3B $3B $38
.db $00 $38 $38 $7C $00 $BA $BA $38 $00 $38 $38 $7C $FE $02 $7C $02
.db $38 $03 $10 $00 $8D $FF $C0 $A0 $81 $8F $8E $8E $99 $FF $01 $01
.db $81 $F1 $02 $79 $02 $99 $8C $9E $8E $8F $87 $80 $80 $FF $99 $79
.db $79 $F1 $E9 $02 $01 $02 $FF $05 $80 $81 $BF $02 $FF $05 $03 $02
.db $FF $82 $88 $FF $03 $80 $88 $FF $D8 $88 $FF $C4 $C4 $C7 $7C $03
.db $00 $85 $FF $45 $45 $C7 $7C $21 $00 $A7 $03 $06 $04 $0C $FF $F7
.db $FF $5D $EA $55 $20 $30 $FF $BF $EF $55 $BA $D5 $BA $55 $AA $55
.db $AA $55 $AA $14 $BA $55 $AA $55 $AA $55 $AA $45 $AA $14 $22 $00
.db $08 $03 $00 $84 $A8 $01 $22 $05 $14 $00 $08 $04 $08 $20 $03 $04
.db $02 $08 $83 $10 $20 $3F $03 $20 $02 $10 $84 $08 $04 $FC $BD $03
.db $81 $84 $00 $81 $81 $BD $0A $00 $82 $8A $E7 $03 $00 $85 $54 $00
.db $00 $A2 $E7 $03 $00 $85 $55 $00 $00 $8A $E7 $03 $00 $86 $54 $FF
.db $C4 $C4 $C7 $7C $03 $00 $85 $FF $45 $45 $C7 $7C $0B $00 $00 $03
.db $FF $82 $E9 $FF $02 $EF $04 $FF $81 $97 $06 $FF $83 $EF $FF $EF
.db $1B $FF $81 $F8 $05 $FF $02 $F8 $04 $FF $81 $7C $03 $00 $04 $FF
.db $81 $7C $08 $00 $81 $28 $18 $00 $A7 $04 $08 $08 $10 $00 $08 $00
.db $A2 $15 $AA $10 $08 $00 $40 $10 $AA $45 $2A $45 $AA $55 $AA $55
.db $AA $55 $EB $45 $AA $55 $AA $55 $AA $55 $BA $55 $EB $DD $FF $F7
.db $03 $FF $84 $57 $FE $DD $FA $0C $FF $81 $02 $06 $04 $81 $02 $08
.db $06 $08 $60 $81 $06 $02 $07 $02 $0C $84 $18 $30 $3F $60 $02 $E0
.db $02 $30 $84 $18 $0C $FC $BD $03 $FF $A3 $7E $FF $FF $BD $00 $09
.db $1A $30 $61 $02 $24 $08 $BF $DF $AA $F7 $FB $FD $FE $FE $FD $FB
.db $A6 $EF $DF $BF $7F $FF $BF $DF $AA $F7 $FB $FD $FE $06 $FF $02
.db $C7 $81 $83 $05 $FF $02 $C7 $82 $83 $01 $02 $83 $02 $C7 $03 $EF
.db $00 $A2 $FF $80 $80 $89 $92 $84 $8A $91 $FF $01 $03 $97 $4F $27
.db $57 $8F $91 $8A $84 $92 $89 $9F $BF $FF $8F $57 $27 $4F $97 $FB
.db $FD $FF $FF $80 $05 $BF $02 $FF $81 $03 $06 $FF $9A $D8 $FF $FF
.db $80 $FF $FF $F8 $D8 $FF $EF $EC $EF $7C $08 $08 $4C $FF $EF $6D
.db $EF $7C $08 $08 $4C $0E $04 $02 $08 $02 $28 $82 $00 $10 $16 $00
.db $84 $07 $0F $0F $1E $06 $FF $82 $70 $F8 $2E $FF $81 $03 $06 $06
.db $81 $03 $08 $02 $08 $C0 $81 $02 $02 $03 $02 $06 $83 $0C $18 $00
.db $03 $C0 $02 $E0 $83 $70 $38 $00 $08 $FF $8E $0F $1F $3F $71 $E3
.db $E6 $EC $F8 $FF $60 $30 $18 $0C $57 $03 $FF $85 $06 $0C $18 $30
.db $75 $03 $FF $85 $60 $30 $18 $0C $57 $03 $FF $84 $EF $EC $EF $FF
.db $03 $CF $85 $FF $EF $6D $EF $FF $03 $CF $84 $0F $87 $8B $CF $03
.db $EF $81 $FF $00

; 17th entry of Pointer Table from C480 (indexed by v_level)
; Data from F117 to F49A (900 bytes)
_DATA_F117_:
.db $02 $00 $8F $03 $06 $0E $38 $F8 $8C $30 $F8 $1C $14 $26 $02 $02
.db $01 $02 $07 $00 $81 $01 $07 $00 $94 $1F $37 $10 $00 $60 $70 $7C
.db $4F $80 $F8 $BF $4F $0B $02 $00 $00 $63 $41 $00 $40 $04 $00 $84
.db $80 $60 $3C $4E $02 $04 $02 $00 $81 $FC $07 $00 $81 $FF $05 $80
.db $0B $00 $05 $FC $03 $00 $05 $7F $02 $00 $91 $EF $6F $2F $2D $39
.db $39 $29 $08 $7B $7A $FE $7A $5E $C8 $48 $C8 $08 $03 $10 $81 $00
.db $03 $10 $96 $0C $8C $88 $8C $8C $00 $84 $84 $07 $18 $20 $40 $40
.db $83 $80 $80 $FE $01 $C0 $00 $00 $FF $02 $00 $02 $10 $02 $80 $02
.db $10 $86 $80 $82 $02 $3C $40 $A0 $03 $80 $85 $00 $40 $3C $02 $05
.db $03 $01 $81 $00 $02 $08 $02 $01 $02 $08 $82 $01 $41 $02 $10 $02
.db $80 $02 $10 $8A $80 $81 $00 $80 $80 $A0 $40 $20 $9C $80 $02 $10
.db $02 $80 $02 $10 $86 $80 $82 $82 $3C $40 $A0 $03 $80 $02 $00 $02
.db $01 $85 $05 $02 $04 $39 $03 $02 $08 $02 $01 $02 $08 $02 $01 $84
.db $41 $3C $02 $05 $03 $01 $81 $00 $02 $10 $02 $80 $02 $10 $02 $80
.db $88 $00 $80 $80 $A0 $40 $20 $1C $00 $02 $10 $02 $80 $02 $10 $02
.db $80 $10 $00 $00 $02 $07 $83 $0C $08 $10 $03 $00 $82 $CF $07 $02
.db $03 $03 $01 $89 $00 $80 $C0 $60 $30 $18 $0C $0E $07 $03 $00 $8F
.db $01 $03 $07 $0F $1F $60 $00 $60 $38 $1C $0F $83 $80 $7F $07 $03
.db $00 $83 $01 $81 $C1 $04 $80 $8C $C0 $70 $3E $0F $7F $1F $03 $01
.db $03 $03 $07 $FF $07 $01 $81 $FF $07 $00 $09 $FF $07 $01 $81 $FF
.db $07 $00 $81 $FF $03 $00 $02 $80 $02 $82 $81 $86 $04 $00 $03 $01
.db $86 $21 $C6 $C6 $D6 $CE $CF $03 $FF $B3 $21 $25 $B3 $33 $B7 $7B
.db $FF $FF $F8 $E0 $C0 $80 $80 $00 $07 $08 $00 $00 $01 $C0 $00 $00
.db $F8 $10 $0C $0A $09 $08 $08 $0A $0F $0D $00 $00 $10 $0B $44 $28
.db $08 $90 $00 $00 $08 $D0 $22 $14 $10 $09 $30 $50 $90 $02 $10 $CC
.db $50 $F0 $B0 $0F $0A $0C $0A $09 $08 $09 $0A $60 $20 $50 $08 $14
.db $82 $C0 $7E $0D $0A $09 $08 $08 $0A $0F $0D $C0 $80 $10 $0B $44
.db $28 $08 $90 $06 $04 $0A $10 $28 $41 $03 $7C $F0 $50 $30 $50 $90
.db $10 $90 $D0 $03 $01 $08 $D0 $22 $14 $10 $09 $0F $0A $0C $0A $09
.db $08 $09 $0A $60 $20 $50 $08 $14 $82 $40 $3E $0C $07 $08 $05 $02
.db $02 $12 $81 $0C $05 $40 $02 $48 $81 $10 $00 $40 $00 $81 $01 $05
.db $FD $83 $01 $FF $00 $05 $7F $82 $00 $FF $08 $00 $06 $FD $81 $01
.db $07 $FF $86 $00 $FF $FF $7F $3F $3D $03 $39 $82 $18 $FF $03 $FE
.db $81 $DE $03 $CC $81 $18 $07 $10 $05 $8C $03 $84 $F8 $07 $19 $36
.db $70 $6F $DF $D8 $D4 $FE $24 $18 $02 $3F $FF $07 $0D $B2 $B1 $D0
.db $51 $B3 $B5 $D0 $D0 $3F $7D $A3 $D4 $B8 $90 $90 $60 $FC $BE $C7
.db $2B $1D $09 $09 $06 $4D $8D $0B $8B $CD $AD $0B $0B $B0 $B5 $D3
.db $D1 $B0 $B1 $D2 $D4 $10 $90 $A8 $54 $E3 $41 $3D $01 $B2 $B1 $D0
.db $D1 $B3 $B5 $D0 $D0 $3F $7D $A3 $D4 $B8 $90 $90 $60 $08 $09 $15
.db $2B $C5 $82 $BC $80 $0D $AD $CB $8B $0D $8D $4B $2B $FC $BE $C7
.db $2B $1D $09 $09 $06 $B0 $B5 $D3 $D1 $B0 $B1 $D2 $D4 $10 $90 $A8
.db $D4 $E3 $61 $3D $01 $02 $B0 $02 $D0 $02 $B0 $02 $D0 $05 $01 $83
.db $09 $0D $03 $05 $80 $83 $90 $B0 $E0 $00 $02 $07 $02 $0F $82 $1F
.db $3F $0C $FF $86 $7F $3F $1F $0F $0F $07 $08 $FF $03 $7F $81 $3F
.db $02 $7F $0F $FF $83 $7F $3F $0F $08 $FF $81 $00 $05 $FC $03 $00
.db $05 $7F $02 $00 $08 $FF $06 $02 $81 $FE $07 $00 $86 $FF $00 $00
.db $80 $C0 $C2 $03 $C6 $82 $E7 $00 $03 $01 $81 $21 $03 $33 $81 $E7
.db $07 $EF $05 $73 $03 $7B $F8 $F8 $E6 $C9 $8F $90 $20 $27 $2B $01
.db $DA $26 $3D $C0 $00 $F8 $F2 $4D $4E $2F $AE $4C $4A $2D $28 $C0
.db $82 $7C $5B $77 $6F $6F $9F $03 $41 $3C $DA $EE $F6 $F6 $F9 $B2
.db $72 $F4 $74 $32 $52 $B4 $14 $4D $4A $2C $2E $4F $4E $2D $2A $EF
.db $6F $77 $DB $3C $BE $42 $3E $4C $4E $2F $2E $4C $4A $2D $28 $00
.db $02 $7C $5B $77 $6F $6F $9F $F7 $F6 $EE $DA $3E $7D $42 $7C $B2
.db $52 $34 $74 $F2 $72 $B4 $54 $00 $40 $3C $DA $EE $F6 $F6 $F9 $4D
.db $4A $2C $2E $4F $4E $2D $2B $EF $6F $77 $5B $3C $9E $C2 $FE $02
.db $4F $02 $2F $02 $4F $02 $2F $05 $FE $83 $F6 $F2 $FC $05 $7F $83
.db $6F $4F $1F $00

; 14th entry of Pointer Table from C480 (indexed by v_level)
; Data from F49B to F75B (705 bytes)
_DATA_F49B_:
.db $02 $BF $81 $FF $02 $5F $02 $2F $85 $3F $5F $BF $BF $7F $03 $BF
.db $81 $7F $10 $FF $08 $BF $08 $FF $12 $00 $9E $01 $07 $1F $3E $39
.db $77 $00 $00 $F0 $FE $FF $07 $F9 $FE $77 $6D $6B $ED $DE $DB $DB
.db $D6 $FB $85 $7A $7A $A6 $9D $63 $FF $09 $01 $07 $00 $82 $D9 $D7
.db $03 $B6 $9C $BA $BB $AD $D9 $2B $EB $D5 $B6 $AE $6D $73 $AD $AC
.db $DA $C5 $DE $DF $58 $57 $6F $EF $D2 $40 $A0 $61 $9D $BE $6C $02
.db $6D $02 $2E $84 $2D $35 $33 $BF $03 $7F $88 $74 $30 $99 $9F $17
.db $16 $14 $10 $03 $37 $82 $38 $0F $04 $00 $8C $80 $C0 $C0 $FD $FE
.db $DE $FE $2E $0C $99 $F9 $1A $03 $19 $02 $1B $87 $3B $37 $C0 $C0
.db $E0 $E1 $F3 $03 $FF $82 $33 $31 $02 $38 $04 $7B $02 $FF $81 $7F
.db $02 $7C $03 $FF $02 $7B $06 $FB $0F $FF $81 $00 $08 $FF $00 $02
.db $3F $81 $00 $02 $1F $02 $0F $85 $00 $1F $3F $3F $00 $03 $3F $84
.db $00 $FF $FF $00 $04 $FF $81 $00 $03 $FF $81 $00 $03 $FF $81 $00
.db $08 $2D $10 $FF $0C $00 $84 $01 $07 $0F $1F $04 $00 $94 $F8 $FE
.db $FF $FF $1D $3B $3C $3E $7B $77 $76 $79 $87 $7B $E5 $E5 $5D $63
.db $FF $F9 $10 $00 $82 $77 $6E $03 $ED $A4 $F5 $F6 $DA $37 $D7 $D7
.db $AB $6D $5D $D3 $CF $DA $DB $65 $7E $7F $78 $77 $7C $DF $DF $BF
.db $B2 $71 $F3 $63 $C1 $3B $3B $3A $3D $3D $3A $1B $1F $C0 $03 $80
.db $88 $8B $CF $66 $60 $1E $1D $1F $1C $03 $08 $84 $07 $F0 $BF $1F
.db $05 $00 $89 $03 $01 $21 $01 $D1 $F3 $66 $06 $07 $03 $06 $03 $04
.db $81 $08 $03 $00 $87 $11 $0F $03 $00 $00 $0C $0E $02 $07 $04 $04
.db $02 $00 $81 $80 $02 $83 $03 $00 $08 $04 $08 $00 $10 $FF $00 $03
.db $FF $02 $7F $03 $3F $84 $7F $FF $FF $7F $03 $FF $81 $7F $28 $FF
.db $03 $00 $05 $01 $A0 $00 $01 $07 $1F $3E $78 $70 $E0 $00 $F0 $FE
.db $FF $07 $01 $00 $00 $E2 $C4 $C3 $C1 $84 $88 $89 $86 $78 $84 $1A
.db $1A $A2 $9C $00 $06 $09 $03 $05 $01 $02 $00 $82 $88 $91 $03 $12
.db $AF $0A $09 $25 $C8 $28 $28 $54 $92 $A2 $2C $30 $25 $24 $9A $81
.db $80 $87 $88 $83 $20 $20 $4D $5F $9E $1C $A0 $40 $C4 $C4 $C5 $42
.db $42 $45 $64 $60 $40 $C0 $C7 $DF $CB $4F $A6 $C0 $21 $22 $23 $24
.db $04 $3F $82 $40 $80 $03 $00 $8C $80 $C0 $C0 $1E $CF $EF $FF $D3
.db $F2 $65 $03 $1D $05 $1F $02 $3F $02 $C0 $04 $E0 $02 $C0 $84 $3B
.db $39 $3C $3F $04 $7F $84 $81 $83 $03 $00 $03 $83 $81 $45 $02 $7F
.db $06 $FF $82 $39 $83 $06 $FF $10 $00 $00 $02 $00 $81 $FF $04 $00
.db $81 $3F $03 $00 $81 $7F $03 $00 $84 $7F $00 $00 $FF $04 $00 $81
.db $FF $03 $00 $81 $FF $03 $00 $81 $FF $10 $00 $08 $FF $0C $00 $84
.db $01 $07 $0F $1F $04 $00 $94 $F8 $FE $FF $FF $1D $3B $3C $3E $7B
.db $77 $76 $79 $87 $7B $E5 $E5 $5D $63 $FF $F9 $10 $00 $82 $77 $6E
.db $03 $ED $A5 $F5 $F6 $DA $37 $D7 $D7 $AB $6D $5D $D3 $CF $DA $DB
.db $65 $7E $7F $78 $77 $7C $DF $DF $B2 $A0 $61 $E2 $42 $81 $3B $3B
.db $3A $3D $3D $3A $1B $1F $80 $40 $03 $00 $9C $80 $40 $00 $1E $1D
.db $1C $1B $00 $00 $30 $38 $80 $40 $E0 $FF $FF $7F $FF $FF $05 $06
.db $04 $04 $00 $01 $02 $00 $1E $03 $1D $02 $1B $82 $3B $37 $03 $FF
.db $81 $EF $02 $E3 $02 $C0 $84 $33 $31 $38 $3C $04 $7F $83 $81 $83
.db $03 $02 $00 $02 $83 $81 $01 $02 $7F $06 $FF $82 $01 $83 $16 $FF
.db $00

; Data from F75C to F7F5 (154 bytes)
_DATA_F75C_:
.db $8E $07 $18 $20 $40 $40 $83 $80 $80 $FE $01 $C0 $00 $00 $FF $02
.db $00 $02 $10 $02 $80 $02 $10 $02 $80 $02 $08 $02 $01 $02 $08 $02
.db $01 $02 $10 $02 $80 $02 $10 $02 $80 $00 $90 $F8 $E0 $C0 $80 $80
.db $00 $07 $08 $00 $00 $01 $C0 $00 $00 $FF $00 $08 $08 $08 $10 $07
.db $08 $81 $00 $00 $8E $07 $19 $36 $70 $6F $DF $D8 $D0 $FE $24 $18
.db $02 $3F $FF $02 $00 $02 $B0 $82 $D0 $50 $02 $B0 $02 $D0 $02 $0D
.db $02 $0B $02 $0D $02 $0B $02 $B0 $02 $D0 $02 $B0 $02 $D0 $00 $94
.db $F8 $E6 $C9 $8F $90 $20 $27 $28 $01 $DA $26 $3D $C0 $00 $FF $00
.db $48 $48 $28 $A8 $02 $48 $02 $28 $02 $12 $02 $14 $02 $12 $02 $14
.db $02 $48 $02 $28 $02 $48 $82 $28 $20 $00

; Data from F7F6 to F895 (160 bytes)
_DATA_F7F6_:
.db $00 $0F $0F $00 $00 $10 $1F $0F $00 $10 $1F $0F $00 $0F $0F $00
.db $02 $07 $00 $05 $00 $07 $07 $00 $00 $08 $0F $07 $00 $10 $1F $0F
.db $00 $FF $FF $00 $00 $00 $FF $FF $00 $00 $FF $FF $00 $FF $FF $00
.db $AA $FF $00 $55 $00 $FF $FF $00 $81 $81 $7F $7E $4A $CA $3F $B5
.db $00 $C0 $C0 $00 $00 $20 $E0 $C0 $00 $20 $E0 $C0 $00 $C0 $C0 $00
.db $80 $80 $00 $00 $00 $80 $80 $00 $00 $40 $C0 $80 $00 $20 $E0 $C0
.db $04 $04 $FF $FB $04 $04 $FF $FB $84 $84 $FF $7B $6A $6A $FF $95
.db $91 $91 $FF $6E $11 $11 $FF $EE $2A $2A $FF $D5 $00 $FF $FF $00
.db $00 $20 $E0 $C0 $00 $20 $E0 $C0 $40 $60 $E0 $80 $80 $A0 $E0 $40
.db $00 $20 $E0 $C0 $00 $40 $C0 $80 $00 $80 $80 $00 $00 $00 $00 $00

; Data from F896 to F969 (212 bytes)
_DATA_F896_:
.db $83 $0E $70 $40 $02 $80 $04 $00 $81 $38 $02 $20 $02 $40 $85 $00
.db $40 $00 $00 $E8 $07 $00 $9A $03 $04 $00 $10 $00 $00 $1C $7E $7E
.db $7F $3D $2D $6E $3C $18 $7E $FE $FA $7C $7C $38 $EC $31 $71 $E0
.db $08 $04 $00 $88 $F8 $FE $E6 $C0 $08 $30 $20 $00 $00 $81 $F1 $02
.db $81 $03 $00 $84 $80 $81 $FF $C7 $02 $C1 $02 $81 $86 $C1 $81 $C3
.db $FF $07 $01 $03 $00 $A9 $0F $03 $87 $84 $C8 $F0 $C0 $C0 $F0 $E3
.db $81 $81 $80 $C2 $52 $91 $C3 $E7 $81 $01 $05 $83 $83 $C7 $13 $CE
.db $8E $1F $07 $01 $00 $00 $0F $07 $01 $19 $3F $F2 $C0 $C0 $F0 $00
.db $83 $0E $70 $40 $02 $80 $04 $00 $81 $38 $02 $20 $02 $40 $85 $00
.db $40 $00 $00 $E8 $07 $00 $84 $03 $04 $00 $10 $02 $00 $05 $FF $83
.db $7F $FF $7F $04 $FF $04 $FE $84 $7F $7B $1B $03 $04 $00 $03 $FF
.db $82 $F7 $C2 $03 $00 $00 $83 $F1 $8F $BF $02 $7F $04 $FF $81 $C7
.db $02 $DF $02 $BF $85 $FF $BF $FF $FF $17 $07 $FF $84 $FC $FB $FF
.db $EF $22 $FF $00

; Data from F96A to FC68 (767 bytes)
_DATA_F96A_:
.db $00 $00 $1A $04 $E4 $D8 $D5 $B0 $D8 $D5 $E2 $DF $D9 $D3 $B0 $D1
.db $D3 $E4 $D9 $DF $DE $B0 $E4 $D1 $DB $D5 $DE $B0 $D2 $E9 $FE $19
.db $04 $D1 $DC $D5 $E8 $B0 $DB $D9 $D4 $D4 $B0 $E2 $D5 $E3 $E5 $DC
.db $E4 $D5 $D4 $B0 $D9 $DE $B0 $E4 $D8 $D5 $FE $1C $04 $D4 $DF $E7
.db $DE $D6 $D1 $DC $DC $B0 $DF $D6 $B0 $DA $D1 $DE $DB $D5 $DE $B0
.db $E4 $D8 $D5 $B0 $D7 $E2 $D5 $D1 $E4 $FE $19 $04 $D1 $DE $D4 $B0
.db $D1 $B0 $E2 $D5 $E4 $E5 $E2 $DE $B0 $DF $D6 $B0 $E0 $D5 $D1 $D3
.db $D5 $B0 $D1 $DE $D4 $FE $1A $04 $E4 $E2 $D1 $DE $E1 $E5 $D9 $DC
.db $D9 $E4 $E9 $B0 $E4 $DF $B0 $B2 $E2 $D1 $D4 $D1 $E8 $D9 $D1 $DE
.db $BE $B2 $FE $19 $04 $D9 $DE $B0 $D1 $B0 $D4 $D1 $EA $EA $DC $D9
.db $DE $D7 $B0 $D3 $DF $E2 $DF $DE $D1 $E4 $D9 $DF $DE $BC $FE $1A
.db $04 $B2 $D9 $D7 $E5 $DC $BC $B2 $B0 $D8 $D9 $E3 $B0 $D5 $DC $D4
.db $D5 $E2 $B0 $D2 $E2 $DF $E4 $D8 $D5 $E2 $BC $FE $1D $04 $D2 $D5
.db $D3 $D1 $DD $D5 $B0 $E4 $D8 $D5 $B0 $DB $D9 $DE $D7 $B0 $DF $D6
.db $B2 $E2 $D1 $D4 $D1 $E8 $D9 $D1 $DE $BE $B2 $FE $1C $04 $E4 $D8
.db $D5 $B0 $D3 $D9 $E4 $D9 $EA $D5 $DE $E3 $B0 $E7 $D8 $DF $B0 $E7
.db $D5 $E2 $D5 $B0 $E4 $E5 $E2 $DE $D5 $D4 $FE $1B $04 $D9 $DE $E4
.db $DF $B0 $E3 $E4 $DF $DE $D5 $B0 $E2 $D5 $E6 $D5 $E2 $E4 $D5 $D4
.db $B0 $D2 $D1 $D3 $DB $B0 $E4 $DF $FE $18 $04 $D8 $E5 $DD $D1 $DE
.db $B0 $D2 $D5 $D9 $DE $D7 $E3 $B0 $E4 $D8 $E2 $DF $E5 $D7 $D8 $B0
.db $E4 $D8 $D5 $FE $15 $04 $E0 $DF $E7 $D5 $E2 $B0 $DF $D6 $B0 $E4
.db $D8 $D5 $B0 $B2 $D3 $E2 $DF $E7 $DE $BE $B2 $FE $1A $04 $D1 $DC
.db $D5 $E8 $B0 $E7 $D1 $E3 $B0 $DF $E6 $D5 $E2 $DA $DF $E9 $D5 $D4
.db $B0 $E4 $D8 $D1 $E4 $B0 $D8 $D5 $FE $1B $04 $E7 $D1 $E3 $B0 $D1
.db $D2 $DC $D5 $B0 $E4 $DF $B0 $E5 $E3 $D5 $B0 $D8 $D9 $E3 $B0 $DD
.db $D1 $E2 $E4 $D9 $D1 $DC $FE $1A $04 $D1 $E2 $E4 $B0 $E3 $DB $D9
.db $DC $DC $E3 $B0 $D6 $DF $E2 $B0 $E4 $D8 $D5 $B0 $D7 $DF $DF $D4
.db $B0 $DF $D6 $FE $0D $04 $E4 $D8 $D5 $B0 $D3 $D9 $E4 $D9 $EA $D5
.db $DE $E3 $BE $FE $1B $04 $E3 $DF $DD $D5 $B0 $D4 $DF $E5 $D2 $E4
.db $B0 $E3 $E4 $D9 $DC $DC $B0 $DC $D9 $DE $D7 $D5 $E2 $E3 $B0 $D9
.db $DE $FE $19 $04 $D8 $D9 $E3 $B0 $DD $D9 $DE $D4 $B0 $D1 $E3 $B0
.db $E4 $DF $B0 $E7 $D8 $D5 $E4 $D8 $D5 $E2 $B0 $DF $E2 $FE $17 $04
.db $DE $DF $E4 $B0 $D1 $DC $DC $B0 $DF $D6 $B0 $E4 $D8 $D5 $B0 $E3
.db $D9 $DE $D9 $E3 $E4 $D5 $E2 $FE $1A $04 $D5 $DE $D5 $DD $E9 $B0
.db $D6 $DF $E2 $D3 $D5 $E3 $B0 $E7 $D5 $E2 $D5 $B0 $D1 $D3 $E4 $E5
.db $D1 $DC $DC $E9 $FE $0A $04 $D4 $D5 $E3 $E4 $E2 $DF $E9 $D5 $D4
.db $BE $FE $1A $04 $D1 $D4 $D4 $D5 $D4 $B0 $E4 $DF $B0 $E4 $D8 $D9
.db $E3 $B0 $D6 $D5 $D1 $E2 $BC $B0 $D9 $E3 $B0 $E4 $D8 $D5 $FE $1B
.db $04 $E5 $DE $D5 $D1 $E3 $D9 $DE $D5 $E3 $E3 $B0 $D8 $D5 $B0 $D6
.db $D5 $D5 $DC $E3 $B0 $D2 $D5 $D3 $D1 $E5 $E3 $D5 $FE $1B $04 $DF
.db $D6 $B0 $E4 $D8 $D5 $B0 $D6 $D1 $D3 $E4 $B0 $E4 $D8 $D1 $E4 $B0
.db $E4 $D8 $D5 $B0 $E7 $D8 $D5 $E2 $D5 $BD $FE $1A $04 $D1 $D2 $DF
.db $E5 $E4 $E3 $B0 $DF $D6 $B0 $D8 $D9 $E3 $B0 $D6 $D1 $E4 $D8 $D5
.db $E2 $BC $B0 $DB $D9 $DE $D7 $FE $19 $04 $E3 $D1 $DE $D4 $D5 $E2
.db $BC $B0 $D9 $E3 $B0 $E3 $E4 $D9 $DC $DC $B0 $E5 $DE $DB $DE $DF
.db $E7 $DE $BE
.dsb 11, $FE
.db $10 $04
.dsb 9, $B0
.db $E4 $D8 $D5 $B0 $D5 $DE $D4
.dsb 13, $FE
.db $FF $00

; Data from FC69 to FFFF (919 bytes)
_DATA_FC69_:
.db $1B $00 $83 $01 $03 $0F $02 $1F $02 $00 $84 $C0 $E0 $F8 $FE $02
.db $FF $04 $00 $84 $06 $0F $9F $C7 $08 $00 $84 $19 $17 $1F $3F $02
.db $7F $02 $70 $82 $F1 $EE $04 $FF $02 $03 $81 $C7 $05 $E7 $82 $E6
.db $EC $08 $00 $8D $0C $06 $01 $07 $0F $1F $0F $77 $00 $01 $F3 $FC
.db $FD $03 $FE $02 $F8 $86 $E0 $0F $A6 $A6 $A3 $23 $08 $00 $02 $78
.db $02 $70 $86 $08 $38 $18 $18 $04 $03 $04 $07 $8A $03 $04 $D1 $E1
.db $F3 $FF $FC $F0 $D0 $00 $03 $80 $03 $00 $02 $80 $02 $00 $04 $21
.db $84 $1E $00 $00 $C0 $02 $C1 $02 $C0 $89 $EF $00 $2C $94 $D4 $D0
.db $90 $30 $C0 $1C $00 $85 $04 $01 $03 $0F $1F $03 $00 $85 $C0 $E0
.db $F8 $FE $FF $05 $00 $83 $46 $0F $9F $08 $00 $8B $07 $06 $05 $47
.db $0F $1F $1F $9F $FF $7C $FB $05 $FF $86 $F1 $71 $B9 $F9 $F9 $FD
.db $02 $F9 $07 $C0 $8B $80 $0F $07 $0C $04 $38 $78 $78 $70 $FE $FF
.db $03 $07 $90 $05 $03 $07 $7D $7C $70 $87 $03 $C1 $E1 $F1 $80 $00
.db $00 $80 $00 $03 $80 $83 $70 $00 $08 $02 $00 $03 $01 $03 $07 $8E
.db $03 $00 $FF $00 $18 $F7 $FF $FC $D0 $10 $20 $00 $01 $80 $03 $00
.db $04 $80 $82 $00 $01 $04 $43 $91 $3D $00 $00 $81 $83 $83 $81 $80
.db $DF $00 $58 $28 $A8 $A0 $20 $60 $80 $81 $00 $00 $03 $00 $85 $01
.db $0F $3F $7F $FF $03 $00 $05 $FF $04 $00 $84 $E0 $F8 $FC $FE $02
.db $3F $02 $7F $02 $FF $82 $F9 $31 $06 $FF $82 $E3 $E1 $06 $FF $02
.db $FB $81 $C0 $03 $E0 $04 $F0 $90 $37 $39 $31 $70 $FF $F8 $FF $FC
.db $EE $F1 $E0 $60 $FF $07 $83 $03 $07 $FB $81 $FF $06 $F0 $02 $E0
.db $8B $1E $0F $06 $08 $10 $20 $70 $F8 $00 $F1 $0F $02 $03 $03 $01
.db $03 $FF $81 $F0 $04 $90 $84 $F0 $E0 $C0 $80 $04 $40 $03 $FF $86
.db $8F $77 $47 $27 $27 $FB $04 $FF $85 $FB $FC $FB $EC $F0 $03 $E0
.db $83 $C0 $23 $FE $04 $20 $9C $40 $C0 $40 $40 $FF $21 $62 $62 $63
.db $43 $21 $1F $F8 $E0 $E1 $E1 $E0 $60 $F0 $FF $12 $8A $CA $CC $88
.db $08 $30 $C0 $04 $00 $84 $03 $1F $7F $FF $04 $00 $81 $FE $03 $FF
.db $05 $00 $8B $C0 $F0 $F8 $1F $3F $3F $7B $7F $FF $FF $F9 $07 $FF
.db $81 $E3 $05 $FF $83 $BF $FF $FB $02 $C0 $03 $E0 $03 $F0 $98 $0C
.db $0D $0E $0C $1C $3F $3B $3F $78 $FB $7C $78 $18 $FF $EF $FF $7E
.db $BE $7E $3E $3E $FA $F6 $7E $07 $FC $8B $F8 $1C $08 $13 $3B $7F
.db $FF $FF $EF $01 $00 $03 $F8 $8F $FB $FF $FF $7F $FF $FF $78 $C8
.db $E8 $FC $E0 $FC $F8 $F0 $60 $04 $20 $85 $8F $7F $17 $0F $03 $03
.db $02 $02 $FF $92 $FB $FC $FF $00 $00 $07 $E0 $E0 $C0 $20 $E1 $1E
.db $00 $FE $20 $20 $40 $C0 $04 $40 $98 $7F $43 $C5 $C5 $C7 $86 $43
.db $3F $F0 $C1 $C3 $C3 $C1 $C0 $E0 $FF $24 $14 $94 $98 $10 $10 $60
.db $80 $00 $03 $00 $85 $01 $0E $30 $40 $80 $03 $00 $81 $FF $08 $00
.db $84 $E0 $18 $04 $02 $02 $20 $02 $40 $02 $80 $82 $E0 $20 $0E $00
.db $02 $04 $81 $40 $03 $20 $04 $10 $84 $26 $28 $20 $43 $02 $80 $02
.db $8F $84 $0E $11 $00 $80 $02 $00 $02 $FC $07 $04 $81 $00 $06 $10
.db $02 $20 $8B $13 $09 $06 $08 $10 $20 $70 $88 $FF $FE $0C $02 $03
.db $03 $01 $03 $00 $81 $F0 $02 $F9 $02 $FC $84 $10 $20 $C0 $80 $04
.db $C0 $02 $87 $88 $8F $FF $77 $47 $27 $27 $FB $FC $03 $F8 $8B $FC
.db $FF $FB $3E $1E $0C $00 $03 $2F $EF $FF $03 $60 $81 $E0 $04 $C0
.db $88 $FF $3F $5E $5E $5F $7F $3F $1F $02 $FF $02 $FE $8C $FF $7F
.db $FF $FF $FE $7E $3E $3C $78 $F8 $F0 $C0 $04 $00 $84 $03 $1C $60
.db $80 $04 $00 $82 $FE $01 $07 $00 $84 $C0 $30 $08 $10 $02 $20 $02
.db $40 $02 $80 $81 $E0 $0F $00 $81 $04 $02 $40 $03 $20 $03 $10 $85
.db $08 $09 $0A $08 $10 $03 $20 $85 $00 $83 $04 $00 $E0 $03 $00 $83
.db $01 $81 $41 $05 $01 $07 $04 $8B $08 $10 $08 $13 $3B $47 $87 $87
.db $9F $01 $00 $03 $F8 $83 $FA $FC $F8 $03 $80 $8A $78 $FC $3E $1E
.db $0E $04 $08 $10 $60 $E0 $03 $60 $84 $FF $7F $17 $0F $04 $03 $02
.db $F8 $81 $FC $05 $FF $83 $08 $00 $23 $02 $EF $03 $FF $82 $60 $E0
.db $06 $C0 $02 $7F $02 $BD $89 $BF $FE $7F $3F $FF $FE $FC $FC $FE
.db $03 $FF $02 $FC $86 $7C $78 $F0 $F0 $E0 $80 $00 $7F $00 $7F $00
.db $62 $00 $00
.dsb 36, $FF

.BANK 4
.ORG $0000

; Pointer Table from 10000 to 1005F (48 entries, indexed by v_alexTilesIndex)
_DATA_10000_:
.dw _DATA_10060_ _DATA_1006B_ _DATA_10078_ _DATA_10085_ _DATA_10090_ _DATA_1009D_ _DATA_100AA_ _DATA_100B7_
.dw _DATA_100C4_ _DATA_100D3_ _DATA_100E2_ _DATA_100ED_ _DATA_100F8_ _DATA_10103_ _DATA_1010E_ _DATA_1011B_
.dw _DATA_10128_ _DATA_10135_ _DATA_10142_ _DATA_10157_ _DATA_1016C_ _DATA_10181_ _DATA_1018E_ _DATA_1019B_
.dw _DATA_101AC_ _DATA_101BD_ _DATA_101CE_ _DATA_101DF_ _DATA_101F0_ _DATA_10201_ _DATA_10218_ _DATA_10231_
.dw _DATA_10248_ _DATA_10261_ _DATA_10278_ _DATA_10291_ _DATA_102A8_ _DATA_102C1_ _DATA_102CE_ _DATA_102DB_
.dw _DATA_102DB_ _DATA_102E6_ _DATA_102F3_ _DATA_10300_ _DATA_1030D_ _DATA_1031A_ _DATA_10327_ _DATA_10334_

; 1st entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10060 to 10060 (1 bytes)
_DATA_10060_:
.db $05

; Pointer Table from 10061 to 1006A (5 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10371_ _DATA_10389_ _DATA_103A1_

; 2nd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1006B to 1006B (1 bytes)
_DATA_1006B_:
.db $06

; Pointer Table from 1006C to 10077 (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_103B9_ _DATA_103D1_ _DATA_103E9_ _DATA_10401_

; 3rd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10078 to 10078 (1 bytes)
_DATA_10078_:
.db $06

; Pointer Table from 10079 to 10084 (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10419_ _DATA_10431_ _DATA_10449_ _DATA_10461_

; 4th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10085 to 10085 (1 bytes)
_DATA_10085_:
.db $05

; Pointer Table from 10086 to 1008F (5 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_104A9_ _DATA_104C1_ _DATA_104D9_

; 5th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10090 to 10090 (1 bytes)
_DATA_10090_:
.db $06

; Pointer Table from 10091 to 1009C (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_104F1_ _DATA_10509_ _DATA_10521_ _DATA_10539_

; 6th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1009D to 1009D (1 bytes)
_DATA_1009D_:
.db $06

; Pointer Table from 1009E to 100A9 (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10551_ _DATA_10569_ _DATA_10581_ _DATA_10599_

; 7th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 100AA to 100AA (1 bytes)
_DATA_100AA_:
.db $06

; Pointer Table from 100AB to 100B6 (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_105B1_ _DATA_105C9_ _DATA_105E1_ _DATA_105F9_

; 8th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 100B7 to 100B7 (1 bytes)
_DATA_100B7_:
.db $06

; Pointer Table from 100B8 to 100C3 (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10611_ _DATA_10629_ _DATA_10641_ _DATA_10659_

; 9th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 100C4 to 100C4 (1 bytes)
_DATA_100C4_:
.db $07

; Pointer Table from 100C5 to 100D2 (7 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10671_ _DATA_10689_ _DATA_106A1_ _DATA_106B9_ _DATA_106D1_

; 10th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 100D3 to 100D3 (1 bytes)
_DATA_100D3_:
.db $07

; Pointer Table from 100D4 to 100E1 (7 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10719_ _DATA_10731_ _DATA_10749_

; 11th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 100E2 to 100E2 (1 bytes)
_DATA_100E2_:
.db $05

; Pointer Table from 100E3 to 100EC (5 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10761_ _DATA_10779_ _DATA_10791_

; 12th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 100ED to 100ED (1 bytes)
_DATA_100ED_:
.db $05

; Pointer Table from 100EE to 100F7 (5 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10761_ _DATA_107A9_ _DATA_107C1_

; 13th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 100F8 to 100F8 (1 bytes)
_DATA_100F8_:
.db $05

; Pointer Table from 100F9 to 10102 (5 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_107D9_ _DATA_107F1_ _DATA_10809_

; 14th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10103 to 10103 (1 bytes)
_DATA_10103_:
.db $05

; Pointer Table from 10104 to 1010D (5 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10821_ _DATA_10839_ _DATA_10809_

; 15th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1010E to 1010E (1 bytes)
_DATA_1010E_:
.db $06

; Pointer Table from 1010F to 1011A (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10671_ _DATA_10851_ _DATA_10869_ _DATA_10791_

; 16th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1011B to 1011B (1 bytes)
_DATA_1011B_:
.db $06

; Pointer Table from 1011C to 10127 (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_107D9_ _DATA_10881_ _DATA_10899_ _DATA_10719_

; 17th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10128 to 10128 (1 bytes)
_DATA_10128_:
.db $06

; Pointer Table from 10129 to 10134 (6 entries, indexed by unknown)
.dw _DATA_109A1_ _DATA_109B9_ _DATA_109D1_ _DATA_109E9_ _DATA_10731_ _DATA_10A01_

; 18th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10135 to 10135 (1 bytes)
_DATA_10135_:
.db $06

; Pointer Table from 10136 to 10141 (6 entries, indexed by unknown)
.dw _DATA_109A1_ _DATA_10A19_ _DATA_10A31_ _DATA_10A49_ _DATA_10A61_ _DATA_10A79_

; 19th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10142 to 10142 (1 bytes)
_DATA_10142_:
.db $0A

; Pointer Table from 10143 to 10156 (10 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10731_ _DATA_10749_ _DATA_10A91_ _DATA_10AA9_
.dw _DATA_10AC1_ _DATA_10AD9_

; 20th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10157 to 10157 (1 bytes)
_DATA_10157_:
.db $0A

; Pointer Table from 10158 to 1016B (10 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10731_ _DATA_10749_ _DATA_10AF1_ _DATA_10B09_
.dw _DATA_10B21_ _DATA_10B39_

; 21st entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1016C to 1016C (1 bytes)
_DATA_1016C_:
.db $0A

; Pointer Table from 1016D to 10180 (10 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10731_ _DATA_10749_ _DATA_10B51_ _DATA_10B69_
.dw _DATA_10B81_ _DATA_10B99_

; 22nd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10181 to 10181 (1 bytes)
_DATA_10181_:
.db $06

; Pointer Table from 10182 to 1018D (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10BB1_ _DATA_10BC9_ _DATA_10BE1_ _DATA_10BF9_

; 23rd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1018E to 1018E (1 bytes)
_DATA_1018E_:
.db $06

; Pointer Table from 1018F to 1019A (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10C11_ _DATA_10C29_ _DATA_10C41_ _DATA_10C59_

; 24th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1019B to 1019B (1 bytes)
_DATA_1019B_:
.db $08

; Pointer Table from 1019C to 101AB (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10C71_ _DATA_10C89_ _DATA_10CA1_ _DATA_10CB9_ _DATA_10CD1_ _DATA_10CE9_

; 25th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 101AC to 101AC (1 bytes)
_DATA_101AC_:
.db $08

; Pointer Table from 101AD to 101BC (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10C71_ _DATA_10C89_ _DATA_10CA1_ _DATA_10D01_ _DATA_10CD1_ _DATA_10D19_

; 26th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 101BD to 101BD (1 bytes)
_DATA_101BD_:
.db $08

; Pointer Table from 101BE to 101CD (8 entries, indexed by unknown)
.dw _DATA_10D31_ _DATA_10D49_ _DATA_10D61_ _DATA_10D79_ _DATA_10D91_ _DATA_10DA9_ _DATA_10DC1_ _DATA_10DD9_

; 27th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 101CE to 101CE (1 bytes)
_DATA_101CE_:
.db $08

; Pointer Table from 101CF to 101DE (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_11679_ _DATA_11691_ _DATA_116A9_ _DATA_116C1_ _DATA_116D9_ _DATA_116F1_

; 28th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 101DF to 101DF (1 bytes)
_DATA_101DF_:
.db $08

; Pointer Table from 101E0 to 101EF (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_11679_ _DATA_11691_ _DATA_116A9_ _DATA_11709_ _DATA_11721_ _DATA_11739_

; 29th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 101F0 to 101F0 (1 bytes)
_DATA_101F0_:
.db $08

; Pointer Table from 101F1 to 10200 (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_11679_ _DATA_11691_ _DATA_116A9_ _DATA_11751_ _DATA_11769_ _DATA_11781_

; 30th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10201 to 10201 (1 bytes)
_DATA_10201_:
.db $0B

; Pointer Table from 10202 to 10217 (11 entries, indexed by unknown)
.dw _DATA_11079_ _DATA_11091_ _DATA_110A9_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_11121_
.dw _DATA_11139_ _DATA_11151_ _DATA_11169_

; 31st entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10218 to 10218 (1 bytes)
_DATA_10218_:
.db $0C

; Pointer Table from 10219 to 10230 (12 entries, indexed by unknown)
.dw _DATA_11181_ _DATA_11199_ _DATA_111B1_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_111C9_
.dw _DATA_11139_ _DATA_111E1_ _DATA_111F9_ _DATA_11211_

; 32nd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10231 to 10231 (1 bytes)
_DATA_10231_:
.db $0B

; Pointer Table from 10232 to 10247 (11 entries, indexed by unknown)
.dw _DATA_11229_ _DATA_11241_ _DATA_111B1_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_11259_
.dw _DATA_11139_ _DATA_111E1_ _DATA_11271_

; 33rd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10248 to 10248 (1 bytes)
_DATA_10248_:
.db $0C

; Pointer Table from 10249 to 10260 (12 entries, indexed by unknown)
.dw _DATA_11181_ _DATA_11199_ _DATA_111B1_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_11289_
.dw _DATA_112A1_ _DATA_111E1_ _DATA_112B9_ _DATA_112D1_

; 34th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10261 to 10261 (1 bytes)
_DATA_10261_:
.db $0B

; Pointer Table from 10262 to 10277 (11 entries, indexed by unknown)
.dw _DATA_112E9_ _DATA_11301_ _DATA_11319_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_11379_ _DATA_11391_
.dw _DATA_113A9_ _DATA_113C1_ _DATA_113D9_

; 35th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10278 to 10278 (1 bytes)
_DATA_10278_:
.db $0C

; Pointer Table from 10279 to 10290 (12 entries, indexed by unknown)
.dw _DATA_113F1_ _DATA_11409_ _DATA_11421_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_11379_ _DATA_11439_
.dw _DATA_113A9_ _DATA_11451_ _DATA_11469_ _DATA_112D1_

; 36th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10291 to 10291 (1 bytes)
_DATA_10291_:
.db $0B

; Pointer Table from 10292 to 102A7 (11 entries, indexed by unknown)
.dw _DATA_11481_ _DATA_11499_ _DATA_11421_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_11379_ _DATA_114B1_
.dw _DATA_113A9_ _DATA_114C9_ _DATA_114E1_

; 37th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 102A8 to 102A8 (1 bytes)
_DATA_102A8_:
.db $0C

; Pointer Table from 102A9 to 102C0 (12 entries, indexed by unknown)
.dw _DATA_113F1_ _DATA_11409_ _DATA_11421_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_114F9_ _DATA_11511_
.dw _DATA_113A9_ _DATA_11529_ _DATA_11541_ _DATA_112D1_

; 38th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 102C1 to 102C1 (1 bytes)
_DATA_102C1_:
.db $06

; Pointer Table from 102C2 to 102CD (6 entries, indexed by unknown)
.dw _DATA_108B1_ _DATA_108C9_ _DATA_10DF1_ _DATA_10E09_ _DATA_10E21_ _DATA_10E39_

; 39th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 102CE to 102CE (1 bytes)
_DATA_102CE_:
.db $06

; Pointer Table from 102CF to 102DA (6 entries, indexed by unknown)
.dw _DATA_109A1_ _DATA_109B9_ _DATA_10E51_ _DATA_10E69_ _DATA_10E81_ _DATA_10E99_

; 40th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 102DB to 102DB (1 bytes)
_DATA_102DB_:
.db $05

; Pointer Table from 102DC to 102E5 (5 entries, indexed by unknown)
.dw _DATA_10EB1_ _DATA_10EC9_ _DATA_10EE1_ _DATA_10EF9_ _DATA_10F11_

; 42nd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 102E6 to 102E6 (1 bytes)
_DATA_102E6_:
.db $06

; Pointer Table from 102E7 to 102F2 (6 entries, indexed by unknown)
.dw _DATA_10F29_ _DATA_10F41_ _DATA_10F59_ _DATA_10F71_ _DATA_10F89_ _DATA_10FA1_

; 43rd entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 102F3 to 102F3 (1 bytes)
_DATA_102F3_:
.db $06

; Pointer Table from 102F4 to 102FF (6 entries, indexed by unknown)
.dw _DATA_10F29_ _DATA_10F41_ _DATA_10FB9_ _DATA_10FD1_ _DATA_10FE9_ _DATA_11001_

; 44th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10300 to 10300 (1 bytes)
_DATA_10300_:
.db $06

; Pointer Table from 10301 to 1030C (6 entries, indexed by unknown)
.dw _DATA_10F29_ _DATA_10F41_ _DATA_11019_ _DATA_11031_ _DATA_11049_ _DATA_11061_

; 45th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1030D to 1030D (1 bytes)
_DATA_1030D_:
.db $06

; Pointer Table from 1030E to 10319 (6 entries, indexed by unknown)
.dw _DATA_11559_ _DATA_11571_ _DATA_11589_ _DATA_115A1_ _DATA_115B9_ _DATA_115D1_

; 46th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 1031A to 1031A (1 bytes)
_DATA_1031A_:
.db $06

; Pointer Table from 1031B to 10326 (6 entries, indexed by unknown)
.dw _DATA_11799_ _DATA_117B1_ _DATA_117C9_ _DATA_117E1_ _DATA_117F9_ _DATA_11811_

; 47th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10327 to 10327 (1 bytes)
_DATA_10327_:
.db $06

; Pointer Table from 10328 to 10333 (6 entries, indexed by unknown)
.dw _DATA_11799_ _DATA_117B1_ _DATA_11829_ _DATA_11841_ _DATA_11859_ _DATA_11871_

; 48th entry of Pointer Table from 10000 (indexed by v_alexTilesIndex)
; Data from 10334 to 10334 (1 bytes)
_DATA_10334_:
.db $06

; Pointer Table from 10335 to 10340 (6 entries, indexed by unknown)
.dw _DATA_11799_ _DATA_117B1_ _DATA_11889_ _DATA_118A1_ _DATA_118B9_ _DATA_118D1_

; 1st entry of Pointer Table from 10061 (indexed by unknown)
; Data from 10341 to 10358 (24 bytes)
_DATA_10341_:
.db $00 $07 $07 $00 $3F $38 $00 $7F $40 $00 $7F $40 $20 $FF $80 $31
.db $FF $80 $3C $67 $40 $2E $73 $50

; 2nd entry of Pointer Table from 10061 (indexed by unknown)
; Data from 10359 to 10370 (24 bytes)
_DATA_10359_:
.db $00 $C0 $C0 $00 $F0 $30 $00 $F8 $08 $00 $FC $04 $C0 $FC $04 $E0
.db $7E $82 $E0 $BE $42 $E0 $BE $42

; 3rd entry of Pointer Table from 10061 (indexed by unknown)
; Data from 10371 to 10388 (24 bytes)
_DATA_10371_:
.db $2E $73 $50 $7E $E3 $80 $7E $FF $80 $3E $7F $40 $01 $3E $3E $02
.db $06 $07 $04 $0E $0F $00 $0A $0F

; 4th entry of Pointer Table from 10061 (indexed by unknown)
; Data from 10389 to 103A0 (24 bytes)
_DATA_10389_:
.db $E0 $BC $44 $C0 $7E $82 $80 $FC $0C $00 $F0 $30 $80 $40 $40 $80
.db $20 $60 $80 $20 $60 $80 $20 $60

; 5th entry of Pointer Table from 10061 (indexed by unknown)
; Data from 103A1 to 103B8 (24 bytes)
_DATA_103A1_:
.db $1C $A2 $E2 $3C $FE $C2 $1C $BE $E2 $00 $5C $7C $00 $24 $3C $38
.db $7C $7C $78 $FC $FC $00 $FC $FC

; 3rd entry of Pointer Table from 1006C (indexed by unknown)
; Data from 103B9 to 103D0 (24 bytes)
_DATA_103B9_:
.db $2E $73 $50 $7E $E3 $80 $7E $FF $80 $3E $7F $40 $01 $3E $3E $02
.db $06 $07 $04 $0C $0F $00 $19 $1F

; 4th entry of Pointer Table from 1006C (indexed by unknown)
; Data from 103D1 to 103E8 (24 bytes)
_DATA_103D1_:
.db $E0 $BC $44 $C0 $7E $82 $80 $FC $0C $00 $F0 $30 $80 $40 $40 $80
.db $20 $60 $40 $10 $B0 $30 $08 $C8

; 5th entry of Pointer Table from 1006C (indexed by unknown)
; Data from 103E9 to 10400 (24 bytes)
_DATA_103E9_:
.db $20 $71 $5F $30 $78 $4F $00 $70 $7F $60 $E1 $FF $70 $F7 $FF $38
.db $7C $7C $10 $38 $38 $00 $10 $10

; 6th entry of Pointer Table from 1006C (indexed by unknown)
; Data from 10401 to 10418 (24 bytes)
_DATA_10401_:
.db $70 $38 $88 $70 $F8 $88 $00 $70 $F0 $60 $F0 $F0 $E0 $F0 $F0 $60
.db $F0 $F0 $20 $70 $70 $00 $30 $30

; 3rd entry of Pointer Table from 10079 (indexed by unknown)
; Data from 10419 to 10430 (24 bytes)
_DATA_10419_:
.db $2E $73 $50 $7E $E3 $80 $7E $FF $80 $3E $7F $40 $01 $3E $3E $05
.db $0C $0E $0A $18 $1D $0C $10 $13

; 4th entry of Pointer Table from 10079 (indexed by unknown)
; Data from 10431 to 10448 (24 bytes)
_DATA_10431_:
.db $E0 $BC $44 $C0 $7E $82 $80 $FC $0C $00 $F0 $30 $80 $40 $40 $00
.db $20 $E0 $00 $20 $E0 $00 $B0 $F0

; 5th entry of Pointer Table from 10079 (indexed by unknown)
; Data from 10449 to 10460 (24 bytes)
_DATA_10449_:
.db $1C $39 $23 $1C $3E $23 $08 $1C $17 $00 $7C $7F $78 $FF $FF $38
.db $7C $7C $10 $38 $38 $00 $10 $10

; 6th entry of Pointer Table from 10079 (indexed by unknown)
; Data from 10461 to 10478 (24 bytes)
_DATA_10461_:
.db $10 $38 $E8 $10 $38 $E8 $00 $10 $F0 $00 $10 $F0 $30 $38 $F8 $78
.db $FC $FC $70 $F8 $F8 $00 $F0 $F0

; 1st entry of Pointer Table from 10086 (indexed by unknown)
; Data from 10479 to 10490 (24 bytes)
_DATA_10479_:
.db $00 $07 $07 $00 $1F $18 $00 $3F $20 $00 $7F $40 $06 $7F $40 $0F
.db $FD $82 $0E $FB $84 $0E $FB $84

; 2nd entry of Pointer Table from 10086 (indexed by unknown)
; Data from 10491 to 104A8 (24 bytes)
_DATA_10491_:
.db $00 $C0 $C0 $00 $F8 $38 $00 $FC $04 $00 $FC $04 $08 $FE $02 $18
.db $FE $02 $78 $CC $04 $E8 $9C $14

; 3rd entry of Pointer Table from 10086 (indexed by unknown)
; Data from 104A9 to 104C0 (24 bytes)
_DATA_104A9_:
.db $0E $7B $44 $06 $FD $82 $02 $7F $60 $00 $1F $18 $03 $04 $04 $02
.db $08 $0D $02 $08 $0D $02 $08 $0D

; 4th entry of Pointer Table from 10086 (indexed by unknown)
; Data from 104C1 to 104D8 (24 bytes)
_DATA_104C1_:
.db $E8 $9C $14 $FC $8E $02 $FC $FE $02 $F8 $FC $04 $00 $F8 $F8 $80
.db $C0 $C0 $40 $E0 $E0 $00 $A0 $E0

; 5th entry of Pointer Table from 10086 (indexed by unknown)
; Data from 104D9 to 104F0 (24 bytes)
_DATA_104D9_:
.db $70 $8A $8E $78 $FE $86 $70 $FA $8E $00 $74 $7C $00 $48 $78 $38
.db $7C $7C $3C $7E $7E $00 $7E $7E

; 3rd entry of Pointer Table from 10091 (indexed by unknown)
; Data from 104F1 to 10508 (24 bytes)
_DATA_104F1_:
.db $0E $7B $44 $06 $FD $82 $02 $7F $60 $00 $1F $18 $03 $04 $04 $02
.db $08 $0D $04 $10 $1B $18 $21 $27

; 4th entry of Pointer Table from 10091 (indexed by unknown)
; Data from 10509 to 10520 (24 bytes)
_DATA_10509_:
.db $E8 $9C $14 $FC $8E $02 $FC $FE $02 $F8 $FC $04 $00 $F8 $F8 $80
.db $C0 $C0 $40 $60 $E0 $00 $30 $F0

; 5th entry of Pointer Table from 10091 (indexed by unknown)
; Data from 10521 to 10538 (24 bytes)
_DATA_10521_:
.db $70 $E4 $8F $70 $F8 $8F $00 $70 $7F $30 $7C $7F $38 $7F $7F $30
.db $79 $79 $20 $70 $70 $00 $60 $60

; 6th entry of Pointer Table from 10091 (indexed by unknown)
; Data from 10539 to 10550 (24 bytes)
_DATA_10539_:
.db $20 $70 $D0 $60 $F0 $90 $00 $70 $F0 $30 $38 $F8 $70 $78 $F8 $E0
.db $F0 $F0 $40 $E0 $E0 $00 $40 $40

; 3rd entry of Pointer Table from 1009E (indexed by unknown)
; Data from 10551 to 10568 (24 bytes)
_DATA_10551_:
.db $0E $7B $44 $06 $FD $82 $02 $7F $60 $00 $1F $18 $03 $04 $04 $01
.db $08 $0E $00 $08 $0F $00 $1A $1F

; 4th entry of Pointer Table from 1009E (indexed by unknown)
; Data from 10569 to 10580 (24 bytes)
_DATA_10569_:
.db $E8 $9C $14 $FC $8E $02 $FC $FE $02 $F8 $FC $04 $00 $F8 $F8 $40
.db $60 $E0 $A0 $30 $70 $60 $10 $90

; 5th entry of Pointer Table from 1009E (indexed by unknown)
; Data from 10581 to 10598 (24 bytes)
_DATA_10581_:
.db $20 $72 $5F $20 $71 $5F $00 $20 $3F $00 $20 $3F $30 $73 $7F $78
.db $FC $FC $38 $7C $7C $00 $3C $3C

; 6th entry of Pointer Table from 1009E (indexed by unknown)
; Data from 10599 to 105B0 (24 bytes)
_DATA_10599_:
.db $E0 $70 $10 $E0 $F0 $10 $40 $E0 $A0 $00 $F8 $F8 $78 $FC $FC $70
.db $F8 $F8 $20 $70 $70 $00 $20 $20

; 3rd entry of Pointer Table from 100AB (indexed by unknown)
; Data from 105B1 to 105C8 (24 bytes)
_DATA_105B1_:
.db $2E $73 $50 $7E $E3 $80 $7E $FF $80 $3E $7F $40 $03 $3F $3F $03
.db $07 $07 $00 $0C $0F $08 $14 $17

; 4th entry of Pointer Table from 100AB (indexed by unknown)
; Data from 105C9 to 105E0 (24 bytes)
_DATA_105C9_:
.db $E0 $BC $44 $C0 $7E $82 $80 $FC $0C $00 $F0 $30 $C0 $30 $30 $30
.db $08 $C8 $08 $04 $F4 $1C $2E $E2

; 5th entry of Pointer Table from 100AB (indexed by unknown)
; Data from 105E1 to 105F8 (24 bytes)
_DATA_105E1_:
.db $40 $E0 $BF $0C $4C $7F $38 $7C $7F $00 $3B $3B
.dsb 12, $00

; 6th entry of Pointer Table from 100AB (indexed by unknown)
; Data from 105F9 to 10610 (24 bytes)
_DATA_105F9_:
.db $70 $F8 $C8 $60 $70 $F0 $E0 $F0 $F0 $00 $E0 $E0
.dsb 12, $00

; 3rd entry of Pointer Table from 100B8 (indexed by unknown)
; Data from 10611 to 10628 (24 bytes)
_DATA_10611_:
.db $0E $7B $44 $06 $FD $82 $02 $7F $60 $00 $1F $18 $07 $19 $19 $19
.db $21 $27 $20 $40 $5F $70 $E8 $8F

; 4th entry of Pointer Table from 100B8 (indexed by unknown)
; Data from 10629 to 10640 (24 bytes)
_DATA_10629_:
.db $E8 $9C $14 $FC $8E $02 $FC $FE $02 $F8 $FC $04 $80 $F8 $F8 $80
.db $C0 $C0 $00 $60 $E0 $20 $50 $D0

; 5th entry of Pointer Table from 100B8 (indexed by unknown)
; Data from 10641 to 10658 (24 bytes)
_DATA_10641_:
.db $70 $F8 $9F $31 $71 $7F $38 $79 $7F $00 $3E $3E
.dsb 12, $00

; 6th entry of Pointer Table from 100B8 (indexed by unknown)
; Data from 10659 to 10670 (24 bytes)
_DATA_10659_:
.db $10 $38 $E8 $80 $90 $F0 $E0 $F0 $F0 $00 $E0 $E0
.dsb 12, $00

; 3rd entry of Pointer Table from 1010F (indexed by unknown)
; Data from 10671 to 10688 (24 bytes)
_DATA_10671_:
.db $00 $3F $3F $3F $7F $40 $7F $FF $80 $7F $FF $80 $67 $FF $98 $7A
.db $FF $85 $36 $7E $48 $00 $3E $3E

; 4th entry of Pointer Table from 100C5 (indexed by unknown)
; Data from 10689 to 106A0 (24 bytes)
_DATA_10689_:
.db $2E $73 $50 $7E $E3 $80 $7E $FF $80 $BE $7F $40 $80 $3E $7F $03
.db $C3 $FF $03 $33 $3F $00 $08 $0F

; 5th entry of Pointer Table from 100C5 (indexed by unknown)
; Data from 106A1 to 106B8 (24 bytes)
_DATA_106A1_:
.db $E0 $BC $44 $C0 $7E $82 $80 $FC $0C $00 $F0 $30 $60 $08 $98 $10
.db $04 $EC $38 $44 $C4 $38 $7C $C4

; 6th entry of Pointer Table from 100C5 (indexed by unknown)
; Data from 106B9 to 106D0 (24 bytes)
_DATA_106B9_:
.db $00 $10 $1F $00 $10 $1F $00 $20 $3F $00 $22 $3F $38 $7D $7D $78
.db $FD $FD $00 $F8 $F8 $00 $00 $00

; 7th entry of Pointer Table from 100C5 (indexed by unknown)
; Data from 106D1 to 106E8 (24 bytes)
_DATA_106D1_:
.db $70 $F8 $88 $00 $70 $F0 $00 $20 $E0 $00 $20 $E0 $E0 $F0 $F0 $F0
.db $F8 $F8 $00 $F8 $F8 $00 $00 $00

; 3rd entry of Pointer Table from 100D4 (indexed by unknown)
; Data from 106E9 to 10700 (24 bytes)
_DATA_106E9_:
.db $0E $7B $44 $06 $FD $82 $02 $7F $60 $00 $1F $18 $0C $20 $33 $11
.db $41 $6F $39 $45 $47 $38 $7C $47

; 4th entry of Pointer Table from 100D4 (indexed by unknown)
; Data from 10701 to 10718 (24 bytes)
_DATA_10701_:
.db $E8 $9D $15 $FD $8F $02 $FD $FF $02 $FB $FD $04 $03 $F9 $FC $80
.db $87 $FF $80 $98 $F8 $00 $20 $E0

; 6th entry of Pointer Table from 1011C (indexed by unknown)
; Data from 10719 to 10730 (24 bytes)
_DATA_10719_:
.db $00 $F8 $F8 $F8 $FC $04 $FC $FE $02 $FC $FE $02 $CC $FE $32 $BC
.db $FE $42 $D8 $FC $24 $00 $F8 $F8

; 5th entry of Pointer Table from 10129 (indexed by unknown)
; Data from 10731 to 10748 (24 bytes)
_DATA_10731_:
.db $70 $F8 $8F $00 $70 $7F $00 $20 $3F $00 $22 $3F $38 $7D $7D $78
.db $FD $FD $00 $F8 $F8 $00 $00 $00

; 7th entry of Pointer Table from 100D4 (indexed by unknown)
; Data from 10749 to 10760 (24 bytes)
_DATA_10749_:
.db $00 $40 $C0 $00 $40 $C0 $00 $20 $E0 $00 $20 $E0 $E0 $F0 $F0 $F0
.db $F8 $F8 $00 $F8 $F8 $00 $00 $00

; 3rd entry of Pointer Table from 100E3 (indexed by unknown)
; Data from 10761 to 10778 (24 bytes)
_DATA_10761_:
.db $2E $73 $50 $7E $E3 $80 $7E $FF $80 $3E $7F $40 $01 $3E $3E $1C
.db $38 $23 $00 $1F $1F $00 $00 $00

; 4th entry of Pointer Table from 100E3 (indexed by unknown)
; Data from 10779 to 10790 (24 bytes)
_DATA_10779_:
.db $E0 $BC $44 $C0 $7E $82 $80 $FF $0F $00 $F0 $3F $80 $00 $7F $00
.db $00 $FF $00 $83 $FF $00 $7C $7C

; 5th entry of Pointer Table from 100E3 (indexed by unknown)
; Data from 10791 to 107A8 (24 bytes)
_DATA_10791_:
.db $00 $00 $00 $00 $00 $00 $00 $F0 $F0 $30 $3C $FC $1C $1E $FE $00
.db $FC $FC $00 $00 $00 $00 $00 $00

; 4th entry of Pointer Table from 100EE (indexed by unknown)
; Data from 107A9 to 107C0 (24 bytes)
_DATA_107A9_:
.db $E0 $BE $46 $C0 $7F $83 $80 $FC $0F $00 $F0 $3F $80 $00 $7F $00
.db $00 $FF $00 $83 $FF $00 $7C $7C

; 5th entry of Pointer Table from 100EE (indexed by unknown)
; Data from 107C1 to 107D8 (24 bytes)
_DATA_107C1_:
.db $00 $E0 $E0 $60 $78 $F8 $38 $3C $FC $00 $F8 $F8 $60 $78 $F8 $78
.db $7C $FC $00 $F8 $F8 $00 $00 $00

; 3rd entry of Pointer Table from 100F9 (indexed by unknown)
; Data from 107D9 to 107F0 (24 bytes)
_DATA_107D9_:
.db $00 $00 $00 $00 $00 $00 $00 $1F $1F $18 $78 $7F $70 $F0 $FF $00
.db $7E $7F $00 $01 $01 $00 $00 $00

; 4th entry of Pointer Table from 100F9 (indexed by unknown)
; Data from 107F1 to 10808 (24 bytes)
_DATA_107F1_:
.db $0E $7B $44 $06 $FD $82 $02 $FF $E0 $00 $1F $F8 $03 $00 $FC $00
.db $00 $FF $00 $83 $FF $00 $7C $7C

; 5th entry of Pointer Table from 100F9 (indexed by unknown)
; Data from 10809 to 10820 (24 bytes)
_DATA_10809_:
.db $E8 $9C $14 $FC $8E $02 $FC $FE $02 $F8 $FC $04 $00 $F8 $F8 $70
.db $38 $88 $00 $F0 $F0 $00 $00 $00

; 3rd entry of Pointer Table from 10104 (indexed by unknown)
; Data from 10821 to 10838 (24 bytes)
_DATA_10821_:
.db $00 $1D $1D $18 $7B $7F $70 $F0 $FF $00 $7C $7F $18 $78 $7F $78
.db $F8 $FF $00 $7F $7F $00 $00 $00

; 4th entry of Pointer Table from 10104 (indexed by unknown)
; Data from 10839 to 10850 (24 bytes)
_DATA_10839_:
.db $1D $F7 $88 $0D $FB $04 $05 $FF $C0 $01 $3F $F0 $06 $01 $F9 $00
.db $00 $FF $00 $07 $FF $00 $F8 $F8

; 4th entry of Pointer Table from 1010F (indexed by unknown)
; Data from 10851 to 10868 (24 bytes)
_DATA_10851_:
.db $2E $73 $50 $7E $E3 $80 $7E $FF $80 $BE $7F $40 $80 $3F $7F $03
.db $FF $FC $03 $07 $04 $00 $03 $03

; 5th entry of Pointer Table from 1010F (indexed by unknown)
; Data from 10869 to 10880 (24 bytes)
_DATA_10869_:
.db $E0 $BC $44 $C0 $7E $82 $80 $FF $0F $00 $F0 $3F $A0 $00 $5F $C0
.db $00 $3F $80 $03 $7F $00 $FC $FC

; 4th entry of Pointer Table from 1011C (indexed by unknown)
; Data from 10881 to 10898 (24 bytes)
_DATA_10881_:
.db $0E $7B $44 $06 $FD $82 $02 $FF $E0 $00 $1F $F8 $0A $01 $F5 $07
.db $01 $F8 $03 $81 $FC $00 $7F $7F

; 5th entry of Pointer Table from 1011C (indexed by unknown)
; Data from 10899 to 108B0 (24 bytes)
_DATA_10899_:
.db $E8 $9C $14 $FC $8F $03 $FD $FF $02 $FB $FD $04 $03 $F9 $FC $81
.db $FF $7E $80 $C1 $41 $00 $80 $80

; 1st entry of Pointer Table from 102C2 (indexed by unknown)
; Data from 108B1 to 108C8 (24 bytes)
_DATA_108B1_:
.db $00 $07 $07 $00 $1F $18 $00 $3F $20 $00 $7F $40 $0C $7F $40 $1F
.db $FF $80 $3F $EC $80 $1D $6E $62

; 2nd entry of Pointer Table from 102C2 (indexed by unknown)
; Data from 108C9 to 109A0 (216 bytes)
_DATA_108C9_:
.db $00 $E0 $E0 $00 $F8 $18 $00 $FC $04 $00 $FC $04 $18 $FE $06 $38
.db $EE $12 $98 $EE $12 $D8 $6E $12 $0E $37 $31 $3F $66 $40 $3F $73
.db $4C $5F $FF $A0 $60 $FF $9F $73 $E3 $8F $03 $7B $7F $00 $08 $0F
.db $EC $37 $09 $E8 $3F $01 $E0 $FF $01 $C0 $FE $06 $30 $C4 $CC $08
.db $02 $F6 $1C $22 $E2 $1C $3E $E2 $00 $20 $3F $00 $20 $3F $00 $24
.db $3F $00 $26 $3F $38 $7D $7D $78 $FD $FD $00 $F8 $F8 $00 $00 $00
.db $00 $07 $07 $00 $1F $18 $00 $3F $20 $00 $7F $40 $0C $7F $40 $1F
.db $FF $80 $3F $EC $80 $3F $4C $40 $0E $37 $31 $2E $77 $51 $3F $73
.db $4C $1F $3F $20 $00 $1F $1F $0B $73 $77 $73 $C3 $8F $70 $E8 $8F
.db $EC $37 $09 $E8 $3F $01 $E0 $FF $01 $C0 $FE $06 $18 $C4 $E4 $04
.db $02 $FA $08 $62 $F6 $70 $E2 $8E $70 $E8 $8F $00 $78 $7F $00 $09
.db $0F $00 $09 $0F $0E $1F $1F $1E $3F $3F $00 $3E $3E $00 $00 $00
.db $78 $F4 $84 $30 $78 $C8 $00 $38 $F8 $00 $88 $F8 $38 $7C $7C $3C
.db $7E $7E $00 $3E $3E $00 $00 $00

; 1st entry of Pointer Table from 10129 (indexed by unknown)
; Data from 109A1 to 109B8 (24 bytes)
_DATA_109A1_:
.db $00 $0F $0F $00 $3F $30 $00 $7F $40 $00 $7F $40 $30 $FF $C0 $39
.db $EF $90 $33 $EE $90 $37 $EC $90

; 2nd entry of Pointer Table from 10129 (indexed by unknown)
; Data from 109B9 to 109D0 (24 bytes)
_DATA_109B9_:
.db $00 $C0 $C0 $00 $F0 $30 $00 $F8 $08 $00 $FC $04 $60 $FC $04 $F0
.db $FE $02 $F8 $6E $02 $70 $EC $8C

; 3rd entry of Pointer Table from 10129 (indexed by unknown)
; Data from 109D1 to 109E8 (24 bytes)
_DATA_109D1_:
.db $37 $EC $90 $17 $FC $80 $07 $FF $80 $03 $7F $60 $0C $23 $33 $10
.db $40 $6F $38 $44 $47 $38 $7C $47

; 4th entry of Pointer Table from 10129 (indexed by unknown)
; Data from 109E9 to 10A00 (24 bytes)
_DATA_109E9_:
.db $70 $EC $8C $FC $66 $02 $FC $CE $32 $FA $FF $05 $06 $FF $F9 $CE
.db $C7 $F1 $C0 $DE $FE $00 $10 $F0

; 6th entry of Pointer Table from 10129 (indexed by unknown)
; Data from 10A01 to 10A18 (24 bytes)
_DATA_10A01_:
.db $00 $20 $E0 $00 $20 $E0 $00 $20 $E0 $00 $20 $E0 $E0 $F0 $F0 $F0
.db $F8 $F8 $00 $F8 $F8 $00 $00 $00

; 2nd entry of Pointer Table from 10136 (indexed by unknown)
; Data from 10A19 to 10A30 (24 bytes)
_DATA_10A19_:
.db $00 $C0 $C0 $00 $F0 $30 $00 $F8 $08 $00 $FC $04 $60 $FC $04 $F0
.db $FE $02 $F8 $6E $02 $F8 $64 $04

; 3rd entry of Pointer Table from 10136 (indexed by unknown)
; Data from 10A31 to 10A48 (24 bytes)
_DATA_10A31_:
.db $37 $EC $90 $17 $FC $80 $07 $FF $80 $03 $7F $60 $18 $23 $27 $20
.db $40 $5F $10 $46 $6F $0E $47 $71

; 4th entry of Pointer Table from 10136 (indexed by unknown)
; Data from 10A49 to 10A60 (24 bytes)
_DATA_10A49_:
.db $70 $EC $8C $74 $EE $8A $FC $CE $32 $F8 $FC $04 $00 $F8 $F8 $D0
.db $CE $EE $CE $C3 $F1 $0E $17 $F1

; 5th entry of Pointer Table from 10136 (indexed by unknown)
; Data from 10A61 to 10A78 (24 bytes)
_DATA_10A61_:
.db $3C $5E $43 $18 $3C $27 $00 $39 $3F $00 $23 $3F $38 $7D $7D $78
.db $FD $FD $00 $F8 $F8 $00 $00 $00

; 6th entry of Pointer Table from 10136 (indexed by unknown)
; Data from 10A79 to 10A90 (24 bytes)
_DATA_10A79_:
.db $1C $2E $E2 $00 $3C $FC $00 $20 $E0 $00 $20 $E0 $E0 $F0 $F0 $F0
.db $F8 $F8 $00 $F8 $F8 $00 $00 $00

; 7th entry of Pointer Table from 10143 (indexed by unknown)
; Data from 10A91 to 10AA8 (24 bytes)
_DATA_10A91_:
.db $00 $00 $00 $00 $00 $00 $00 $0E $0E $0E $3F $31 $3F $7F $40 $7F
.db $FF $80 $FF $FF $00 $FF $FF $00

; 8th entry of Pointer Table from 10143 (indexed by unknown)
; Data from 10AA9 to 10AC0 (24 bytes)
_DATA_10AA9_:
.dsb 10, $00
.db $80 $80 $80 $C0 $40 $C0 $E0 $20 $80 $E0 $60 $C0 $F0 $30

; 9th entry of Pointer Table from 10143 (indexed by unknown)
; Data from 10AC1 to 10AD8 (24 bytes)
_DATA_10AC1_:
.db $F3 $FF $0C $EC $FF $13 $EF $FF $10 $F3 $FF $0C $7C $FF $83 $1C
.db $7E $62 $00 $1C $1C $00 $00 $00

; 10th entry of Pointer Table from 10143 (indexed by unknown)
; Data from 10AD9 to 10AF0 (24 bytes)
_DATA_10AD9_:
.db $E0 $F0 $10 $E0 $F0 $10 $E0 $F0 $10 $C0 $E0 $20 $00 $C0 $C0
.dsb 9, $00

; 7th entry of Pointer Table from 10158 (indexed by unknown)
; Data from 10AF1 to 10B08 (24 bytes)
_DATA_10AF1_:
.db $00 $00 $00 $00 $00 $00 $00 $0F $0F $0F $3F $30 $3F $7F $40 $7F
.db $FF $80 $FF $FF $00 $FF $FF $00

; 8th entry of Pointer Table from 10158 (indexed by unknown)
; Data from 10B09 to 10B20 (24 bytes)
_DATA_10B09_:
.dsb 10, $00
.db $80 $80 $80 $FE $7E $FE $FF $01 $FE $FF $01 $80 $FE $7E

; 9th entry of Pointer Table from 10158 (indexed by unknown)
; Data from 10B21 to 10B38 (24 bytes)
_DATA_10B21_:
.db $FF $FF $00 $E3 $FF $1C $EC $FF $13 $F2 $FF $0D $7C $FE $82 $1C
.db $7E $62 $00 $1C $1C $00 $00 $00

; 10th entry of Pointer Table from 10158 (indexed by unknown)
; Data from 10B39 to 10B50 (24 bytes)
_DATA_10B39_:
.db $E0 $F8 $18 $F8 $FE $06 $7E $FF $81 $0E $7F $71 $00 $0E $0E
.dsb 9, $00

; 7th entry of Pointer Table from 1016D (indexed by unknown)
; Data from 10B51 to 10B68 (24 bytes)
_DATA_10B51_:
.db $00 $18 $18 $18 $3C $24 $18 $3F $27 $31 $7F $4E $37 $7F $48 $7E
.db $FF $81 $FF $FF $00 $FF $FF $00

; 8th entry of Pointer Table from 1016D (indexed by unknown)
; Data from 10B69 to 10B80 (24 bytes)
_DATA_10B69_:
.db $00 $30 $30 $30 $F8 $C8 $F0 $F8 $08 $C0 $F0 $30 $80 $DC $5C $1C
.db $FE $E2 $FC $FE $02 $E0 $FC $1C

; 9th entry of Pointer Table from 1016D (indexed by unknown)
; Data from 10B81 to 10B98 (24 bytes)
_DATA_10B81_:
.db $FE $FF $01 $FF $FF $00 $FF $FF $00 $F1 $FF $0E $78 $FD $85 $3C
.db $7E $42 $1C $3E $22 $00 $1C $1C

; 10th entry of Pointer Table from 1016D (indexed by unknown)
; Data from 10B99 to 10BB0 (24 bytes)
_DATA_10B99_:
.db $00 $E0 $E0 $00 $C0 $C0 $C0 $F8 $38 $F8 $FC $04 $38 $FC $C4 $00
.db $38 $38 $00 $00 $00 $00 $00 $00

; 3rd entry of Pointer Table from 10182 (indexed by unknown)
; Data from 10BB1 to 10BC8 (24 bytes)
_DATA_10BB1_:
.db $17 $39 $28 $3F $71 $40 $3F $7F $40 $1F $7F $60 $60 $FF $9F $71
.db $E3 $8F $02 $7E $7F $00 $64 $67

; 4th entry of Pointer Table from 10182 (indexed by unknown)
; Data from 10BC9 to 10BE0 (24 bytes)
_DATA_10BC9_:
.db $70 $DE $22 $60 $BF $41 $40 $FE $3E $0C $C6 $F2 $FE $07 $01 $0E
.db $07 $F1 $00 $3E $FE $00 $08 $F8

; 5th entry of Pointer Table from 10182 (indexed by unknown)
; Data from 10BE1 to 10BF8 (24 bytes)
_DATA_10BE1_:
.db $40 $F8 $FF $60 $E0 $FF $60 $E0 $FF $60 $E3 $FF $00 $7C $7C
.dsb 9, $00

; 6th entry of Pointer Table from 10182 (indexed by unknown)
; Data from 10BF9 to 10C10 (24 bytes)
_DATA_10BF9_:
.db $00 $18 $F8 $08 $3C $FC $18 $7C $FC $18 $9C $FC $08 $7C $7C $00
.db $0C $0C $00 $00 $00 $00 $00 $00

; 3rd entry of Pointer Table from 1018F (indexed by unknown)
; Data from 10C11 to 10C28 (24 bytes)
_DATA_10C11_:
.db $0E $7B $44 $06 $FD $82 $02 $7F $7C $30 $63 $4F $7F $E0 $80 $70
.db $E0 $8F $00 $7C $7F $00 $10 $1F

; 4th entry of Pointer Table from 1018F (indexed by unknown)
; Data from 10C29 to 10C40 (24 bytes)
_DATA_10C29_:
.db $E8 $9C $14 $FC $8E $02 $FC $FE $02 $F8 $FE $06 $06 $FF $F9 $8E
.db $C7 $F1 $40 $7E $FE $00 $26 $E6

; 5th entry of Pointer Table from 1018F (indexed by unknown)
; Data from 10C41 to 10C58 (24 bytes)
_DATA_10C41_:
.db $00 $60 $7F $40 $F0 $FF $60 $F8 $FF $60 $E7 $FF $40 $F8 $F8 $00
.db $C0 $C0 $00 $00 $00 $00 $00 $00

; 6th entry of Pointer Table from 1018F (indexed by unknown)
; Data from 10C59 to 10C70 (24 bytes)
_DATA_10C59_:
.db $08 $7C $FC $18 $1C $FC $18 $1C $FC $18 $1C $FC $00 $F8 $F8
.dsb 9, $00

; 3rd entry of Pointer Table from 1019C (indexed by unknown)
; Data from 10C71 to 10C88 (24 bytes)
_DATA_10C71_:
.db $07 $3D $22 $03 $7E $41 $01 $3F $30 $00 $0F $0D $01 $02 $02 $00
.db $3C $3F $38 $45 $7F $78 $84 $C7

; 4th entry of Pointer Table from 1019C (indexed by unknown)
; Data from 10C89 to 10CA0 (24 bytes)
_DATA_10C89_:
.db $74 $CE $0A $7E $C7 $01 $7E $FF $01 $1D $FF $E3 $83 $1F $7F $6D
.db $06 $93 $1E $87 $E1 $0A $67 $F5

; 5th entry of Pointer Table from 1019C (indexed by unknown)
; Data from 10CA1 to 10CB8 (24 bytes)
_DATA_10CA1_:
.db $00 $00 $00 $00 $00 $00 $00 $80 $80 $80 $C0 $C0 $C0 $E0 $E0 $E0
.db $10 $90 $E0 $10 $90 $C0 $20 $E0

; 6th entry of Pointer Table from 1019C (indexed by unknown)
; Data from 10CB9 to 10CD0 (24 bytes)
_DATA_10CB9_:
.db $0C $32 $33 $02 $7D $7D $18 $E7 $E7 $26 $C1 $C1 $27 $C0 $C0 $18
.db $E7 $E7 $00 $7E $7E $00 $3C $3C

; 7th entry of Pointer Table from 1019C (indexed by unknown)
; Data from 10CD1 to 10CE8 (24 bytes)
_DATA_10CD1_:
.db $00 $0F $FF $01 $02 $FF $63 $E4 $FC $F7 $F8 $F8 $7B $FC $FC $03
.db $7C $7C $00 $03 $03 $00 $00 $00

; 8th entry of Pointer Table from 1019C (indexed by unknown)
; Data from 10CE9 to 10D00 (24 bytes)
_DATA_10CE9_:
.db $CC $30 $F0 $A2 $5C $DC $18 $E7 $E7 $24 $C3 $C3 $24 $C3 $C3 $18
.db $E7 $E7 $00 $7E $7E $00 $3C $3C

; 6th entry of Pointer Table from 101AD (indexed by unknown)
; Data from 10D01 to 10D18 (24 bytes)
_DATA_10D01_:
.db $00 $3E $3F $00 $7F $7F $19 $E6 $E6 $27 $C0 $C0 $27 $C0 $C0 $18
.db $E7 $E7 $00 $7E $7E $00 $3C $3C

; 8th entry of Pointer Table from 101AD (indexed by unknown)
; Data from 10D19 to 10D30 (24 bytes)
_DATA_10D19_:
.db $C0 $3C $FC $A0 $5E $DE $19 $E6 $E6 $25 $C2 $C2 $25 $C2 $C2 $18
.db $E7 $E7 $00 $7E $7E $00 $3C $3C

; 1st entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10D31 to 10D48 (24 bytes)
_DATA_10D31_:
.db $00 $07 $07 $00 $1F $18 $00 $3F $20 $00 $7F $40 $00 $7F $40 $08
.db $FF $80 $1D $F3 $8C $1D $F7 $88

; 2nd entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10D49 to 10D60 (24 bytes)
_DATA_10D49_:
.db $00 $C0 $C0 $00 $F0 $30 $00 $F8 $08 $20 $F8 $08 $70 $F8 $08 $70
.db $98 $08 $D8 $3C $24 $CC $3E $32

; 3rd entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10D61 to 10D78 (24 bytes)
_DATA_10D61_:
.db $1D $F7 $88 $0E $79 $46 $06 $7F $40 $00 $3F $37 $03 $1C $1C $00
.db $38 $3F $30 $48 $7F $70 $8C $CF

; 4th entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10D79 to 10D90 (24 bytes)
_DATA_10D79_:
.db $FC $9F $03 $FB $FF $07 $E7 $FF $1F $07 $FC $FF $FB $1C $07 $3B
.db $1C $C7 $06 $F9 $FF $0E $11 $FF

; 5th entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10D91 to 10DA8 (24 bytes)
_DATA_10D91_:
.db $00 $80 $80 $80 $C0 $C0 $C0 $20 $20 $C0 $20 $A0 $98 $60 $E0 $C4
.db $38 $38 $30 $CE $CE $48 $86 $86

; 6th entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10DA9 to 10DC0 (24 bytes)
_DATA_10DA9_:
.db $0C $32 $33 $02 $7D $7D $18 $E7 $E7 $27 $C0 $C0 $26 $C1 $C1 $18
.db $E7 $E7 $00 $7E $7E $00 $3C $3C

; 7th entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10DC1 to 10DD8 (24 bytes)
_DATA_10DC1_:
.db $03 $0C $FC $1F $98 $F8 $7B $FC $FC $63 $FC $FC $00 $E3 $E3
.dsb 9, $00

; 8th entry of Pointer Table from 101BE (indexed by unknown)
; Data from 10DD9 to 10DF0 (24 bytes)
_DATA_10DD9_:
.db $24 $C3 $C3 $18 $E7 $E7 $80 $7E $7E $00 $BC $BC
.dsb 12, $00

; 3rd entry of Pointer Table from 102C2 (indexed by unknown)
; Data from 10DF1 to 10E08 (24 bytes)
_DATA_10DF1_:
.db $1D $6E $62 $7F $CC $80 $7F $E7 $98 $3F $7F $40 $00 $3F $3F $06
.db $26 $3F $26 $46 $5F $40 $90 $BF

; 4th entry of Pointer Table from 102C2 (indexed by unknown)
; Data from 10E09 to 10E20 (24 bytes)
_DATA_10E09_:
.db $D8 $6E $12 $D0 $7E $02 $C0 $FE $02 $80 $FC $0C $30 $88 $C8 $08
.db $04 $F4 $08 $44 $F4 $04 $22 $FA

; 5th entry of Pointer Table from 102C2 (indexed by unknown)
; Data from 10E21 to 10E38 (24 bytes)
_DATA_10E21_:
.db $70 $88 $8F $60 $F8 $9F $00 $69 $6F $00 $09 $0F $00 $09 $0F $0E
.db $1F $1F $1E $3F $3F $00 $3F $3F

; 6th entry of Pointer Table from 102C2 (indexed by unknown)
; Data from 10E39 to 10E50 (24 bytes)
_DATA_10E39_:
.db $0E $11 $F1 $0E $1F $F1 $00 $0E $FE $00 $88 $F8 $00 $88 $F8 $70
.db $F8 $F8 $78 $FC $FC $00 $FC $FC

; 3rd entry of Pointer Table from 102CF (indexed by unknown)
; Data from 10E51 to 10E68 (24 bytes)
_DATA_10E51_:
.db $37 $EC $90 $17 $FC $80 $07 $FF $80 $03 $7F $60 $18 $23 $27 $20
.db $40 $5F $20 $44 $5F $40 $88 $BF

; 4th entry of Pointer Table from 102CF (indexed by unknown)
; Data from 10E69 to 10E80 (24 bytes)
_DATA_10E69_:
.db $70 $EC $8C $FC $66 $02 $FC $CE $32 $F8 $FC $04 $00 $F8 $F8 $C0
.db $C8 $F8 $C8 $C4 $F4 $04 $12 $FA

; 5th entry of Pointer Table from 102CF (indexed by unknown)
; Data from 10E81 to 10E98 (24 bytes)
_DATA_10E81_:
.db $70 $88 $8F $70 $F8 $8F $00 $70 $7F $00 $11 $1F $00 $11 $1F $0E
.db $1F $1F $1E $3F $3F $00 $3F $3F

; 6th entry of Pointer Table from 102CF (indexed by unknown)
; Data from 10E99 to 10EB0 (24 bytes)
_DATA_10E99_:
.db $0E $11 $F1 $06 $1F $F9 $00 $96 $F6 $00 $90 $F0 $00 $90 $F0 $70
.db $F8 $F8 $78 $FC $FC $00 $FC $FC

; 1st entry of Pointer Table from 102DC (indexed by unknown)
; Data from 10EB1 to 10EC8 (24 bytes)
_DATA_10EB1_:
.db $00 $07 $07 $07 $18 $18 $1E $21 $20 $37 $48 $40 $39 $46 $40 $72
.db $8D $80 $54 $AB $80 $74 $8B $80

; 2nd entry of Pointer Table from 102DC (indexed by unknown)
; Data from 10EC9 to 10EE0 (24 bytes)
_DATA_10EC9_:
.db $00 $C0 $C0 $C0 $38 $38 $F8 $04 $04 $B0 $4C $04 $EC $12 $02 $94
.db $6A $02 $48 $B4 $04 $A8 $54 $04

; 3rd entry of Pointer Table from 102DC (indexed by unknown)
; Data from 10EE1 to 10EF8 (24 bytes)
_DATA_10EE1_:
.db $34 $4B $40 $6A $95 $80 $1C $63 $60 $05 $1A $18 $03 $04 $04 $07
.db $08 $08 $06 $09 $08 $07 $08 $08

; 4th entry of Pointer Table from 102DC (indexed by unknown)
; Data from 10EF9 to 10F10 (24 bytes)
_DATA_10EF9_:
.db $A8 $54 $04 $8C $72 $02 $F4 $0A $02 $D8 $24 $04 $40 $B8 $38 $80
.db $40 $40 $C0 $20 $20 $80 $60 $20

; 5th entry of Pointer Table from 102DC (indexed by unknown)
; Data from 10F11 to 10F28 (24 bytes)
_DATA_10F11_:
.db $3C $C2 $82 $74 $8A $82 $5C $A2 $82 $38 $44 $44 $30 $48 $48 $28
.db $54 $44 $3C $42 $42 $00 $7E $7E

; 1st entry of Pointer Table from 102E7 (indexed by unknown)
; Data from 10F29 to 10F40 (24 bytes)
_DATA_10F29_:
.db $07 $00 $00 $18 $00 $00 $20 $00 $00 $61 $00 $00 $96 $00 $00 $A8
.db $00 $00 $B6 $00 $00 $AA $00 $00

; 2nd entry of Pointer Table from 102E7 (indexed by unknown)
; Data from 10F41 to 10F58 (24 bytes)
_DATA_10F41_:
.db $E0 $00 $00 $18 $00 $00 $04 $00 $00 $86 $00 $00 $69 $00 $00 $15
.db $00 $00 $6D $00 $00 $55 $00 $00

; 3rd entry of Pointer Table from 102E7 (indexed by unknown)
; Data from 10F59 to 10F70 (24 bytes)
_DATA_10F59_:
.db $AA $00 $00 $EE $00 $00 $61 $00 $00 $30 $00 $00 $0F $00 $00 $11
.db $00 $00 $21 $00 $00 $48 $00 $00

; 4th entry of Pointer Table from 102E7 (indexed by unknown)
; Data from 10F71 to 10F88 (24 bytes)
_DATA_10F71_:
.db $55 $00 $00 $77 $00 $00 $86 $00 $00 $0C $00 $00 $F0 $00 $00 $88
.db $00 $00 $84 $00 $00 $12 $00 $00

; 5th entry of Pointer Table from 102E7 (indexed by unknown)
; Data from 10F89 to 10FA0 (24 bytes)
_DATA_10F89_:
.db $F0 $00 $00 $90 $00 $00 $BB $00 $00 $4B $00 $00 $1F $00 $00 $23
.db $00 $00 $43 $00 $00 $7F $00 $00

; 6th entry of Pointer Table from 102E7 (indexed by unknown)
; Data from 10FA1 to 10FB8 (24 bytes)
_DATA_10FA1_:
.db $3C $00 $00 $24 $00 $00 $74 $00 $00 $48 $00 $00 $E0 $00 $00 $10
.db $00 $00 $08 $00 $00 $F8 $00 $00

; 3rd entry of Pointer Table from 102F4 (indexed by unknown)
; Data from 10FB9 to 10FD0 (24 bytes)
_DATA_10FB9_:
.db $AA $00 $00 $EE $00 $00 $61 $00 $00 $30 $00 $00 $0F $00 $00 $31
.db $00 $00 $E1 $00 $00 $98 $00 $00

; 4th entry of Pointer Table from 102F4 (indexed by unknown)
; Data from 10FD1 to 10FE8 (24 bytes)
_DATA_10FD1_:
.db $55 $00 $00 $77 $00 $00 $86 $00 $00 $0C $00 $00 $F0 $00 $00 $8C
.db $00 $00 $87 $00 $00 $19 $00 $00

; 5th entry of Pointer Table from 102F4 (indexed by unknown)
; Data from 10FE9 to 11000 (24 bytes)
_DATA_10FE9_:
.db $D0 $00 $00 $10 $00 $00 $0B $00 $00 $0B $00 $00 $1F $00 $00 $23
.db $00 $00 $43 $00 $00 $7F $00 $00

; 6th entry of Pointer Table from 102F4 (indexed by unknown)
; Data from 11001 to 11018 (24 bytes)
_DATA_11001_:
.db $2C $00 $00 $20 $00 $00 $40 $00 $00 $40 $00 $00 $E0 $00 $00 $10
.db $00 $00 $08 $00 $00 $F8 $00 $00

; 3rd entry of Pointer Table from 10301 (indexed by unknown)
; Data from 11019 to 11030 (24 bytes)
_DATA_11019_:
.db $AA $00 $00 $EE $00 $00 $E1 $00 $00 $B0 $00 $00 $8F $00 $00 $51
.db $00 $00 $21 $00 $00 $10 $00 $00

; 4th entry of Pointer Table from 10301 (indexed by unknown)
; Data from 11031 to 11048 (24 bytes)
_DATA_11031_:
.db $55 $00 $00 $77 $00 $00 $87 $00 $00 $0D $00 $00 $F9 $00 $00 $86
.db $00 $00 $84 $00 $00 $08 $00 $00

; 5th entry of Pointer Table from 10301 (indexed by unknown)
; Data from 11049 to 11060 (24 bytes)
_DATA_11049_:
.db $20 $00 $00 $20 $00 $00 $16 $00 $00 $16 $00 $00 $3F $00 $00 $46
.db $00 $00 $86 $00 $00 $FF $00 $00

; 6th entry of Pointer Table from 10301 (indexed by unknown)
; Data from 11061 to 11078 (24 bytes)
_DATA_11061_:
.db $40 $00 $00 $40 $00 $00 $80 $00 $00 $80 $00 $00 $C0 $00 $00 $20
.db $00 $00 $10 $00 $00 $F0 $00 $00

; 1st entry of Pointer Table from 10202 (indexed by unknown)
; Data from 11079 to 11090 (24 bytes)
_DATA_11079_:
.db $FF
.dsb 9, $00
.db $01 $01 $00 $06 $06 $00 $09 $09 $00 $13 $12 $08 $23 $22

; 2nd entry of Pointer Table from 10202 (indexed by unknown)
; Data from 11091 to 110A8 (24 bytes)
_DATA_11091_:
.db $E7 $18 $18 $00 $18 $18 $00 $3C $3C $1C $C3 $C3 $01 $3E $3E $00
.db $FF $C1 $00 $FF $00 $00 $FF $00

; 3rd entry of Pointer Table from 10202 (indexed by unknown)
; Data from 110A9 to 110C0 (24 bytes)
_DATA_110A9_:
.db $FF
.dsb 9, $00
.db $80 $80 $80 $60 $60 $40 $90 $90 $20 $C8 $48 $10 $E4 $24

; 4th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 110C1 to 110D8 (24 bytes)
_DATA_110C1_:
.db $11 $27 $24 $11 $47 $44 $11 $43 $42 $01 $43 $42 $01 $83 $82 $03
.db $87 $84 $03 $87 $84 $01 $C3 $C2

; 5th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 110D9 to 110F0 (24 bytes)
_DATA_110D9_:
.db $06 $FF $00 $8F $FB $04 $E7 $3D $02 $77 $9D $82 $77 $9D $82 $F6
.db $1B $04 $F4 $FF $00 $F0 $FF $01

; 6th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 110F1 to 11108 (24 bytes)
_DATA_110F1_:
.db $10 $E4 $24 $08 $F2 $12 $08 $F2 $12 $08 $F2 $12 $0A $E5 $27 $06
.db $F9 $1F $0E $F1 $7F $1E $A1 $BF

; 7th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 11109 to 11120 (24 bytes)
_DATA_11109_:
.db $40 $E1 $A1 $60 $FF $9F $6F $FF $9F $6F $FF $9F $5F $FF $BF $3F
.db $7F $7F $1C $7F $7F $03 $3C $3C

; 8th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 11121 to 11138 (24 bytes)
_DATA_11121_:
.db $0C $F2 $F2 $00 $FF $FF $FF $FF $FF $F0 $FF $FF $C0 $F0 $FF $00
.db $E1 $FF $80 $47 $7F $70 $FF $FF

; 9th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 11139 to 11150 (24 bytes)
_DATA_11139_:
.db $3E $61 $5F $7E $F1 $8F $BE $FF $C1 $00 $FF $FF $10 $40 $C0 $20
.db $C0 $C0 $40 $80 $80 $80 $00 $00

; 10th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 11151 to 11168 (24 bytes)
_DATA_11151_:
.db $7B $87 $87 $30 $4F $4F $20 $51 $51 $00 $21 $21 $00 $01 $01 $01
.db $00 $00 $00 $00 $00 $00 $00 $00

; 11th entry of Pointer Table from 10202 (indexed by unknown)
; Data from 11169 to 11180 (24 bytes)
_DATA_11169_:
.db $C0 $FE $FE $E0 $07 $1F $20 $83 $9F $10 $83 $8F $04 $8F $87 $08
.db $DF $DF $80 $7E $7E $00 $7C $7C

; 1st entry of Pointer Table from 10219 (indexed by unknown)
; Data from 11181 to 11198 (24 bytes)
_DATA_11181_:
.db $07
.dsb 9, $00
.db $07 $07 $00 $18 $18 $00 $27 $27 $00 $4F $48 $20 $8F $88

; 2nd entry of Pointer Table from 10219 (indexed by unknown)
; Data from 11199 to 111B0 (24 bytes)
_DATA_11199_:
.db $FE $00 $00 $00 $60 $60 $00 $F0 $F0 $70 $0E $0E $06 $F9 $F9 $01
.db $FE $06 $00 $FF $01 $00 $FF $00

; 3rd entry of Pointer Table from 10232 (indexed by unknown)
; Data from 111B1 to 111C8 (24 bytes)
_DATA_111B1_:
.dsb 13, $00
.db $80 $80 $00 $40 $40 $80 $20 $20 $40 $90 $90

; 8th entry of Pointer Table from 10219 (indexed by unknown)
; Data from 111C9 to 111E0 (24 bytes)
_DATA_111C9_:
.db $0C $F2 $F2 $00 $FF $FF $FF $FF $FF $F0 $FF $FF $C0 $F0 $FF $00
.db $F0 $FF $80 $61 $7F $00 $A1 $BF

; 10th entry of Pointer Table from 10232 (indexed by unknown)
; Data from 111E1 to 111F8 (24 bytes)
_DATA_111E1_:
.db $78 $84 $84 $32 $49 $49 $20 $51 $51 $00 $21 $21 $00 $01 $01 $00
.db $01 $01 $00 $00 $00 $00 $00 $00

; 11th entry of Pointer Table from 10219 (indexed by unknown)
; Data from 111F9 to 11210 (24 bytes)
_DATA_111F9_:
.db $00 $8F $FF $00 $8F $FF $74 $FF $FF $F0 $FB $FB $18 $E3 $E3 $00
.db $C7 $C7 $02 $FC $FC $04 $78 $78

; 12th entry of Pointer Table from 10219 (indexed by unknown)
; Data from 11211 to 11228 (24 bytes)
_DATA_11211_:
.db $00 $00 $00 $00 $80 $80 $00 $80 $80
.dsb 15, $00

; 1st entry of Pointer Table from 10232 (indexed by unknown)
; Data from 11229 to 11240 (24 bytes)
_DATA_11229_:
.dsb 10, $00
.db $07 $07 $00 $18 $18 $00 $27 $27 $00 $4F $48 $20 $8F $88

; 2nd entry of Pointer Table from 10232 (indexed by unknown)
; Data from 11241 to 11258 (24 bytes)
_DATA_11241_:
.db $F0 $00 $00 $00 $60 $60 $00 $F0 $F0 $70 $0E $0E $06 $F9 $F9 $01
.db $FE $06 $00 $FF $01 $00 $FF $00

; 8th entry of Pointer Table from 10232 (indexed by unknown)
; Data from 11259 to 11270 (24 bytes)
_DATA_11259_:
.db $0C $F2 $F2 $00 $FF $FF $FF $FF $FF $F0 $FF $FF $C0 $F0 $FF $00
.db $F0 $FF $80 $70 $7F $00 $B8 $BF

; 11th entry of Pointer Table from 10232 (indexed by unknown)
; Data from 11271 to 11288 (24 bytes)
_DATA_11271_:
.db $02 $E0 $FC $01 $E2 $FE $00 $A3 $BF $1C $BF $BF $3C $FF $FF $1C
.db $C3 $C3 $00 $FE $FE $00 $7C $7C

; 8th entry of Pointer Table from 10249 (indexed by unknown)
; Data from 11289 to 112A0 (24 bytes)
_DATA_11289_:
.db $0C $F2 $F2 $00 $FF $FF $FF $FF $FF $F0 $FF $FF $C0 $F8 $FF $00
.db $F0 $FF $80 $78 $7F $01 $AF $BF

; 9th entry of Pointer Table from 10249 (indexed by unknown)
; Data from 112A1 to 112B8 (24 bytes)
_DATA_112A1_:
.db $3E $61 $5F $7E $F1 $8F $BE $FF $C1 $00 $FF $FF $10 $40 $C0 $20
.db $C0 $C0 $40 $00 $80 $C0 $E0 $E0

; 11th entry of Pointer Table from 10249 (indexed by unknown)
; Data from 112B9 to 112D0 (24 bytes)
_DATA_112B9_:
.db $0F $FF $FF $07 $C8 $F8 $08 $97 $F7 $50 $C3 $E3 $60 $F3 $F3 $00
.db $E7 $E7 $00 $FE $FE $00 $7C $7C

; 12th entry of Pointer Table from 10249 (indexed by unknown)
; Data from 112D1 to 112E8 (24 bytes)
_DATA_112D1_:
.db $00 $80 $80
.dsb 21, $00

; 1st entry of Pointer Table from 10262 (indexed by unknown)
; Data from 112E9 to 11300 (24 bytes)
_DATA_112E9_:
.db $FF
.dsb 9, $00
.db $01 $01 $01 $06 $06 $02 $09 $09 $04 $13 $12 $08 $27 $24

; 2nd entry of Pointer Table from 10262 (indexed by unknown)
; Data from 11301 to 11318 (24 bytes)
_DATA_11301_:
.db $E7 $18 $18 $00 $18 $18 $00 $3C $3C $38 $C3 $C3 $80 $7C $7C $00
.db $FF $83 $00 $FF $00 $00 $FF $00

; 3rd entry of Pointer Table from 10262 (indexed by unknown)
; Data from 11319 to 11330 (24 bytes)
_DATA_11319_:
.db $FF
.dsb 9, $00
.db $80 $80 $00 $60 $60 $00 $90 $90 $00 $C8 $48 $10 $C4 $44

; 4th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 11331 to 11348 (24 bytes)
_DATA_11331_:
.db $08 $27 $24 $10 $4F $48 $10 $4F $48 $10 $4F $48 $50 $A7 $E4 $60
.db $9F $F8 $70 $8F $FE $78 $85 $FD

; 5th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 11349 to 11360 (24 bytes)
_DATA_11349_:
.db $60 $FF $00 $F1 $DF $20 $E7 $BC $40 $EE $B9 $41 $EE $B9 $41 $6F
.db $D8 $20 $2F $FF $00 $0F $FF $80

; 6th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 11361 to 11378 (24 bytes)
_DATA_11361_:
.db $88 $E4 $24 $88 $E2 $22 $88 $C2 $42 $80 $C2 $42 $80 $C1 $41 $C0
.db $E1 $21 $C0 $E1 $21 $80 $C3 $43

; 7th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 11379 to 11390 (24 bytes)
_DATA_11379_:
.db $7C $86 $FA $7E $8F $F1 $7D $FF $83 $00 $FF $FF $08 $02 $03 $04
.db $03 $03 $02 $01 $01 $01 $00 $00

; 8th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 11391 to 113A8 (24 bytes)
_DATA_11391_:
.db $30 $4F $4F $00 $FF $FF $FF $FF $FF $0F $FF $FF $03 $0F $FF $00
.db $87 $FF $01 $E2 $FE $0E $FF $FF

; 9th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 113A9 to 113C0 (24 bytes)
_DATA_113A9_:
.db $02 $87 $85 $06 $FF $F9 $F6 $FF $F9 $F6 $FF $F9 $FA $FF $FD $FC
.db $FE $FE $38 $FE $FE $C0 $3C $3C

; 10th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 113C1 to 113D8 (24 bytes)
_DATA_113C1_:
.db $03 $7F $7F $07 $E0 $F8 $04 $C1 $F9 $08 $C1 $F1 $20 $F1 $E1 $10
.db $FB $FB $01 $7E $7E $00 $3E $3E

; 11th entry of Pointer Table from 10262 (indexed by unknown)
; Data from 113D9 to 113F0 (24 bytes)
_DATA_113D9_:
.db $DE $E1 $E1 $0C $F2 $F2 $04 $8A $8A $00 $84 $84 $00 $80 $80 $80
.db $00 $00 $00 $00 $00 $00 $00 $00

; 1st entry of Pointer Table from 10279 (indexed by unknown)
; Data from 113F1 to 11408 (24 bytes)
_DATA_113F1_:
.db $07
.dsb 9, $00
.db $07 $07 $06 $19 $19 $08 $27 $26 $10 $4F $48 $20 $9F $90

; 2nd entry of Pointer Table from 10279 (indexed by unknown)
; Data from 11409 to 11420 (24 bytes)
_DATA_11409_:
.db $FE $00 $00 $00 $60 $60 $00 $F0 $F0 $E0 $0E $0E $00 $F1 $F1 $00
.db $FE $0E $00 $FF $01 $00 $FF $01

; 3rd entry of Pointer Table from 10292 (indexed by unknown)
; Data from 11421 to 11438 (24 bytes)
_DATA_11421_:
.dsb 13, $00
.db $80 $80 $00 $40 $40 $00 $20 $20 $40 $10 $10

; 8th entry of Pointer Table from 10279 (indexed by unknown)
; Data from 11439 to 11450 (24 bytes)
_DATA_11439_:
.db $30 $4F $4F $00 $FF $FF $FF $FF $FF $0F $FF $FF $03 $0F $FF $00
.db $0F $FF $01 $86 $FE $00 $85 $FD

; 10th entry of Pointer Table from 10279 (indexed by unknown)
; Data from 11451 to 11468 (24 bytes)
_DATA_11451_:
.db $00 $78 $7F $00 $F8 $FF $17 $FF $FF $07 $6F $6F $0C $63 $63 $00
.db $71 $71 $20 $1F $1F $10 $0F $0F

; 11th entry of Pointer Table from 10279 (indexed by unknown)
; Data from 11469 to 11480 (24 bytes)
_DATA_11469_:
.db $0F $90 $90 $26 $C9 $C9 $02 $C5 $C5 $80 $C2 $C2 $00 $C0 $C0 $00
.db $C0 $C0 $00 $80 $80 $00 $00 $00

; 1st entry of Pointer Table from 10292 (indexed by unknown)
; Data from 11481 to 11498 (24 bytes)
_DATA_11481_:
.dsb 10, $00
.db $07 $07 $06 $19 $19 $08 $27 $26 $10 $4F $48 $20 $9F $90

; 2nd entry of Pointer Table from 10292 (indexed by unknown)
; Data from 11499 to 114B0 (24 bytes)
_DATA_11499_:
.db $F0 $00 $00 $00 $60 $60 $00 $F0 $F0 $E0 $0E $0E $00 $F1 $F1 $00
.db $FE $0E $00 $FF $01 $00 $FF $01

; 8th entry of Pointer Table from 10292 (indexed by unknown)
; Data from 114B1 to 114C8 (24 bytes)
_DATA_114B1_:
.db $30 $4F $4F $00 $FF $FF $FF $FF $FF $0F $FF $FF $03 $0F $FF $00
.db $0F $FF $01 $0E $FE $00 $1D $FD

; 10th entry of Pointer Table from 10292 (indexed by unknown)
; Data from 114C9 to 114E0 (24 bytes)
_DATA_114C9_:
.db $40 $07 $3F $80 $47 $7F $00 $C5 $FD $38 $FD $FD $3C $FF $FF $38
.db $C3 $C3 $00 $7F $7F $00 $3E $3E

; 11th entry of Pointer Table from 10292 (indexed by unknown)
; Data from 114E1 to 114F8 (24 bytes)
_DATA_114E1_:
.db $1E $21 $21 $4C $92 $92 $04 $8A $8A $00 $84 $84 $00 $80 $80 $00
.db $80 $80 $00 $00 $00 $00 $00 $00

; 7th entry of Pointer Table from 102A9 (indexed by unknown)
; Data from 114F9 to 11510 (24 bytes)
_DATA_114F9_:
.db $7C $86 $FA $7E $8F $F1 $7D $FF $83 $00 $FF $FF $08 $02 $03 $04
.db $03 $03 $02 $00 $01 $03 $07 $07

; 8th entry of Pointer Table from 102A9 (indexed by unknown)
; Data from 11511 to 11528 (24 bytes)
_DATA_11511_:
.db $30 $4F $4F $00 $FF $FF $FF $FF $FF $0F $FF $FF $03 $1F $FF $00
.db $0F $FF $01 $1E $FE $80 $F5 $FD

; 10th entry of Pointer Table from 102A9 (indexed by unknown)
; Data from 11529 to 11540 (24 bytes)
_DATA_11529_:
.db $78 $FF $FF $70 $09 $0F $08 $74 $77 $05 $61 $63 $03 $67 $67 $00
.db $73 $73 $00 $3F $3F $00 $1F $1F

; 11th entry of Pointer Table from 102A9 (indexed by unknown)
; Data from 11541 to 11558 (24 bytes)
_DATA_11541_:
.db $0F $90 $90 $26 $C9 $C9 $02 $C5 $C5 $00 $C2 $C2 $00 $C0 $C0 $00
.db $C0 $C0 $00 $80 $80 $00 $00 $00

; 1st entry of Pointer Table from 1030E (indexed by unknown)
; Data from 11559 to 11570 (24 bytes)
_DATA_11559_:
.db $00 $07 $07 $00 $1F $18 $00 $3F $20 $00 $7F $60 $61 $FF $80 $47
.db $FF $80 $4D $FB $82 $5D $F3 $82

; 2nd entry of Pointer Table from 1030E (indexed by unknown)
; Data from 11571 to 11588 (24 bytes)
_DATA_11571_:
.db $00 $E0 $E0 $00 $F8 $18 $00 $FC $04 $00 $FE $06 $86 $FF $01 $E2
.db $FF $01 $B2 $DF $41 $BA $CF $41

; 3rd entry of Pointer Table from 1030E (indexed by unknown)
; Data from 11589 to 115A0 (24 bytes)
_DATA_11589_:
.db $5F $F1 $80 $1F $F0 $81 $1E $7E $61 $6C $FC $93 $70 $EF $8F $6F
.db $81 $91 $31 $71 $7F $78 $F8 $FF

; 4th entry of Pointer Table from 1030E (indexed by unknown)
; Data from 115A1 to 115B8 (24 bytes)
_DATA_115A1_:
.db $FA $8F $01 $F8 $0F $81 $78 $7E $86 $36 $3F $C9 $0E $F7 $F1 $F6
.db $81 $89 $8C $8E $FE $1E $1F $FF

; 5th entry of Pointer Table from 1030E (indexed by unknown)
; Data from 115B9 to 115D0 (24 bytes)
_DATA_115B9_:
.db $78 $F8 $FF $3C $7D $7F $0C $3E $3E $00 $0C $0C
.dsb 12, $00

; 6th entry of Pointer Table from 1030E (indexed by unknown)
; Data from 115D1 to 11678 (168 bytes)
_DATA_115D1_:
.db $1E $1F $FF $3C $BE $FE $30 $7C $7C $00 $30 $30
.dsb 15, $00
.db $08 $00 $00 $80 $00 $00 $08 $00 $00 $88 $07 $07 $88 $37 $30 $88
.db $77 $40 $80 $7F $40 $40 $00 $00 $40 $00 $00 $48 $00 $00 $48 $00
.db $00 $48 $80 $80 $08 $F0 $30 $40 $B8 $08 $48 $B4 $04 $61 $FF $80
.db $47 $FF $80 $4D $BB $82 $5D $F3 $82 $5F $F1 $80 $1F $F0 $81 $1E
.db $7E $61 $6C $FC $93 $86 $FF $01 $E6 $FB $01 $B6 $DB $41 $BA $CF
.db $41 $FA $8F $01 $F8 $0F $81 $78 $7E $86 $36 $3F $C9 $70 $EF $8F
.db $6F $81 $91 $31 $71 $7F $78 $F8 $FF $78 $F8 $FF $3C $7D $7F $0C
.db $3E $3E $00 $0C $0C $0E $F7 $F1 $F6 $81 $89 $8C $8E $FE $1E $1F
.db $FF $1E $1F $FF $3C $BE $FE $30 $7C $7C $00 $30 $30

; 3rd entry of Pointer Table from 101CF (indexed by unknown)
; Data from 11679 to 11690 (24 bytes)
_DATA_11679_:
.db $0E $7B $44 $06 $FD $82 $02 $7F $60 $00 $1F $18 $03 $04 $04 $00
.db $28 $2F $00 $7B $5F $00 $78 $5F

; 4th entry of Pointer Table from 101CF (indexed by unknown)
; Data from 11691 to 116A8 (24 bytes)
_DATA_11691_:
.db $E8 $9C $14 $FC $8E $02 $FC $FF $03 $F8 $FD $05 $00 $F9 $F9 $C8
.db $0D $35 $3D $0E $C2 $0B $CD $F5

; 5th entry of Pointer Table from 101CF (indexed by unknown)
; Data from 116A9 to 116AA (2 bytes)
_DATA_116A9_:
.db $00 $00

; 1st entry of Pointer Table from 7693 (indexed by _RAM_C3A3_)
; Data from 116AB to 116C0 (22 bytes)
_DATA_116AB_:
.db $00 $00 $00 $00 $00 $E0 $E0 $E0 $78 $78 $F8 $7C $7C $FC $7E $7E
.db $FE $FF $FF $FE $FF $FF

; 6th entry of Pointer Table from 101CF (indexed by unknown)
; Data from 116C1 to 116D8 (24 bytes)
_DATA_116C1_:
.db $00 $7F $7F $3F $40 $40 $5F $3F $20 $EF $1F $10 $C0 $0F $0F
.dsb 9, $00

; 7th entry of Pointer Table from 101CF (indexed by unknown)
; Data from 116D9 to 116F0 (24 bytes)
_DATA_116D9_:
.db $07 $F8 $F8 $FF $07 $00 $FF $FF $00 $FF $FF $00 $00 $FF $FF
.dsb 9, $00

; 8th entry of Pointer Table from 101CF (indexed by unknown)
; Data from 116F1 to 11708 (24 bytes)
_DATA_116F1_:
.db $FE $01 $01 $FC $FE $02 $F0 $FC $0C $80 $F0 $70 $00 $80 $80
.dsb 9, $00

; 6th entry of Pointer Table from 101E0 (indexed by unknown)
; Data from 11709 to 11720 (24 bytes)
_DATA_11709_:
.db $48 $37 $37 $BF $40 $40 $5F $02 $00 $BF $00 $00 $77 $00 $00 $0C
.db $00 $00 $00 $00 $00 $00 $00 $00

; 7th entry of Pointer Table from 101E0 (indexed by unknown)
; Data from 11721 to 11738 (24 bytes)
_DATA_11721_:
.db $07 $F8 $F8 $FF $07 $00 $FF $FF $00 $FF $1F $00 $FF $00 $00 $A0
.db $00 $00 $00 $00 $00 $00 $00 $00

; 8th entry of Pointer Table from 101E0 (indexed by unknown)
; Data from 11739 to 11750 (24 bytes)
_DATA_11739_:
.db $FE $01 $01 $FC $FE $02 $F0 $FC $0C $80 $F0 $70 $C0
.dsb 11, $00

; 6th entry of Pointer Table from 101F1 (indexed by unknown)
; Data from 11751 to 11768 (24 bytes)
_DATA_11751_:
.db $80 $7F $7F $3F $40 $40 $5F $3F $20 $FF $0A $00 $FF $00 $00 $19
.db $00 $00 $00 $00 $00 $00 $00 $00

; 7th entry of Pointer Table from 101F1 (indexed by unknown)
; Data from 11769 to 11780 (24 bytes)
_DATA_11769_:
.db $07 $F8 $F8 $FF $07 $00 $FF $FF $00 $FF $7C $00 $FF $00 $00 $C0
.db $00 $00 $00 $00 $00 $00 $00 $00

; 8th entry of Pointer Table from 101F1 (indexed by unknown)
; Data from 11781 to 11798 (24 bytes)
_DATA_11781_:
.db $FE $01 $01 $FC $FE $02 $F0 $FC $0C $D8 $20 $20 $FC
.dsb 11, $00

; 1st entry of Pointer Table from 1031B (indexed by unknown)
; Data from 11799 to 117B0 (24 bytes)
_DATA_11799_:
.db $00 $07 $07 $00 $1F $18 $00 $3F $20 $00 $7F $40 $40 $FF $80 $40
.db $FF $80 $40 $FF $80 $40 $FF $80

; 2nd entry of Pointer Table from 1031B (indexed by unknown)
; Data from 117B1 to 117C8 (24 bytes)
_DATA_117B1_:
.db $00 $E0 $E0 $00 $F8 $18 $00 $FC $04 $00 $FE $02 $02 $FF $01 $02
.db $FF $01 $02 $FF $01 $02 $FF $01

; 3rd entry of Pointer Table from 1031B (indexed by unknown)
; Data from 117C9 to 117E0 (24 bytes)
_DATA_117C9_:
.db $40 $FF $80 $00 $FF $80 $00 $7F $40 $00 $3F $30 $00 $1F $1F $0F
.db $20 $30 $00 $40 $7F $00 $40 $7F

; 4th entry of Pointer Table from 1031B (indexed by unknown)
; Data from 117E1 to 117F8 (24 bytes)
_DATA_117E1_:
.db $02 $FF $01 $00 $FF $01 $00 $FE $02 $00 $FC $0C $00 $F8 $F8 $F0
.db $04 $0C $00 $02 $FE $00 $02 $FE

; 5th entry of Pointer Table from 1031B (indexed by unknown)
; Data from 117F9 to 11810 (24 bytes)
_DATA_117F9_:
.db $00 $C0 $FF $00 $40 $7F $00 $20 $3F $00 $26 $3F $00 $26 $3F $19
.db $3F $3F $19 $3F $3F $00 $3F $3F

; 6th entry of Pointer Table from 1031B (indexed by unknown)
; Data from 11811 to 11828 (24 bytes)
_DATA_11811_:
.db $00 $30 $F0 $00 $20 $E0 $00 $40 $C0 $00 $40 $C0 $00 $40 $C0 $80
.db $C0 $C0 $80 $C0 $C0 $00 $C0 $C0

; 3rd entry of Pointer Table from 10328 (indexed by unknown)
; Data from 11829 to 11840 (24 bytes)
_DATA_11829_:
.db $40 $FF $80 $00 $FF $80 $00 $7F $40 $00 $3F $30 $00 $0F $0F $0F
.db $10 $10 $00 $20 $3F $00 $40 $7F

; 4th entry of Pointer Table from 10328 (indexed by unknown)
; Data from 11841 to 11858 (24 bytes)
_DATA_11841_:
.db $02 $FF $01 $00 $FF $01 $00 $FE $02 $02 $FF $0D $06 $F1 $F9 $F0
.db $02 $0E $00 $04 $FC $00 $08 $F8

; 5th entry of Pointer Table from 10328 (indexed by unknown)
; Data from 11859 to 11870 (24 bytes)
_DATA_11859_:
.db $60 $80 $9F $60 $F0 $9F $00 $71 $7F $00 $12 $1E $00 $12 $1E $0C
.db $1E $1E $0C $1E $1E $00 $1E $1E

; 6th entry of Pointer Table from 10328 (indexed by unknown)
; Data from 11871 to 11888 (24 bytes)
_DATA_11871_:
.db $00 $10 $F0 $00 $10 $F0 $00 $10 $F0 $60 $F0 $F0 $00 $F0 $F0
.dsb 9, $00

; 3rd entry of Pointer Table from 10335 (indexed by unknown)
; Data from 11889 to 118A0 (24 bytes)
_DATA_11889_:
.db $40 $FF $80 $00 $FF $80 $00 $7F $40 $40 $FF $B0 $60 $8F $9F $0F
.db $40 $70 $00 $20 $3F $00 $10 $1F

; 4th entry of Pointer Table from 10335 (indexed by unknown)
; Data from 118A1 to 118B8 (24 bytes)
_DATA_118A1_:
.db $02 $FF $01 $00 $FF $01 $00 $FE $02 $00 $FC $0C $00 $F0 $F0 $F0
.db $08 $08 $00 $04 $FC $00 $02 $FE

; 5th entry of Pointer Table from 10335 (indexed by unknown)
; Data from 118B9 to 118D0 (24 bytes)
_DATA_118B9_:
.db $00 $80 $FF $00 $80 $FF $00 $88 $FF $60 $F4 $F7 $00 $F4 $F7 $03
.db $07 $07 $03 $07 $07 $00 $07 $07

; 6th entry of Pointer Table from 10335 (indexed by unknown)
; Data from 118D1 to 118E8 (24 bytes)
_DATA_118D1_:
.db $60 $10 $90 $60 $F0 $90 $00 $E0 $E0 $00 $80 $80 $00 $80 $80 $00
.db $80 $80 $00 $80 $80 $00 $80 $80

; Data from 118E9 to 11BB4 (716 bytes)
_DATA_118E9_:
.db $02 $00 $82 $07 $1F $02 $3F $02 $7F $84 $01 $07 $8F $EF $04 $FF
.db $83 $E0 $F8 $FC $05 $FF $02 $00 $83 $E0 $F8 $FC $02 $FE $08 $FF
.db $81 $7F $05 $FF $02 $FE $83 $FC $7F $3F $02 $1F $02 $3F $02 $7F
.db $82 $F8 $FC $02 $FE $04 $FF $03 $7F $02 $3F $83 $1F $07 $00 $04
.db $FF $84 $F9 $F0 $C0 $00 $04 $FF $89 $FC $F8 $70 $20 $FF $FE $FE
.db $FC $F0 $03 $00 $02 $FF $94 $F8 $F7 $EF $EF $ED $CD $FF $FF $7F
.db $1F $AF $F7 $F7 $FB $B6 $B6 $B9 $DF $DF $EF $02 $FF $02 $FB $02
.db $F7 $8D $EF $DF $FF $FF $F3 $ED $ED $EE $F6 $F7 $F7 $FB $9F $06
.db $6F $89 $F7 $F3 $CB $B5 $B5 $B9 $DF $DF $EF $04 $FB $02 $F7 $A2
.db $EF $DF $FF $FF $E7 $DB $DB $DA $EC $EC $FF $9F $6F $69 $66 $D6
.db $CD $DD $EE $97 $67 $77 $7F $BF $DF $EF $DB $F3 $F1 $E6 $FE $F9
.db $E7 $DF $04 $00 $84 $01 $03 $01 $03 $03 $00 $83 $70 $FC $FE $02
.db $FF $03 $07 $81 $03 $04 $00 $86 $CF $37 $F7 $CF $3E $38 $06 $00
.db $84 $01 $7F $7F $01 $03 $00 $89 $F0 $FC $FE $FF $FF $07 $1F $7E
.db $70 $04 $00 $86 $FF $C7 $37 $4F $3E $38 $03 $00 $8D $0C $0F $03
.db $01 $38 $3F $07 $00 $18 $18 $8C $EC $7E $02 $FF $02 $00 $83 $03
.db $1F $1C $03 $00 $87 $7F $FF $FF $8F $1E $3C $38 $11 $00 $88 $08
.db $30 $26 $9A $59 $64 $0C $10 $00 $62 $00 $82 $07 $0F $03 $1F $89
.db $3F $00 $00 $80 $E0 $F0 $F8 $F8 $FC $03 $7F $02 $3F $81 $1F $02
.db $00 $02 $FC $02 $F8 $88 $F0 $E0 $00 $00 $0C $1E $1E $1F $03 $0F
.db $82 $07 $60 $06 $F0 $83 $F8 $0F $3F $03 $7F $02 $3F $81 $1F $04
.db $FC $02 $F8 $94 $F0 $E0 $00 $00 $18 $3C $3C $3D $1F $1F $00 $60
.db $F0 $F6 $FF $EF $FE $FE $1F $6F $03 $FF $8B $7F $3F $1F $FC $FC
.db $FE $FF $FF $FE $F8 $E0 $03 $00 $8A $01 $03 $07 $07 $0F $00 $00
.db $70 $FC $FE $03 $FF $03 $0F $82 $07 $03 $03 $00 $05 $FF $82 $7E
.db $38 $04 $00 $8A $01 $7F $FF $FF $7F $00 $00 $F0 $FC $FE $03 $FF
.db $85 $1F $7F $FF $FE $70 $03 $00 $04 $FF $8F $7F $7E $38 $00 $0C
.db $1F $1F $0F $3B $7F $7F $3F $18 $3C $FC $02 $FE $03 $FF $86 $07
.db $03 $1F $3F $3F $1C $02 $00 $04 $FF $9C $BF $7E $7C $38 $3C $7E
.db $E7 $C3 $C3 $E7 $7E $3C $42 $E7 $7E $3C $3C $7E $E7 $42 $08 $10
.db $24 $9A $59 $24 $08 $10 $00 $62 $00 $94 $07 $08 $10 $10 $12 $32
.db $00 $00 $80 $E0 $50 $08 $08 $04 $49 $49 $46 $20 $20 $10 $02 $00
.db $02 $04 $02 $08 $8D $10 $20 $00 $00 $0C $12 $12 $11 $09 $08 $08
.db $04 $60 $06 $90 $89 $08 $0C $34 $4A $4A $46 $20 $20 $10 $04 $04
.db $02 $08 $A2 $10 $20 $00 $00 $18 $24 $24 $25 $13 $13 $00 $60 $90
.db $96 $99 $29 $32 $22 $11 $68 $98 $88 $80 $40 $20 $10 $24 $0C $0E
.db $19 $01 $06 $18 $20 $03 $00 $8B $01 $02 $04 $06 $0C $00 $00 $70
.db $8C $02 $01 $02 $00 $03 $08 $82 $04 $03 $03 $00 $87 $30 $C8 $08
.db $30 $C1 $46 $38 $04 $00 $92 $01 $7E $80 $80 $7E $00 $00 $F0 $0C
.db $02 $01 $00 $00 $18 $60 $81 $8E $70 $04 $00 $BF $38 $C8 $B0 $41
.db $46 $38 $00 $0C $13 $10 $0C $3A $47 $40 $38 $18 $24 $E4 $72 $12
.db $81 $00 $00 $07 $03 $1C $20 $23 $1C $00 $00 $80 $00 $00 $70 $A1
.db $42 $44 $38 $3C $7E $E7 $C3 $C3 $E7 $7E $3C $42 $E7 $7E $3C $3C
.db $7E $E7 $42 $4E $99 $B4 $DE $7B $2D $99 $72 $00 $7F $00 $7F $00
.db $32 $00 $88 $76 $CF $D9 $65 $A6 $9B $F3 $6E $00

; 1st entry of Pointer Table from 7663 (indexed by _RAM_C3A3_)
; Data from 11BB5 to 11E66 (690 bytes)
_DATA_11BB5_:
.db $03 $00 $88 $07 $1F $3F $3F $7F $00 $00 $F0 $02 $FC $03 $FE $02
.db $7F $86 $61 $23 $3F $1E $01 $1F $02 $CE $02 $FC $86 $F8 $F0 $00
.db $F8 $1F $5F $03 $6F $8B $7C $78 $20 $FA $F2 $F6 $F6 $EE $FE $7E
.db $0C $03 $00 $02 $1C $02 $3E $04 $00 $02 $70 $02 $F8 $90 $00 $1F
.db $5F $6F $7F $7F $3C $08 $00 $FA $F2 $F6 $FE $FC $F8 $60 $03 $00
.db $02 $38 $02 $78 $04 $00 $02 $38 $02 $3C $02 $00 $02 $7F $85 $61
.db $23 $3F $1E $01 $03 $BF $85 $DF $1F $1F $1C $18 $03 $00 $89 $1C
.db $3E $3E $3C $1C $1F $1F $0F $03 $07 $00 $81 $38 $03 $7F $81 $38
.db $05 $00 $82 $07 $1F $02 $3F $03 $00 $81 $F0 $02 $FC $02 $FE $03
.db $7F $86 $61 $23 $3F $1E $01 $FE $02 $CE $02 $FC $91 $F8 $F0 $00
.db $0A $1A $66 $7E $3E $02 $1C $18 $B0 $BA $C6 $FE $FC $80 $02 $70
.db $03 $00 $02 $38 $02 $78 $04 $00 $02 $38 $02 $3C $81 $00 $00 $02
.db $00 $9D $07 $1A $26 $56 $56 $D7 $00 $F0 $7C $FE $DE $DF $87 $4B
.db $D7 $D0 $FF $5E $7E $3F $3F $7E $37 $37 $4E $8E $FC $78 $FC $03
.db $FE $81 $FD $04 $FF $84 $73 $FF $FF $7F $04 $FF $83 $1E $20 $21
.db $03 $22 $02 $41 $83 $7F $0C $08 $03 $88 $02 $04 $93 $FC $FE $FE
.db $FD $FF $FF $7F $3F $23 $FF $FF $7F $FF $FE $FC $F8 $08 $21 $42
.db $02 $44 $02 $84 $84 $FC $00 $08 $84 $02 $44 $02 $42 $89 $7E $00
.db $D7 $D0 $FF $5E $7E $3F $FF $03 $FE $82 $FD $FF $03 $3F $87 $23
.db $00 $1C $3E $7F $7F $7E $03 $3F $83 $1F $0F $03 $05 $00 $82 $38
.db $7F $03 $FF $82 $7F $38 $03 $00 $83 $07 $1A $26 $02 $56 $02 $00
.db $97 $F0 $7C $FE $DE $DF $87 $D7 $D7 $D0 $FF $5E $7E $3F $3F $4B
.db $37 $37 $4E $8E $FC $78 $FC $7F $03 $FF $81 $7F $03 $3F $81 $FE
.db $03 $FF $87 $FE $FC $F8 $F8 $23 $21 $42 $02 $44 $02 $84 $84 $FC
.db $08 $08 $84 $02 $44 $02 $42 $81 $7E $00 $02 $00 $AE $07 $1D $39
.db $69 $69 $A8 $00 $F0 $8C $02 $22 $21 $79 $85 $A8 $AF $9E $7D $41
.db $21 $3E $59 $B1 $B1 $82 $72 $04 $88 $FC $1A $99 $9D $8E $8C $9F
.db $8C $88 $5C $39 $31 $F1 $71 $F1 $E1 $61 $F2 $02 $3F $03 $3E $03
.db $7F $81 $FC $04 $F8 $03 $FC $92 $99 $9D $8E $84 $87 $44 $38 $3C
.db $39 $31 $F1 $41 $C2 $C4 $78 $F8 $3F $7E $02 $7C $03 $FC $83 $00
.db $F8 $FC $02 $7C $03 $7E $9D $00 $A8 $AF $9E $7D $41 $21 $FE $39
.db $39 $3D $1E $DC $3F $3C $38 $3C $00 $1C $22 $41 $41 $42 $23 $20
.db $20 $10 $0C $03 $05 $00 $82 $38 $47 $03 $80 $82 $47 $38 $03 $00
.db $83 $07 $1D $39 $02 $69 $02 $00 $A9 $F0 $8C $02 $22 $21 $79 $A8
.db $A8 $AF $9E $7D $41 $21 $3E $85 $B1 $B1 $82 $72 $04 $88 $FC $4D
.db $9D $99 $81 $41 $3D $3E $38 $52 $79 $39 $01 $02 $7C $F8 $78 $3C
.db $3F $7E $02 $7C $03 $FC $02 $F8 $81 $FC $02 $7C $03 $7E $00 $17
.db $00 $81 $20 $07 $00 $8B $04 $60 $20 $10 $10 $00 $03 $07 $0F $04
.db $0C $02 $08 $02 $00 $85 $80 $E0 $1F $1E $1C $05 $00 $02 $F0 $81
.db $70 $05 $00 $8B $60 $20 $10 $00 $00 $03 $07 $1F $04 $0C $08 $03
.db $00 $84 $80 $F0 $1E $3C $06 $00 $82 $F0 $78 $0D $00 $03 $40 $02
.db $20 $84 $00 $03 $07 $1F $38 $00 $82 $30 $60 $04 $00 $84 $01 $07
.db $0C $04 $05 $00 $84 $80 $1F $1E $3C $05 $00 $02 $F0 $81 $78 $05
.db $00 $00

; 1st entry of Pointer Table from 7673 (indexed by _RAM_C3A3_)
; Data from 11E67 to 11E74 (14 bytes)
_DATA_11E67_:
.db $8E $00 $1C $3E $32 $16 $1E $0E $3F $00 $38 $7C $4C $6C

; Data from 11E75 to 120A7 (563 bytes)
_DATA_11E75_:
.db $F8 $02 $F0 $05 $7F $83 $3F $0F $00 $02 $F8 $03 $FC $83 $F8 $70
.db $00 $02 $08 $02 $0C $84 $1E $7F $7E $7C $02 $20 $02 $60 $86 $F0
.db $FC $FC $7C $78 $30 $06 $00 $82 $3C $18 $06 $00 $02 $08 $90 $0C
.db $3C $7E $3E $1E $1C $20 $20 $60 $78 $FC $F8 $F0 $70 $18 $20 $06
.db $00 $82 $30 $08 $06 $00 $05 $7F $8D $3F $0F $80 $88 $88 $8C $1C
.db $1E $1F $1E $1C $18 $10 $08 $00 $89 $1C $3E $3E $3C $1C $1F $1F
.db $0F $03 $07 $00 $81 $38 $03 $7F $94 $38 $00 $08 $0B $13 $1E $1C
.db $0B $16 $1C $20 $A0 $90 $F0 $70 $A0 $D0 $70 $30 $10 $06 $00 $00
.db $A5 $1C $3E $67 $6F $3B $3F $3F $4F $38 $7C $E6 $F6 $DE $FC $F8
.db $F8 $9F $DB $DA $E6 $9F $79 $3F $1F $FC $3C $FE $FE $1E $7C $B8
.db $F0 $28 $5F $7F $7F $9F $03 $FF $85 $28 $F4 $FC $FC $F2 $03 $FE
.db $B7 $FF $7F $3F $37 $23 $41 $41 $7F $FE $FC $F8 $D8 $88 $04 $04
.db $FC $3F $7F $5F $BF $FF $7F $3F $3F $F8 $FC $F4 $FA $FE $FC $F8
.db $F8 $3F $7F $6F $46 $82 $82 $FE $00 $F8 $FC $EC $C4 $82 $82 $FE
.db $00 $9F $DB $DA $E6 $9F $79 $FF $04 $BF $81 $FF $07 $3F $8B $37
.db $23 $41 $41 $7F $00 $1C $3E $7F $7F $7E $03 $3F $83 $1F $0F $03
.db $05 $00 $82 $38 $7F $03 $FF $84 $7F $38 $2F $4F $02 $5F $04 $3F
.db $82 $E8 $E4 $02 $F4 $07 $F8 $85 $D8 $88 $04 $04 $FC $00 $AA $1C
.db $22 $41 $4D $29 $21 $31 $70 $38 $44 $82 $B2 $92 $04 $08 $08 $E0
.db $A4 $A5 $99 $E0 $46 $30 $1F $04 $C4 $02 $02 $E2 $84 $C8 $F0 $37
.db $77 $73 $73 $81 $80 $81 $83 $D8 $DC $02 $9C $03 $02 $D5 $82 $87
.db $4F $3F $37 $23 $41 $41 $7F $C2 $E4 $F8 $D8 $88 $04 $04 $FC $37
.db $77 $53 $83 $81 $41 $21 $23 $D8 $DC $94 $82 $02 $04 $08 $88 $27
.db $5F $6F $46 $82 $82 $FE $00 $C8 $F4 $EC $C4 $82 $82 $FE $00 $E0
.db $A4 $A5 $99 $E0 $46 $F0 $3F $37 $37 $33 $E3 $21 $20 $21 $23 $27
.db $2F $3F $37 $23 $41 $41 $7F $00 $1C $22 $41 $41 $42 $23 $20 $20
.db $10 $0C $03 $05 $00 $82 $38 $47 $03 $80 $9A $47 $38 $37 $64 $4C
.db $41 $23 $34 $29 $23 $D8 $4C $64 $04 $88 $58 $28 $88 $C8 $E8 $F8
.db $D8 $88 $04 $04 $FC $00 $20 $00 $91 $08 $1F $3E $3C $7E $1F $1E
.db $1C $20 $F0 $F8 $78 $FC $F0 $F0 $70 $1E $03 $1F $84 $1E $3E $3E
.db $00 $05 $F0 $02 $F8 $95 $00 $1F $3F $3E $5C $0E $02 $02 $1C $F0
.db $F8 $F8 $74 $E0 $80 $80 $70 $1E $3F $3E $3C $02 $7C $02 $00 $84
.db $F0 $F8 $F8 $78 $02 $7C $09 $00 $8A $70 $7F $7F $7E $3C $1E $1F
.db $1E $1C $1E $03 $1F $81 $1E $02 $3E $19 $00 $90 $08 $18 $20 $20
.db $00 $03 $16 $1C $20 $30 $08 $08 $00 $80 $D0 $70 $05 $F0 $02 $F8
.db $81 $00 $00

; 1st entry of Pointer Table from 7683 (indexed by _RAM_C3A3_)
; Data from 120A8 to 12356 (687 bytes)
_DATA_120A8_:
.db $92 $00 $03 $33 $3B $19 $1D $6D $63 $00 $0C $9C $98 $B8 $B0 $B0
.db $8E $3D $1B $03 $1F $8B $0E $31 $7F $7E $BC $FC $F8 $F8 $F0 $0C
.db $FE $03 $7F $85 $6F $70 $70 $6F $0F $03 $FE $85 $EE $1E $1E $EE
.db $F0 $03 $0E $05 $00 $03 $F0 $05 $00 $92 $6F $57 $7B $7B $30 $00
.db $0F $1F $E6 $DA $BE $BE $1C $00 $F0 $F8 $1E $3C $06 $00 $82 $F8
.db $7C $06 $00 $82 $3D $1B $03 $1F $82 $0E $31 $03 $FF $02 $1F $02
.db $00 $02 $0F $02 $00 $89 $1C $3E $3E $3C $1C $1F $1F $0F $03 $06
.db $00 $81 $38 $03 $7F $81 $38 $04 $00 $91 $03 $33 $3B $19 $1D $6D
.db $00 $00 $0C $9C $98 $B8 $B0 $B0 $63 $3D $1B $03 $1F $9D $0E $01
.db $8E $7E $BC $FC $F8 $F8 $F0 $00 $18 $26 $7E $7C $33 $00 $00 $0F
.db $18 $E4 $FE $7E $9C $00 $00 $F0 $1F $1E $3C $05 $00 $02 $F8 $81
.db $7C $05 $00 $00 $B0 $03 $37 $7F $7F $3F $7F $FF $FF $0C $9E $FE
.db $FC $FC $F8 $FE $FF $63 $25 $31 $3F $3E $3F $4F $86 $8F $4E $1E
.db $7C $FC $FC $F2 $C1 $C6 $E6 $E1 $F0 $FB $FB $F0 $70 $C3 $C7 $07
.db $1F $3F $3F $1F $0E $05 $11 $02 $21 $81 $3F $05 $08 $02 $04 $93
.db $FC $DE $FE $FD $FC $7B $3B $10 $20 $DB $FF $7F $7F $3E $3C $08
.db $04 $21 $42 $02 $44 $02 $84 $84 $FC $00 $04 $82 $02 $42 $02 $41
.db $89 $7F $00 $63 $25 $31 $3F $3E $3F $CF $03 $C6 $82 $E1 $20 $02
.db $13 $02 $10 $86 $00 $1C $3E $7F $7F $7E $03 $3F $83 $1F $0F $03
.db $04 $00 $82 $38 $7F $03 $FF $B6 $7F $38 $00 $00 $03 $37 $7F $7F
.db $3F $7F $FF $00 $0C $9E $FE $FC $FC $F8 $FE $FF $63 $25 $31 $3F
.db $3E $3F $1F $FF $8F $4E $1E $7C $FC $F8 $F8 $27 $7F $FF $FF $7C
.db $33 $13 $10 $E4 $FE $FF $FF $7E $1C $08 $08 $20 $21 $42 $02 $44
.db $02 $84 $84 $FC $04 $04 $82 $02 $42 $02 $41 $81 $7F $00 $B0 $03
.db $34 $4C $44 $26 $62 $92 $9C $0C $92 $62 $64 $44 $48 $4E $71 $42
.db $24 $20 $20 $21 $31 $4E $81 $81 $42 $02 $84 $04 $0C $F2 $01 $81
.db $81 $86 $90 $8F $8F $90 $70 $01 $01 $C1 $11 $E1 $E1 $11 $0E $03
.db $11 $02 $1F $03 $3F $03 $08 $02 $F8 $03 $FC $92 $91 $A9 $86 $84
.db $4F $3F $10 $20 $19 $25 $C1 $41 $E2 $FC $08 $04 $21 $42 $02 $7C
.db $03 $FC $83 $00 $04 $82 $02 $7E $03 $7F $88 $00 $42 $24 $20 $20
.db $21 $31 $CE $03 $01 $82 $E6 $20 $02 $1F $02 $10 $8C $00 $1C $22
.db $41 $41 $42 $23 $20 $20 $10 $0C $03 $04 $00 $82 $38 $47 $03 $80
.db $B6 $47 $38 $00 $00 $03 $34 $4C $44 $26 $62 $92 $00 $0C $92 $62
.db $64 $44 $48 $4E $9C $42 $24 $20 $20 $21 $31 $1E $71 $81 $42 $02
.db $84 $04 $08 $F8 $27 $59 $81 $83 $4C $3F $1F $10 $E4 $1A $01 $81
.db $62 $FC $F8 $08 $20 $21 $42 $02 $7C $03 $FC $02 $04 $81 $82 $02
.db $7E $03 $7F $00 $17 $00 $81 $08 $07 $00 $85 $30 $08 $18 $18 $0F
.db $02 $07 $02 $00 $84 $30 $38 $38 $E0 $02 $C0 $05 $00 $02 $0E $02
.db $1E $04 $00 $02 $F0 $02 $F8 $85 $00 $08 $00 $00 $03 $02 $07 $02
.db $00 $84 $20 $00 $00 $80 $02 $C0 $04 $00 $02 $38 $02 $78 $04 $00
.db $02 $3C $02 $3E $09 $00 $02 $08 $02 $18 $81 $1F $02 $0F $3A $00
.db $81 $08 $03 $00 $85 $03 $0F $0F $00 $10 $03 $00 $83 $80 $E0 $F0
.db $04 $00 $02 $38 $02 $78 $04 $00 $02 $3C $02 $3E $81 $00 $00

; 1st entry of Pointer Table from 7653 (indexed by _RAM_C3A3_)
; Data from 12357 to 12AC1 (1899 bytes)
_DATA_12357_:
.incbin "baserom_DATA_12357_.inc"

; Pointer Table from 12AC2 to 12ACD (6 entries, indexed by _RAM_C218_)
_DATA_12AC2_:
.dw _DATA_12ACE_ _DATA_12AD5_ _DATA_12ADC_ _DATA_12AE5_ _DATA_12AEE_ _DATA_12AF7_

; 1st entry of Pointer Table from 12AC2 (indexed by _RAM_C218_)
; Data from 12ACE to 12AD4 (7 bytes)
_DATA_12ACE_:
.db $03 $00 $64 $20 $64 $40 $64

; 2nd entry of Pointer Table from 12AC2 (indexed by _RAM_C218_)
; Data from 12AD5 to 12ADB (7 bytes)
_DATA_12AD5_:
.db $03 $60 $64 $80 $64 $A0 $64

; 3rd entry of Pointer Table from 12AC2 (indexed by _RAM_C218_)
; Data from 12ADC to 12AE4 (9 bytes)
_DATA_12ADC_:
.db $04 $A0 $6B $C0 $6B $E0 $6B $00 $6C

; 4th entry of Pointer Table from 12AC2 (indexed by _RAM_C218_)
; Data from 12AE5 to 12AED (9 bytes)
_DATA_12AE5_:
.db $04 $20 $6C $40 $6C $60 $6C $80 $6C

; 5th entry of Pointer Table from 12AC2 (indexed by _RAM_C218_)
; Data from 12AEE to 12AF6 (9 bytes)
_DATA_12AEE_:
.db $04 $A0 $6C $C0 $6C $E0 $6C $00 $6D

; 6th entry of Pointer Table from 12AC2 (indexed by _RAM_C218_)
; Data from 12AF7 to 12AFD (7 bytes)
_DATA_12AF7_:
.db $03 $C0 $68 $20 $6D $80 $66

; Data from 12AFE to 12D9D (672 bytes)
_DATA_12AFE_:
.db $00 $04 $04
.dsb 9, $00
.db $04 $0A $0A
.dsb 9, $00
.db $04 $0B $0B $00 $00 $F8 $F8 $00 $00 $00 $00 $00 $07 $08 $09 $01
.db $F8 $06 $06 $00 $00 $00 $00 $00 $0F $10 $18 $08 $FE $01 $91 $90
.db $00 $20 $20 $00 $1F $60 $6A $0A $FF $00 $40 $40 $20 $D0 $D0 $00
.db $5F $A0 $A8 $08 $FF $00 $64 $64 $20 $D0 $D0 $00 $7F $80 $AC $2C
.db $FF $00 $A0 $A0 $F0 $08 $88 $80 $7F $80 $95 $15 $FF $00 $90 $90
.db $F8 $04 $54 $50 $7F $80 $BF $3F $FF $00 $FF $FF $F8 $04 $D4 $D0
.db $7F $80 $A0 $20 $FF $00 $00 $00 $F8 $04 $34 $30 $7F $80 $BD $3D
.db $FF $00 $1E $1E $F8 $04 $B4 $B0 $7F $80 $A2 $22 $FF $00 $22 $22
.db $F8 $04 $54 $50 $3F $40 $72 $32 $FF $00 $A5 $A5 $F8 $04 $94 $90
.db $3F $40 $4F $0F $FF $00 $7E $7E $F8 $04 $14 $10 $3F $40 $62 $22
.db $FF $00 $20 $20 $F0 $08 $A8 $A0 $0F $10 $10 $00 $FF $00 $00 $00
.db $F8 $04 $04 $00 $00 $00 $00 $00 $0F $10 $17 $07 $FF $00 $FF $FF
.db $F8 $04 $E4 $E0 $00 $00 $00 $00 $07 $08 $08 $00 $FF $00 $01 $01
.db $F0 $08 $08 $00 $00 $00 $00 $00 $03 $0C $0E $02 $FF $00 $40 $40
.db $E0 $1E $7E $60 $00 $00 $00 $00 $0F $30 $35 $05 $FF $00 $FF $FF
.db $FE $01 $91 $90 $00 $80 $80 $00 $3F $40 $49 $09 $FF $00 $00 $00
.db $FF $00 $A0 $A0 $80 $40 $40 $00 $7F $80 $8A $0A $FF $00 $09 $09
.db $FF $00 $20 $20 $C0 $20 $20 $00 $7F $80 $AA $2A $FF $00 $41 $41
.db $FF $00 $24 $24 $C0 $20 $20 $00 $7F $80 $85 $05 $FF $00 $FF $FF
.db $FF $00 $90 $90 $F0 $08 $48 $40 $7F $80 $88 $08 $FF $00 $42 $42
.db $FF $00 $0C $0C $F0 $08 $08 $00 $7F $80 $D0 $50 $FF $00 $BD $BD
.db $FF $00 $42 $42 $F0 $08 $08 $00 $7F $80 $95 $15 $FF $00 $08 $08
.db $FF $00 $91 $91 $F0 $08 $28 $20 $7F $80 $91 $11 $FF $00 $08 $08
.db $FF $00 $81 $81 $F0 $08 $08 $00 $7F $80 $91 $11 $FF $00 $4A $4A
.db $FF $00 $85 $85 $F0 $08 $08 $00 $7F $80 $F1 $71 $FF $00 $48 $48
.db $FF $00 $91 $91 $F0 $08 $F8 $F0 $7F $80 $90 $10 $FF $00 $B1 $B1
.db $FF $00 $01 $01 $F0 $08 $08 $00 $7F $80 $89 $09 $FF $00 $21 $21
.db $FF $00 $21 $21 $FC $02 $02 $00 $7F $80 $88 $08 $FF $00 $1E $1E
.db $FF $00 $01 $01 $FC $02 $22 $20 $3F $40 $4F $0F $FF $00 $FF $FF
.db $FF $00 $7F $7F $FF $00 $44 $44 $0F $30 $38 $08 $FF $00 $9C $9C
.db $FF $00 $6B $6B $FF $00 $22 $22 $07 $08 $09 $01 $FF $00 $59 $59
.db $FF $00 $21 $21 $80 $40 $40 $00 $07 $08 $0A $02 $FF $00 $FF $FF
.db $FF $00 $FF $FF $80 $40 $40 $00 $0F $10 $14 $04 $FF $00 $FE $FE
.db $F8 $04 $84 $80 $C0 $20 $20 $00 $1F $20 $3F $1F $FF $00 $48 $48
.db $C0 $38 $78 $40 $E0 $10 $F0 $E0 $3F $C0 $C0 $00 $FF $00 $10 $10
.db $FC $03 $13 $10 $3F $40 $52 $12 $FF $00 $12 $12 $FC $02 $02 $00
.db $1F $20 $20 $00 $FF $00 $50 $50 $F8 $04 $04 $00 $1F $20 $3F $1F
.db $FF $00 $FF $FF $F8 $04 $FC $F8 $3F $40 $40 $00 $FF $00 $14 $14
.db $FC $02 $02 $00 $7F $80 $84 $04 $FF $00 $10 $10 $FE $01 $01 $00
.db $7F $80 $80 $00 $FF $00 $90 $90 $FE $01 $11 $10 $00 $FF $FF $00
.db $00 $FF $FF $00 $00 $FF $FF $00

; Data from 12D9E to 12E45 (168 bytes)
_DATA_12D9E_:
.db $20 $00 $20 $00 $42 $00 $43 $00 $44 $00 $20 $00 $45 $00 $46 $00
.db $47 $00 $20 $00 $48 $00 $01 $02 $20 $00 $20 $00 $20 $00 $49 $00
.db $4A $00 $4B $00 $4C $00 $4D $00 $4E $00 $4F $00 $50 $00 $51 $00
.db $52 $00 $53 $00 $20 $00 $20 $00 $20 $00 $54 $00 $55 $00 $56 $00
.db $57 $00 $58 $00 $59 $00 $5A $00 $5B $00 $5C $00 $5D $00 $5E $00
.db $20 $00 $20 $00 $20 $00 $5F $00 $60 $00 $61 $00 $62 $00 $63 $00
.db $64 $00 $65 $00 $66 $00 $67 $00 $68 $00 $01 $02 $20 $00 $20 $00
.db $49 $00 $69 $00 $6A $00 $6B $00 $6C $00 $6D $00 $6E $00 $6F $00
.db $70 $00 $71 $00 $72 $00 $73 $00 $74 $00 $75 $00 $76 $00 $77 $00
.db $78 $00 $79 $00 $7A $00 $7B $00 $7C $00 $7D $00 $7E $00 $7F $00
.db $80 $00 $80 $02 $81 $00 $82 $00

; Data from 12E46 to 12EFB (182 bytes)
_DATA_12E46_:
.db $7C $00 $7D $00 $7E $00 $7F $00 $80 $00 $80 $02 $81 $00 $82 $00
.db $83 $00 $84 $00 $85 $00 $86 $00 $20 $00 $87 $00 $88 $00 $89 $00
.db $8A $00 $20 $00 $20 $00 $8B $00 $8C $00 $8D $00 $8E $00 $8F $00
.db $90 $00 $91 $00 $92 $00 $93 $00 $94 $00 $95 $00 $96 $00 $97 $00
.db $98 $00 $99 $00 $9A $00 $9B $00 $9C $00 $9D $00 $91 $04 $6B $04
.db $9E $00 $9F $00 $A0 $00 $A1 $00 $6D $04 $A2 $00 $A3 $00 $A4 $00
.db $A5 $00 $A6 $00 $20 $00 $20 $00 $A7 $00 $A8 $00 $A9 $00 $AA $00
.db $AB $00 $AC $00 $AD $00 $AE $00 $AF $00 $B0 $00 $B1 $00 $20 $00
.db $20 $00 $B2 $00 $B3 $00 $B4 $00 $B5 $00 $B6 $00 $B7 $00 $B8 $00
.db $B9 $00 $BA $00 $BB $00 $BC $00 $20 $00 $20 $00 $BD $00 $BE $00
.db $BF $00 $C0 $00 $C1 $00 $C2 $00 $C3 $00 $C4 $00 $C5 $00 $C6 $00
.db $20 $00 $20 $00 $20 $00

; Data from 12EFC to 12FA3 (168 bytes)
_DATA_12EFC_:
.db $01 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00
.db $02 $00 $02 $00 $02 $00 $01 $02 $03 $00 $16 $00 $16 $02 $16 $02
.db $16 $02 $16 $02 $16 $00 $16 $02 $16 $02 $16 $00 $16 $02 $03 $02
.db $03 $00 $16 $02 $16 $00 $16 $00 $16 $00 $16 $02 $16 $02 $16 $02
.db $16 $02 $16 $02 $16 $02 $03 $02 $03 $00 $16 $02 $16 $02 $16 $02
.db $16 $02 $16 $02 $16 $02 $16 $02 $16 $00 $16 $02 $16 $00 $03 $02
.db $03 $00 $16 $00 $17 $00 $17 $00 $17 $00 $17 $00 $16 $00 $17 $00
.db $16 $02 $17 $00 $16 $02 $03 $02 $03 $00 $16 $02 $18 $00 $18 $00
.db $18 $00 $18 $00 $16 $02 $18 $00 $16 $00 $18 $00 $16 $00 $03 $02
.db $19 $00 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04
.db $02 $04 $02 $04 $02 $04 $01 $06

; Data from 12FA4 to 13013 (112 bytes)
_DATA_12FA4_:
.db $01 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $01 $02 $03 $00
.db $04 $00 $05 $00 $06 $00 $07 $00 $08 $00 $03 $02 $03 $00 $09 $00
.db $09 $00 $0A $00 $0B $00 $0C $00 $03 $02 $03 $00 $0D $00 $0E $00
.db $09 $00 $09 $00 $0F $00 $03 $02 $03 $00 $10 $00 $11 $00 $09 $00
.db $09 $00 $0F $00 $03 $02 $03 $00 $09 $00 $09 $00 $09 $00 $09 $00
.db $0F $00 $03 $02 $03 $00 $09 $00 $09 $00 $09 $00 $09 $00 $0F $00
.db $03 $02 $01 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $01 $06

; Data from 13014 to 130A3 (144 bytes)
_DATA_13014_:
.db $01 $00 $02 $00 $02 $00 $02 $00 $02 $00 $01 $02 $03 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $03 $02 $03 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $03 $02 $03 $00 $09 $00 $09 $00 $09 $00 $09 $00 $03 $02
.db $03 $00 $09 $00 $09 $00 $09 $00 $09 $00 $03 $02 $03 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $03 $02 $03 $00 $12 $00 $13 $00 $09 $00
.db $09 $00 $03 $02 $03 $00 $14 $00 $15 $00 $09 $00 $09 $00 $03 $02
.db $03 $00 $09 $00 $09 $00 $13 $02 $12 $02 $03 $02 $03 $00 $13 $00
.db $09 $00 $15 $02 $14 $02 $03 $02 $03 $00 $15 $00 $09 $00 $09 $00
.db $09 $00 $03 $02 $01 $04 $02 $04 $02 $04 $02 $04 $02 $04 $01 $06

; Data from 130A4 to 1314B (168 bytes)
_DATA_130A4_:
.db $01 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00
.db $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $01 $02 $03 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $03 $02 $03 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $03 $02 $03 $00 $1A $00 $1A $02 $1A $00 $1A $02 $1A $00
.db $1A $02 $1A $00 $1A $02 $1A $00 $1A $02 $1A $00 $1A $02 $03 $02
.db $03 $00 $1B $00 $1B $02 $1B $00 $1B $02 $1B $00 $1B $02 $1B $00
.db $1B $02 $1B $00 $1B $02 $1B $00 $1B $02 $03 $02 $01 $04 $02 $04
.db $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04
.db $02 $04 $02 $04 $02 $04 $01 $06

; Data from 1314C to 131B1 (102 bytes)
_DATA_1314C_:
.db $1C $00 $1D $00 $1E $00 $1F $00 $20 $00 $21 $00 $22 $00 $23 $00
.db $24 $00 $22 $00 $20 $00 $25 $00 $1D $00 $22 $00 $22 $00 $26 $00
.db $27 $00 $20 $00 $20 $00 $20 $00 $20 $00 $20 $00 $20 $00 $20 $00
.db $20 $00 $20 $00 $20 $00 $20 $00 $20 $00 $20 $00 $20 $00 $20 $00
.db $20 $00 $20 $00 $20 $00 $20 $00 $20 $00 $28 $00 $20 $00 $29 $00
.db $2A $00 $2B $00 $2C $00 $20 $00 $2D $00 $2E $00 $2F $00 $30 $00
.db $20 $00 $20 $00 $20 $00

; Data from 131B2 to 13331 (384 bytes)
_DATA_131B2_:
.db $01 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00 $02 $00
.db $02 $00 $02 $00 $02 $00 $01 $02 $03 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $31 $00 $32 $00 $33 $00 $32 $00 $33 $00 $32 $00 $03 $02
.db $03 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $34 $00 $09 $00 $03 $02 $03 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $09 $00 $35 $00 $36 $00 $36 $00 $03 $02
.db $03 $00 $37 $00 $38 $00 $09 $00 $09 $00 $09 $00 $09 $00 $34 $00
.db $09 $00 $09 $00 $39 $00 $03 $02 $03 $00 $3A $00 $09 $00 $09 $00
.db $09 $00 $09 $00 $35 $00 $09 $00 $09 $00 $09 $00 $39 $06 $03 $02
.db $03 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $34 $00 $09 $00
.db $09 $00 $39 $00 $09 $00 $03 $02 $03 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $34 $00 $09 $00 $09 $00 $09 $00 $3B $00 $09 $00 $03 $02
.db $03 $00 $09 $00 $09 $00 $09 $00 $34 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $39 $00 $09 $00 $03 $02 $03 $00 $09 $00 $09 $00 $35 $00
.db $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $39 $06 $09 $00 $03 $02
.db $03 $00 $09 $00 $09 $00 $34 $00 $09 $00 $09 $00 $09 $00 $09 $00
.db $39 $00 $09 $00 $09 $00 $03 $02 $03 $00 $09 $00 $34 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $09 $00 $39 $06 $09 $00 $09 $00 $03 $02
.db $03 $00 $34 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $39 $00
.db $09 $00 $09 $00 $3C $00 $03 $02 $03 $00 $09 $00 $09 $00 $3D $00
.db $3D $02 $3C $00 $3E $00 $3E $00 $3E $00 $3F $00 $40 $00 $03 $02
.db $03 $00 $3C $00 $3E $00 $41 $00 $40 $00 $41 $00 $40 $00 $40 $00
.db $41 $02 $40 $00 $40 $00 $03 $02 $01 $04 $02 $04 $02 $04 $02 $04
.db $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $02 $04 $01 $06

; Data from 13332 to 13FFF (3278 bytes)
_DATA_13332_:
.incbin "baserom_DATA_13332_.inc"

.BANK 5
.ORG $0000

; 1st entry of Pointer Table from 6702 (indexed by unknown)
; Pointer Table from 14000 to 141FF (256 entries, indexed by unknown)
_DATA_14000_:
.dw _DATA_14450_ _DATA_14458_ _DATA_14460_ _DATA_14468_ _DATA_14470_ _DATA_14478_ _DATA_14480_ _DATA_14488_
.dw _DATA_14490_ _DATA_14498_ _DATA_144A0_ _DATA_144A8_ _DATA_144B0_ _DATA_144B8_ _DATA_144B8_ _DATA_144B8_
.dw _DATA_144B9_ _DATA_144C1_ _DATA_144C9_ _DATA_144C9_ _DATA_144CA_ _DATA_144D2_ _DATA_144DA_ _DATA_144E2_
.dw _DATA_144EA_ _DATA_144F2_ _DATA_144FA_ _DATA_14502_ _DATA_14502_ _DATA_14502_ _DATA_14502_ _DATA_14502_
.dw _DATA_14503_ _DATA_1450B_ _DATA_14513_ _DATA_1451B_ _DATA_14523_ _DATA_1452B_ _DATA_14533_ _DATA_1453B_
.dw _DATA_14543_ _DATA_1454B_ _DATA_14553_ _DATA_1455B_ _DATA_14563_ _DATA_1456B_ _DATA_14573_ _DATA_1457B_
.dw _DATA_14583_ _DATA_1458B_ _DATA_14593_ _DATA_1459B_ _DATA_145A3_ _DATA_145AB_ _DATA_145B3_ _DATA_145BB_
.dw _DATA_145C3_ _DATA_145CB_ _DATA_145D3_ _DATA_145DB_ _DATA_145E3_ _DATA_145EB_ _DATA_145F3_ _DATA_145FB_
.dw _DATA_14603_ _DATA_1460B_ _DATA_14613_ _DATA_1461B_ _DATA_14623_ _DATA_1462B_ _DATA_14633_ _DATA_1463B_
.dw _DATA_14643_ _DATA_14C2D_ _DATA_148CD_ _DATA_14B65_ _DATA_148C5_ _DATA_14C3D_ _DATA_14C45_ _DATA_14C4D_
.dw _DATA_1464C_ _DATA_14654_ _DATA_1465C_ _DATA_14664_ _DATA_1466C_ _DATA_14674_ _DATA_1467C_ _DATA_14684_
.dw _DATA_1468C_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_
.dw _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_ _DATA_14694_
.dw _DATA_14695_ _DATA_1469D_ _DATA_146A5_ _DATA_146AD_ _DATA_146B5_ _DATA_146BD_ _DATA_146C5_ _DATA_146CD_
.dw _DATA_146D5_ _DATA_146DD_ _DATA_146E5_ _DATA_146ED_ _DATA_146F5_ _DATA_146FD_ _DATA_14705_ _DATA_1470D_
.dw _DATA_14715_ _DATA_14715_ _DATA_1471D_ _DATA_14725_ _DATA_1472D_ _DATA_14735_ _DATA_1473D_ _DATA_14745_
.dw _DATA_1474D_ _DATA_14755_ _DATA_1475D_ _DATA_14765_ _DATA_1476D_ _DATA_14775_ _DATA_1477D_ _DATA_14785_
.dw _DATA_1478D_ _DATA_14795_ _DATA_1479D_ _DATA_147A5_ _DATA_147AD_ _DATA_147B5_ _DATA_147BD_ _DATA_147C5_
.dw _DATA_147CD_ _DATA_147D5_ _DATA_147DD_ _DATA_147E5_ _DATA_147ED_ _DATA_147F5_ _DATA_147FD_ _DATA_14805_
.dw _DATA_1480D_ _DATA_14815_ _DATA_1481D_ _DATA_14825_ _DATA_1482D_ _DATA_14835_ _DATA_1483D_ _DATA_14845_
.dw _DATA_1484D_ _DATA_14855_ _DATA_1485D_ _DATA_14865_ _DATA_1486D_ _DATA_14875_ _DATA_1487D_ _DATA_14885_
.dw _DATA_1488D_ _DATA_14895_ _DATA_1489D_ _DATA_148A5_ _DATA_148AD_ _DATA_148B5_ _DATA_148BD_ _DATA_148D5_
.dw _DATA_148DD_ _DATA_148E5_ _DATA_148ED_ _DATA_148F5_ _DATA_148FD_ _DATA_14905_ _DATA_1490D_ _DATA_14915_
.dw _DATA_1491D_ _DATA_14925_ _DATA_1492D_ _DATA_14935_ _DATA_1493D_ _DATA_14945_ _DATA_1494D_ _DATA_14955_
.dw _DATA_1495D_ _DATA_14965_ _DATA_1496D_ _DATA_14975_ _DATA_1497D_ _DATA_14985_ _DATA_1498D_ _DATA_14995_
.dw _DATA_1499D_ _DATA_149A5_ _DATA_149AD_ _DATA_149B5_ _DATA_149BD_ _DATA_149C5_ _DATA_149CD_ _DATA_149D5_
.dw _DATA_149DD_ _DATA_149E5_ _DATA_149ED_ _DATA_149F5_ _DATA_149FD_ _DATA_14A05_ _DATA_14A0D_ _DATA_14A15_
.dw _DATA_14A1D_ _DATA_14A25_ _DATA_14A2D_ _DATA_14A35_ _DATA_14A3D_ _DATA_14A45_ _DATA_14A4D_ _DATA_14A55_
.dw _DATA_14A5D_ _DATA_14A65_ _DATA_14A6D_ _DATA_14A75_ _DATA_14A7D_ _DATA_14A85_ _DATA_14A8D_ _DATA_14A95_
.dw _DATA_14A9D_ _DATA_14AA5_ _DATA_14AAD_ _DATA_14AB5_ _DATA_14ABD_ _DATA_14AC5_ _DATA_14ACD_ _DATA_14AD5_
.dw _DATA_14ADD_ _DATA_14AE5_ _DATA_14AED_ _DATA_14AF5_ _DATA_14AFD_ _DATA_14B05_ _DATA_14B0D_ _DATA_14B15_
.dw _DATA_14B1D_ _DATA_14B25_ _DATA_14B2D_ _DATA_14B35_ _DATA_14B3D_ _DATA_14B45_ _DATA_14B4D_ _DATA_14B55_

; 1st entry of Pointer Table from 679E (indexed by unknown)
; Pointer Table from 14200 to 143FF (256 entries, indexed by unknown)
_DATA_14200_:
.dw _DATA_14450_ _DATA_14458_ _DATA_14460_ _DATA_14468_ _DATA_14470_ _DATA_14478_ _DATA_14480_ _DATA_14488_
.dw _DATA_14490_ _DATA_14498_ _DATA_144A0_ _DATA_144A8_ _DATA_144B0_ _DATA_144B8_ _DATA_144B8_ _DATA_144B8_
.dw _DATA_144B9_ _DATA_144C1_ _DATA_144C9_ _DATA_144C9_ _DATA_144CA_ _DATA_144D2_ _DATA_144DA_ _DATA_144E2_
.dw _DATA_144EA_ _DATA_144F2_ _DATA_144FA_ _DATA_14502_ _DATA_14502_ _DATA_14502_ _DATA_14502_ _DATA_14502_
.dw _DATA_14503_ _DATA_1450B_ _DATA_14513_ _DATA_1451B_ _DATA_14523_ _DATA_1452B_ _DATA_14533_ _DATA_1453B_
.dw _DATA_14543_ _DATA_1454B_ _DATA_14553_ _DATA_1455B_ _DATA_14563_ _DATA_1456B_ _DATA_14573_ _DATA_1457B_
.dw _DATA_14583_ _DATA_1458B_ _DATA_14593_ _DATA_1459B_ _DATA_145A3_ _DATA_145AB_ _DATA_145B3_ _DATA_145BB_
.dw _DATA_145C3_ _DATA_145CB_ _DATA_145D3_ _DATA_145DB_ _DATA_145E3_ _DATA_145EB_ _DATA_145F3_ _DATA_145FB_
.dw _DATA_14603_ _DATA_1460B_ _DATA_14613_ _DATA_1461B_ _DATA_14623_ _DATA_1462B_ _DATA_14633_ _DATA_1463B_
.dw _DATA_14643_ _DATA_14C2D_ _DATA_148CD_ _DATA_14B65_ _DATA_148C5_ _DATA_14C3D_ _DATA_14C45_ _DATA_14C4D_
.dw _DATA_14B5D_ _DATA_14B6D_ _DATA_14B75_ _DATA_14B7D_ _DATA_14B85_ _DATA_14B8D_ _DATA_14B95_ _DATA_14B9D_
.dw _DATA_14BA5_ _DATA_14BAD_ _DATA_14BB5_ _DATA_14BBD_ _DATA_14BC5_ _DATA_14BCD_ _DATA_14BD5_ _DATA_14BDD_
.dw _DATA_14BE5_ _DATA_14BED_ _DATA_14BF5_ _DATA_14BFD_ _DATA_14C05_ _DATA_14C0D_ _DATA_14C15_ _DATA_14C1D_
.dw _DATA_14C25_ _DATA_14C35_ _DATA_146A5_ _DATA_146AD_ _DATA_146B5_ _DATA_146BD_ _DATA_146C5_ _DATA_146CD_
.dw _DATA_146D5_ _DATA_146DD_ _DATA_146E5_ _DATA_146ED_ _DATA_146F5_ _DATA_146FD_ _DATA_14705_ _DATA_1470D_
.dw _DATA_14715_ _DATA_14715_ _DATA_14C55_ _DATA_14C5D_ _DATA_14C65_ _DATA_14C6D_ _DATA_14C75_ _DATA_14C7D_
.dw _DATA_14C85_ _DATA_14C8D_ _DATA_14C95_ _DATA_14C9D_ _DATA_14CA5_ _DATA_14CAD_ _DATA_14CB5_ _DATA_14CBD_
.dw _DATA_14CC5_ _DATA_14CCD_ _DATA_14CD5_ _DATA_14CDD_ _DATA_14CE5_ _DATA_14CED_ _DATA_14CF5_ _DATA_14CFD_
.dw _DATA_14D05_ _DATA_14D0D_ _DATA_14D15_ _DATA_14D1D_ _DATA_14D25_ _DATA_14D2D_ _DATA_147FD_ _DATA_14805_
.dw _DATA_1480D_ _DATA_14815_ _DATA_1481D_ _DATA_14825_ _DATA_1482D_ _DATA_14835_ _DATA_1483D_ _DATA_14845_
.dw _DATA_1484D_ _DATA_14855_ _DATA_1485D_ _DATA_14865_ _DATA_1486D_ _DATA_14875_ _DATA_1487D_ _DATA_14885_
.dw _DATA_1488D_ _DATA_14895_ _DATA_1489D_ _DATA_148A5_ _DATA_148AD_ _DATA_148B5_ _DATA_148BD_ _DATA_148D5_
.dw _DATA_148DD_ _DATA_148E5_ _DATA_148ED_ _DATA_148F5_ _DATA_148FD_ _DATA_14905_ _DATA_1490D_ _DATA_14915_
.dw _DATA_1491D_ _DATA_14925_ _DATA_1492D_ _DATA_14935_ _DATA_1493D_ _DATA_14945_ _DATA_1494D_ _DATA_14955_
.dw _DATA_1495D_ _DATA_14965_ _DATA_1496D_ _DATA_14975_ _DATA_1497D_ _DATA_14985_ _DATA_1498D_ _DATA_14995_
.dw _DATA_1499D_ _DATA_149A5_ _DATA_149AD_ _DATA_149B5_ _DATA_149BD_ _DATA_149C5_ _DATA_149CD_ _DATA_149D5_
.dw _DATA_149DD_ _DATA_149E5_ _DATA_149ED_ _DATA_149F5_ _DATA_149FD_ _DATA_14A05_ _DATA_14A0D_ _DATA_14A15_
.dw _DATA_14A1D_ _DATA_14A25_ _DATA_14A2D_ _DATA_14A35_ _DATA_14A3D_ _DATA_14A45_ _DATA_14A4D_ _DATA_14A55_
.dw _DATA_14A5D_ _DATA_14A65_ _DATA_14A6D_ _DATA_14A75_ _DATA_14A7D_ _DATA_14A85_ _DATA_14A8D_ _DATA_14A95_
.dw _DATA_14A9D_ _DATA_14AA5_ _DATA_14AAD_ _DATA_14AB5_ _DATA_14ABD_ _DATA_14AC5_ _DATA_14ACD_ _DATA_14AD5_
.dw _DATA_14ADD_ _DATA_14AE5_ _DATA_14AED_ _DATA_14AF5_ _DATA_14AFD_ _DATA_14B05_ _DATA_14B0D_ _DATA_14B15_
.dw _DATA_14B1D_ _DATA_14B25_ _DATA_14B2D_ _DATA_14B35_ _DATA_14B3D_ _DATA_14B45_ _DATA_14B4D_ _DATA_14B55_

; Data from 14400 to 1440F (16 bytes)
_DATA_14400_:
.db $73 $A8 $A4 $A8 $74 $A8 $75 $A8 $A5 $A8 $A6 $A8 $76 $A8 $77 $A8

; Data from 14410 to 1441F (16 bytes)
_DATA_14410_:
.db $73 $88 $A4 $88 $74 $88 $75 $88 $A5 $88 $A6 $88 $76 $88 $77 $88

; Data from 14420 to 1444F (48 bytes)
_DATA_14420_:
.db $39 $80 $3A $80 $3A $82 $39 $82 $3B $00 $00 $06 $00 $06 $3C $10
.db $3C $02 $00 $06 $00 $06 $3C $10 $3D $00 $00 $06 $00 $06 $3C $10
.db $3C $02 $00 $06 $00 $06 $3C $10 $3D $00 $00 $06 $00 $06 $3C $10

; 1st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14450 to 14457 (8 bytes)
_DATA_14450_:
.db $00 $00 $00 $00 $00 $00 $00 $00

; 2nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14458 to 1445F (8 bytes)
_DATA_14458_:
.db $01 $E0 $02 $E0 $03 $E0 $04 $E0

; 3rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14460 to 14467 (8 bytes)
_DATA_14460_:
.db $05 $E0 $06 $E0 $07 $E0 $08 $E0

; 4th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14468 to 1446F (8 bytes)
_DATA_14468_:
.db $09 $E0 $0A $E0 $0B $E0 $0C $E0

; 5th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14470 to 14477 (8 bytes)
_DATA_14470_:
.db $0D $A0 $0E $A0 $0F $A0 $10 $A0

; 6th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14478 to 1447F (8 bytes)
_DATA_14478_:
.db $11 $A0 $12 $A0 $13 $A0 $14 $A0

; 7th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14480 to 14487 (8 bytes)
_DATA_14480_:
.db $15 $A0 $16 $A0 $17 $A0 $18 $A0

; 8th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14488 to 1448F (8 bytes)
_DATA_14488_:
.db $19 $A0 $1A $A0 $1B $A0 $1C $A0

; 9th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14490 to 14497 (8 bytes)
_DATA_14490_:
.db $1D $A0 $1E $A0 $1F $A0 $20 $A0

; 10th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14498 to 1449F (8 bytes)
_DATA_14498_:
.db $21 $A0 $22 $A0 $23 $A0 $24 $A0

; 11th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144A0 to 144A7 (8 bytes)
_DATA_144A0_:
.db $25 $40 $25 $42 $26 $40 $26 $42

; 12th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144A8 to 144AF (8 bytes)
_DATA_144A8_:
.db $27 $00 $28 $00 $29 $00 $2A $00

; 13th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144B0 to 144B7 (8 bytes)
_DATA_144B0_:
.db $2B $00 $2C $00 $2D $00 $2E $00

; 14th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144B8 to 144B8 (1 bytes)
_DATA_144B8_:
.db $00

; 17th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144B9 to 144C0 (8 bytes)
_DATA_144B9_:
.db $39 $C0 $3A $C0 $3B $C0 $3C $C0

; 18th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144C1 to 144C8 (8 bytes)
_DATA_144C1_:
.db $7C $C0 $7D $C0 $7E $C0 $7F $C0

; 19th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144C9 to 144C9 (1 bytes)
_DATA_144C9_:
.db $00

; 21st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144CA to 144D1 (8 bytes)
_DATA_144CA_:
.db $3D $80 $3E $80 $3F $80 $40 $80

; 22nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144D2 to 144D9 (8 bytes)
_DATA_144D2_:
.db $41 $80 $42 $80 $43 $80 $44 $80

; 23rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144DA to 144E1 (8 bytes)
_DATA_144DA_:
.db $80 $80 $81 $80 $82 $80 $83 $80

; 24th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144E2 to 144E9 (8 bytes)
_DATA_144E2_:
.db $84 $80 $85 $80 $86 $80 $87 $80

; 25th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144EA to 144F1 (8 bytes)
_DATA_144EA_:
.db $85 $82 $84 $82 $87 $82 $86 $82

; 26th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144F2 to 144F9 (8 bytes)
_DATA_144F2_:
.db $87 $86 $86 $86 $85 $86 $84 $86

; 27th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 144FA to 14501 (8 bytes)
_DATA_144FA_:
.db $86 $84 $87 $84 $84 $84 $85 $84

; 28th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14502 to 14502 (1 bytes)
_DATA_14502_:
.db $00

; 33rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14503 to 1450A (8 bytes)
_DATA_14503_:
.db $35 $00 $36 $00 $37 $00 $38 $00

; 34th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1450B to 14512 (8 bytes)
_DATA_1450B_:
.db $78 $20 $79 $20 $7A $20 $7B $20

; 35th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14513 to 1451A (8 bytes)
_DATA_14513_:
.db $00 $06 $76 $00 $00 $06 $77 $00

; 36th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1451B to 14522 (8 bytes)
_DATA_1451B_:
.db $78 $00 $79 $00 $79 $00 $79 $00

; 37th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14523 to 1452A (8 bytes)
_DATA_14523_:
.db $78 $02 $76 $02 $79 $00 $77 $02

; 38th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1452B to 14532 (8 bytes)
_DATA_1452B_:
.db $00 $06 $7A $00 $7B $00 $7C $00

; 39th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14533 to 1453A (8 bytes)
_DATA_14533_:
.db $7A $00 $7A $00 $7D $00 $7E $00

; 40th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1453B to 14542 (8 bytes)
_DATA_1453B_:
.db $7A $00 $7A $00 $7C $00 $7F $00

; 41st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14543 to 1454A (8 bytes)
_DATA_14543_:
.db $80 $00 $81 $00 $7C $00 $82 $00

; 42nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1454B to 14552 (8 bytes)
_DATA_1454B_:
.db $83 $00 $84 $00 $85 $00 $86 $00

; 43rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14553 to 1455A (8 bytes)
_DATA_14553_:
.db $87 $00 $88 $00 $89 $00 $8A $00

; 44th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1455B to 14562 (8 bytes)
_DATA_1455B_:
.db $8B $00 $84 $00 $8B $00 $86 $00

; 45th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14563 to 1456A (8 bytes)
_DATA_14563_:
.db $8C $00 $8D $00 $8B $00 $8B $00

; 46th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1456B to 14572 (8 bytes)
_DATA_1456B_:
.db $00 $00 $00 $00 $8E $00 $8F $00

; 47th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14573 to 1457A (8 bytes)
_DATA_14573_:
.db $00 $00 $00 $00 $90 $00 $90 $02

; 48th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1457B to 14582 (8 bytes)
_DATA_1457B_:
.db $00 $00 $00 $00 $8F $02 $8E $02

; 49th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14583 to 1458A (8 bytes)
_DATA_14583_:
.db $91 $00 $92 $00 $93 $00 $94 $00

; 50th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1458B to 14592 (8 bytes)
_DATA_1458B_:
.db $95 $00 $96 $00 $97 $00 $98 $00

; 51st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14593 to 1459A (8 bytes)
_DATA_14593_:
.db $99 $00 $9A $00 $9B $00 $9C $00

; 52nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1459B to 145A2 (8 bytes)
_DATA_1459B_:
.db $9D $00 $95 $02 $9E $00 $97 $02

; 53rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145A3 to 145AA (8 bytes)
_DATA_145A3_:
.db $92 $02 $91 $02 $94 $00 $93 $02

; 54th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145AB to 145B2 (8 bytes)
_DATA_145AB_:
.db $9F $00 $A0 $00 $A1 $00 $A2 $00

; 55th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145B3 to 145BA (8 bytes)
_DATA_145B3_:
.db $A3 $00 $A4 $00 $94 $00 $A5 $00

; 56th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145BB to 145C2 (8 bytes)
_DATA_145BB_:
.db $A6 $00 $A6 $00 $A7 $00 $A8 $00

; 57th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145C3 to 145CA (8 bytes)
_DATA_145C3_:
.db $A4 $02 $A3 $02 $A5 $02 $94 $00

; 58th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145CB to 145D2 (8 bytes)
_DATA_145CB_:
.db $A0 $02 $9F $02 $A2 $02 $A1 $02

; 59th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145D3 to 145DA (8 bytes)
_DATA_145D3_:
.db $A3 $00 $A9 $00 $94 $00 $A5 $00

; 60th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145DB to 145E2 (8 bytes)
_DATA_145DB_:
.db $AA $60 $AA $60 $AA $60 $AA $60

; 61st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145E3 to 145EA (8 bytes)
_DATA_145E3_:
.db $A9 $02 $A3 $02 $A5 $02 $94 $00

; 62nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145EB to 145F2 (8 bytes)
_DATA_145EB_:
.db $88 $20 $89 $20 $78 $20 $79 $20

; 63rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145F3 to 145FA (8 bytes)
_DATA_145F3_:
.db $8A $20 $8B $20 $8C $20 $8D $20

; 64th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 145FB to 14602 (8 bytes)
_DATA_145FB_:
.db $8E $20 $8F $20 $90 $20 $91 $20

; 65th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14603 to 1460A (8 bytes)
_DATA_14603_:
.db $92 $20 $93 $20 $94 $20 $95 $20

; 66th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1460B to 14612 (8 bytes)
_DATA_1460B_:
.db $78 $20 $79 $20 $97 $98 $98 $98

; 67th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14613 to 1461A (8 bytes)
_DATA_14613_:
.db $78 $20 $79 $20 $99 $98 $9A $98

; 68th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1461B to 14622 (8 bytes)
_DATA_1461B_:
.db $9B $98 $9C $98 $9D $98 $9E $98

; 69th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14623 to 1462A (8 bytes)
_DATA_14623_:
.db $9F $98 $A0 $98 $A1 $98 $A2 $98

; 70th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1462B to 14632 (8 bytes)
_DATA_1462B_:
.db $A3 $A8 $A4 $A8 $A5 $A8 $A6 $A8

; 71st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14633 to 1463A (8 bytes)
_DATA_14633_:
.db $A7 $A8 $A8 $A8 $A9 $A8 $AA $A8

; 72nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1463B to 14642 (8 bytes)
_DATA_1463B_:
.db $68 $80 $69 $80 $6A $80 $6B $80

; 73rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14643 to 1464B (9 bytes)
_DATA_14643_:
.db $6C $80 $6D $80 $6E $80 $6F $80 $00

; 81st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1464C to 14653 (8 bytes)
_DATA_1464C_:
.db $3D $80 $3E $80 $3F $80 $40 $80

; 82nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14654 to 1465B (8 bytes)
_DATA_14654_:
.db $41 $80 $42 $80 $43 $80 $44 $80

; 83rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1465C to 14663 (8 bytes)
_DATA_1465C_:
.db $45 $80 $46 $80 $47 $00 $48 $80

; 84th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14664 to 1466B (8 bytes)
_DATA_14664_:
.db $46 $82 $45 $82 $48 $82 $47 $02

; 85th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1466C to 14673 (8 bytes)
_DATA_1466C_:
.db $49 $80 $4A $80 $47 $00 $48 $80

; 86th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14674 to 1467B (8 bytes)
_DATA_14674_:
.db $4A $82 $49 $82 $48 $82 $47 $02

; 87th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1467C to 14683 (8 bytes)
_DATA_1467C_:
.db $4B $80 $4C $80 $4D $80 $4E $80

; 88th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14684 to 1468B (8 bytes)
_DATA_14684_:
.db $4C $82 $4B $82 $4E $82 $4D $82

; 89th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1468C to 14693 (8 bytes)
_DATA_1468C_:
.db $3D $80 $3E $80 $4F $80 $50 $80

; 90th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14694 to 14694 (1 bytes)
_DATA_14694_:
.db $00

; 105th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14695 to 1469C (8 bytes)
_DATA_14695_:
.db $45 $70 $45 $74 $45 $74 $45 $72

; 106th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1469D to 146A4 (8 bytes)
_DATA_1469D_:
.db $46 $70 $47 $70 $45 $74 $45 $72

; 107th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146A5 to 146AC (8 bytes)
_DATA_146A5_:
.db $45 $80 $46 $80 $47 $80 $48 $80

; 108th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146AD to 146B4 (8 bytes)
_DATA_146AD_:
.db $49 $80 $4A $80 $4B $80 $4C $80

; 109th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146B5 to 146BC (8 bytes)
_DATA_146B5_:
.db $46 $82 $4D $80 $48 $82 $4E $80

; 110th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146BD to 146C4 (8 bytes)
_DATA_146BD_:
.db $4D $82 $46 $80 $4E $82 $48 $80

; 111th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146C5 to 146CC (8 bytes)
_DATA_146C5_:
.db $4A $82 $4F $80 $4C $82 $50 $80

; 112th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146CD to 146D4 (8 bytes)
_DATA_146CD_:
.db $4F $82 $4A $80 $50 $82 $4C $80

; 113th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146D5 to 146DC (8 bytes)
_DATA_146D5_:
.db $45 $80 $46 $80 $51 $80 $52 $80

; 114th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146DD to 146E4 (8 bytes)
_DATA_146DD_:
.db $51 $84 $52 $84 $45 $84 $46 $84

; 115th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146E5 to 146EC (8 bytes)
_DATA_146E5_:
.db $4A $82 $49 $82 $53 $80 $54 $80

; 116th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146ED to 146F4 (8 bytes)
_DATA_146ED_:
.db $53 $84 $54 $84 $4A $86 $49 $86

; 117th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146F5 to 146FC (8 bytes)
_DATA_146F5_:
.db $55 $80 $56 $80 $53 $80 $54 $80

; 118th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 146FD to 14704 (8 bytes)
_DATA_146FD_:
.db $4D $82 $57 $80 $4E $82 $58 $80

; 119th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14705 to 1470C (8 bytes)
_DATA_14705_:
.db $59 $20 $5A $80 $5B $80 $5C $80

; 120th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1470D to 14714 (8 bytes)
_DATA_1470D_:
.db $5D $20 $5E $20 $5F $20 $60 $80

; 121st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14715 to 1471C (8 bytes)
_DATA_14715_:
.db $61 $20 $62 $80 $63 $80 $64 $80

; 123rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1471D to 14724 (8 bytes)
_DATA_1471D_:
.db $00 $06 $00 $06 $41 $00 $42 $00

; 124th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14725 to 1472C (8 bytes)
_DATA_14725_:
.db $43 $00 $44 $00 $45 $00 $46 $00

; 125th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1472D to 14734 (8 bytes)
_DATA_1472D_:
.db $47 $00 $48 $00 $49 $00 $4A $00

; 126th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14735 to 1473C (8 bytes)
_DATA_14735_:
.db $4B $00 $4C $00 $4C $02 $4B $02

; 127th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1473D to 14744 (8 bytes)
_DATA_1473D_:
.db $4D $10 $4E $10 $4C $92 $4B $92

; 128th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14745 to 1474C (8 bytes)
_DATA_14745_:
.db $4F $70 $4F $72 $50 $70 $51 $70

; 129th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1474D to 14754 (8 bytes)
_DATA_1474D_:
.db $52 $70 $53 $70 $54 $70 $55 $70

; 130th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14755 to 1475C (8 bytes)
_DATA_14755_:
.db $56 $00 $56 $00 $57 $00 $58 $00

; 131st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1475D to 14764 (8 bytes)
_DATA_1475D_:
.db $56 $00 $56 $00 $59 $00 $5A $00

; 132nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14765 to 1476C (8 bytes)
_DATA_14765_:
.db $5B $00 $5C $00 $5D $00 $5E $00

; 133rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1476D to 14774 (8 bytes)
_DATA_1476D_:
.db $5F $00 $60 $00 $61 $00 $62 $00

; 134th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14775 to 1477C (8 bytes)
_DATA_14775_:
.db $63 $00 $64 $00 $65 $00 $66 $00

; 135th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1477D to 14784 (8 bytes)
_DATA_1477D_:
.db $5D $00 $67 $00 $5D $00 $68 $00

; 136th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14785 to 1478C (8 bytes)
_DATA_14785_:
.db $67 $02 $5D $02 $68 $02 $5D $02

; 137th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1478D to 14794 (8 bytes)
_DATA_1478D_:
.db $64 $02 $63 $02 $66 $02 $65 $02

; 138th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14795 to 1479C (8 bytes)
_DATA_14795_:
.db $69 $00 $6A $00 $69 $00 $6A $00

; 139th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1479D to 147A4 (8 bytes)
_DATA_1479D_:
.db $6B $00 $6C $00 $6D $00 $6E $00

; 140th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147A5 to 147AC (8 bytes)
_DATA_147A5_:
.db $6F $00 $6B $02 $6E $02 $6D $02

; 141st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147AD to 147B4 (8 bytes)
_DATA_147AD_:
.db $6A $02 $69 $02 $6A $02 $69 $02

; 142nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147B5 to 147BC (8 bytes)
_DATA_147B5_:
.db $70 $00 $71 $00 $70 $00 $71 $00

; 143rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147BD to 147C4 (8 bytes)
_DATA_147BD_:
.db $71 $00 $70 $02 $71 $00 $70 $02

; 144th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147C5 to 147CC (8 bytes)
_DATA_147C5_:
.db $72 $10 $73 $10 $4C $92 $4B $92

; 145th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147CD to 147D4 (8 bytes)
_DATA_147CD_:
.db $49 $00 $4A $00 $4B $00 $4C $00

; 146th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147D5 to 147DC (8 bytes)
_DATA_147D5_:
.db $4A $02 $49 $02 $4C $02 $4B $02

; 147th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147DD to 147E4 (8 bytes)
_DATA_147DD_:
.db $4B $00 $4D $00 $4B $00 $4E $00

; 148th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147E5 to 147EC (8 bytes)
_DATA_147E5_:
.db $4F $00 $4B $02 $50 $00 $4B $02

; 149th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147ED to 147F4 (8 bytes)
_DATA_147ED_:
.db $00 $06 $51 $00 $00 $06 $52 $00

; 150th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147F5 to 147FC (8 bytes)
_DATA_147F5_:
.db $53 $00 $54 $00 $4B $00 $4C $00

; 151st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 147FD to 14804 (8 bytes)
_DATA_147FD_:
.db $55 $00 $53 $02 $4C $02 $4B $02

; 152nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14805 to 1480C (8 bytes)
_DATA_14805_:
.db $56 $00 $56 $02 $57 $00 $57 $02

; 153rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1480D to 14814 (8 bytes)
_DATA_1480D_:
.db $00 $06 $00 $06 $58 $00 $58 $02

; 154th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14815 to 1481C (8 bytes)
_DATA_14815_:
.db $59 $00 $59 $00 $59 $00 $59 $00

; 155th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1481D to 14824 (8 bytes)
_DATA_1481D_:
.db $59 $00 $5A $00 $59 $00 $5B $00

; 156th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14825 to 1482C (8 bytes)
_DATA_14825_:
.db $5C $00 $5D $00 $5E $00 $5F $00

; 157th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1482D to 14834 (8 bytes)
_DATA_1482D_:
.db $60 $00 $5C $02 $5F $00 $5E $02

; 158th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14835 to 1483C (8 bytes)
_DATA_14835_:
.db $61 $00 $59 $00 $59 $00 $59 $00

; 159th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1483D to 14844 (8 bytes)
_DATA_1483D_:
.db $61 $00 $61 $00 $59 $00 $59 $00

; 160th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14845 to 1484C (8 bytes)
_DATA_14845_:
.db $5D $02 $5C $02 $5F $00 $5E $02

; 161st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1484D to 14854 (8 bytes)
_DATA_1484D_:
.db $5A $00 $61 $00 $5B $00 $59 $00

; 162nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14855 to 1485C (8 bytes)
_DATA_14855_:
.db $58 $00 $58 $02 $62 $00 $63 $00

; 163rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1485D to 14864 (8 bytes)
_DATA_1485D_:
.db $64 $00 $64 $00 $59 $00 $59 $00

; 164th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14865 to 1486C (8 bytes)
_DATA_14865_:
.db $5A $00 $59 $00 $5B $00 $59 $00

; 165th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1486D to 14874 (8 bytes)
_DATA_1486D_:
.db $00 $06 $00 $06 $64 $00 $64 $00

; 166th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14875 to 1487C (8 bytes)
_DATA_14875_:
.db $59 $00 $61 $00 $59 $00 $59 $00

; 167th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1487D to 14884 (8 bytes)
_DATA_1487D_:
.db $65 $00 $65 $00 $5F $00 $5F $00

; 168th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14885 to 1488C (8 bytes)
_DATA_14885_:
.db $66 $00 $66 $00 $67 $00 $67 $00

; 169th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1488D to 14894 (8 bytes)
_DATA_1488D_:
.db $67 $00 $67 $00 $67 $00 $67 $00

; 170th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14895 to 1489C (8 bytes)
_DATA_14895_:
.db $67 $00 $67 $00 $68 $00 $68 $00

; 171st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1489D to 148A4 (8 bytes)
_DATA_1489D_:
.db $69 $80 $6A $80 $6A $82 $69 $82

; 172nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148A5 to 148AC (8 bytes)
_DATA_148A5_:
.db $6B $00 $6C $00 $6D $00 $6C $00

; 173rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148AD to 148B4 (8 bytes)
_DATA_148AD_:
.db $6E $00 $6E $02 $6E $00 $6E $02

; 174th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148B5 to 148BC (8 bytes)
_DATA_148B5_:
.db $6C $00 $6B $02 $6C $00 $6D $02

; 175th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148BD to 148C4 (8 bytes)
_DATA_148BD_:
.db $6F $00 $6F $00 $70 $00 $70 $00

; 77th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148C5 to 148CC (8 bytes)
_DATA_148C5_:
.db $71 $80 $71 $82 $72 $80 $73 $80

; 75th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148CD to 148D4 (8 bytes)
_DATA_148CD_:
.db $AA $00 $AA $00 $AA $00 $AA $00

; 176th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148D5 to 148DC (8 bytes)
_DATA_148D5_:
.db $3D $00 $3E $00 $3F $00 $40 $00

; 177th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148DD to 148E4 (8 bytes)
_DATA_148DD_:
.db $41 $00 $42 $00 $43 $00 $44 $00

; 178th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148E5 to 148EC (8 bytes)
_DATA_148E5_:
.db $45 $00 $46 $00 $47 $00 $48 $00

; 179th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148ED to 148F4 (8 bytes)
_DATA_148ED_:
.db $46 $02 $45 $02 $48 $02 $47 $02

; 180th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148F5 to 148FC (8 bytes)
_DATA_148F5_:
.db $61 $00 $49 $00 $61 $00 $4A $00

; 181st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 148FD to 14904 (8 bytes)
_DATA_148FD_:
.db $4B $00 $4C $00 $4D $00 $4E $00

; 182nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14905 to 1490C (8 bytes)
_DATA_14905_:
.db $49 $02 $61 $00 $4A $02 $61 $00

; 183rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1490D to 14914 (8 bytes)
_DATA_1490D_:
.db $4C $02 $4B $02 $4E $02 $4D $02

; 184th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14915 to 1491C (8 bytes)
_DATA_14915_:
.db $4F $10 $00 $16 $50 $10 $00 $16

; 185th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1491D to 14924 (8 bytes)
_DATA_1491D_:
.db $51 $10 $52 $10 $4E $12 $53 $10

; 186th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14925 to 1492C (8 bytes)
_DATA_14925_:
.db $00 $16 $4F $12 $00 $16 $50 $12

; 187th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1492D to 14934 (8 bytes)
_DATA_1492D_:
.db $52 $12 $51 $12 $53 $12 $4E $10

; 188th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14935 to 1493C (8 bytes)
_DATA_14935_:
.db $54 $80 $55 $80 $56 $80 $57 $80

; 189th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1493D to 14944 (8 bytes)
_DATA_1493D_:
.db $54 $80 $58 $80 $56 $80 $59 $80

; 190th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14945 to 1494C (8 bytes)
_DATA_14945_:
.db $58 $82 $54 $82 $59 $82 $56 $82

; 191st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1494D to 14954 (8 bytes)
_DATA_1494D_:
.db $5A $70 $5A $72 $5B $70 $5C $70

; 192nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14955 to 1495C (8 bytes)
_DATA_14955_:
.db $5D $70 $5E $70 $5F $70 $60 $70

; 193rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1495D to 14964 (8 bytes)
_DATA_1495D_:
.db $3D $80 $3E $80 $3F $80 $40 $80

; 194th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14965 to 1496C (8 bytes)
_DATA_14965_:
.db $41 $80 $42 $80 $43 $80 $44 $80

; 195th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1496D to 14974 (8 bytes)
_DATA_1496D_:
.db $45 $80 $46 $80 $47 $80 $48 $80

; 196th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14975 to 1497C (8 bytes)
_DATA_14975_:
.db $46 $82 $45 $82 $48 $82 $47 $82

; 197th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1497D to 14984 (8 bytes)
_DATA_1497D_:
.db $3D $10 $3E $10 $3F $10 $40 $10

; 198th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14985 to 1498C (8 bytes)
_DATA_14985_:
.db $41 $10 $42 $10 $43 $10 $44 $10

; 199th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1498D to 14994 (8 bytes)
_DATA_1498D_:
.db $61 $00 $61 $00 $61 $00 $61 $00

; 200th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14995 to 1499C (8 bytes)
_DATA_14995_:
.db $41 $00 $42 $00 $43 $00 $44 $00

; 201st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 1499D to 149A4 (8 bytes)
_DATA_1499D_:
.db $4A $00 $4B $00 $4C $00 $4D $00

; 202nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149A5 to 149AC (8 bytes)
_DATA_149A5_:
.db $4E $00 $4F $00 $50 $00 $44 $00

; 203rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149AD to 149B4 (8 bytes)
_DATA_149AD_:
.db $51 $00 $52 $00 $53 $00 $54 $00

; 204th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149B5 to 149BC (8 bytes)
_DATA_149B5_:
.db $00 $06 $55 $00 $00 $06 $56 $00

; 205th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149BD to 149C4 (8 bytes)
_DATA_149BD_:
.db $57 $00 $58 $00 $59 $00 $5A $00

; 206th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149C5 to 149CC (8 bytes)
_DATA_149C5_:
.db $5B $00 $5C $00 $5D $00 $5E $00

; 207th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149CD to 149D4 (8 bytes)
_DATA_149CD_:
.db $57 $00 $5F $00 $60 $00 $61 $00

; 208th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149D5 to 149DC (8 bytes)
_DATA_149D5_:
.db $57 $00 $58 $00 $62 $00 $5A $00

; 209th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149DD to 149E4 (8 bytes)
_DATA_149DD_:
.db $00 $06 $63 $00 $00 $06 $00 $06

; 210th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149E5 to 149EC (8 bytes)
_DATA_149E5_:
.db $64 $00 $65 $00 $66 $00 $67 $00

; 211th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149ED to 149F4 (8 bytes)
_DATA_149ED_:
.db $68 $00 $69 $00 $6A $00 $6B $00

; 212th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149F5 to 149FC (8 bytes)
_DATA_149F5_:
.db $6C $00 $6D $00 $6E $00 $6F $00

; 213th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 149FD to 14A04 (8 bytes)
_DATA_149FD_:
.db $70 $00 $35 $00 $71 $00 $35 $00

; 214th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A05 to 14A0C (8 bytes)
_DATA_14A05_:
.db $72 $00 $35 $00 $73 $00 $74 $00

; 215th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A0D to 14A14 (8 bytes)
_DATA_14A0D_:
.db $35 $00 $70 $02 $35 $00 $71 $02

; 216th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A15 to 14A1C (8 bytes)
_DATA_14A15_:
.db $6D $02 $6C $02 $6F $02 $6E $02

; 217th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A1D to 14A24 (8 bytes)
_DATA_14A1D_:
.db $69 $02 $68 $02 $6B $02 $6A $02

; 218th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A25 to 14A2C (8 bytes)
_DATA_14A25_:
.db $00 $06 $75 $00 $00 $06 $00 $06

; 219th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A2D to 14A34 (8 bytes)
_DATA_14A2D_:
.db $00 $06 $00 $06 $76 $00 $77 $00

; 220th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A35 to 14A3C (8 bytes)
_DATA_14A35_:
.db $64 $00 $65 $00 $78 $00 $79 $00

; 221st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A3D to 14A44 (8 bytes)
_DATA_14A3D_:
.db $35 $00 $35 $00 $7A $00 $7B $00

; 222nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A45 to 14A4C (8 bytes)
_DATA_14A45_:
.db $35 $00 $35 $00 $7C $00 $7D $00

; 223rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A4D to 14A54 (8 bytes)
_DATA_14A4D_:
.db $7E $80 $7F $80 $7F $82 $7E $82

; 224th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A55 to 14A5C (8 bytes)
_DATA_14A55_:
.db $45 $60 $45 $60 $46 $60 $47 $60

; 225th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A5D to 14A64 (8 bytes)
_DATA_14A5D_:
.db $48 $60 $48 $60 $49 $60 $49 $60

; 226th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A65 to 14A6C (8 bytes)
_DATA_14A65_:
.db $3D $80 $3E $80 $3E $80 $3D $80

; 227th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A6D to 14A74 (8 bytes)
_DATA_14A6D_:
.db $3F $60 $3F $62 $3F $60 $3F $62

; 228th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A75 to 14A7C (8 bytes)
_DATA_14A75_:
.db $3F $A0 $3F $A2 $3F $A0 $3F $A2

; 229th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A7D to 14A84 (8 bytes)
_DATA_14A7D_:
.db $40 $00 $40 $02 $40 $00 $40 $02

; 230th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A85 to 14A8C (8 bytes)
_DATA_14A85_:
.db $41 $60 $42 $60 $43 $60 $43 $60

; 231st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A8D to 14A94 (8 bytes)
_DATA_14A8D_:
.db $43 $64 $43 $64 $44 $60 $44 $60

; 232nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A95 to 14A9C (8 bytes)
_DATA_14A95_:
.db $45 $00 $45 $00 $45 $00 $45 $00

; 233rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14A9D to 14AA4 (8 bytes)
_DATA_14A9D_:
.db $46 $00 $46 $00 $46 $00 $46 $00

; 234th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AA5 to 14AAC (8 bytes)
_DATA_14AA5_:
.db $45 $00 $45 $00 $47 $00 $48 $00

; 235th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AAD to 14AB4 (8 bytes)
_DATA_14AAD_:
.db $45 $00 $45 $00 $48 $00 $49 $00

; 236th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AB5 to 14ABC (8 bytes)
_DATA_14AB5_:
.db $46 $00 $46 $00 $4A $00 $4B $00

; 237th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14ABD to 14AC4 (8 bytes)
_DATA_14ABD_:
.db $46 $00 $46 $00 $4B $00 $4C $00

; 238th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AC5 to 14ACC (8 bytes)
_DATA_14AC5_:
.db $4D $00 $4E $00 $4D $00 $4E $00

; 239th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14ACD to 14AD4 (8 bytes)
_DATA_14ACD_:
.db $4E $02 $4D $02 $4F $00 $4D $02

; 240th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AD5 to 14ADC (8 bytes)
_DATA_14AD5_:
.db $45 $00 $45 $00 $48 $00 $48 $00

; 241st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14ADD to 14AE4 (8 bytes)
_DATA_14ADD_:
.db $50 $00 $51 $00 $52 $00 $53 $00

; 242nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AE5 to 14AEC (8 bytes)
_DATA_14AE5_:
.db $50 $00 $51 $00 $54 $00 $55 $00

; 243rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AED to 14AF4 (8 bytes)
_DATA_14AED_:
.db $46 $00 $46 $00 $46 $00 $56 $00

; 244th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AF5 to 14AFC (8 bytes)
_DATA_14AF5_:
.db $57 $00 $58 $00 $59 $00 $5A $00

; 245th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14AFD to 14B04 (8 bytes)
_DATA_14AFD_:
.db $46 $00 $46 $00 $5B $00 $46 $00

; 246th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B05 to 14B0C (8 bytes)
_DATA_14B05_:
.db $5C $00 $5D $00 $5E $00 $5F $00

; 247th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B0D to 14B14 (8 bytes)
_DATA_14B0D_:
.db $60 $00 $61 $00 $62 $00 $63 $00

; 248th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B15 to 14B1C (8 bytes)
_DATA_14B15_:
.db $64 $00 $65 $00 $66 $00 $67 $00

; 249th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B1D to 14B24 (8 bytes)
_DATA_14B1D_:
.db $68 $00 $69 $00 $68 $00 $69 $00

; 250th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B25 to 14B2C (8 bytes)
_DATA_14B25_:
.db $63 $10 $6A $10 $63 $10 $6A $10

; 251st entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B2D to 14B34 (8 bytes)
_DATA_14B2D_:
.db $6B $80 $6C $80 $6C $80 $6B $80

; 252nd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B35 to 14B3C (8 bytes)
_DATA_14B35_:
.db $46 $10 $46 $10 $46 $10 $46 $10

; 253rd entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B3D to 14B44 (8 bytes)
_DATA_14B3D_:
.db $4D $10 $4E $10 $4D $10 $4E $10

; 254th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B45 to 14B4C (8 bytes)
_DATA_14B45_:
.db $4E $12 $4D $12 $4F $10 $4D $12

; 255th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B4D to 14B54 (8 bytes)
_DATA_14B4D_:
.db $50 $10 $51 $10 $54 $10 $55 $10

; 256th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B55 to 14B5C (8 bytes)
_DATA_14B55_:
.db $45 $80 $45 $80 $45 $80 $45 $80

; 81st entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B5D to 14B64 (8 bytes)
_DATA_14B5D_:
.db $3D $80 $3E $80 $3E $80 $3D $80

; 76th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14B65 to 14B6C (8 bytes)
_DATA_14B65_:
.db $3D $90 $3E $90 $3E $90 $3D $90

; 82nd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B6D to 14B74 (8 bytes)
_DATA_14B6D_:
.db $3F $A0 $3F $A2 $3F $A0 $3F $A2

; 83rd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B75 to 14B7C (8 bytes)
_DATA_14B75_:
.db $3F $60 $3F $62 $3F $60 $3F $62

; 84th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B7D to 14B84 (8 bytes)
_DATA_14B7D_:
.db $40 $60 $41 $60 $42 $60 $42 $60

; 85th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B85 to 14B8C (8 bytes)
_DATA_14B85_:
.db $42 $64 $42 $64 $40 $64 $41 $64

; 86th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B8D to 14B94 (8 bytes)
_DATA_14B8D_:
.db $45 $70 $45 $72 $46 $70 $47 $70

; 87th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B95 to 14B9C (8 bytes)
_DATA_14B95_:
.db $48 $70 $49 $70 $4A $70 $4B $70

; 88th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14B9D to 14BA4 (8 bytes)
_DATA_14B9D_:
.db $4C $70 $4C $70 $4C $70 $4C $70

; 89th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BA5 to 14BAC (8 bytes)
_DATA_14BA5_:
.db $4D $00 $4D $02 $4D $00 $4D $02

; 90th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BAD to 14BB4 (8 bytes)
_DATA_14BAD_:
.db $4E $00 $4F $00 $50 $00 $51 $00

; 91st entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BB5 to 14BBC (8 bytes)
_DATA_14BB5_:
.db $52 $80 $52 $80 $52 $80 $52 $80

; 92nd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BBD to 14BC4 (8 bytes)
_DATA_14BBD_:
.db $00 $06 $53 $00 $53 $00 $00 $06

; 93rd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BC5 to 14BCC (8 bytes)
_DATA_14BC5_:
.db $54 $80 $55 $80 $55 $80 $56 $80

; 94th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BCD to 14BD4 (8 bytes)
_DATA_14BCD_:
.db $55 $80 $56 $80 $57 $80 $58 $80

; 95th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BD5 to 14BDC (8 bytes)
_DATA_14BD5_:
.db $59 $80 $5A $80 $5B $80 $5C $80

; 96th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BDD to 14BE4 (8 bytes)
_DATA_14BDD_:
.db $5D $80 $5E $80 $5E $80 $5D $80

; 97th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BE5 to 14BEC (8 bytes)
_DATA_14BE5_:
.db $5F $00 $5F $00 $5F $00 $5F $00

; 98th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BED to 14BF4 (8 bytes)
_DATA_14BED_:
.db $60 $80 $61 $80 $61 $80 $60 $80

; 99th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BF5 to 14BFC (8 bytes)
_DATA_14BF5_:
.db $64 $64 $65 $64 $62 $64 $63 $64

; 100th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14BFD to 14C04 (8 bytes)
_DATA_14BFD_:
.db $66 $80 $67 $80 $68 $80 $69 $80

; 101st entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C05 to 14C0C (8 bytes)
_DATA_14C05_:
.db $67 $82 $66 $82 $6A $80 $6B $80

; 102nd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C0D to 14C14 (8 bytes)
_DATA_14C0D_:
.db $6C $80 $6D $80 $6E $80 $6F $80

; 103rd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C15 to 14C1C (8 bytes)
_DATA_14C15_:
.db $70 $80 $71 $80 $72 $80 $6E $82

; 104th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C1D to 14C24 (8 bytes)
_DATA_14C1D_:
.db $73 $80 $74 $80 $75 $80 $76 $80

; 105th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C25 to 14C2C (8 bytes)
_DATA_14C25_:
.db $74 $82 $73 $82 $77 $80 $75 $82

; 74th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14C2D to 14C34 (8 bytes)
_DATA_14C2D_:
.db $5F $10 $5F $10 $5F $10 $5F $10

; 106th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C35 to 14C3C (8 bytes)
_DATA_14C35_:
.db $57 $70 $58 $60 $59 $60 $59 $60

; 78th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14C3D to 14C44 (8 bytes)
_DATA_14C3D_:
.db $00 $80 $00 $80 $00 $80 $00 $80

; 79th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14C45 to 14C4C (8 bytes)
_DATA_14C45_:
.db $59 $64 $59 $64 $57 $64 $58 $64

; 80th entry of Pointer Table from 14000 (indexed by unknown)
; Data from 14C4D to 14C54 (8 bytes)
_DATA_14C4D_:
.db $59 $64 $59 $64 $59 $60 $59 $60

; 123rd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C55 to 14C5C (8 bytes)
_DATA_14C55_:
.db $00 $06 $6D $00 $00 $06 $6E $00

; 124th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C5D to 14C64 (8 bytes)
_DATA_14C5D_:
.db $6F $00 $6D $02 $70 $00 $6E $02

; 125th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C65 to 14C6C (8 bytes)
_DATA_14C65_:
.db $00 $06 $71 $00 $00 $06 $71 $00

; 126th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C6D to 14C74 (8 bytes)
_DATA_14C6D_:
.db $72 $00 $71 $02 $72 $00 $71 $02

; 127th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C75 to 14C7C (8 bytes)
_DATA_14C75_:
.db $00 $06 $71 $00 $00 $06 $6E $04

; 128th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C7D to 14C84 (8 bytes)
_DATA_14C7D_:
.db $72 $00 $71 $02 $70 $04 $6E $06

; 129th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C85 to 14C8C (8 bytes)
_DATA_14C85_:
.db $00 $06 $00 $06 $73 $80 $73 $80

; 130th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C8D to 14C94 (8 bytes)
_DATA_14C8D_:
.db $00 $06 $6D $04 $73 $80 $73 $80

; 131st entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C95 to 14C9C (8 bytes)
_DATA_14C95_:
.db $6F $04 $6D $06 $73 $80 $73 $80

; 132nd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14C9D to 14CA4 (8 bytes)
_DATA_14C9D_:
.db $00 $06 $00 $06 $00 $06 $74 $00

; 133rd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CA5 to 14CAC (8 bytes)
_DATA_14CA5_:
.db $75 $00 $76 $00 $77 $00 $78 $00

; 134th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CAD to 14CB4 (8 bytes)
_DATA_14CAD_:
.db $76 $02 $75 $02 $78 $02 $77 $02

; 135th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CB5 to 14CBC (8 bytes)
_DATA_14CB5_:
.db $00 $06 $00 $06 $74 $02 $00 $06

; 136th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CBD to 14CC4 (8 bytes)
_DATA_14CBD_:
.db $00 $06 $79 $00 $00 $06 $7A $00

; 137th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CC5 to 14CCC (8 bytes)
_DATA_14CC5_:
.db $7B $00 $7C $00 $7D $00 $7E $00

; 138th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CCD to 14CD4 (8 bytes)
_DATA_14CCD_:
.db $7C $02 $7B $02 $7E $02 $7D $02

; 139th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CD5 to 14CDC (8 bytes)
_DATA_14CD5_:
.db $79 $02 $00 $06 $7A $02 $00 $06

; 140th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CDD to 14CE4 (8 bytes)
_DATA_14CDD_:
.db $7F $00 $80 $00 $81 $00 $82 $00

; 141st entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CE5 to 14CEC (8 bytes)
_DATA_14CE5_:
.db $83 $00 $7F $02 $82 $02 $81 $02

; 142nd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CED to 14CF4 (8 bytes)
_DATA_14CED_:
.db $84 $00 $85 $00 $86 $00 $87 $00

; 143rd entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CF5 to 14CFC (8 bytes)
_DATA_14CF5_:
.db $85 $02 $84 $02 $87 $02 $86 $02

; 144th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14CFD to 14D04 (8 bytes)
_DATA_14CFD_:
.db $88 $00 $89 $00 $8A $80 $8A $80

; 145th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14D05 to 14D0C (8 bytes)
_DATA_14D05_:
.db $89 $02 $88 $02 $8A $80 $8A $80

; 146th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14D0D to 14D14 (8 bytes)
_DATA_14D0D_:
.db $00 $06 $00 $06 $73 $80 $8A $80

; 147th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14D15 to 14D1C (8 bytes)
_DATA_14D15_:
.db $00 $06 $73 $80 $73 $80 $8B $80

; 148th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14D1D to 14D24 (8 bytes)
_DATA_14D1D_:
.db $8A $80 $8A $80 $8B $80 $8B $80

; 149th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14D25 to 14D2C (8 bytes)
_DATA_14D25_:
.db $00 $06 $00 $06 $8A $80 $73 $80

; 150th entry of Pointer Table from 14200 (indexed by unknown)
; Data from 14D2D to 14D34 (8 bytes)
_DATA_14D2D_:
.db $73 $80 $00 $06 $8B $80 $73 $80

; 1st entry of Pointer Table from A80 (indexed by v_nextDemoIndex)
; Data from 14D35 to 14D5A (38 bytes)
_DATA_14D35_:
.db $11 $00 $B4 $08 $0B $18 $82 $08 $0C $18 $34 $08 $13 $18 $2B $08
.db $0A $18 $7B $08 $13 $18 $AD $08 $0F $18 $31 $08 $0C $18 $77 $08
.db $0C $18 $17 $10 $00 $00

; 2nd entry of Pointer Table from A80 (indexed by v_nextDemoIndex)
; Data from 14D5B to 14E3A (224 bytes)
_DATA_14D5B_:
.db $1C $00 $02 $08 $20 $0A $0D $02 $03 $12 $07 $02 $13 $06 $0A $02
.db $25 $0A $04 $2A $06 $0A $04 $2A $10 $0A $05 $2A $12 $0A $03 $2A
.db $09 $0A $04 $22 $03 $02 $47 $06 $07 $04 $02 $00 $03 $20 $03 $21
.db $02 $29 $16 $09 $08 $01 $03 $00 $07 $08 $0A $0A $17 $08 $2A $0A
.db $46 $08 $3E $0A $07 $02 $03 $0A $2A $08 $08 $0A $13 $02 $0C $0A
.db $20 $08 $1B $0A $17 $08 $05 $09 $0B $01 $05 $05 $13 $04 $03 $24
.db $08 $20 $04 $00 $06 $22 $03 $02 $09 $0A $06 $02 $15 $06 $0A $04
.db $01 $05 $01 $01 $03 $00 $03 $08 $22 $0A $0C $08 $1B $09 $25 $08
.db $2B $0A $07 $02 $07 $06 $0B $04 $05 $00 $01 $02 $3D $0A $40 $08
.db $25 $0A $09 $28 $18 $08 $09 $0A $0C $2A $01 $0A $05 $02 $36 $06
.db $08 $02 $2F $0A $4D $08 $08 $09 $0C $08 $23 $0A $09 $2A $11 $0A
.db $09 $2A $10 $0A $0A $2A $27 $0A $07 $02 $23 $06 $07 $26 $05 $20
.db $1E $08 $1A $09 $0B $08 $4A $0A $1A $02 $0B $00 $0F $01 $08 $00
.db $08 $02 $14 $06 $08 $02 $05 $00 $18 $08 $01 $00 $11 $02 $00 $00

; 3rd entry of Pointer Table from A80 (indexed by v_nextDemoIndex)
; Data from 14E3B to 14F6A (304 bytes)
_DATA_14E3B_:
.db $16 $00 $24 $08 $14 $18 $15 $08 $0D $18 $05 $08 $15 $00 $10 $08
.db $04 $00 $10 $04 $0E $14 $01 $15 $09 $05 $04 $04 $03 $00 $05 $20
.db $05 $24 $05 $04 $14 $14 $13 $04 $01 $05 $03 $01 $01 $09 $07 $08
.db $0B $18 $12 $08 $05 $00 $03 $04 $06 $00 $22 $08 $13 $18 $08 $08
.db $0B $28 $09 $08 $0F $18 $06 $08 $0A $28 $01 $08 $05 $00 $08 $04
.db $03 $14 $01 $15 $04 $11 $01 $19 $09 $18 $18 $08 $11 $18 $04 $08
.db $14 $18 $0A $08 $01 $00 $02 $08 $01 $00 $03 $08 $07 $00 $06 $10
.db $07 $30 $04 $20 $08 $00 $07 $04 $05 $05 $11 $15 $02 $01 $04 $00
.db $01 $11 $15 $15 $05 $05 $0A $25 $0E $05 $25 $15 $0F $05 $01 $15
.db $04 $11 $12 $15 $01 $05 $02 $01 $0F $00 $0A $20 $06 $00 $01 $10
.db $06 $14 $19 $15 $0A $05 $05 $01 $04 $08 $19 $18 $3F $08 $08 $28
.db $20 $08 $1A $00 $06 $08 $0D $00 $0E $10 $07 $00 $0D $20 $0B $00
.db $02 $08 $32 $18 $2F $08 $05 $00 $08 $04 $02 $05 $01 $15 $09 $11
.db $01 $19 $03 $18 $12 $08 $02 $00 $02 $11 $0F $15 $01 $05 $05 $04
.db $03 $00 $0C $20 $0C $00 $10 $10 $06 $00 $0A $20 $09 $00 $05 $10
.db $0F $14 $04 $15 $02 $10 $02 $00 $1C $08 $06 $00 $02 $04 $0B $14
.db $09 $15 $01 $10 $07 $00 $0B $04 $1A $00 $01 $08 $1B $18 $01 $19
.db $04 $09 $04 $29 $04 $28 $04 $20 $10 $00 $0F $10 $02 $14 $04 $10
.db $04 $00 $09 $10 $0E $14 $05 $04 $10 $00 $07 $08 $15 $18 $00 $00

; 4th entry of Pointer Table from A80 (indexed by v_nextDemoIndex)
; Data from 14F6B to 1508D (291 bytes)
_DATA_14F6B_:
.db $12 $00 $05 $0A $02 $1A $1C $0A $01 $02 $02 $1A $07 $0A $02 $1A
.db $05 $0A $03 $1A $31 $0A $02 $1A $07 $0A $01 $1A $38 $0A $03 $1A
.db $0D $0A $03 $1A $06 $0A $02 $1A $06 $0A $02 $1A $11 $0A $02 $2A
.db $13 $0A $02 $1A $06 $0A $03 $1A $05 $0A $03 $1A $17 $0A $02 $1A
.db $07 $0A $02 $1A $06 $0A $01 $02 $05 $22 $04 $02 $03 $22 $15 $02
.db $08 $06 $06 $00 $02 $08 $0C $0A $08 $02 $04 $0A $02 $1A $01 $18
.db $05 $08 $03 $1A $05 $0A $04 $1A $40 $0A $03 $1A $06 $0A $03 $1A
.db $45 $0A $25 $02 $1C $0A $02 $1A $1B $0A $05 $1A $0E $0A $02 $02
.db $07 $12 $04 $02 $04 $12 $02 $02 $04 $0A $01 $12 $02 $1A $17 $0A
.db $04 $1A $05 $0A $04 $1A $29 $0A $1A $02 $02 $0A $03 $08 $02 $18
.db $0F $08 $10 $00 $03 $10 $05 $00 $05 $10 $04 $00 $05 $10 $08 $00
.db $09 $20 $08 $00 $0B $08 $05 $12 $05 $00 $01 $02 $01 $12 $07 $16
.db $0A $06 $21 $02 $07 $06 $16 $02 $20 $0A $04 $1A $05 $0A $04 $1A
.db $06 $0A $04 $1A $13 $0A $03 $1A $38 $0A $04 $1A $08 $0A $01 $1A
.db $08 $0A $05 $1A $1B $0A $04 $1A $11 $0A $05 $1A $07 $0A $04 $1A
.db $02 $0A $13 $02 $04 $12 $01 $1A $07 $0A $04 $1A $14 $0A $12 $02
.db $06 $06 $06 $02 $0E $0A $0D $02 $13 $0A $03 $1A $06 $0A $03 $1A
.db $07 $0A $03 $1A $07 $0A $02 $1A $0D $0A $04 $1A $20 $0A $02 $1A
.db $08 $00 $00

; Data from 1508E to 153F2 (869 bytes)
_DATA_1508E_:
.db $04 $29 $83 $2A $2B $2C $12 $2D $83 $2C $2B $2A $07 $29 $82 $2E
.db $2F $16 $2D $82 $2F $2E $05 $29 $82 $30 $31 $18 $2D $82 $31 $30
.db $03 $29 $83 $32 $33 $34 $18 $35 $F7 $34 $33 $32 $29 $29 $36 $34
.db $34 $37 $2D $37 $2D $37 $2D $37 $2D $37 $2D $37 $2D $37 $2D $37
.db $2D $37 $2D $37 $2D $37 $2D $37 $2D $34 $34 $36 $29 $29 $36 $34
.db $38 $39 $2D $39 $2D $39 $2D $39 $2D $39 $2D $39 $2D $39 $2D $39
.db $2D $39 $2D $39 $2D $39 $2D $39 $2D $38 $34 $36 $29 $29 $36 $34
.db $3A $37 $2D $37 $2D $37 $2D $37 $2D $37 $2D $37 $2D $37 $2D $37
.db $2D $37 $2D $37 $2D $37 $2D $37 $2D $3A $34 $36 $29 $29 $36 $34
.db $3B $39 $2D $39 $2D $39 $2D $39 $2D $39 $2D $39 $2D $39 $2D $39
.db $97 $2D $39 $2D $39 $2D $39 $2D $39 $2D $3B $34 $36 $29 $29 $36
.db $3C $3D $3E $2D $3E $2D $3E $3F $0C $40 $94 $3F $2D $37 $2D $37
.db $2D $3D $3C $36 $29 $29 $36 $3C $3D $41 $2D $41 $2D $41 $42 $0C
.db $29 $94 $42 $2D $39 $2D $39 $2D $3D $3C $36 $29 $29 $36 $34 $3B
.db $43 $2D $43 $2D $43 $42 $0C $29 $94 $42 $2D $37 $2D $37 $2D $3B
.db $34 $36 $29 $29 $36 $34 $3A $44 $2D $44 $2D $44 $42 $0C $29 $94
.db $42 $2D $39 $2D $39 $2D $3A $34 $36 $29 $29 $36 $34 $38 $45 $2D
.db $45 $2D $45 $42 $0C $29 $94 $42 $2D $37 $2D $37 $2D $38 $34 $36
.db $29 $29 $36 $34 $34 $41 $2D $41 $2D $41 $42 $0C $29 $94 $42 $2D
.db $39 $2D $39 $2D $34 $34 $36 $29 $29 $36 $34 $34 $43 $2D $43 $2D
.db $43 $46 $0C $47 $F7 $46 $2D $37 $2D $37 $2D $34 $34 $36 $29 $29
.db $36 $34 $38 $44 $2D $44 $2D $44 $2D $39 $2D $39 $2D $39 $2D $39
.db $2D $39 $2D $39 $2D $39 $2D $4D $4E $4F $2D $38 $34 $36 $29 $29
.db $36 $34 $3A $45 $2D $45 $2D $45 $2D $37 $2D $37 $2D $37 $2D $37
.db $2D $37 $2D $37 $2D $37 $2D $50 $51 $52 $2D $3A $34 $36 $29 $29
.db $36 $34 $3B $41 $2D $41 $2D $41 $2D $39 $2D $39 $2D $39 $2D $39
.db $2D $39 $2D $39 $2D $39 $2D $53 $54 $55 $2D $3B $34 $36 $29 $29
.db $36 $3C $3D $43 $2D $43 $2D $43 $2D $37 $2D $37 $AB $2D $37 $2D
.db $37 $2D $37 $2D $37 $2D $37 $2D $56 $57 $58 $2D $3D $3C $36 $29
.db $29 $36 $3C $3D $44 $2D $44 $2D $44 $2D $39 $2D $39 $2D $39 $2D
.db $39 $2D $39 $2D $39 $2D $39 $59 $05 $5A $F7 $5B $36 $29 $48 $49
.db $48 $49 $48 $49 $48 $49 $4A $49 $48 $49 $48 $49 $48 $49 $48 $49
.db $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $4B $4C
.db $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C
.db $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $48 $49
.db $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $48 $49
.db $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $48 $49 $4B $4C
.db $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C
.db $4B $4C $8C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $4B $4C $00
.db $81 $80 $18 $00 $03 $02 $03 $00 $82 $80 $80 $1A $00 $86 $02 $02
.db $00 $00 $80 $80 $1B $00 $85 $02 $02 $00 $80 $80 $1C $00 $84 $02
.db $02 $80 $80 $1D $00 $83 $02 $80 $80 $1B $00 $85 $02 $00 $02 $80
.db $80 $03 $00 $9D $06 $00 $06 $00 $06 $00 $06 $00 $06 $00 $06 $00
.db $06 $00 $06 $00 $06 $00 $06 $00 $06 $00 $06 $00 $02 $00 $02 $80
.db $80 $1B $00 $85 $02 $00 $02 $80 $80 $15 $00 $81 $02 $05 $00 $03
.db $02 $85 $80 $80 $00 $04 $04 $12 $00 $81 $02 $05 $00 $88 $06 $06
.db $02 $80 $80 $00 $00 $04 $12 $00 $8E $02 $00 $06 $00 $06 $00 $06
.db $00 $02 $80 $80 $00 $00 $04 $12 $00 $81 $02 $05 $00 $88 $06 $00
.db $02 $80 $80 $00 $00 $04 $12 $00 $81 $02 $05 $00 $85 $06 $00 $02
.db $80 $80 $15 $00 $81 $02 $07 $00 $83 $02 $80 $80 $15 $00 $85 $02
.db $00 $06 $00 $06 $03 $00 $83 $02 $80 $80 $1B $00 $85 $02 $00 $02
.db $80 $80 $1B $00 $85 $02 $00 $02 $80 $80 $1B $00 $85 $02 $00 $02
.db $80 $80 $09 $00 $8D $06 $00 $06 $00 $06 $00 $06 $00 $06 $00 $06
.db $00 $06 $05 $00 $03 $02 $85 $80 $80 $00 $04 $04 $1A $00 $81 $02
.db $77 $80 $0A $80 $00

; Data from 153F3 to 157FF (1037 bytes)
_DATA_153F3_:
.incbin "baserom_DATA_153F3_.inc"

; Data from 15800 to 1583F (64 bytes)
_DATA_15800_:
.db $71 $60 $72 $60 $73 $60 $71 $62 $74 $60 $75 $60 $76 $60 $77 $60
.db $78 $60 $79 $60 $7A $60 $78 $62 $7B $60 $70 $60 $70 $60 $7B $62
.db $7C $60 $70 $60 $70 $60 $7C $62 $7C $60 $70 $60 $70 $60 $7C $62
.db $7C $60 $70 $60 $70 $60 $7C $62 $7C $60 $70 $60 $70 $60 $7C $62

; Data from 15840 to 15923 (228 bytes)
_DATA_15840_:
.db $09 $00 $02 $7F $05 $60 $81 $00 $02 $FF $06 $00 $02 $FF $05 $00
.db $08 $60 $10 $00 $08 $06 $08 $60 $10 $00 $10 $60 $00 $08 $00 $84
.db $FF $80 $80 $9F $04 $90 $84 $FF $00 $00 $FF $04 $00 $84 $FF $00
.db $00 $FF $04 $04 $08 $90 $07 $00 $81 $02 $04 $08 $03 $10 $81 $20
.db $08 $09 $81 $90 $03 $94 $94 $95 $92 $91 $9F $04 $04 $88 $91 $62
.db $8C $F0 $00 $22 $42 $E1 $11 $08 $04 $03 $00 $04 $91 $02 $92 $82
.db $94 $98 $08 $90 $00 $09 $00 $02 $7F $81 $60 $04 $6F $84 $00 $FF
.db $FF $00 $04 $FF $84 $00 $FF $FF $00 $04 $FF $07 $6F $81 $7F $10
.db $FF $08 $F6 $08 $6F $04 $FF $84 $FE $FC $F0 $00 $03 $FF $85 $1F
.db $0F $07 $03 $00 $04 $6F $02 $6E $82 $6C $68 $08 $60 $00 $08 $00
.db $81 $FF $02 $80 $05 $9F $81 $FF $02 $00 $06 $FF $02 $00 $81 $FF
.db $04 $FB $07 $9F $81 $8F $07 $FF $81 $FD $04 $F7 $03 $EF $81 $DF
.db $08 $F9 $81 $9F $03 $9B $92 $9A $9D $9E $90 $FB $FB $77 $6E $9C
.db $70 $00 $00 $DD $BD $1E $0E $07 $03 $02 $00 $04 $9E $02 $9C $81
.db $98 $09 $90 $00

; Data from 15924 to 15AD3 (432 bytes)
_DATA_15924_:
.dsb 10, $00
.db $01 $00 $00 $00 $00 $00 $02 $00 $03 $00 $04
.dsb 9, $00
.db $02 $00 $03 $00 $05 $00 $06 $00 $07 $00 $08 $00 $05 $00 $09 $00
.db $0A $00 $00 $00 $00 $00 $07 $00 $08 $00 $05 $00 $05 $00 $05 $00
.db $05 $00 $05 $00 $05 $00 $05 $00 $0B $00 $00 $00 $06 $02 $05 $00
.db $05 $00 $05 $00 $05 $00 $05 $00 $05 $00 $0C $00 $0D $00 $05 $00
.db $0E $00 $04 $02 $05 $00 $0F $00 $10 $00 $05 $00 $05 $00 $05 $00
.db $05 $00 $11 $00 $12 $00 $05 $00 $0E $00 $13 $00 $05 $00 $14 $00
.db $15 $00 $05 $00 $0C $00 $0D $00 $05 $00 $05 $00 $05 $00 $05 $00
.db $16 $00 $0E $02 $05 $00 $05 $00 $05 $00 $05 $00 $11 $00 $12 $00
.db $05 $00 $17 $00 $17 $02 $05 $00 $18 $00 $0E $02 $05 $00 $19 $00
.db $1A $00 $05 $00 $05 $00 $05 $00 $05 $00 $1B $00 $1B $02 $05 $00
.db $04 $00 $1C $00 $05 $00 $1D $00 $1E $00 $05 $00 $1F $00 $20 $00
.db $05 $00 $05 $00 $05 $00 $05 $00 $21 $00 $22 $00 $05 $00 $05 $00
.db $05 $00 $05 $00 $23 $00 $24 $00 $05 $00 $1F $00 $20 $00 $05 $00
.db $21 $00 $04 $02 $05 $00 $0F $00 $10 $00 $05 $00 $05 $00 $05 $00
.db $05 $00 $23 $00 $24 $00 $05 $00 $25 $00 $21 $02 $05 $00 $14 $00
.db $15 $00 $05 $00 $17 $00 $17 $02 $05 $00 $05 $00 $05 $00 $05 $00
.db $0E $00 $25 $02 $05 $00 $05 $00 $05 $00 $05 $00 $1B $00 $1B $02
.db $05 $00 $19 $00 $1A $00 $05 $00 $0E $00 $0E $02 $05 $00 $26 $00
.db $27 $00 $05 $00 $05 $00 $05 $00 $05 $00 $1D $00 $1E $00 $05 $00
.db $0E $00 $0B $06 $05 $00 $28 $00 $29 $00 $05 $00 $05 $00 $05 $00
.db $05 $00 $05 $00 $05 $00 $05 $00 $0B $04 $0A $06 $09 $06 $05 $00
.db $05 $00 $05 $00 $05 $00 $2A $00 $2B $00 $2C $00 $2D $00 $09 $04
.db $0A $04 $00 $00 $04 $06 $05 $00 $2E $00 $2F $00 $30 $00 $31 $00
.db $00 $00 $00 $00 $32 $00 $33 $00 $00 $00 $00 $00 $00 $00 $34 $00
.db $35 $00 $36
.dsb 15, $00

; Data from 15AD4 to 15E44 (881 bytes)
_DATA_15AD4_:
.db $0D $00 $83 $08 $1C $FF $05 $00 $87 $01 $07 $0F $03 $07 $1F $3F
.db $04 $FF $88 $80 $C0 $C0 $E0 $F0 $F0 $F8 $FC $08 $FF $92 $80 $C0
.db $E0 $F0 $F8 $FC $FE $FF $00 $00 $01 $03 $0F $1F $7F $FF $3F $7F
.db $06 $FF $82 $FC $FE $06 $FF $04 $00 $8A $80 $C0 $C0 $E0 $F0 $F0
.db $F8 $FC $FC $FE $3A $FF $82 $3F $7F $19 $FF $02 $FD $83 $F9 $F1
.db $F2 $08 $FF $84 $E4 $C8 $C8 $90 $02 $A0 $02 $C0 $19 $FF $85 $BF
.db $5F $4F $27 $13 $02 $09 $20 $FF $08 $FC $02 $05 $02 $03 $04 $01
.db $10 $FF $08 $FE $81 $FF $02 $FE $06 $FF $02 $7F $07 $FF $02 $FE
.db $82 $FF $F0 $04 $FF $02 $7F $82 $FF $0F $05 $FF $95 $FC $F8 $E0
.db $C0 $80 $FF $F8 $80 $00 $01 $06 $38 $C0 $FF $1F $13 $10 $D0 $30
.db $0C $03 $04 $FF $84 $7F $3F $1F $0F $05 $FF $83 $FE $F8 $E0 $03
.db $FF $82 $F0 $80 $03 $00 $B3 $FF $F8 $C8 $08 $04 $05 $02 $FC $01
.db $06 $08 $30 $40 $80 $00 $00 $83 $41 $20 $10 $08 $04 $02 $01 $FC
.db $F8 $F0 $70 $20 $40 $40 $80 $FF $7F $3E $1C $08 $04 $02 $01 $80
.db $00 $00 $03 $04 $18 $20 $C0 $1F $60 $80 $05 $00 $00 $0F $00 $81
.db $1C $06 $00 $87 $01 $07 $00 $03 $07 $1F $3F $03 $FF $88 $00 $80
.db $80 $C0 $E0 $E0 $F0 $F8 $08 $FF $88 $00 $80 $C0 $E0 $F0 $F8 $FC
.db $FE $03 $00 $88 $01 $03 $0F $1F $7F $0F $3F $7F $05 $FF $82 $F8
.db $FC $02 $FE $04 $FF $05 $00 $02 $80 $99 $C0 $E0 $E0 $F0 $F8 $F8
.db $FC $FE $FE $FC $9C $8F $CF $FC $F8 $30 $30 $7F $73 $E3 $F7 $3F
.db $1F $4C $AC $08 $FE $03 $FF $85 $F0 $E0 $C0 $C0 $80 $03 $FF $97
.db $7F $39 $11 $21 $81 $30 $F0 $F9 $FC $CF $8F $DC $FC $6C $8F $1F
.db $3B $F1 $F9 $7F $7F $1F $3F $06 $7F $85 $85 $C8 $D4 $EB $F0 $03
.db $FF $85 $45 $21 $55 $B9 $7F $03 $FF $02 $FE $84 $FC $F8 $F8 $F0
.db $02 $E0 $02 $FF $87 $F3 $E1 $80 $8C $9E $FF $C0 $02 $80 $05 $00
.db $02 $FF $86 $FE $FC $FC $F8 $80 $C0 $03 $FF $02 $7F $88 $3F $03
.db $17 $F3 $E1 $80 $8C $9E $03 $FF $96 $3F $1F $0F $07 $03 $01 $00
.db $00 $E0 $F5 $E2 $E4 $C3 $CF $FF $FF $AF $5F $AF $0F $97 $E7 $04
.db $FF $81 $FC $02 $FE $05 $FF $82 $7F $1F $02 $2F $02 $17 $08 $F8
.db $08 $00 $90 $FF $FE $FE $FC $C0 $E1 $F0 $FF $27 $17 $47 $6F $8F
.db $1F $7F $FF $08 $FC $84 $FE $FD $E0 $DA $03 $A4 $97 $B6 $7F $3F
.db $07 $5B $25 $25 $6D $25 $A4 $A6 $C5 $D4 $E0 $EF $E0 $E0 $25 $6D
.db $2B $2B $07 $F7 $02 $07 $02 $FF $88 $FC $F8 $E0 $C0 $80 $00 $F8
.db $80 $06 $00 $82 $0F $03 $06 $00 $03 $FF $85 $7F $3F $1F $0F $03
.db $04 $FF $88 $FE $F8 $E0 $80 $FF $FF $F0 $80 $04 $00 $82 $F8 $C0
.db $0E $00 $81 $01 $07 $00 $84 $F8 $F0 $60 $20 $04 $00 $84 $7F $3E
.db $1C $08 $14 $00 $00 $60 $00 $90 $02 $62 $10 $00 $00 $01 $C3 $07
.db $00 $08 $10 $00 $00 $80 $83 $40 $0C $00 $84 $0B $1D $1D $35 $04
.db $00 $91 $80 $C4 $CC $6C $07 $03 $00 $00 $20 $40 $02 $02 $80 $40
.db $80 $04 $02 $0B $00 $83 $38 $15 $09 $05 $00 $83 $A8 $CC $80 $08
.db $00 $02 $02 $88 $06 $0E $0C $00 $00 $0C $12 $61 $03 $00 $84 $18
.db $30 $30 $60 $02 $40 $05 $00 $02 $01 $02 $03 $81 $1F $05 $00 $02
.db $80 $84 $E0 $0C $12 $61 $06 $00 $8C $40 $20 $30 $18 $0C $06 $06
.db $0F $02 $0D $08 $10 $03 $00 $84 $40 $80 $40 $60 $0F $00 $83 $80
.db $C0 $40 $02 $60 $08 $00 $02 $02 $09 $00 $8A $01 $03 $0E $00 $00
.db $50 $E0 $A0 $80 $40 $0E $00 $81 $1A $03 $36 $81 $24 $03 $00 $93
.db $58 $6C $6C $24 $6C $36 $34 $14 $14 $00 $0F $00 $00 $6C $24 $20
.db $28 $00 $F0 $05 $00 $94 $03 $07 $1F $3F $7F $00 $07 $7F $FF $FE
.db $F8 $C0 $00 $00 $E0 $EC $EF $2F $0F $03 $05 $00 $84 $80 $C0 $E0
.db $F0 $05 $00 $83 $01 $07 $1F $03 $00 $82 $0F $7F $03 $FF $8D $00
.db $07 $37 $F7 $FB $FA $FC $00 $FE $F8 $F0 $C0 $80 $03 $00 $87 $7C
.db $3E $1F $0F $07 $03 $01 $04 $00 $82 $80 $C0 $02 $80 $03 $00 $90
.db $01 $03 $07 $03 $01 $00 $7F $FF $FF $FC $F8 $E0 $C0 $00 $E0 $80
.db $06 $00 $00 $7F $00 $7F $00 $34 $00 $81 $01 $06 $00 $02 $80 $08
.db $00 $84 $01 $00 $00 $0F $03 $00 $02 $80 $02 $00 $81 $F0 $69 $00
.db $00

; Pointer Table from 15E45 to 15E74 (24 entries, indexed by _RAM_C03C_)
_DATA_15E45_:
.dw _DATA_15E75_ _DATA_15E99_ _DATA_15EBD_ _DATA_15EE1_ _DATA_15F05_ _DATA_15F29_ _DATA_15F4D_ _DATA_15F71_
.dw _DATA_15F95_ _DATA_15FB9_ _DATA_15FDD_ _DATA_16001_ _DATA_16025_ _DATA_16049_ _DATA_1606D_ _DATA_16091_
.dw _DATA_160B5_ _DATA_160D9_ _DATA_160FD_ _DATA_16121_ _DATA_16145_ _DATA_16169_ _DATA_1618D_ _DATA_161B1_

; 1st entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15E75 to 15E98 (36 bytes)
_DATA_15E75_:
.db $01 $00 $08 $00 $08 $00 $08 $00 $08 $00 $08 $00 $08 $00 $08 $00
.db $08 $00 $08 $00 $08 $00 $08 $00 $08 $00 $08 $00 $08 $00 $08 $00
.db $63 $00 $65 $00

; 2nd entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15E99 to 15EBC (36 bytes)
_DATA_15E99_:
.db $02 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00
.db $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00 $09 $00
.db $64 $00 $66 $00

; 3rd entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15EBD to 15EE0 (36 bytes)
_DATA_15EBD_:
.db $03 $00 $0A $00 $12 $00 $1C $00 $24 $00 $0A $00 $0A $00 $20 $00
.db $10 $02 $18 $02 $0E $00 $16 $00 $0A $00 $0A $00 $0A $00 $61 $00
.db $03 $04 $00 $00

; 4th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15EE1 to 15F04 (36 bytes)
_DATA_15EE1_:
.db $04 $00 $0B $00 $13 $00 $1D $00 $25 $00 $0A $00 $20 $00 $20 $00
.db $0F $02 $17 $02 $0F $00 $17 $00 $11 $00 $0A $00 $10 $02 $62 $00
.db $04 $04 $00 $00

; 5th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15F05 to 15F28 (36 bytes)
_DATA_15F05_:
.db $05 $00 $0C $00 $14 $00 $1E $00 $26 $00 $2B $00 $30 $00 $36 $00
.db $0E $02 $16 $02 $10 $00 $18 $00 $50 $00 $56 $00 $5D $00 $17 $02
.db $03 $04 $00 $00

; 6th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15F29 to 15F4C (36 bytes)
_DATA_15F29_:
.db $06 $00 $0D $00 $15 $00 $1F $00 $11 $00 $2C $00 $31 $00 $37 $00
.db $3C $00 $41 $00 $46 $00 $4B $00 $51 $00 $57 $00 $0E $02 $16 $02
.db $04 $04 $00 $00

; 7th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15F4D to 15F70 (36 bytes)
_DATA_15F4D_:
.db $07 $00 $0E $00 $16 $00 $20 $00 $11 $00 $2D $00 $32 $00 $38 $00
.db $3D $00 $42 $00 $47 $00 $4C $00 $52 $00 $58 $00 $10 $02 $18 $02
.db $07 $00 $00 $00

; 8th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15F71 to 15F94 (36 bytes)
_DATA_15F71_:
.db $07 $00 $0F $00 $17 $00 $11 $00 $20 $00 $2E $00 $33 $00 $39 $00
.db $3E $00 $43 $00 $48 $00 $4D $00 $20 $00 $59 $00 $0F $02 $17 $02
.db $07 $00 $00 $00

; 9th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15F95 to 15FB8 (36 bytes)
_DATA_15F95_:
.db $04 $02 $10 $00 $18 $00 $21 $00 $27 $00 $0A $00 $34 $00 $3A $00
.db $3F $00 $44 $00 $49 $00 $4E $00 $1B $00 $1B $00 $0E $02 $16 $02
.db $07 $00 $00 $00

; 10th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15FB9 to 15FDC (36 bytes)
_DATA_15FB9_:
.db $03 $02 $0A $00 $19 $00 $22 $00 $28 $00 $2F $00 $35 $00 $3B $00
.db $40 $00 $45 $00 $4A $00 $4F $00 $53 $00 $5A $00 $5E $00 $11 $00
.db $03 $04 $00 $00

; 11th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 15FDD to 16000 (36 bytes)
_DATA_15FDD_:
.db $07 $00 $0A $00 $1A $00 $23 $00 $29 $00 $2F $02 $35 $00 $35 $00
.db $2F $00 $20 $00 $0F $02 $17 $02 $54 $00 $5B $00 $5F $00 $1B $00
.db $04 $04 $00 $00

; 12th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 16001 to 16024 (36 bytes)
_DATA_16001_:
.db $07 $00 $11 $00 $1B $00 $1B $00 $2A $00 $10 $02 $18 $02 $0A $00
.db $2F $02 $20 $00 $0E $02 $16 $02 $55 $00 $5C $00 $60 $00 $1B $00
.db $04 $06 $00 $00

; 13th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 16025 to 16048 (36 bytes)
_DATA_16025_:
.db $03 $00 $1B $00 $1B $00 $1B $00 $1B $00 $0F $02 $17 $02 $10 $02
.db $18 $02 $0A $00 $12 $00 $1C $00 $24 $00 $10 $02 $18 $02 $1B $00
.db $03 $06 $00 $00

; 14th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 16049 to 1606C (36 bytes)
_DATA_16049_:
.db $04 $00 $68 $00 $6D $00 $73 $00 $1B $00 $0E $02 $16 $02 $0F $02
.db $17 $02 $0B $00 $13 $00 $1D $00 $25 $00 $0F $02 $17 $02 $1B $00
.db $07 $00 $00 $00

; 15th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 1606D to 16090 (36 bytes)
_DATA_1606D_:
.db $07 $00 $69 $00 $6E $00 $74 $00 $7B $00 $7E $00 $20 $00 $0E $02
.db $16 $02 $84 $00 $87 $00 $1E $00 $26 $00 $0E $02 $16 $02 $97 $00
.db $9B $00 $00 $00

; 16th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 16091 to 160B4 (36 bytes)
_DATA_16091_:
.db $67 $00 $6A $00 $6F $00 $75 $00 $7C $00 $7F $00 $80 $00 $81 $00
.db $0A $00 $0A $00 $15 $00 $1F $00 $0A $00 $0A $00 $10 $02 $18 $02
.db $07 $00 $00 $00

; 17th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 160B5 to 160D8 (36 bytes)
_DATA_160B5_:
.db $03 $00 $6B $00 $70 $00 $76 $00 $11 $00 $10 $02 $18 $02 $82 $00
.db $83 $00 $85 $00 $0A $00 $1B $00 $1B $00 $0A $00 $0F $02 $17 $02
.db $03 $04 $00 $00

; 18th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 160D9 to 160FC (36 bytes)
_DATA_160D9_:
.db $04 $00 $6C $00 $71 $00 $77 $00 $11 $00 $0F $02 $17 $02 $11 $00
.db $0A $00 $86 $00 $88 $00 $8B $00 $8F $00 $93 $00 $96 $00 $98 $00
.db $04 $04 $00 $00

; 19th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 160FD to 16120 (36 bytes)
_DATA_160FD_:
.db $03 $00 $6C $02 $71 $02 $78 $00 $1B $00 $0E $02 $16 $02 $0A $00
.db $0A $00 $0A $00 $89 $00 $8C $00 $90 $00 $94 $00 $18 $02 $99 $00
.db $03 $04 $00 $00

; 20th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 16121 to 16144 (36 bytes)
_DATA_16121_:
.db $04 $00 $11 $00 $70 $02 $76 $02 $79 $00 $1B $00 $10 $02 $18 $02
.db $1B $00 $1B $00 $8A $00 $8D $00 $91 $00 $95 $00 $17 $02 $9A $00
.db $04 $04 $00 $00

; 21st entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 16145 to 16168 (36 bytes)
_DATA_16145_:
.db $07 $00 $0A $00 $72 $00 $79 $00 $7D $00 $72 $00 $0F $02 $17 $02
.db $0A $00 $1B $00 $0A $00 $8E $00 $92 $00 $0E $02 $16 $02 $1B $00
.db $07 $00 $00 $00

; 22nd entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 16169 to 1618C (36 bytes)
_DATA_16169_:
.db $07 $00 $0A $00 $0A $00 $7A $00 $7A $00 $1B $00 $0E $02 $16 $02
.db $1B $00 $0A $00 $0A $00 $0A $00 $0A $00 $0A $00 $11 $00 $1B $00
.db $07 $00 $00 $00

; 23rd entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 1618D to 161B0 (36 bytes)
_DATA_1618D_:
.db $02 $02 $09 $02 $09 $02 $09 $02 $09 $02 $09 $02 $09 $02 $09 $02
.db $09 $02 $09 $02 $09 $02 $09 $02 $09 $02 $09 $02 $09 $02 $09 $02
.db $64 $02 $66 $02

; 24th entry of Pointer Table from 15E45 (indexed by _RAM_C03C_)
; Data from 161B1 to 161D4 (36 bytes)
_DATA_161B1_:
.db $01 $02 $08 $02 $08 $02 $08 $02 $08 $02 $08 $02 $08 $02 $08 $02
.db $08 $02 $08 $02 $08 $02 $08 $02 $08 $02 $08 $02 $08 $02 $08 $02
.db $63 $02 $65 $02

; Data from 161D5 to 16F10 (3388 bytes)
_DATA_161D5_:
.incbin "baserom_DATA_161D5_.inc"

; Data from 16F11 to 16F50 (64 bytes)
_DATA_16F11_:
.db $00 $38 $38 $00 $00 $44 $7C $38 $00 $92 $FE $6C $00 $AA $EE $44
.db $00 $92 $FE $6C $00 $74 $7C $08 $00 $24 $3C $18 $00 $28 $38 $10
.db $00 $28 $38 $10 $00 $28 $38 $10 $00 $28 $38 $10 $00 $28 $38 $10
.db $00 $28 $38 $10 $00 $28 $38 $10 $00 $28 $38 $10 $00 $38 $38 $00

; Data from 16F51 to 16F70 (32 bytes)
_DATA_16F51_:
.db $07 $01 $00 $00 $3F $01 $00 $00 $7F $01 $00 $00 $3F $C1 $80 $40
.db $07 $F9 $C0 $38 $40 $BF $B9 $07 $78 $87 $87 $00 $7C $83 $83 $03

; Data from 16F71 to 16FB0 (64 bytes)
_DATA_16F71_:
.db $79 $86 $86 $06 $79 $86 $86 $06 $7F $80 $80 $00 $7E $81 $81 $01
.db $7F $80 $80 $00 $3E $41 $41 $01 $06 $39 $39 $01 $00 $07 $07 $00
.db $9E $61 $61 $60 $9E $61 $61 $60 $3E $C1 $C1 $C0 $7E $81 $81 $80
.db $FE $01 $01 $00 $7C $82 $82 $80 $60 $9C $9C $80 $00 $E0 $E0 $00

; Data from 16FB1 to 17030 (128 bytes)
_DATA_16FB1_:
.dsb 9, $00
.db $03 $03 $00 $00 $0C $0C $03 $06 $10 $10 $09 $09 $21 $21 $16 $13
.db $23 $23 $0C $16 $46 $46 $29
.dsb 9, $00
.db $80 $80 $00 $00 $60 $60 $80 $00 $10 $10 $E0 $00 $08 $08 $F0 $80
.db $88 $88 $70 $C0 $C4 $C4 $38 $06 $46 $46 $39 $0F $4F $4F $30 $0C
.db $2C $2C $13 $00 $20 $20 $1F $20 $10 $10 $0F $7C $00 $00 $03 $7F
.db $00 $00 $00 $3F $00 $00 $00 $C0 $C4 $C4 $38 $E0 $E4 $E4 $18 $60
.db $68 $68 $90 $00 $08 $08 $F0 $08 $10 $10 $E0 $7C $00 $00 $80 $FC
.db $00 $00 $00 $F8 $00 $00 $00

; Data from 17031 to 170B0 (128 bytes)
_DATA_17031_:
.dsb 9, $00
.db $03 $03 $00 $00 $0F $0C $03 $06 $19 $10 $09 $08 $37 $27 $17 $10
.db $2F $26 $0F $10 $6F $46 $2F
.dsb 9, $00
.db $80 $80 $00 $00 $E0 $60 $80 $00 $F0 $10 $E0 $00 $F8 $C8 $F0 $00
.db $F8 $68 $F0 $00 $FC $64 $F8 $00 $7F $47 $3F $00 $7F $46 $3F $00
.db $3F $26 $1F $00 $3F $27 $1F $20 $1F $10 $0F $7C $03 $00 $03 $7F
.db $00 $00 $00 $3F $00 $00 $00 $00 $FC $C4 $F8 $00 $FC $64 $F8 $00
.db $F8 $68 $F0 $00 $F8 $C8 $F0 $08 $F0 $10 $E0 $7C $80 $00 $80 $FC
.db $00 $00 $00 $F8 $00 $00 $00

; Data from 170B1 to 170F0 (64 bytes)
_DATA_170B1_:
.db $00 $03 $03 $00 $03 $04 $04 $00 $04 $0B $0B $03 $08 $17 $16 $07
.db $10 $2F $2C $0F $38 $57 $56 $07 $3C $5B $5B $03 $7F $B8 $B8 $00
.db $00 $C0 $C0 $00 $C0 $20 $20 $00 $20 $D0 $D0 $C0 $10 $E8 $68 $E0
.db $08 $F4 $34 $F0 $1C $EA $6A $E0 $1C $FA $FA $E0 $FE $1D $1D $00

; Data from 170F1 to 17190 (160 bytes)
_DATA_170F1_:
.db $78 $B7 $B7 $00 $70 $A8 $A8 $00 $30 $48 $48 $00 $30 $48 $48 $00
.db $18 $26 $26 $00 $0E $11 $11 $00 $03 $0C $0C $00 $00 $03 $03
.dsb 18, $00
.db $06 $06 $00 $06 $0F $0F $00 $0E $1F $1F $00 $10 $2F $2F
.dsb 26, $00
.db $E0 $E0 $00 $E0 $FC $FC $00 $10 $2F $2F $07 $00 $3F $3F $1F $10
.db $6F $6F $09 $36 $C9 $C9 $00 $4B $84 $84 $00 $48 $87 $87 $00 $30
.db $CC $CC $00 $00 $78 $78 $00 $00 $FE $FE $3C $1E $E1 $E1 $C0 $30
.db $CE $CE $80 $2C $D3 $D3 $80 $3A $C1 $C1 $00 $12 $21 $21 $00 $0C
.db $33 $33 $00 $00 $1E $1E $00

; Data from 17191 to 17210 (128 bytes)
_DATA_17191_:
.db $00 $01 $01 $00 $00 $07 $06 $00 $00 $0F $08 $00 $00 $1F $10 $00
.db $09 $1F $10 $00 $0B $1C $10 $00 $0A $1D $11 $00 $07 $0F $00 $00
.db $00 $C0 $C0 $00 $00 $F0 $30 $00 $00 $F8 $08 $00 $80 $FC $04 $00
.db $C8 $FC $04 $00 $E8 $9C $04 $00 $A8 $DC $44 $00 $F0 $78 $88 $00
.db $03 $07 $04 $00 $06 $08 $09 $00 $08 $10 $17 $00 $08 $14 $17 $00
.db $08 $1C $17 $00 $00 $0C $0F $00 $03 $07 $07 $00 $00 $07 $07 $00
.db $E0 $F0 $10 $00 $B0 $88 $C8 $00 $08 $04 $F4 $00 $08 $14 $F4 $00
.db $08 $9C $F4 $00 $00 $98 $F8 $00 $60 $F0 $F0 $00 $00 $70 $70 $00

; Data from 17211 to 17290 (128 bytes)
_DATA_17211_:
.db $7E $01 $01 $00 $00 $03 $03 $00 $00 $0C $0C $00 $00 $10 $10 $00
.db $08 $20 $20 $00 $00 $20 $20 $00 $20 $70 $50 $00 $20 $7F $5F $00
.db $7E $80 $80 $00 $00 $C0 $C0 $00 $C0 $30 $30 $00 $20 $08 $08 $00
.db $10 $04 $04 $00 $10 $04 $04 $00 $10 $0E $0E $04 $08 $FE $F6 $04
.db $1F $7F $7F $00 $38 $77 $77 $00 $30 $4B $4B $00 $09 $36 $36 $00
.db $02 $24 $24 $00 $02 $04 $04 $00 $01 $06 $06 $00 $00 $03 $03 $00
.db $EC $FE $F2 $00 $00 $FE $FE $00 $10 $C0 $C0 $00 $A0 $40 $40 $00
.db $40 $20 $20 $00 $40 $20 $20 $00 $80 $60 $60 $00 $00 $C0 $C0 $00

; Data from 17291 to 172B0 (32 bytes)
_DATA_17291_:
.db $00 $00 $00 $00 $66 $00 $00 $00 $FF $00 $00 $00 $66 $00 $00 $00
.db $FF $00 $00 $00 $66 $00 $00 $00 $66 $00 $00 $00 $3C $00 $00 $00

; Data from 172B1 to 17852 (1442 bytes)
_DATA_172B1_:
.incbin "baserom_DATA_172B1_.inc"

; 1st entry of Pointer Table from 1620 (indexed by _RAM_C222_)
; Data from 17853 to 17892 (64 bytes)
_DATA_17853_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $05 $05 $82 $87 $00 $00 $FF $FF
.db $22 $22 $DD $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $18 $10 $00 $10 $62 $22 $9C $BE $08 $08 $F7 $FF $00 $00 $FF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $10 $10 $EF $FF $00 $00 $FF $FF

; 2nd entry of Pointer Table from 1620 (indexed by _RAM_C222_)
; Data from 17893 to 178D2 (64 bytes)
_DATA_17893_:
.db $00 $00 $00 $00 $00 $00 $01 $01 $14 $14 $0B $1F $00 $00 $FF $FF
.db $04 $04 $FB $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $20 $00 $40 $40 $98 $90 $60 $F0 $22 $22 $DC $FE $08 $08 $F7 $FF
.db $00 $00 $FF $FF $20 $20 $DF $FF $00 $00 $FF $FF $00 $00 $FF $FF

; 3rd entry of Pointer Table from 1620 (indexed by _RAM_C222_)
; Data from 178D3 to 17912 (64 bytes)
_DATA_178D3_:
.db $04 $00 $02 $02 $19 $09 $06 $0F $44 $44 $3B $7F $10 $10 $EF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $02 $02 $FD $FF $00 $00 $FF $FF
.db $00 $00 $00 $00 $00 $00 $E0 $E0 $28 $28 $D0 $F8 $00 $00 $FF $FF
.db $20 $20 $DF $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF

; 4th entry of Pointer Table from 1620 (indexed by _RAM_C222_)
; Data from 17913 to 17952 (64 bytes)
_DATA_17913_:
.db $18 $08 $00 $08 $46 $44 $39 $7D $10 $10 $EF $FF $00 $00 $FF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $04 $04 $FB $FF $00 $00 $FF $FF
.db $00 $00 $00 $00 $00 $00 $00 $00 $A0 $A0 $41 $E1 $00 $00 $FF $FF
.db $44 $44 $BB $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF

; 1st entry of Pointer Table from 162C (indexed by _RAM_C222_)
; Data from 17953 to 17992 (64 bytes)
_DATA_17953_:
.dsb 20, $00
.db $83 $87 $83 $04 $CC $FF $FE $33 $97 $FF $9F $68
.dsb 12, $00
.db $18 $10 $18 $08 $CA $7E $FA $B4 $99 $FE $9F $67 $35 $FF $7D $CA
.db $CE $FF $FF $31

; 2nd entry of Pointer Table from 162C (indexed by _RAM_C222_)
; Data from 17993 to 179D2 (64 bytes)
_DATA_17993_:
.dsb 16, $00
.db $01 $00 $01 $01 $1D $13 $1D $0E $A2 $FF $BB $5D $89 $FF $CF $76
.dsb 12, $00
.db $60 $20 $60 $40 $30 $F8 $F8 $C8 $CE $FC $FE $32 $40 $FF $CE $BF
.db $AF $FF $BF $50

; 3rd entry of Pointer Table from 162C (indexed by _RAM_C222_)
; Data from 179D3 to 17A12 (64 bytes)
_DATA_179D3_:
.dsb 12, $00
.db $06 $04 $06 $02 $0C $1F $1F $13 $73 $3F $7F $4C $02 $FF $73 $FD
.db $F5 $FF $FD $0A
.dsb 16, $00
.db $80 $00 $80 $80 $B8 $C8 $B8 $70 $45 $FF $DD $BA $91 $FF $F3 $6E

; 4th entry of Pointer Table from 162C (indexed by _RAM_C222_)
; Data from 17A13 to 17A52 (64 bytes)
_DATA_17A13_:
.dsb 12, $00
.db $18 $08 $18 $10 $53 $7E $5F $2D $99 $7F $F9 $E6 $AC $FF $BE $53
.db $73 $FF $FF $8C
.dsb 20, $00
.db $C1 $E1 $C1 $20 $33 $FF $7F $CC $E9 $FF $F9 $16

; 1st entry of Pointer Table from 1638 (indexed by _RAM_C221_)
; Data from 17A53 to 17AB2 (96 bytes)
_DATA_17A53_:
.dsb 24, $00
.db $03 $07 $00 $07 $07 $0E $01 $0E $07 $0C $03 $0C $0E $1C $03 $1C
.db $FF $FF $00 $FF $F7 $FF $00 $FF $FF $FF $00 $FF $5D $FF $00 $FF
.db $EA $FF $00 $FF $55 $FF $00 $FF $60 $30 $C0 $30 $F0 $38 $C0 $38
.db $FF $FF $00 $FF $BF $FF $00 $FF $EF $FF $00 $FF $55 $FF $00 $FF
.db $BA $FF $00 $FF $D5 $FF $00 $FF

; 2nd entry of Pointer Table from 1638 (indexed by _RAM_C221_)
; Data from 17AB3 to 17B12 (96 bytes)
_DATA_17AB3_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $03 $00 $03 $07 $0C $03 $0C
.db $0F $08 $07 $08 $0E $18 $07 $18 $0C $10 $0F $10 $0C $10 $0F $10
.db $1E $38 $07 $38 $FF $FC $03 $FC $FF $FF $00 $FF $F7 $FF $00 $FF
.db $FF $FF $00 $FF $5D $FF $00 $FF $EA $FF $00 $FF $55 $FF $00 $FF
.db $78 $1C $E0 $1C $FF $3F $C0 $3F $FF $FF $00 $FF $BF $FF $00 $FF
.db $EF $FF $00 $FF $55 $FF $00 $FF $BA $FF $00 $FF $D5 $FF $00 $FF

; 3rd entry of Pointer Table from 1638 (indexed by _RAM_C221_)
; Data from 17B13 to 17B72 (96 bytes)
_DATA_17B13_:
.db $01 $03 $00 $03 $07 $0E $01 $0E $0F $08 $07 $08 $0E $10 $0F $10
.db $1C $10 $0F $10 $1C $10 $0F $10 $1E $30 $0F $30 $3F $38 $07 $38
.db $FF $FC $03 $FC $FF $FF $00 $FF $FF $FF $00 $FF $F7 $FF $00 $FF
.db $FF $FF $00 $FF $5D $FF $00 $FF $EA $FF $00 $FF $55 $FF $00 $FF
.db $FF $3F $C0 $3F $FF $FF $00 $FF $FF $FF $00 $FF $BF $FF $00 $FF
.db $EF $FF $00 $FF $55 $FF $00 $FF $BA $FF $00 $FF $D5 $FF $00 $FF

; 4th entry of Pointer Table from 1638 (indexed by _RAM_C221_)
; Data from 17B73 to 17BD2 (96 bytes)
_DATA_17B73_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $48 $48 $24 $48 $34 $24 $12 $24
.db $16 $16 $00 $16 $02 $02 $00 $02 $00 $00 $00 $00 $1A $08 $12 $08
.db $0F $1C $03 $1C $07 $0E $01 $0E $FF $FF $00 $FF $F7 $FF $00 $FF
.db $FF $FF $00 $FF $5D $FF $00 $FF $EA $FF $00 $FF $55 $FF $00 $FF
.db $F0 $38 $C0 $38 $E0 $70 $80 $70 $FF $FF $00 $FF $BF $FF $00 $FF
.db $EF $FF $00 $FF $55 $FF $00 $FF $BA $FF $00 $FF $D5 $FF $00 $FF

; 1st entry of Pointer Table from 1640 (indexed by _RAM_C221_)
; Data from 17BD3 to 17C32 (96 bytes)
_DATA_17BD3_:
.dsb 25, $00
.db $03 $04 $07 $01 $06 $08 $0F $03 $04 $08 $0F $03 $0C $10 $1E $00
.db $FF $00 $FF $00 $F7 $08 $FF $00 $FF $00 $FF $00 $5D $A2 $FF $00
.db $EA $15 $FF $00 $55 $AA $FF $C0 $20 $10 $70 $C0 $30 $08 $F8 $00
.db $FF $00 $FF $00 $BF $40 $FF $00 $EF $10 $FF $00 $55 $AA $FF $00
.db $BA $45 $FF $00 $D5 $2A $FF

; 2nd entry of Pointer Table from 1640 (indexed by _RAM_C221_)
; Data from 17C33 to 17C92 (96 bytes)
_DATA_17C33_:
.dsb 9, $00
.db $01 $02 $03 $03 $04 $08 $0F $07 $08 $00 $0F $07 $08 $10 $1E $0F
.db $00 $10 $1C $0F $00 $10 $1C $07 $18 $20 $3E $03 $FC $00 $FF $00
.db $FF $00 $FF $00 $F7 $08 $FF $00 $FF $00 $FF $00 $5D $A2 $FF $00
.db $EA $15 $FF $00 $55 $AA $FF $E0 $18 $04 $7C $C0 $3F $00 $FF $00
.db $FF $00 $FF $00 $BF $40 $FF $00 $EF $10 $FF $00 $55 $AA $FF $00
.db $BA $45 $FF $00 $D5 $2A $FF

; 3rd entry of Pointer Table from 1640 (indexed by _RAM_C221_)
; Data from 17C93 to 17CF2 (96 bytes)
_DATA_17C93_:
.db $00 $01 $02 $03 $01 $06 $08 $0F $07 $08 $00 $0F $0F $00 $10 $1E
.db $0F $10 $00 $1C $0F $10 $00 $1C $0F $10 $20 $3E $07 $38 $00 $3F
.db $03 $FC $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $F7 $08 $FF
.db $00 $FF $00 $FF $00 $5D $A2 $FF $00 $EA $15 $FF $00 $55 $AA $FF
.db $C0 $3F $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $BF $40 $FF
.db $00 $EF $10 $FF $00 $55 $AA $FF $00 $BA $45 $FF $00 $D5 $2A $FF

; 4th entry of Pointer Table from 1640 (indexed by _RAM_C221_)
; Data from 17CF3 to 17D52 (96 bytes)
_DATA_17CF3_:
.db $00 $00 $00 $00 $12 $24 $00 $24 $02 $24 $00 $26 $00 $03 $00 $03
.db $10 $23 $00 $23 $08 $10 $00 $18 $00 $00 $00 $00 $09 $04 $00 $0D
.db $01 $06 $08 $0F $00 $03 $04 $07 $00 $FF $00 $FF $00 $F7 $08 $FF
.db $00 $FF $00 $FF $00 $5D $A2 $FF $00 $EA $15 $FF $00 $55 $AA $FF
.db $C0 $30 $08 $F8 $80 $60 $10 $F0 $00 $FF $00 $FF $00 $BF $40 $FF
.db $00 $EF $10 $FF $00 $55 $AA $FF $00 $BA $45 $FF $00 $D5 $2A $FF

; 1st entry of Pointer Table from 1648 (indexed by _RAM_C221_)
; Data from 17D53 to 17DB2 (96 bytes)
_DATA_17D53_:
.dsb 24, $00
.db $03 $04 $07 $07 $07 $08 $0F $0E $07 $08 $0F $0C $0E $10 $1F $1C
.db $FF $00 $FF $FF $F7 $08 $FF $FF $FF $00 $FF $FF $5D $A2 $FF $FF
.db $EA $15 $FF $FF $55 $AA $FF $FF $60 $10 $F0 $30 $F0 $08 $F8 $38
.db $FF $00 $FF $FF $BF $40 $FF $FF $EF $10 $FF $FF $55 $AA $FF $FF
.db $BA $45 $FF $FF $D5 $2A $FF $FF

; 2nd entry of Pointer Table from 1648 (indexed by _RAM_C221_)
; Data from 17DB3 to 17E12 (96 bytes)
_DATA_17DB3_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $02 $03 $03 $07 $08 $0F $0C
.db $0F $00 $0F $08 $0E $10 $1F $18 $0C $10 $1F $10 $0C $10 $1F $10
.db $1E $20 $3F $38 $FF $00 $FF $FC $FF $00 $FF $FF $F7 $08 $FF $FF
.db $FF $00 $FF $FF $5D $A2 $FF $FF $EA $15 $FF $FF $55 $AA $FF $FF
.db $78 $04 $FC $1C $FF $00 $FF $3F $FF $00 $FF $FF $BF $40 $FF $FF
.db $EF $10 $FF $FF $55 $AA $FF $FF $BA $45 $FF $FF $D5 $2A $FF $FF

; 3rd entry of Pointer Table from 1648 (indexed by _RAM_C221_)
; Data from 17E13 to 17E72 (96 bytes)
_DATA_17E13_:
.db $01 $02 $03 $03 $07 $08 $0F $0E $0F $00 $0F $08 $0E $10 $1F $10
.db $1C $00 $1F $10 $1C $00 $1F $10 $1E $20 $3F $30 $3F $00 $3F $38
.db $FF $00 $FF $FC $FF $00 $FF $FF $FF $00 $FF $FF $F7 $08 $FF $FF
.db $FF $00 $FF $FF $5D $A2 $FF $FF $EA $15 $FF $FF $55 $AA $FF $FF
.db $FF $00 $FF $3F $FF $00 $FF $FF $FF $00 $FF $FF $BF $40 $FF $FF
.db $EF $10 $FF $FF $55 $AA $FF $FF $BA $45 $FF $FF $D5 $2A $FF $FF

; 4th entry of Pointer Table from 1648 (indexed by _RAM_C221_)
; Data from 17E73 to 17FFF (397 bytes)
_DATA_17E73_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $48 $00 $6C $48 $34 $00 $36 $24
.db $16 $00 $16 $16 $02 $00 $02 $02 $00 $00 $00 $00 $1A $00 $1A $08
.db $0F $10 $1F $1C $07 $08 $0F $0E $FF $00 $FF $FF $F7 $08 $FF $FF
.db $FF $00 $FF $FF $5D $A2 $FF $FF $EA $15 $FF $FF $55 $AA $FF $FF
.db $F0 $08 $F8 $38 $E0 $10 $F0 $70 $FF $00 $FF $FF $BF $40 $FF $FF
.db $EF $10 $FF $FF $55 $AA $FF $FF $BA $45 $FF $FF $D5 $2A
.dsb 303, $FF

.BANK 6
.ORG $0000

; 1st entry of Pointer Table from 66F9 (indexed by unknown)
; Pointer Table from 18000 to 18003 (2 entries, indexed by unknown)
_DATA_18000_:
.dw _DATA_18006_ _DATA_1800C_

; 2nd entry of Pointer Table from 66F9 (indexed by unknown)
; Pointer Table from 18004 to 18005 (1 entries, indexed by unknown)
_DATA_18004_:
.dw _DATA_1800E_

; 1st entry of Pointer Table from 18000 (indexed by unknown)
; Pointer Table from 18006 to 1800B (3 entries, indexed by unknown)
_DATA_18006_:
.dw _DATA_18456_ _DATA_184D4_ _DATA_1853D_

; 2nd entry of Pointer Table from 18000 (indexed by unknown)
; Pointer Table from 1800C to 1800D (1 entries, indexed by unknown)
_DATA_1800C_:
.dw _DATA_18022_

; 1st entry of Pointer Table from 18004 (indexed by unknown)
; Pointer Table from 1800E to 18021 (10 entries, indexed by unknown)
_DATA_1800E_:
.dw _DATA_18022_ _DATA_18077_ _DATA_180F8_ _DATA_18193_ _DATA_18224_ _DATA_1829C_ _DATA_1830E_ _DATA_18378_
.dw _DATA_183F9_ _DATA_18456_

; 1st entry of Pointer Table from 1800C (indexed by unknown)
; Data from 18022 to 18076 (85 bytes)
_DATA_18022_:
.db $13 $00 $82 $0B $0C $17 $00 $82 $0B $0C $1B $00 $82 $0B $0C $07
.db $00 $81 $20 $1A $00 $81 $03 $02 $00 $05 $51 $81 $53 $05 $00 $81
.db $52 $04 $51 $04 $50 $81 $55 $03 $00 $02 $20 $02 $00 $81 $54 $06
.db $50 $81 $57 $09 $00 $81 $54 $05 $50 $84 $03 $00 $00 $52 $03 $51
.db $81 $53 $03 $00 $81 $54 $04 $50 $81 $03 $03 $00 $83 $54 $50 $55
.db $05 $00 $81 $56 $00

; 2nd entry of Pointer Table from 1800E (indexed by unknown)
; Data from 18077 to 180F7 (129 bytes)
_DATA_18077_:
.db $03 $50 $81 $10 $06 $00 $02 $20 $03 $00 $04 $50 $82 $51 $53 $08
.db $00 $82 $10 $02 $04 $50 $81 $57 $05 $00 $81 $52 $05 $51 $04 $50
.db $81 $57 $04 $00 $83 $10 $00 $54 $08 $50 $81 $57 $04 $00 $84 $10
.db $00 $00 $54 $07 $50 $86 $57 $00 $52 $51 $51 $53 $03 $00 $81 $54
.db $06 $50 $8B $55 $00 $00 $54 $55 $00 $00 $0B $0C $00 $54 $04 $50
.db $81 $55 $0B $00 $84 $54 $50 $50 $57 $0D $00 $02 $50 $81 $57 $0C
.db $00 $84 $03 $50 $50 $57 $05 $00 $82 $10 $52 $03 $51 $86 $53 $00
.db $03 $50 $50 $03 $05 $00 $89 $10 $20 $54 $50 $55 $10 $00 $00 $50
.db $00

; 3rd entry of Pointer Table from 1800E (indexed by unknown)
; Data from 180F8 to 18192 (155 bytes)
_DATA_180F8_:
.db $81 $50 $02 $10 $0A $00 $86 $10 $00 $56 $50 $51 $53 $0B $00 $82
.db $10 $56 $02 $50 $04 $51 $81 $53 $04 $00 $81 $03 $03 $00 $81 $56
.db $05 $50 $81 $55 $03 $00 $81 $52 $05 $51 $81 $56 $03 $50 $82 $03
.db $10 $05 $00 $81 $54 $04 $50 $81 $56 $03 $50 $85 $10 $00 $00 $0B
.db $0C $03 $00 $81 $54 $03 $50 $86 $56 $50 $50 $55 $00 $10 $07 $00
.db $81 $54 $04 $50 $84 $55 $10 $00 $10 $08 $00 $88 $54 $50 $50 $57
.db $00 $10 $03 $00 $02 $10 $07 $00 $85 $56 $50 $57 $00 $10 $03 $00
.db $81 $10 $04 $00 $88 $02 $00 $00 $56 $50 $57 $00 $03 $03 $00 $02
.db $03 $8B $52 $51 $51 $53 $00 $00 $56 $50 $57 $00 $10 $03 $00 $85
.db $03 $00 $00 $54 $55 $03 $00 $82 $56 $50 $00

; 4th entry of Pointer Table from 1800E (indexed by unknown)
; Data from 18193 to 18223 (145 bytes)
_DATA_18193_:
.db $83 $57 $00 $52 $03 $51 $81 $53 $07 $00 $83 $03 $50 $57 $0C $00
.db $02 $10 $82 $50 $57 $07 $00 $81 $52 $06 $51 $82 $50 $57 $04 $10
.db $04 $00 $81 $54 $04 $50 $87 $56 $50 $57 $03 $00 $00 $10 $05 $00
.db $81 $54 $03 $50 $87 $56 $50 $57 $01 $00 $00 $10 $06 $00 $8A $54
.db $50 $50 $56 $50 $57 $03 $00 $00 $10 $03 $00 $82 $0B $0C $04 $00
.db $81 $54 $02 $50 $06 $51 $81 $53 $06 $00 $82 $10 $56 $05 $50 $81
.db $55 $07 $00 $83 $10 $00 $56 $04 $50 $84 $55 $00 $00 $0A $04 $00
.db $84 $10 $00 $00 $56 $04 $50 $04 $00 $81 $52 $03 $51 $84 $53 $00
.db $00 $56 $03 $50 $81 $55 $05 $00 $83 $54 $50 $55 $03 $00 $81 $56
.db $00

; 5th entry of Pointer Table from 1800E (indexed by unknown)
; Data from 18224 to 1829B (120 bytes)
_DATA_18224_:
.db $83 $50 $55 $0A $0C $00 $82 $56 $57 $0E $00 $82 $56 $57 $0E $00
.db $85 $56 $57 $00 $00 $52 $03 $51 $81 $08 $05 $51 $84 $53 $00 $56
.db $57 $03 $00 $81 $54 $07 $50 $85 $55 $00 $03 $56 $57 $04 $00 $81
.db $54 $05 $50 $86 $55 $00 $00 $03 $56 $57 $0E $00 $85 $56 $57 $10
.db $10 $03 $0B $00 $82 $56 $57 $03 $00 $81 $10 $05 $00 $81 $52 $04
.db $51 $82 $50 $57 $03 $00 $81 $10 $06 $00 $81 $54 $03 $50 $82 $56
.db $50 $05 $51 $8A $53 $00 $00 $0B $0C $00 $00 $54 $50 $56 $05 $50
.db $81 $55 $08 $00 $82 $54 $56 $00

; 6th entry of Pointer Table from 1800E (indexed by unknown)
; Data from 1829C to 1830D (114 bytes)
_DATA_1829C_:
.db $04 $50 $81 $55 $0A $00 $81 $56 $03 $50 $85 $55 $00 $00 $0B $0C
.db $06 $00 $85 $10 $56 $50 $03 $10 $05 $00 $81 $0A $04 $00 $84 $10
.db $00 $56 $50 $02 $10 $0C $00 $84 $56 $57 $51 $53 $09 $00 $03 $03
.db $83 $56 $57 $55 $0A $00 $85 $10 $00 $00 $56 $57 $0B $00 $88 $10
.db $00 $10 $56 $57 $00 $00 $52 $0B $51 $82 $50 $57 $03 $00 $81 $54
.db $0B $50 $81 $57 $05 $00 $81 $54 $0A $50 $82 $51 $53 $06 $00 $82
.db $03 $54 $05 $50 $86 $57 $55 $00 $00 $0B $0C $07 $00 $81 $54 $02
.db $50 $00

; 7th entry of Pointer Table from 1800E (indexed by unknown)
; Data from 1830E to 18377 (106 bytes)
_DATA_1830E_:
.db $82 $57 $03 $0C $00 $83 $54 $50 $57 $06 $00 $84 $52 $51 $51 $53
.db $04 $00 $82 $56 $57 $0E $00 $87 $56 $57 $00 $52 $51 $51 $53 $09
.db $00 $82 $56 $57 $0B $00 $85 $03 $00 $00 $56 $57 $07 $00 $8B $0B
.db $0C $00 $52 $53 $00 $00 $56 $57 $00 $0A $0C $00 $84 $56 $57 $00
.db $0A $0B $00 $84 $03 $56 $50 $53 $0D $00 $82 $56 $57 $04 $00 $83
.db $52 $51 $53 $07 $00 $85 $56 $57 $00 $0B $0C $07 $00 $86 $52 $53
.db $00 $00 $56 $57 $0D $00 $82 $52 $56 $00

; 8th entry of Pointer Table from 1800E (indexed by unknown)
; Data from 18378 to 183F8 (129 bytes)
_DATA_18378_:
.db $81 $57 $0E $00 $82 $56 $57 $0E $00 $92 $56 $57 $00 $52 $51 $53
.db $00 $52 $51 $53 $00 $52 $51 $53 $00 $52 $56 $57 $0E $00 $82 $56
.db $57 $03 $00 $8D $10 $0A $00 $52 $53 $00 $03 $00 $10 $0A $00 $56
.db $57 $03 $00 $82 $10 $0A $04 $00 $87 $10 $00 $10 $0A $00 $56 $57
.db $03 $00 $8D $10 $00 $52 $51 $53 $00 $03 $00 $10 $00 $00 $56 $57
.db $03 $00 $81 $10 $05 $00 $98 $10 $00 $10 $00 $00 $56 $50 $51 $53
.db $00 $52 $51 $53 $00 $52 $51 $53 $00 $52 $51 $51 $56 $57 $55 $0B
.db $00 $84 $54 $50 $56 $57 $0D $00 $83 $54 $56 $57 $0E $00 $81 $56
.db $00

; 9th entry of Pointer Table from 1800E (indexed by unknown)
; Data from 183F9 to 18455 (93 bytes)
_DATA_183F9_:
.db $84 $57 $00 $00 $0A $05 $00 $82 $0B $0C $04 $00 $85 $56 $57 $00
.db $00 $0A $0B $00 $85 $56 $57 $00 $00 $0A $0B $00 $86 $56 $57 $00
.db $00 $0B $0C $0A $00 $82 $56 $57 $0E $00 $82 $56 $57 $09 $00 $82
.db $0B $0C $03 $00 $82 $56 $57 $0E $00 $82 $56 $57 $0E $00 $82 $56
.db $57 $0B $00 $85 $0A $00 $00 $56 $57 $0E $00 $87 $56 $57 $00 $0B
.db $0C $00 $0A $09 $00 $82 $56 $50 $0E $00 $81 $54 $00

; 1st entry of Pointer Table from 18006 (indexed by unknown)
; Data from 18456 to 184D3 (126 bytes)
_DATA_18456_:
.db $81 $50 $0F $3D $81 $50 $0A $21 $81 $3E $04 $21 $81 $50 $0A $21
.db $81 $3F $04 $21 $81 $50 $04 $51 $81 $18 $04 $21 $82 $16 $40 $04
.db $21 $81 $50 $05 $16 $04 $21 $83 $1A $16 $18 $03 $21 $82 $50 $01
.db $02 $21 $02 $16 $06 $21 $81 $16 $03 $21 $86 $50 $03 $21 $21 $1A
.db $16 $04 $21 $83 $17 $16 $19 $03 $21 $82 $50 $16 $03 $21 $86 $16
.db $21 $3E $21 $21 $11 $03 $21 $02 $3E $88 $50 $16 $18 $21 $21 $16
.db $21 $3F $06 $21 $02 $3F $81 $50 $02 $16 $02 $21 $83 $11 $21 $40
.db $03 $21 $02 $03 $84 $21 $40 $40 $50 $0F $51 $10 $50 $00

; 2nd entry of Pointer Table from 18006 (indexed by unknown)
; Data from 184D4 to 1853C (105 bytes)
_DATA_184D4_:
.db $10 $3D $81 $21 $06 $51 $03 $21 $82 $1A $16 $05 $21 $06 $16 $04
.db $21 $81 $16 $05 $21 $81 $1A $04 $16 $81 $19 $04 $21 $81 $16 $07
.db $21 $83 $1A $19 $03 $05 $21 $02 $16 $85 $18 $21 $21 $3E $11 $04
.db $21 $81 $11 $09 $21 $81 $3F $06 $51 $04 $21 $02 $16 $84 $19 $21
.db $21 $40 $06 $50 $04 $21 $81 $16 $02 $3E $02 $21 $81 $51 $06 $50
.db $04 $21 $81 $16 $02 $3F $02 $21 $07 $50 $04 $21 $81 $16 $02 $40
.db $02 $21 $07 $50 $09 $51 $10 $50 $00

; 3rd entry of Pointer Table from 18006 (indexed by unknown)
; Data from 1853D to 185BF (131 bytes)
_DATA_1853D_:
.db $0F $3D $83 $16 $21 $17 $03 $16 $81 $18 $08 $21 $02 $16 $82 $21
.db $16 $03 $21 $81 $11 $07 $21 $03 $16 $82 $21 $16 $03 $21 $81 $11
.db $07 $21 $02 $11 $83 $16 $21 $16 $03 $21 $81 $11 $07 $21 $85 $11
.db $03 $16 $21 $16 $03 $21 $81 $11 $06 $21 $02 $11 $84 $03 $16 $21
.db $01 $03 $21 $81 $11 $03 $3E $8D $17 $16 $18 $21 $21 $02 $16 $21
.db $11 $3E $21 $21 $11 $03 $3F $8D $16 $11 $11 $21 $3E $11 $16 $21
.db $11 $3F $21 $21 $16 $03 $40 $8D $16 $11 $11 $21 $3F $11 $16 $21
.db $16 $40 $21 $21 $1A $04 $16 $86 $03 $11 $21 $40 $11 $16 $10 $51
.db $10 $50 $00

; 1st entry of Pointer Table from 6705 (indexed by unknown)
; Pointer Table from 185C0 to 185C1 (1 entries, indexed by unknown)
_DATA_185C0_:
.dw _DATA_185C2_

; 1st entry of Pointer Table from 185C0 (indexed by unknown)
; Pointer Table from 185C2 to 185E5 (18 entries, indexed by unknown)
_DATA_185C2_:
.dw _DATA_18698_ _DATA_185E6_ _DATA_185E6_ _DATA_1864E_ _DATA_1864E_ _DATA_18623_ _DATA_18623_ _DATA_1864E_
.dw _DATA_1864E_ _DATA_18623_ _DATA_185E6_ _DATA_185E6_ _DATA_18623_ _DATA_18623_ _DATA_1864E_ _DATA_18623_
.dw _DATA_186CD_ _DATA_185E6_

; 2nd entry of Pointer Table from 185C2 (indexed by unknown)
; Data from 185E6 to 18622 (61 bytes)
_DATA_185E6_:
.db $12 $00 $82 $0B $0C $23 $00 $82 $0B $0C $39 $00 $8C $22 $23 $24
.db $00 $00 $22 $23 $24 $00 $22 $23 $24 $04 $00 $8D $25 $26 $27 $28
.db $00 $25 $26 $27 $28 $25 $26 $27 $28 $03 $00 $8E $29 $2A $2B $2C
.db $00 $29 $2A $2B $2C $29 $2A $2B $2C $00 $20 $15 $00

; 6th entry of Pointer Table from 185C2 (indexed by unknown)
; Data from 18623 to 1864D (43 bytes)
_DATA_18623_:
.db $12 $00 $82 $0B $0C $0A $00 $82 $0B $0C $18 $00 $82 $0B $0C $41
.db $00 $83 $22 $23 $24 $08 $00 $81 $14 $04 $00 $84 $25 $26 $27 $28
.db $0C $00 $85 $29 $2A $2B $2C $00 $20 $15 $00

; 4th entry of Pointer Table from 185C2 (indexed by unknown)
; Data from 1864E to 18697 (74 bytes)
_DATA_1864E_:
.db $0E $00 $85 $0B $0C $00 $0B $0C $16 $00 $82 $0B $0C $2C $00 $02
.db $10 $0D $00 $04 $10 $0B $00 $06 $10 $04 $00 $81 $0A $04 $00 $02
.db $10 $81 $0A $05 $10 $07 $00 $05 $10 $81 $0A $04 $10 $03 $00 $02
.db $15 $83 $69 $15 $69 $05 $15 $83 $69 $15 $69 $05 $15 $83 $68 $15
.db $68 $05 $15 $83 $68 $15 $68 $03 $15 $00

; 1st entry of Pointer Table from 185C2 (indexed by unknown)
; Data from 18698 to 186CC (53 bytes)
_DATA_18698_:
.db $1B $00 $82 $0B $0C $06 $00 $82 $0B $0C $30 $00 $83 $2D $2E $2F
.db $0C $00 $85 $30 $31 $32 $33 $34 $0B $00 $85 $35 $36 $37 $38 $39
.db $0B $00 $85 $35 $3A $3B $3C $39 $0B $00 $85 $35 $3A $3B $3C $39
.db $07 $00 $20 $15 $00

; 17th entry of Pointer Table from 185C2 (indexed by unknown)
; Data from 186CD to 1871E (82 bytes)
_DATA_186CD_:
.db $0D $00 $81 $14 $04 $00 $82 $0B $0C $09 $00 $81 $14 $0C $00 $84
.db $0B $0C $00 $14 $0F $00 $81 $14 $0F $00 $81 $14 $0F $00 $81 $14
.db $0F $00 $81 $14 $04 $00 $85 $22 $23 $24 $00 $0A $04 $00 $83 $14
.db $00 $14 $04 $00 $84 $25 $26 $27 $28 $05 $00 $81 $14 $03 $00 $87
.db $14 $00 $00 $29 $2A $2B $2C $05 $00 $81 $14 $03 $00 $81 $14 $20
.db $15 $00

; 1st entry of Pointer Table from 6711 (indexed by unknown)
; Pointer Table from 1871F to 18722 (2 entries, indexed by unknown)
_DATA_1871F_:
.dw _DATA_18725_ _DATA_18731_

; 2nd entry of Pointer Table from 6711 (indexed by unknown)
; Pointer Table from 18723 to 18724 (1 entries, indexed by unknown)
_DATA_18723_:
.dw _DATA_18735_

; 1st entry of Pointer Table from 1871F (indexed by unknown)
; Pointer Table from 18725 to 18730 (6 entries, indexed by unknown)
_DATA_18725_:
.dw _DATA_18739_ _DATA_187A8_ _DATA_1880C_ _DATA_18858_ _DATA_188B7_ _DATA_18935_

; 2nd entry of Pointer Table from 1871F (indexed by unknown)
; Pointer Table from 18731 to 18734 (2 entries, indexed by unknown)
_DATA_18731_:
.dw _DATA_189AA_ _DATA_18A46_

; 1st entry of Pointer Table from 18723 (indexed by unknown)
; Pointer Table from 18735 to 18738 (2 entries, indexed by unknown)
_DATA_18735_:
.dw _DATA_18739_ _DATA_189AA_

; 1st entry of Pointer Table from 18725 (indexed by unknown)
; Data from 18739 to 187A7 (111 bytes)
_DATA_18739_:
.db $10 $00 $81 $48 $0F $3D $82 $47 $18 $0E $21 $83 $47 $16 $18 $08
.db $21 $02 $3E $03 $21 $84 $47 $16 $16 $18 $07 $21 $02 $3F $03 $21
.db $81 $47 $03 $16 $81 $18 $06 $21 $02 $40 $03 $21 $81 $47 $04 $21
.db $81 $18 $03 $21 $04 $48 $03 $21 $82 $47 $02 $03 $21 $8C $16 $21
.db $3E $3E $1A $16 $16 $19 $21 $21 $17 $47 $02 $16 $03 $11 $81 $21
.db $02 $3F $04 $21 $02 $11 $82 $16 $47 $03 $16 $02 $11 $81 $21 $02
.db $40 $02 $03 $02 $21 $02 $11 $82 $16 $47 $0F $48 $10 $47 $00

; 2nd entry of Pointer Table from 18725 (indexed by unknown)
; Data from 187A8 to 1880B (100 bytes)
_DATA_187A8_:
.db $10 $00 $05 $3D $06 $48 $05 $3D $05 $21 $06 $16 $0A $21 $81 $1A
.db $04 $16 $81 $19 $0B $21 $85 $1A $16 $16 $19 $03 $05 $21 $03 $48
.db $04 $21 $82 $1A $19 $07 $21 $02 $16 $81 $19 $0D $21 $81 $16 $0E
.db $21 $83 $17 $16 $03 $05 $21 $82 $41 $42 $02 $21 $02 $3E $82 $21
.db $17 $04 $16 $04 $21 $82 $43 $44 $02 $21 $02 $3F $81 $17 $02 $16
.db $03 $48 $04 $21 $82 $45 $46 $02 $21 $02 $40 $03 $48 $03 $47 $0A
.db $48 $03 $47 $00

; 3rd entry of Pointer Table from 18725 (indexed by unknown)
; Data from 1880C to 18857 (76 bytes)
_DATA_1880C_:
.db $10 $00 $10 $3D $11 $21 $81 $3E $0F $21 $81 $3F $0A $21 $86 $17
.db $16 $16 $18 $21 $40 $0A $21 $87 $16 $21 $21 $16 $17 $16 $18 $09
.db $21 $83 $11 $21 $03 $04 $16 $81 $18 $04 $21 $03 $3E $85 $21 $1A
.db $16 $16 $19 $04 $16 $81 $18 $03 $21 $03 $3F $05 $21 $05 $16 $81
.db $18 $02 $21 $03 $40 $05 $21 $10 $48 $10 $47 $00

; 4th entry of Pointer Table from 18725 (indexed by unknown)
; Data from 18858 to 188B6 (95 bytes)
_DATA_18858_:
.db $10 $00 $04 $3D $04 $48 $08 $3D $04 $21 $04 $16 $0C $21 $04 $16
.db $0C $21 $82 $16 $03 $02 $11 $04 $21 $81 $3E $07 $21 $84 $1A $16
.db $16 $19 $04 $21 $81 $3F $08 $21 $03 $11 $04 $21 $81 $40 $03 $48
.db $82 $21 $3E $03 $21 $03 $11 $03 $21 $82 $3E $48 $03 $47 $82 $21
.db $3F $05 $48 $04 $21 $81 $3F $04 $47 $82 $21 $40 $05 $47 $81 $03
.db $03 $21 $81 $40 $04 $47 $02 $48 $05 $47 $05 $48 $14 $47 $00

; 5th entry of Pointer Table from 18725 (indexed by unknown)
; Data from 188B7 to 18934 (126 bytes)
_DATA_188B7_:
.db $10 $00 $82 $3D $16 $0B $3D $8A $16 $3D $3D $21 $1A $16 $03 $21
.db $21 $3E $05 $21 $82 $16 $19 $04 $21 $8B $1A $16 $03 $21 $3F $16
.db $11 $21 $21 $16 $19 $06 $21 $89 $1A $03 $21 $40 $11 $21 $21 $11
.db $19 $08 $21 $81 $1A $02 $16 $02 $21 $02 $11 $0A $21 $82 $1A $16
.db $02 $11 $07 $21 $81 $48 $0B $21 $02 $3E $02 $21 $81 $47 $02 $3E
.db $03 $21 $82 $41 $42 $04 $21 $02 $3F $02 $21 $81 $47 $02 $3F $03
.db $21 $82 $43 $44 $04 $21 $02 $40 $02 $21 $81 $47 $02 $40 $03 $21
.db $82 $45 $46 $03 $21 $05 $48 $81 $47 $0A $48 $05 $47 $00

; 6th entry of Pointer Table from 18725 (indexed by unknown)
; Data from 18935 to 189A9 (117 bytes)
_DATA_18935_:
.db $10 $00 $81 $3D $02 $16 $0C $3D $82 $48 $21 $02 $11 $0B $21 $82
.db $48 $47 $04 $48 $02 $21 $02 $3E $06 $21 $02 $47 $84 $1A $16 $16
.db $19 $02 $21 $02 $3F $05 $21 $81 $48 $02 $47 $04 $21 $82 $11 $21
.db $02 $40 $03 $21 $82 $3E $21 $03 $47 $04 $21 $04 $48 $03 $21 $82
.db $3F $48 $03 $47 $02 $21 $8A $3E $21 $1A $16 $16 $19 $21 $21 $3E
.db $40 $04 $47 $02 $21 $81 $3F $03 $21 $81 $11 $03 $21 $82 $3F $48
.db $04 $47 $02 $21 $81 $40 $03 $21 $81 $11 $03 $21 $81 $40 $05 $47
.db $0B $48 $15 $47 $00

; 1st entry of Pointer Table from 18731 (indexed by unknown)
; Data from 189AA to 18A45 (156 bytes)
_DATA_189AA_:
.db $0F $21 $81 $6D $0F $21 $83 $6F $6B $6C $02 $21 $02 $75 $82 $74
.db $75 $02 $74 $02 $75 $86 $74 $21 $21 $6F $6B $6C $07 $21 $81 $75
.db $05 $21 $A3 $6D $6A $6B $71 $73 $71 $73 $71 $21 $21 $74 $21 $21
.db $75 $21 $21 $6D $6B $6A $70 $70 $72 $70 $74 $21 $21 $75 $21 $21
.db $74 $21 $21 $6F $6A $6E $07 $21 $8D $75 $21 $21 $74 $21 $21 $6D
.db $6B $3E $3E $21 $75 $73 $03 $71 $98 $74 $21 $3E $75 $3E $21 $6F
.db $6A $3F $3F $21 $74 $72 $70 $72 $72 $74 $21 $3F $74 $3F $21 $6F
.db $6A $02 $40 $08 $21 $A5 $40 $21 $40 $21 $21 $6A $6B $71 $71 $73
.db $71 $73 $73 $71 $73 $71 $71 $73 $71 $73 $71 $6B $6A $6B $6A $6B
.db $6B $6A $6B $6A $6B $6A $6B $6B $6A $6B $6A $00

; 2nd entry of Pointer Table from 18731 (indexed by unknown)
; Data from 18A46 to 18AD5 (144 bytes)
_DATA_18A46_:
.db $8A $6B $6A $6B $6A $6B $6B $6A $6B $6A $6B $02 $6A $02 $70 $02
.db $21 $8C $6A $70 $70 $72 $70 $72 $72 $70 $72 $70 $70 $72 $04 $21
.db $81 $6C $0E $21 $82 $76 $6C $0D $21 $83 $77 $6B $6E $0D $21 $83
.db $78 $6A $6C $0C $21 $84 $76 $6A $6B $6E $0B $21 $86 $77 $6B $6A
.db $6A $6C $21 $02 $3E $03 $21 $03 $3E $02 $21 $86 $78 $6A $6B $6B
.db $6E $21 $02 $3F $03 $21 $03 $3F $86 $21 $76 $6B $6B $6A $6B $02
.db $21 $02 $40 $03 $21 $03 $40 $84 $76 $6B $6A $6B $02 $6A $A0 $71
.db $73 $71 $71 $73 $71 $73 $73 $71 $73 $6A $6A $6B $6A $6B $6A $6B
.db $6A $6B $6A $6B $6B $6A $6B $6A $6B $6A $6B $6B $6A $6B $6A $00

; 1st entry of Pointer Table from 671D (indexed by unknown)
; Pointer Table from 18AD6 to 18AD7 (1 entries, indexed by unknown)
_DATA_18AD6_:
.dw _DATA_18AD8_

; 1st entry of Pointer Table from 18AD6 (indexed by unknown)
; Pointer Table from 18AD8 to 18AE7 (8 entries, indexed by unknown)
_DATA_18AD8_:
.dw _DATA_18AE8_ _DATA_18B52_ _DATA_18BC4_ _DATA_18C42_ _DATA_18C8D_ _DATA_18CFB_ _DATA_18D3A_ _DATA_18D7D_

; 1st entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18AE8 to 18B51 (106 bytes)
_DATA_18AE8_:
.db $11 $00 $82 $0B $0C $06 $00 $81 $03 $0B $00 $81 $03 $06 $00 $82
.db $0B $0C $0D $00 $81 $14 $05 $00 $81 $7A $0F $00 $82 $7B $7A $06
.db $00 $81 $7A $05 $00 $82 $10 $00 $02 $7B $06 $00 $88 $7B $00 $10
.db $10 $00 $7A $10 $00 $02 $7B $04 $00 $02 $10 $88 $7B $00 $10 $10
.db $00 $7B $10 $00 $02 $7C $02 $10 $02 $00 $8A $10 $01 $7C $00 $01
.db $14 $00 $7B $10 $00 $02 $7C $02 $10 $02 $00 $02 $10 $87 $7C $00
.db $10 $14 $00 $7C $14 $10 $7E $10 $7D $00

; 2nd entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18B52 to 18BC3 (114 bytes)
_DATA_18B52_:
.db $83 $00 $0B $0C $0B $00 $82 $0B $0C $05 $00 $82 $0B $0C $0F $00
.db $02 $10 $83 $00 $0B $0C $04 $00 $84 $14 $00 $00 $10 $03 $00 $02
.db $10 $03 $00 $81 $10 $0A $00 $82 $01 $03 $08 $00 $81 $03 $05 $00
.db $82 $14 $10 $07 $00 $82 $7A $03 $03 $00 $82 $10 $00 $02 $10 $06
.db $00 $83 $14 $7B $14 $03 $00 $81 $10 $04 $00 $81 $10 $04 $00 $87
.db $7A $7B $01 $00 $01 $00 $14 $09 $00 $83 $7B $7C $10 $03 $00 $81
.db $10 $09 $00 $02 $7C $09 $7E $04 $7F $03 $7E $09 $7D $04 $80 $03
.db $7D $00

; 3rd entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18BC4 to 18C41 (126 bytes)
_DATA_18BC4_:
.db $0D $00 $82 $0B $0C $12 $00 $82 $10 $00 $02 $10 $03 $00 $82 $0B
.db $0C $08 $00 $83 $7A $03 $10 $0A $00 $84 $7A $00 $00 $7B $02 $10
.db $06 $00 $8A $14 $7A $00 $00 $7B $00 $00 $7B $14 $10 $03 $00 $8B
.db $10 $03 $00 $10 $7B $00 $10 $7B $00 $00 $7B $02 $10 $03 $00 $90
.db $10 $03 $00 $00 $7B $00 $14 $7B $00 $10 $7C $10 $01 $00 $10 $00
.db $02 $10 $02 $00 $89 $7B $00 $00 $7C $00 $14 $7C $10 $14 $07 $00
.db $87 $7C $00 $00 $7C $00 $00 $7C $02 $10 $07 $00 $84 $7C $00 $00
.db $7C $05 $7E $04 $7F $07 $7E $05 $7D $04 $80 $07 $7D $00

; 4th entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18C42 to 18C8C (75 bytes)
_DATA_18C42_:
.db $1B $00 $82 $0B $0C $06 $00 $85 $0B $0C $00 $00 $10 $29 $00 $82
.db $10 $7A $06 $00 $07 $14 $02 $00 $81 $7B $06 $00 $07 $10 $02 $00
.db $82 $7B $14 $04 $00 $02 $10 $05 $00 $84 $10 $00 $00 $7C $04 $00
.db $03 $10 $81 $00 $03 $03 $85 $00 $14 $00 $00 $7C $03 $00 $03 $10
.db $81 $14 $05 $00 $81 $14 $10 $7E $10 $7D $00

; 5th entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18C8D to 18CFA (110 bytes)
_DATA_18C8D_:
.db $0D $00 $82 $0B $0C $06 $00 $82 $0B $0C $13 $00 $82 $0B $0C $04
.db $00 $82 $0B $0C $0B $00 $81 $7A $0B $00 $8A $81 $82 $00 $00 $7B
.db $00 $00 $7A $00 $7A $06 $00 $8A $83 $84 $00 $00 $7B $00 $00 $7B
.db $7A $7B $05 $00 $88 $85 $86 $87 $88 $00 $7B $7A $00 $03 $7B $05
.db $00 $8B $89 $8A $8B $8C $00 $7C $7B $00 $7C $7B $7C $05 $00 $88
.db $89 $8D $8E $8C $00 $7C $7B $00 $03 $7C $05 $00 $88 $89 $8D $8E
.db $8C $00 $7C $7C $00 $08 $7E $04 $8F $04 $7E $10 $7D $00

; 6th entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18CFB to 18D39 (63 bytes)
_DATA_18CFB_:
.db $11 $00 $82 $0B $0C $19 $00 $82 $0B $0C $0A $00 $81 $14 $0E $00
.db $83 $03 $10 $03 $0C $00 $02 $03 $81 $10 $02 $03 $0A $00 $03 $03
.db $81 $10 $03 $03 $08 $00 $09 $10 $06 $00 $0B $10 $04 $00 $03 $10
.db $03 $03 $81 $10 $03 $03 $03 $10 $81 $00 $10 $7E $10 $7D $00

; 7th entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18D3A to 18D7C (67 bytes)
_DATA_18D3A_:
.db $08 $00 $82 $0B $0C $14 $00 $85 $0B $0C $00 $0B $0C $11 $00 $05
.db $0A $81 $00 $05 $0A $05 $00 $04 $10 $82 $14 $00 $03 $10 $02 $14
.db $11 $00 $03 $7A $0D $00 $03 $7B $06 $00 $81 $10 $06 $00 $03 $7B
.db $06 $00 $81 $10 $06 $00 $03 $7C $06 $00 $81 $10 $06 $00 $10 $7E
.db $10 $7D $00

; 8th entry of Pointer Table from 18AD8 (indexed by unknown)
; Data from 18D7D to 18DCD (81 bytes)
_DATA_18D7D_:
.db $05 $00 $84 $14 $10 $10 $14 $0C $00 $81 $14 $03 $00 $81 $10 $0A
.db $00 $82 $03 $14 $03 $00 $81 $10 $0A $00 $81 $03 $03 $14 $02 $10
.db $08 $00 $02 $10 $81 $03 $03 $00 $81 $10 $0A $00 $03 $10 $02 $00
.db $81 $10 $0C $00 $81 $10 $0D $00 $04 $10 $02 $00 $82 $10 $14 $0A
.db $00 $02 $10 $82 $00 $10 $0D $00 $02 $10 $08 $00 $10 $7E $10 $7D
.db $00

; 1st entry of Pointer Table from 6729 (indexed by unknown)
; Pointer Table from 18DCE to 18DD1 (2 entries, indexed by unknown)
_DATA_18DCE_:
.dw _DATA_18DDA_ _DATA_18DFA_

; 2nd entry of Pointer Table from 6729 (indexed by unknown)
; Pointer Table from 18DD2 to 18DD9 (4 entries, indexed by unknown)
_DATA_18DD2_:
.dw _DATA_18E02_ _DATA_18E06_ _DATA_18E0A_ _DATA_18E0E_

; 1st entry of Pointer Table from 18DCE (indexed by unknown)
; Pointer Table from 18DDA to 18DF9 (16 entries, indexed by unknown)
_DATA_18DDA_:
.dw _DATA_18E12_ _DATA_18E32_ _DATA_18E63_ _DATA_18E93_ _DATA_18E12_ _DATA_18E32_ _DATA_18E63_ _DATA_18E93_
.dw _DATA_18E12_ _DATA_18E32_ _DATA_18E63_ _DATA_18E93_ _DATA_18E12_ _DATA_18E32_ _DATA_18E63_ _DATA_18E93_

; 2nd entry of Pointer Table from 18DCE (indexed by unknown)
; Pointer Table from 18DFA to 18E01 (4 entries, indexed by unknown)
_DATA_18DFA_:
.dw _DATA_18ED3_ _DATA_18F37_ _DATA_18F8B_ _DATA_18FED_

; 1st entry of Pointer Table from 18DD2 (indexed by unknown)
; Pointer Table from 18E02 to 18E05 (2 entries, indexed by unknown)
_DATA_18E02_:
.dw _DATA_18E12_ _DATA_18ED3_

; 2nd entry of Pointer Table from 18DD2 (indexed by unknown)
; Pointer Table from 18E06 to 18E09 (2 entries, indexed by unknown)
_DATA_18E06_:
.dw _DATA_18E12_ _DATA_18F37_

; 3rd entry of Pointer Table from 18DD2 (indexed by unknown)
; Pointer Table from 18E0A to 18E0D (2 entries, indexed by unknown)
_DATA_18E0A_:
.dw _DATA_18E12_ _DATA_18F8B_

; 4th entry of Pointer Table from 18DD2 (indexed by unknown)
; Pointer Table from 18E0E to 18E11 (2 entries, indexed by unknown)
_DATA_18E0E_:
.dw _DATA_18E12_ _DATA_18FED_

; 1st entry of Pointer Table from 18E02 (indexed by unknown)
; Data from 18E12 to 18E31 (32 bytes)
_DATA_18E12_:
.db $15 $00 $82 $0B $0C $1A $00 $82 $0B $0C $0A $00 $82 $0B $0C $37
.db $00 $02 $0A $02 $14 $06 $00 $03 $14 $1D $00 $10 $3D $10 $21 $00

; 2nd entry of Pointer Table from 18DDA (indexed by unknown)
; Data from 18E32 to 18E62 (49 bytes)
_DATA_18E32_:
.db $08 $00 $04 $14 $06 $00 $02 $14 $04 $00 $04 $0A $0C $00 $04 $0A
.db $83 $00 $0B $0C $28 $00 $81 $14 $15 $00 $81 $14 $0C $00 $02 $0A
.db $81 $14 $0F $00 $81 $14 $0D $00 $02 $14 $04 $00 $10 $3D $10 $21
.db $00

; 3rd entry of Pointer Table from 18DDA (indexed by unknown)
; Data from 18E63 to 18E92 (48 bytes)
_DATA_18E63_:
.db $17 $00 $82 $0B $0C $17 $00 $84 $14 $0A $0A $14 $06 $00 $05 $14
.db $0A $00 $8A $14 $00 $0A $00 $0A $00 $14 $00 $0B $0C $04 $00 $02
.db $14 $06 $00 $81 $14 $07 $00 $02 $0A $37 $00 $10 $3D $10 $21 $00

; 4th entry of Pointer Table from 18DDA (indexed by unknown)
; Data from 18E93 to 18ED2 (64 bytes)
_DATA_18E93_:
.db $09 $00 $81 $14 $08 $00 $82 $0B $0C $08 $00 $81 $0A $15 $00 $06
.db $14 $04 $00 $81 $14 $07 $00 $02 $0A $07 $00 $82 $0B $0C $05 $00
.db $02 $0A $02 $00 $81 $0A $07 $00 $82 $0B $0C $02 $00 $02 $0A $04
.db $00 $81 $14 $1D $00 $81 $14 $15 $00 $02 $14 $10 $3D $10 $21 $00

; 1st entry of Pointer Table from 18DFA (indexed by unknown)
; Data from 18ED3 to 18F36 (100 bytes)
_DATA_18ED3_:
.db $10 $21 $10 $21 $82 $16 $18 $0E $21 $86 $16 $19 $21 $17 $16 $18
.db $05 $21 $8B $17 $16 $18 $21 $21 $16 $21 $21 $11 $01 $11 $05 $21
.db $03 $16 $02 $21 $91 $16 $21 $21 $1A $16 $19 $21 $17 $16 $18 $21
.db $1A $16 $19 $21 $21 $16 $06 $21 $83 $11 $03 $16 $06 $21 $81 $16
.db $06 $21 $8A $1A $16 $19 $21 $17 $16 $18 $21 $21 $16 $0A $21 $86
.db $11 $01 $11 $21 $21 $16 $0A $21 $86 $1A $16 $19 $21 $21 $51 $0F
.db $48 $10 $47 $00

; 2nd entry of Pointer Table from 18DFA (indexed by unknown)
; Data from 18F37 to 18F8A (84 bytes)
_DATA_18F37_:
.db $28 $21 $82 $17 $18 $06 $21 $82 $17 $18 $06 $21 $82 $1A $19 $06
.db $21 $86 $1A $19 $21 $21 $17 $18 $06 $21 $81 $3E $07 $21 $82 $1A
.db $19 $05 $21 $83 $17 $3F $18 $0D $21 $83 $16 $40 $16 $02 $21 $02
.db $3E $09 $21 $83 $1A $16 $19 $02 $21 $02 $3F $02 $21 $82 $17 $18
.db $0A $21 $02 $40 $02 $21 $82 $1A $19 $04 $21 $81 $03 $05 $21 $10
.db $48 $10 $47 $00

; 3rd entry of Pointer Table from 18DFA (indexed by unknown)
; Data from 18F8B to 18FEC (98 bytes)
_DATA_18F8B_:
.db $11 $21 $83 $3E $21 $3E $0D $21 $83 $3F $16 $3F $04 $21 $81 $17
.db $05 $16 $86 $18 $21 $21 $40 $16 $40 $05 $21 $85 $11 $21 $11 $21
.db $11 $03 $21 $83 $1A $16 $19 $04 $21 $87 $16 $21 $03 $21 $11 $21
.db $11 $09 $21 $81 $1A $05 $16 $81 $19 $04 $21 $83 $17 $16 $18 $0E
.db $21 $81 $11 $04 $21 $03 $3E $82 $17 $18 $05 $21 $83 $1A $16 $19
.db $03 $21 $03 $3F $82 $1A $19 $0B $21 $03 $40 $04 $21 $10 $48 $10
.db $47 $00

; 4th entry of Pointer Table from 18DFA (indexed by unknown)
; Data from 18FED to 19049 (93 bytes)
_DATA_18FED_:
.db $0F $21 $81 $48 $0E $21 $84 $3E $47 $21 $16 $0C $21 $84 $3F $47
.db $21 $16 $0C $21 $84 $40 $47 $21 $16 $0C $21 $84 $48 $47 $21 $16
.db $06 $21 $81 $11 $05 $21 $02 $47 $82 $21 $16 $04 $21 $02 $3E $81
.db $11 $04 $21 $85 $48 $47 $47 $21 $16 $04 $21 $02 $3F $02 $21 $03
.db $3E $03 $47 $06 $21 $02 $40 $02 $21 $03 $3F $03 $47 $06 $21 $82
.db $1A $19 $02 $21 $03 $40 $03 $47 $0D $48 $13 $47 $00

; 1st entry of Pointer Table from 6735 (indexed by unknown)
; Pointer Table from 1904A to 1904B (1 entries, indexed by unknown)
_DATA_1904A_:
.dw _DATA_1904C_

; 1st entry of Pointer Table from 1904A (indexed by unknown)
; Pointer Table from 1904C to 1905D (9 entries, indexed by unknown)
_DATA_1904C_:
.dw _DATA_1905E_ _DATA_19098_ _DATA_19103_ _DATA_1916A_ _DATA_191C2_ _DATA_19219_ _DATA_19264_ _DATA_192C1_
.dw _DATA_1932F_

; 1st entry of Pointer Table from 1904C (indexed by unknown)
; Data from 1905E to 19097 (58 bytes)
_DATA_1905E_:
.db $1C $00 $82 $0B $0C $03 $00 $82 $0B $0C $15 $00 $82 $0B $0C $1E
.db $00 $83 $2D $2E $2F $0C $00 $85 $30 $31 $32 $33 $34 $0B $00 $85
.db $35 $36 $37 $38 $39 $0B $00 $85 $35 $3A $3B $3C $39 $0B $00 $85
.db $35 $3A $3B $3C $39 $04 $00 $20 $AA $00

; 2nd entry of Pointer Table from 1904C (indexed by unknown)
; Data from 19098 to 19102 (107 bytes)
_DATA_19098_:
.db $07 $00 $82 $0B $0C $03 $00 $81 $14 $03 $0A $02 $00 $82 $0B $0C
.db $08 $00 $81 $14 $03 $0A $0B $00 $02 $10 $02 $00 $81 $0A $07 $00
.db $03 $10 $05 $00 $81 $0A $0B $00 $85 $0B $0C $00 $00 $0A $04 $00
.db $02 $10 $0B $00 $83 $10 $00 $A7 $06 $00 $81 $A7 $07 $00 $82 $A7
.db $A8 $06 $00 $81 $A8 $03 $00 $88 $A7 $03 $90 $91 $A8 $A8 $00 $A7
.db $04 $00 $8C $A8 $00 $90 $91 $A8 $00 $92 $93 $A9 $A9 $97 $A9 $04
.db $00 $86 $A9 $94 $95 $96 $A9 $00 $20 $AA $00

; 3rd entry of Pointer Table from 1904C (indexed by unknown)
; Data from 19103 to 19169 (103 bytes)
_DATA_19103_:
.db $81 $0A $09 $00 $82 $0B $0C $04 $00 $81 $0A $10 $00 $82 $0B $0C
.db $03 $00 $02 $10 $81 $03 $10 $00 $03 $10 $83 $00 $0B $0C $06 $00
.db $81 $10 $0F $00 $03 $10 $81 $03 $06 $00 $81 $10 $07 $00 $81 $A7
.db $05 $00 $84 $10 $00 $00 $01 $02 $00 $02 $10 $84 $00 $A7 $A8 $00
.db $03 $10 $0A $00 $02 $A8 $81 $A7 $03 $00 $81 $A7 $09 $00 $03 $A9
.db $03 $00 $81 $A9 $03 $00 $81 $AA $04 $69 $09 $AA $02 $69 $81 $AA
.db $04 $68 $09 $AA $02 $68 $00

; 4th entry of Pointer Table from 1904C (indexed by unknown)
; Data from 1916A to 191C1 (88 bytes)
_DATA_1916A_:
.db $0B $00 $81 $0A $13 $00 $81 $0B $09 $00 $81 $03 $02 $00 $02 $10
.db $13 $00 $81 $03 $03 $00 $82 $03 $00 $02 $10 $13 $00 $83 $10 $00
.db $03 $07 $00 $81 $0A $07 $00 $81 $10 $03 $00 $03 $10 $07 $00 $02
.db $A7 $08 $00 $84 $A7 $00 $90 $91 $02 $00 $02 $A8 $82 $90 $91 $04
.db $00 $02 $97 $84 $A9 $00 $92 $93 $02 $00 $02 $A9 $82 $95 $96 $02
.db $69 $0E $AA $02 $68 $0E $AA $00

; 5th entry of Pointer Table from 1904C (indexed by unknown)
; Data from 191C2 to 19218 (87 bytes)
_DATA_191C2_:
.db $08 $00 $82 $0B $0C $06 $00 $82 $0C $00 $02 $0A $20 $00 $86 $0B
.db $0C $00 $00 $10 $03 $02 $10 $02 $00 $82 $0B $0C $22 $00 $82 $10
.db $03 $04 $00 $81 $14 $03 $10 $81 $03 $0E $00 $81 $A7 $04 $00 $88
.db $01 $10 $03 $10 $00 $A7 $00 $A7 $03 $00 $85 $A8 $A7 $00 $00 $10
.db $05 $00 $89 $A9 $97 $A9 $97 $97 $00 $A9 $A9 $97 $02 $00 $0F $AA
.db $81 $69 $0F $AA $81 $68 $00

; 6th entry of Pointer Table from 1904C (indexed by unknown)
; Data from 19219 to 19263 (75 bytes)
_DATA_19219_:
.db $0E $00 $82 $0B $0C $02 $00 $03 $0A $04 $00 $02 $0A $82 $00 $0A
.db $09 $00 $82 $0B $0C $05 $00 $81 $03 $13 $00 $82 $0B $0C $0B $00
.db $81 $01 $0A $00 $02 $03 $16 $00 $86 $03 $00 $00 $03 $10 $03 $06
.db $00 $82 $02 $10 $08 $00 $06 $A7 $07 $00 $03 $97 $06 $A9 $81 $00
.db $02 $97 $03 $69 $0D $AA $03 $68 $0D $AA $00

; 7th entry of Pointer Table from 1904C (indexed by unknown)
; Data from 19264 to 192C0 (93 bytes)
_DATA_19264_:
.db $06 $00 $02 $0A $08 $00 $82 $0B $0C $0A $00 $82 $0B $0C $03 $00
.db $03 $10 $03 $00 $82 $0B $0C $08 $00 $81 $0A $0F $00 $81 $0A $04
.db $00 $81 $10 $0A $00 $81 $0A $03 $10 $09 $00 $84 $10 $14 $00 $0A
.db $0A $00 $02 $A7 $82 $00 $14 $0A $00 $02 $10 $02 $A8 $82 $0A $14
.db $05 $00 $84 $90 $91 $00 $10 $03 $00 $02 $A8 $82 $00 $10 $05 $00
.db $82 $92 $93 $05 $00 $02 $A9 $82 $00 $10 $20 $AA $00

; 8th entry of Pointer Table from 1904C (indexed by unknown)
; Data from 192C1 to 1932E (110 bytes)
_DATA_192C1_:
.db $09 $00 $81 $0A $03 $00 $03 $14 $04 $00 $03 $10 $81 $03 $07 $00
.db $84 $14 $00 $10 $03 $07 $00 $03 $10 $02 $00 $86 $14 $0B $0C $00
.db $00 $10 $06 $00 $85 $0A $10 $00 $00 $14 $07 $00 $81 $10 $06 $00
.db $82 $03 $14 $07 $00 $84 $03 $00 $00 $0A $04 $00 $81 $14 $04 $00
.db $81 $10 $03 $00 $04 $10 $03 $00 $82 $14 $00 $02 $A7 $0A $00 $84
.db $14 $00 $14 $00 $02 $A8 $02 $00 $83 $01 $00 $0A $05 $00 $84 $14
.db $00 $10 $00 $02 $A9 $0A $00 $83 $14 $00 $10 $20 $AA $00

; 9th entry of Pointer Table from 1904C (indexed by unknown)
; Data from 1932F to 1937A (76 bytes)
_DATA_1932F_:
.db $0B $00 $82 $0B $0C $15 $00 $82 $0B $0C $37 $00 $83 $2D $2E $2F
.db $0C $00 $8B $30 $AB $AC $AD $34 $00 $A7 $22 $23 $24 $00 $02 $A7
.db $03 $00 $8B $35 $36 $AE $38 $39 $A7 $A8 $25 $26 $27 $28 $02 $A8
.db $03 $00 $8B $35 $3A $4A $3C $39 $A8 $A9 $29 $2A $2B $2C $02 $A9
.db $03 $00 $86 $35 $3A $4A $3C $39 $A9 $20 $AA $00

; 1st entry of Pointer Table from 6741 (indexed by unknown)
; Pointer Table from 1937B to 1937C (1 entries, indexed by unknown)
_DATA_1937B_:
.dw _DATA_1937D_

; 1st entry of Pointer Table from 1937B (indexed by unknown)
; Pointer Table from 1937D to 1938E (9 entries, indexed by unknown)
_DATA_1937D_:
.dw _DATA_1938F_ _DATA_1941C_ _DATA_19497_ _DATA_19514_ _DATA_195A7_ _DATA_19633_ _DATA_196A2_ _DATA_19725_
.dw _DATA_1977A_

; 1st entry of Pointer Table from 1937D (indexed by unknown)
; Data from 1938F to 1941B (141 bytes)
_DATA_1938F_:
.db $03 $C6 $81 $B3 $03 $C1 $86 $C0 $C1 $C0 $C1 $C0 $C1 $03 $C0 $03
.db $C6 $8B $B4 $C0 $C1 $C0 $C3 $C0 $C1 $C0 $C2 $C2 $AF $02 $C1 $02
.db $C6 $88 $B3 $AF $B0 $AF $C3 $20 $20 $C3 $04 $20 $02 $C2 $02 $C6
.db $82 $B4 $B0 $02 $C3 $03 $20 $05 $10 $02 $20 $84 $C6 $B3 $AF $B2
.db $02 $20 $03 $00 $8A $03 $20 $20 $00 $03 $20 $20 $C6 $B4 $B0 $02
.db $20 $02 $00 $02 $20 $04 $00 $86 $10 $20 $20 $B3 $AF $B2 $05 $20
.db $04 $00 $81 $10 $03 $20 $82 $B4 $B0 $05 $20 $86 $00 $20 $00 $20
.db $10 $00 $03 $20 $82 $AF $B2 $07 $20 $84 $00 $20 $10 $00 $03 $20
.db $82 $B0 $00 $08 $20 $82 $00 $10 $04 $20 $20 $BB $00

; 2nd entry of Pointer Table from 1937D (indexed by unknown)
; Data from 1941C to 19496 (123 bytes)
_DATA_1941C_:
.db $02 $C1 $8D $C0 $C1 $C0 $C1 $C0 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C1
.db $02 $C0 $02 $C1 $94 $C0 $00 $C2 $C0 $C2 $C1 $C0 $C1 $C0 $C1 $C0
.db $C1 $C3 $C1 $C0 $C1 $C0 $00 $00 $C3 $04 $00 $03 $0A $02 $00 $02
.db $C0 $82 $C2 $C3 $07 $00 $03 $10 $02 $00 $81 $C2 $07 $00 $08 $10
.db $06 $00 $84 $10 $00 $03 $10 $05 $00 $81 $10 $03 $00 $02 $10 $82
.db $03 $10 $08 $00 $81 $10 $03 $00 $03 $10 $05 $00 $02 $0A $06 $00
.db $03 $10 $0B $00 $81 $BD $05 $BB $81 $BC $08 $00 $09 $BB $81 $BC
.db $03 $BE $81 $BD $0C $BB $03 $BF $03 $BB $00

; 3rd entry of Pointer Table from 1937D (indexed by unknown)
; Data from 19497 to 19513 (125 bytes)
_DATA_19497_:
.db $97 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C0 $C1 $C0 $C1 $C0 $C1 $C0
.db $C1 $C1 $C3 $C0 $C1 $C0 $C1 $C0 $03 $C1 $95 $C2 $C1 $C0 $C1 $C0
.db $C1 $00 $00 $C3 $C2 $C3 $C1 $C0 $C0 $C1 $C0 $00 $00 $C0 $C1 $C3
.db $06 $00 $02 $C2 $02 $C1 $87 $C2 $00 $00 $C3 $00 $00 $01 $07 $00
.db $81 $C3 $06 $00 $04 $10 $08 $00 $02 $10 $04 $00 $02 $10 $06 $00
.db $84 $10 $02 $03 $10 $04 $00 $02 $03 $81 $10 $02 $00 $02 $10 $81
.db $00 $03 $10 $88 $0A $00 $00 $BD $BB $00 $00 $10 $02 $00 $02 $10
.db $05 $00 $81 $BD $03 $BB $03 $00 $81 $BD $2C $BB $00

; 4th entry of Pointer Table from 1937D (indexed by unknown)
; Data from 19514 to 195A6 (147 bytes)
_DATA_19514_:
.db $8E $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C2 $02
.db $C0 $02 $C2 $8E $C0 $00 $C1 $00 $C1 $C0 $C0 $C2 $C0 $C1 $C3 $00
.db $00 $C0 $02 $00 $03 $10 $86 $00 $C3 $C1 $00 $00 $C2 $04 $00 $89
.db $C2 $00 $00 $10 $03 $10 $00 $00 $C2 $05 $00 $81 $0A $05 $00 $81
.db $10 $04 $00 $84 $10 $03 $10 $00 $03 $0A $0D $00 $81 $01 $02 $10
.db $03 $00 $82 $BD $BC $08 $00 $03 $10 $83 $00 $BC $00 $03 $BB $81
.db $BC $06 $00 $03 $10 $83 $00 $BB $00 $06 $BB $81 $BC $07 $00 $81
.db $BB $07 $00 $03 $BB $81 $BC $04 $00 $81 $BB $03 $00 $81 $0A $03
.db $00 $04 $BB $04 $BE $83 $BB $BE $BD $03 $BB $82 $BC $BE $04 $BB
.db $04 $BF $00

; 5th entry of Pointer Table from 1937D (indexed by unknown)
; Data from 195A7 to 19632 (140 bytes)
_DATA_195A7_:
.db $02 $C1 $9E $C0 $C3 $C0 $C1 $C0 $C3 $C0 $C1 $C0 $C1 $C0 $C2 $C0
.db $C1 $C3 $C0 $C1 $00 $C3 $C1 $C0 $00 $C0 $C1 $C2 $C0 $C1 $00 $C0
.db $C1 $05 $00 $84 $C2 $00 $00 $C2 $02 $00 $03 $10 $82 $00 $C0 $0B
.db $00 $03 $10 $82 $00 $C2 $09 $00 $05 $10 $02 $00 $02 $10 $02 $00
.db $02 $10 $03 $00 $02 $10 $02 $03 $81 $10 $02 $00 $02 $10 $81 $00
.db $02 $10 $04 $00 $02 $10 $02 $0A $83 $10 $00 $10 $03 $00 $83 $10
.db $00 $10 $03 $00 $05 $10 $82 $00 $10 $03 $00 $03 $10 $12 $00 $89
.db $BD $BB $BE $BB $BE $BB $BB $BE $BD $09 $BB $86 $BF $BB $BF $BB
.db $BB $BF $0A $BB $86 $BF $BB $BF $BB $BB $BF $00

; 6th entry of Pointer Table from 1937D (indexed by unknown)
; Data from 19633 to 196A1 (111 bytes)
_DATA_19633_:
.db $94 $C2 $C1 $C0 $C1 $C0 $C2 $C3 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0
.db $C1 $00 $00 $C3 $C1 $04 $00 $83 $C1 $C0 $02 $04 $00 $81 $C1 $03
.db $00 $87 $C2 $00 $00 $C1 $C0 $C3 $C1 $04 $0A $82 $00 $C2 $09 $00
.db $85 $C3 $C0 $C1 $C0 $C1 $06 $00 $03 $10 $07 $00 $82 $C0 $00 $02
.db $10 $02 $00 $83 $10 $02 $10 $09 $00 $02 $10 $02 $00 $03 $10 $04
.db $00 $81 $04 $04 $C0 $02 $10 $05 $00 $81 $10 $03 $C0 $08 $00 $04
.db $C0 $09 $00 $82 $BB $BC $0A $00 $03 $10 $81 $00 $20 $BB $00

; 7th entry of Pointer Table from 1937D (indexed by unknown)
; Data from 196A2 to 19724 (131 bytes)
_DATA_196A2_:
.db $95 $C0 $C1 $C0 $C1 $C0 $C1 $C2 $C2 $C0 $C1 $C0 $C1 $C0 $C1 $C0
.db $C1 $C0 $C1 $C0 $C1 $03 $03 $00 $83 $03 $C0 $C1 $04 $C0 $02 $C1
.db $84 $C0 $C1 $C0 $10 $03 $00 $8A $10 $C1 $C4 $00 $C2 $C3 $C4 $C2
.db $00 $C2 $04 $00 $81 $10 $02 $00 $02 $C0 $0E $00 $82 $C0 $C1 $0E
.db $00 $02 $C0 $03 $00 $02 $10 $02 $00 $81 $BD $03 $BB $85 $BC $00
.db $00 $C1 $C0 $03 $00 $82 $03 $0A $02 $00 $05 $BB $02 $00 $89 $C2
.db $C3 $00 $00 $10 $01 $00 $00 $BD $05 $BB $05 $00 $02 $10 $83 $03
.db $00 $BD $06 $BB $04 $00 $02 $10 $81 $03 $02 $00 $07 $BB $81 $08
.db $18 $BB $00

; 8th entry of Pointer Table from 1937D (indexed by unknown)
; Data from 19725 to 19779 (85 bytes)
_DATA_19725_:
.db $A0 $C0 $C1 $C0 $C2 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0
.db $C1 $C0 $00 $C2 $00 $00 $C3 $C2 $C1 $00 $C3 $C2 $C3 $00 $C0 $C1
.db $C0 $07 $00 $81 $C2 $05 $00 $83 $C3 $C4 $C2 $20 $00 $02 $10 $81
.db $03 $10 $00 $81 $02 $0F $00 $82 $10 $03 $0E $00 $02 $10 $0E $00
.db $81 $10 $0C $00 $82 $BB $08 $04 $BB $84 $BC $BE $BE $BD $0D $BB
.db $02 $BF $07 $BB $00

; 9th entry of Pointer Table from 1937D (indexed by unknown)
; Data from 1977A to 197ED (116 bytes)
_DATA_1977A_:
.db $8D $C0 $C1 $C0 $C1 $C0 $C1 $C0 $C1 $C0 $B0 $C0 $AF $B5 $03 $C6
.db $8D $C1 $B1 $C3 $C4 $C2 $00 $C2 $C4 $C2 $B0 $AF $B0 $B6 $03 $C6
.db $81 $C1 $06 $00 $8A $C2 $00 $C0 $B0 $AF $B0 $B5 $C6 $C6 $C2 $08
.db $00 $85 $B1 $00 $B1 $C1 $B6 $02 $C6 $09 $00 $87 $20 $00 $00 $C2
.db $C0 $B5 $C6 $09 $00 $81 $20 $03 $00 $83 $C1 $B6 $C6 $07 $00 $03
.db $20 $03 $00 $83 $C2 $C0 $B5 $08 $00 $02 $20 $04 $00 $82 $C1 $B6
.db $07 $00 $04 $20 $03 $00 $82 $C2 $C0 $07 $00 $04 $20 $04 $00 $81
.db $C1 $20 $BB $00

; 1st entry of Pointer Table from 674D (indexed by unknown)
; Pointer Table from 197EE to 197EF (1 entries, indexed by unknown)
_DATA_197EE_:
.dw _DATA_197F0_

; 1st entry of Pointer Table from 197EE (indexed by unknown)
; Pointer Table from 197F0 to 19807 (12 entries, indexed by unknown)
_DATA_197F0_:
.dw _DATA_19808_ _DATA_198A1_ _DATA_19929_ _DATA_199A1_ _DATA_19A21_ _DATA_19A63_ _DATA_19ADE_ _DATA_19B52_
.dw _DATA_19BCC_ _DATA_19C2A_ _DATA_19C90_ _DATA_19CFB_

; 1st entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19808 to 198A0 (153 bytes)
_DATA_19808_:
.db $02 $00 $9E $C7 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $00 $00 $CB $CC $CD $CF $CD $CE $CD $CF $CD $CF $CD $CE $CD
.db $CF $03 $00 $81 $D0 $03 $20 $87 $D1 $D2 $D3 $D4 $20 $20 $D1 $02
.db $20 $04 $00 $8A $D5 $20 $20 $D1 $20 $20 $D6 $D7 $D8 $D1 $02 $20
.db $04 $00 $84 $D0 $20 $20 $D1 $05 $20 $81 $D1 $02 $20 $02 $00 $86
.db $2D $2E $2F $D5 $20 $D1 $05 $20 $8B $D1 $20 $20 $00 $30 $31 $32
.db $33 $34 $D5 $D1 $05 $20 $8B $D1 $20 $20 $00 $35 $36 $37 $38 $39
.db $00 $D1 $05 $20 $8B $D1 $20 $20 $00 $35 $3A $3B $3C $39 $00 $D1
.db $05 $20 $8C $D1 $20 $20 $00 $35 $3A $3B $3C $39 $DA $DB $DC $03
.db $20 $84 $DD $DB $DC $20 $20 $DE $00

; 2nd entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 198A1 to 19928 (136 bytes)
_DATA_198A1_:
.db $AA $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CF $CD $CE $CD $CF $CD $CE $CD $CF $CD $CF $CD
.db $CF $20 $20 $D6 $D7 $D8 $D1 $D6 $D7 $D8 $D1 $04 $20 $82 $D6 $D7
.db $05 $20 $85 $D1 $D2 $D3 $D4 $D1 $04 $20 $82 $D6 $D7 $05 $20 $81
.db $D1 $03 $20 $81 $D1 $0B $20 $81 $D1 $03 $20 $84 $D1 $20 $20 $01
.db $08 $20 $81 $D1 $03 $20 $84 $D1 $20 $20 $01 $08 $20 $88 $D1 $20
.db $03 $20 $D1 $20 $20 $10 $08 $20 $88 $D1 $20 $10 $20 $D1 $20 $20
.db $10 $07 $20 $89 $DD $DB $DC $10 $DD $DB $DC $20 $14 $03 $20 $0B
.db $DE $05 $DF $0B $DE $05 $E0 $00

; 3rd entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19929 to 199A0 (120 bytes)
_DATA_19929_:
.db $A5 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CE $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD
.db $CE $D8 $D1 $D2 $D3 $D4 $0A $20 $83 $D1 $D8 $D1 $08 $20 $81 $03
.db $04 $20 $83 $D1 $20 $D1 $0D $20 $83 $D1 $20 $D1 $08 $20 $81 $10
.db $04 $20 $83 $D1 $20 $D1 $05 $20 $81 $10 $07 $20 $83 $D1 $20 $D1
.db $0A $20 $86 $10 $20 $20 $D1 $20 $D1 $0D $20 $84 $D1 $DD $DB $DC
.db $03 $20 $81 $14 $03 $20 $81 $14 $03 $20 $82 $DD $DB $03 $DE $0B
.db $DF $05 $DE $0B $E0 $02 $DE $00

; 4th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 199A1 to 19A20 (128 bytes)
_DATA_199A1_:
.db $A7 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CE $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD
.db $CE $D2 $D3 $D4 $D1 $D2 $D3 $D4 $05 $20 $88 $D6 $D7 $D8 $D1 $D6
.db $D7 $D8 $D1 $0B $20 $81 $D1 $03 $20 $81 $D1 $0B $20 $81 $D1 $03
.db $20 $81 $D1 $05 $20 $81 $03 $05 $20 $81 $D1 $03 $20 $81 $D1 $05
.db $20 $81 $10 $05 $20 $81 $D1 $03 $20 $81 $D1 $0B $20 $81 $D1 $03
.db $20 $81 $D1 $04 $20 $81 $10 $06 $20 $86 $D1 $DC $20 $DD $DB $DC
.db $09 $20 $82 $DD $DB $0A $DE $02 $DF $0E $DE $02 $E0 $04 $DE $00

; 5th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19A21 to 19A62 (66 bytes)
_DATA_19A21_:
.db $A0 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD
.db $CF $39 $20 $02 $03 $0E $20 $02 $10 $1C $20 $81 $10 $08 $20 $81
.db $DC $0F $20 $0B $DE $03 $DF $82 $DE $DF $0B $DE $03 $E0 $82 $DE
.db $E0 $00

; 6th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19A63 to 19ADD (123 bytes)
_DATA_19A63_:
.db $A8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CE $CD $CF $CD $CE $CD $CF $CD $CF $CD $CF $CD
.db $CF $D6 $D7 $D8 $D1 $D6 $D7 $D8 $D1 $0B $20 $85 $D1 $D2 $D3 $D4
.db $D1 $0B $20 $81 $D1 $03 $20 $81 $D1 $04 $20 $81 $10 $06 $20 $81
.db $D1 $03 $20 $83 $D1 $20 $10 $09 $20 $81 $D1 $03 $20 $83 $D1 $20
.db $10 $09 $20 $81 $D1 $03 $20 $81 $D1 $0B $20 $81 $D1 $03 $20 $83
.db $D1 $20 $14 $08 $20 $87 $DD $DB $DC $20 $DD $DB $DC $05 $20 $82
.db $14 $20 $09 $DE $07 $DF $09 $DE $07 $E0 $00

; 7th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19ADE to 19B51 (116 bytes)
_DATA_19ADE_:
.db $A0 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CE $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD
.db $CF $03 $20 $84 $D1 $D2 $D3 $D4 $09 $20 $84 $D6 $D7 $D8 $D1 $0F
.db $20 $81 $D1 $08 $20 $81 $10 $06 $20 $81 $D1 $08 $20 $81 $03 $06
.db $20 $81 $D1 $08 $20 $81 $10 $06 $20 $81 $D1 $08 $20 $81 $03 $06
.db $20 $81 $D1 $08 $20 $81 $10 $05 $20 $83 $DD $DB $DC $07 $20 $81
.db $10 $03 $20 $02 $DF $0B $DE $02 $DF $81 $DE $02 $E0 $0B $DE $02
.db $E0 $81 $DE $00

; 8th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19B52 to 19BCB (122 bytes)
_DATA_19B52_:
.db $A0 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CE $CD $CF $CD $CE $CD $CF $CD $CF $CD $CF $CD
.db $CF $03 $20 $88 $D1 $D2 $D3 $D4 $D1 $D2 $D3 $D4 $05 $20 $88 $D6
.db $D7 $D8 $D1 $D6 $D7 $D8 $D1 $0B $20 $81 $D1 $03 $20 $81 $D1 $0B
.db $20 $81 $D1 $03 $20 $81 $D1 $0B $20 $81 $D1 $03 $20 $81 $D1 $0B
.db $20 $81 $D1 $03 $20 $81 $D1 $0B $20 $81 $D1 $03 $20 $81 $D1 $0A
.db $20 $87 $DD $DB $DC $20 $DD $DB $DC $03 $20 $81 $10 $03 $20 $09
.db $DE $06 $DF $0A $DE $06 $E0 $81 $DE $00

; 9th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19BCC to 19C29 (94 bytes)
_DATA_19BCC_:
.db $A0 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CF $CD $CF $CD $CF $CD $CE $CD $CF $CD $CF $CD
.db $CF $09 $20 $84 $D1 $D2 $D3 $D4 $09 $20 $84 $D6 $D7 $D8 $D1 $0D
.db $20 $83 $10 $20 $D1 $0F $20 $81 $D1 $0A $20 $81 $10 $04 $20 $81
.db $D1 $0F $20 $81 $D1 $08 $20 $81 $14 $06 $20 $81 $D1 $0E $20 $83
.db $DD $DB $DC $05 $20 $08 $DF $08 $DE $08 $E0 $08 $DE $00

; 10th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19C2A to 19C8F (102 bytes)
_DATA_19C2A_:
.db $A2 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CE $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD
.db $CE $20 $D1 $0A $20 $89 $D6 $D7 $D8 $D1 $20 $D1 $D2 $D3 $D4 $0A
.db $20 $83 $D1 $20 $D1 $0D $20 $83 $D1 $20 $D1 $0D $20 $83 $D1 $20
.db $D1 $0D $20 $83 $D1 $20 $D1 $0D $20 $83 $D1 $20 $D1 $03 $20 $87
.db $01 $03 $01 $02 $01 $03 $01 $03 $20 $84 $D1 $DD $DB $DC $0B $20
.db $82 $DD $DB $20 $DE $00

; 11th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19C90 to 19CD6 (71 bytes)
_DATA_19C90_:
.db $A4 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CE $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD
.db $CF $D6 $D7 $D8 $D1 $0C $20 $84 $D2 $D3 $D4 $D1 $0F $20 $81 $D1
.db $05 $20 $81 $02 $09 $20 $81 $D1 $0F $20 $81 $D1 $0A $20 $81 $10
.db $04 $20 $84 $D1 $20 $20 $10

; 4th entry of Pointer Table from 1BF52 (indexed by unknown)
; Data from 19CD7 to 19CFA (36 bytes)
_DATA_19CD7_:
.db $07 $20 $81 $10 $04 $20 $84 $D1 $20 $20 $10 $07 $20 $89 $10 $20
.db $DC $20 $DD $DB $DC $20 $10 $09 $20 $0A $DE $02 $DF $0E $DE $02
.db $E0 $04 $DE $00

; 12th entry of Pointer Table from 197F0 (indexed by unknown)
; Data from 19CFB to 19D65 (107 bytes)
_DATA_19CFB_:
.db $A7 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9 $C8 $C9
.db $C8 $CD $CF $CD $CE $CD $CF $CD $CF $CD $CF $CD $CF $CD $CF $CD
.db $CF $D6 $D7 $D8 $D1 $D2 $D3 $D4 $08 $20 $81 $14 $03 $20 $84 $D1
.db $D2 $D3 $D4 $08 $20 $81 $14 $03 $20 $81 $D1 $0B $20 $81 $14 $03
.db $20 $81 $D1 $0B $20 $81 $14 $03 $20 $81 $D1 $0B $20 $81 $14 $03
.db $20 $81 $D1 $0B $20 $81 $14 $03 $20 $81 $D1 $0B $20 $86 $14 $20
.db $20 $DD $DB $DC $0A $20 $81 $14 $20 $DE $00

; 1st entry of Pointer Table from 6759 (indexed by unknown)
; Pointer Table from 19D66 to 19D69 (2 entries, indexed by unknown)
_DATA_19D66_:
.dw _DATA_19D72_ _DATA_19D92_

; 2nd entry of Pointer Table from 6759 (indexed by unknown)
; Pointer Table from 19D6A to 19D71 (4 entries, indexed by unknown)
_DATA_19D6A_:
.dw _DATA_19D9A_ _DATA_19D9E_ _DATA_19DA2_ _DATA_19DA6_

; 1st entry of Pointer Table from 19D66 (indexed by unknown)
; Pointer Table from 19D72 to 19D91 (16 entries, indexed by unknown)
_DATA_19D72_:
.dw _DATA_19DAA_ _DATA_19DBF_ _DATA_19DAA_ _DATA_19DDC_ _DATA_19DAA_ _DATA_19E11_ _DATA_19DBF_ _DATA_19DF9_
.dw _DATA_19E11_ _DATA_19E11_ _DATA_19DBF_ _DATA_19E36_ _DATA_19E11_ _DATA_19E36_ _DATA_19E53_ _DATA_19E6F_

; 2nd entry of Pointer Table from 19D66 (indexed by unknown)
; Pointer Table from 19D92 to 19D99 (4 entries, indexed by unknown)
_DATA_19D92_:
.dw _DATA_19EA2_ _DATA_19F1A_ _DATA_19FA2_ _DATA_1A006_

; 1st entry of Pointer Table from 19D6A (indexed by unknown)
; Pointer Table from 19D9A to 19D9D (2 entries, indexed by unknown)
_DATA_19D9A_:
.dw _DATA_19DAA_ _DATA_19EA2_

; 2nd entry of Pointer Table from 19D6A (indexed by unknown)
; Pointer Table from 19D9E to 19DA1 (2 entries, indexed by unknown)
_DATA_19D9E_:
.dw _DATA_19DAA_ _DATA_19F1A_

; 3rd entry of Pointer Table from 19D6A (indexed by unknown)
; Pointer Table from 19DA2 to 19DA5 (2 entries, indexed by unknown)
_DATA_19DA2_:
.dw _DATA_19DAA_ _DATA_19FA2_

; 4th entry of Pointer Table from 19D6A (indexed by unknown)
; Pointer Table from 19DA6 to 19DA9 (2 entries, indexed by unknown)
_DATA_19DA6_:
.dw _DATA_19DAA_ _DATA_1A006_

; 1st entry of Pointer Table from 19D9A (indexed by unknown)
; Data from 19DAA to 19DBE (21 bytes)
_DATA_19DAA_:
.db $1C $00 $82 $0B $0C $04 $00 $82 $0B $0C $54 $00 $02 $0A $26 $00
.db $10 $3D $10 $21 $00

; 2nd entry of Pointer Table from 19D72 (indexed by unknown)
; Data from 19DBF to 19DDB (29 bytes)
_DATA_19DBF_:
.db $21 $00 $82 $0B $0C $19 $00 $82 $0B $0C $29 $00 $02 $0A $0D $00
.db $81 $0A $02 $00 $81 $0A $26 $00 $10 $3D $10 $21 $00

; 4th entry of Pointer Table from 19D72 (indexed by unknown)
; Data from 19DDC to 19DF8 (29 bytes)
_DATA_19DDC_:
.db $28 $00 $82 $0B $0C $08 $00 $82 $0B $0C $50 $00 $81 $14 $08 $00
.db $02 $0A $05 $00 $81 $14 $0B $00 $10 $3D $10 $21 $00

; 8th entry of Pointer Table from 19D72 (indexed by unknown)
; Data from 19DF9 to 19E10 (24 bytes)
_DATA_19DF9_:
.db $16 $00 $82 $0B $0C $55 $00 $81 $0A $0E $00 $81 $0A $14 $00 $02
.db $14 $0D $00 $10 $3D $10 $21 $00

; 6th entry of Pointer Table from 19D72 (indexed by unknown)
; Data from 19E11 to 19E35 (37 bytes)
_DATA_19E11_:
.db $13 $00 $82 $0B $0C $17 $00 $82 $0B $0C $49 $00 $02 $0A $0A $00
.db $81 $14 $08 $00 $81 $14 $06 $00 $81 $14 $08 $00 $81 $14 $03 $00
.db $10 $3D $10 $21 $00

; 12th entry of Pointer Table from 19D72 (indexed by unknown)
; Data from 19E36 to 19E52 (29 bytes)
_DATA_19E36_:
.db $1B $00 $82 $0B $0C $05 $00 $82 $0B $0C $5F $00 $81 $14 $06 $00
.db $81 $0A $07 $00 $02 $14 $0C $00 $10 $3D $10 $21 $00

; 15th entry of Pointer Table from 19D72 (indexed by unknown)
; Data from 19E53 to 19E6E (28 bytes)
_DATA_19E53_:
.db $13 $00 $82 $0B $0C $13 $00 $82 $0B $0C $4C $00 $84 $0A $00 $00
.db $0A $1D $00 $02 $14 $07 $00 $10 $3D $10 $21 $00

; 16th entry of Pointer Table from 19D72 (indexed by unknown)
; Data from 19E6F to 19EA1 (51 bytes)
_DATA_19E6F_:
.db $1B $00 $82 $0B $0C $05 $00 $82 $0B $0C $1B $00 $81 $14 $0F $00
.db $81 $14 $0F $00 $81 $14 $0F $00 $81 $14 $04 $00 $81 $0A $0A $00
.db $81 $14 $0F $00 $81 $14 $04 $00 $81 $14 $0A $00 $81 $14 $10 $3D
.db $10 $21 $00

; 1st entry of Pointer Table from 19D92 (indexed by unknown)
; Data from 19EA2 to 19F19 (120 bytes)
_DATA_19EA2_:
.db $10 $21 $10 $21 $81 $48 $0F $21 $83 $47 $11 $18 $0D $21 $84 $47
.db $21 $16 $18 $0A $21 $84 $17 $16 $47 $21 $02 $16 $05 $21 $81 $02
.db $04 $21 $84 $1A $19 $47 $21 $02 $16 $05 $21 $82 $11 $18 $05 $21
.db $82 $47 $21 $02 $11 $02 $21 $8F $17 $11 $11 $16 $19 $21 $3E $21
.db $16 $21 $47 $3E $21 $21 $17 $02 $16 $02 $21 $8A $11 $21 $21 $3F
.db $3E $21 $21 $47 $3F $21 $02 $03 $02 $21 $02 $11 $89 $16 $21 $21
.db $40 $3F $1A $21 $47 $40 $07 $21 $81 $16 $03 $48 $84 $40 $21 $21
.db $47 $09 $48 $03 $47 $03 $48 $00

; 2nd entry of Pointer Table from 19D92 (indexed by unknown)
; Data from 19F1A to 19FA1 (136 bytes)
_DATA_19F1A_:
.db $10 $21 $81 $3E $0F $21 $85 $3F $21 $21 $17 $18 $02 $21 $02 $03
.db $88 $21 $16 $21 $21 $18 $21 $21 $40 $03 $21 $A1 $16 $21 $21 $16
.db $21 $3E $16 $3E $21 $16 $18 $21 $16 $18 $21 $21 $16 $21 $21 $16
.db $21 $3F $16 $3F $21 $1A $16 $18 $21 $16 $21 $21 $16 $02 $3E $02
.db $21 $83 $40 $16 $40 $05 $21 $84 $16 $21 $21 $16 $02 $3F $06 $16
.db $81 $18 $03 $21 $84 $16 $21 $21 $16 $02 $40 $06 $21 $88 $11 $21
.db $21 $3E $16 $21 $21 $1A $05 $16 $88 $18 $21 $21 $16 $21 $3E $3F
.db $11 $02 $03 $09 $21 $85 $16 $21 $3F $40 $1A $02 $03 $07 $21 $85
.db $03 $17 $16 $18 $40 $10 $48 $00

; 3rd entry of Pointer Table from 19D92 (indexed by unknown)
; Data from 19FA2 to 1A005 (100 bytes)
_DATA_19FA2_:
.db $25 $21 $02 $11 $02 $03 $82 $11 $16 $0C $21 $86 $16 $21 $16 $21
.db $21 $3E $09 $21 $81 $16 $03 $21 $83 $16 $21 $3F $05 $21 $84 $3E
.db $21 $21 $16 $05 $21 $82 $16 $40 $04 $21 $84 $3E $3F $21 $16 $07
.db $21 $81 $16 $04 $21 $83 $3F $40 $16 $09 $21 $81 $16 $03 $21 $83
.db $40 $16 $21 $02 $3E $04 $21 $03 $3E $85 $21 $16 $21 $21 $16 $02
.db $21 $02 $3F $04 $21 $03 $3F $07 $21 $02 $40 $04 $21 $03 $40 $03
.db $21 $10 $48 $00

; 4th entry of Pointer Table from 19D92 (indexed by unknown)
; Data from 1A006 to 1A069 (100 bytes)
_DATA_1A006_:
.db $20 $21 $81 $17 $02 $21 $82 $17 $18 $0A $21 $81 $16 $03 $21 $82
.db $1A $16 $0A $21 $81 $16 $04 $21 $81 $16 $0A $21 $81 $16 $04 $21
.db $81 $16 $0A $21 $81 $16 $04 $21 $81 $16 $09 $21 $8B $17 $16 $3E
.db $21 $21 $17 $16 $18 $21 $21 $3E $04 $21 $86 $17 $16 $16 $3F $21
.db $17 $03 $16 $83 $18 $21 $3F $03 $21 $81 $17 $03 $16 $82 $40 $17
.db $05 $16 $85 $18 $40 $21 $21 $17 $04 $16 $09 $11 $82 $03 $17 $05
.db $16 $10 $48 $00

; 1st entry of Pointer Table from 6765 (indexed by unknown)
; Pointer Table from 1A06A to 1A06B (1 entries, indexed by unknown)
_DATA_1A06A_:
.dw _DATA_1A06C_

; 1st entry of Pointer Table from 1A06A (indexed by unknown)
; Pointer Table from 1A06C to 1A089 (15 entries, indexed by unknown)
_DATA_1A06C_:
.dw _DATA_1A08A_ _DATA_1A0BF_ _DATA_1A0F2_ _DATA_1A128_ _DATA_1A143_ _DATA_1A169_ _DATA_1A1DE_ _DATA_1A1EB_
.dw _DATA_1A201_ _DATA_1A209_ _DATA_1A243_ _DATA_1A258_ _DATA_1A26B_ _DATA_1A27A_ _DATA_1A28F_

; 1st entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A08A to 1A0BE (53 bytes)
_DATA_1A08A_:
.db $1A $00 $82 $0B $0C $06 $00 $82 $0B $0C $32 $00 $83 $2D $2E $2F
.db $0C $00 $85 $30 $31 $32 $33 $34 $0B $00 $85 $35 $36 $37 $38 $39
.db $0B $00 $85 $35 $3A $3B $3C $39 $0B $00 $85 $35 $3A $3B $3C $39
.db $06 $00 $20 $15 $00

; 2nd entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A0BF to 1A0F1 (51 bytes)
_DATA_1A0BF_:
.db $14 $00 $82 $0B $0C $23 $00 $81 $0A $28 $00 $82 $14 $10 $02 $00
.db $02 $10 $83 $03 $10 $00 $03 $10 $03 $00 $81 $10 $0A $00 $83 $0A
.db $00 $14 $0A $00 $81 $0A $16 $00 $81 $15 $0E $69 $02 $15 $0E $68
.db $81 $15 $00

; 3rd entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A0F2 to 1A127 (54 bytes)
_DATA_1A0F2_:
.db $0B $00 $82 $0B $0C $16 $00 $82 $0B $0C $17 $00 $81 $14 $0C $00
.db $84 $14 $00 $00 $0A $09 $00 $81 $14 $0F $00 $81 $0A $05 $00 $81
.db $14 $18 $00 $81 $14 $06 $00 $81 $0A $13 $00 $81 $15 $0E $69 $02
.db $15 $0E $68 $81 $15 $00

; 4th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A128 to 1A142 (27 bytes)
_DATA_1A128_:
.db $7F $00 $02 $00 $81 $10 $04 $00 $81 $10 $03 $00 $81 $10 $15 $00
.db $81 $15 $0E $69 $02 $15 $0E $68 $81 $15 $00

; 5th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A143 to 1A168 (38 bytes)
_DATA_1A143_:
.db $16 $00 $81 $14 $04 $10 $1D $00 $81 $0A $0C $00 $81 $14 $0F $00
.db $81 $10 $05 $00 $81 $0A $19 $00 $81 $10 $0F $00 $84 $14 $00 $00
.db $0A $17 $00 $20 $15 $00

; 6th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A169 to 1A1DD (117 bytes)
_DATA_1A169_:
.db $0C $00 $82 $0B $0C $03 $00 $89 $10 $0A $00 $10 $00 $0A $10 $00
.db $0A $07 $00 $0A $10 $06 $00 $8A $14 $00 $00 $10 $00 $00 $14 $00
.db $00 $10 $06 $00 $8A $14 $00 $00 $10 $0A $00 $14 $00 $0A $10 $06
.db $00 $8A $10 $0A $00 $14 $00 $00 $14 $00 $00 $10 $06 $00 $8A $10
.db $00 $00 $14 $00 $00 $10 $00 $00 $14 $06 $00 $8A $10 $00 $00 $14
.db $00 $00 $10 $00 $00 $14 $06 $00 $8A $14 $00 $00 $10 $00 $00 $10
.db $00 $00 $14 $06 $00 $8A $14 $00 $00 $10 $00 $00 $10 $00 $00 $10
.db $05 $00 $20 $15 $00

; 7th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A1DE to 1A1EA (13 bytes)
_DATA_1A1DE_:
.db $63 $00 $81 $0A $05 $00 $81 $0A $36 $00 $20 $15 $00

; 8th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A1EB to 1A200 (22 bytes)
_DATA_1A1EB_:
.db $7F $00 $21 $00 $09 $15 $81 $69 $04 $15 $81 $69 $0A $15 $81 $68
.db $04 $15 $82 $68 $15 $00

; 9th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A201 to 1A208 (8 bytes)
_DATA_1A201_:
.db $7F $00 $21 $00 $20 $15 $00 $00

; 10th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A209 to 1A242 (58 bytes)
_DATA_1A209_:
.db $52 $00 $05 $10 $0B $00 $88 $14 $02 $00 $00 $10 $00 $00 $0A $07
.db $00 $02 $14 $03 $00 $81 $10 $0B $00 $81 $14 $03 $00 $88 $10 $00
.db $00 $10 $00 $10 $00 $10 $04 $00 $81 $14 $03 $00 $88 $10 $00 $00
.db $10 $00 $10 $00 $10 $02 $00 $20 $15 $00

; 11th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A243 to 1A257 (21 bytes)
_DATA_1A243_:
.db $1B $00 $82 $0B $0C $10 $00 $82 $0B $0C $71 $00 $02 $69 $0E $15
.db $02 $68 $0E $15 $00

; 12th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A258 to 1A26A (19 bytes)
_DATA_1A258_:
.db $14 $00 $82 $0B $0C $1C $00 $82 $0B $0C $5F $00 $81 $03 $0C $00
.db $20 $15 $00

; 13th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A26B to 1A279 (15 bytes)
_DATA_1A26B_:
.db $7C $00 $04 $14 $08 $00 $08 $14 $04 $00 $0C $14 $20 $15 $00

; 14th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A27A to 1A28E (21 bytes)
_DATA_1A27A_:
.db $60 $00 $04 $14 $0C $00 $08 $14 $08 $00 $0B $14 $05 $00 $0E $14
.db $02 $00 $20 $15 $00

; 15th entry of Pointer Table from 1A06C (indexed by unknown)
; Data from 1A28F to 1A2C5 (55 bytes)
_DATA_1A28F_:
.db $0D $00 $03 $14 $09 $00 $82 $0B $0C $04 $00 $81 $14 $0F $00 $85
.db $14 $00 $00 $0B $0C $08 $00 $84 $0B $0C $00 $14 $0F $00 $81 $14
.db $0F $00 $81 $14 $0F $00 $81 $14 $0F $00 $81 $14 $0F $00 $81 $14
.db $0F $00 $81 $14 $20 $15 $00

; 1st entry of Pointer Table from 6771 (indexed by unknown)
; Pointer Table from 1A2C6 to 1A2CD (4 entries, indexed by unknown)
_DATA_1A2C6_:
.dw _DATA_1A2D8_ _DATA_1A2E2_ _DATA_1A2EC_ _DATA_1A2F6_

; 2nd entry of Pointer Table from 6771 (indexed by unknown)
; Pointer Table from 1A2CE to 1A2D7 (5 entries, indexed by unknown)
_DATA_1A2CE_:
.dw _DATA_1A300_ _DATA_1A308_ _DATA_1A310_ _DATA_1A318_ _DATA_1A320_

; 1st entry of Pointer Table from 1A2C6 (indexed by unknown)
; Pointer Table from 1A2D8 to 1A2E1 (5 entries, indexed by unknown)
_DATA_1A2D8_:
.dw _DATA_1A328_ _DATA_1A328_ _DATA_1A389_ _DATA_1A3EE_ _DATA_1A440_

; 2nd entry of Pointer Table from 1A2C6 (indexed by unknown)
; Pointer Table from 1A2E2 to 1A2EB (5 entries, indexed by unknown)
_DATA_1A2E2_:
.dw _DATA_1A498_ _DATA_1A498_ _DATA_1A51F_ _DATA_1A566_ _DATA_1A5D6_

; 3rd entry of Pointer Table from 1A2C6 (indexed by unknown)
; Pointer Table from 1A2EC to 1A2F5 (5 entries, indexed by unknown)
_DATA_1A2EC_:
.dw _DATA_1A63C_ _DATA_1A6BE_ _DATA_1A747_ _DATA_1A7C2_ _DATA_1A81F_

; 4th entry of Pointer Table from 1A2C6 (indexed by unknown)
; Pointer Table from 1A2F6 to 1A2FF (5 entries, indexed by unknown)
_DATA_1A2F6_:
.dw _DATA_1A84E_ _DATA_1A84E_ _DATA_1A8AB_ _DATA_1A91A_ _DATA_1A985_

; 1st entry of Pointer Table from 1A2CE (indexed by unknown)
; Pointer Table from 1A300 to 1A307 (4 entries, indexed by unknown)
_DATA_1A300_:
.dw _DATA_1A328_ _DATA_1A498_ _DATA_1A63C_ _DATA_1A84E_

; 2nd entry of Pointer Table from 1A2CE (indexed by unknown)
; Pointer Table from 1A308 to 1A30F (4 entries, indexed by unknown)
_DATA_1A308_:
.dw _DATA_1A328_ _DATA_1A498_ _DATA_1A6BE_ _DATA_1A84E_

; 3rd entry of Pointer Table from 1A2CE (indexed by unknown)
; Pointer Table from 1A310 to 1A317 (4 entries, indexed by unknown)
_DATA_1A310_:
.dw _DATA_1A389_ _DATA_1A51F_ _DATA_1A747_ _DATA_1A8AB_

; 4th entry of Pointer Table from 1A2CE (indexed by unknown)
; Pointer Table from 1A318 to 1A31F (4 entries, indexed by unknown)
_DATA_1A318_:
.dw _DATA_1A3EE_ _DATA_1A566_ _DATA_1A7C2_ _DATA_1A91A_

; 5th entry of Pointer Table from 1A2CE (indexed by unknown)
; Pointer Table from 1A320 to 1A327 (4 entries, indexed by unknown)
_DATA_1A320_:
.dw _DATA_1A440_ _DATA_1A5D6_ _DATA_1A81F_ _DATA_1A985_

; 1st entry of Pointer Table from 1A2D8 (indexed by unknown)
; Data from 1A328 to 1A388 (97 bytes)
_DATA_1A328_:
.db $11 $E1 $0E $E5 $02 $E1 $0E $00 $02 $E1 $0F $00 $81 $E1 $0F $00
.db $81 $E1 $06 $00 $84 $10 $0A $0A $10 $02 $0A $02 $10 $02 $E1 $05
.db $00 $02 $10 $02 $00 $85 $10 $00 $00 $10 $00 $02 $E1 $04 $00 $8A
.db $10 $00 $10 $00 $00 $10 $00 $00 $10 $00 $02 $E1 $03 $00 $81 $10
.db $0A $00 $02 $E1 $02 $00 $81 $10 $0B $00 $02 $E1 $02 $00 $81 $10
.db $04 $00 $02 $E6 $81 $00 $02 $E6 $02 $00 $03 $E1 $81 $E3 $0D $E1
.db $00

; 3rd entry of Pointer Table from 1A2D8 (indexed by unknown)
; Data from 1A389 to 1A3ED (101 bytes)
_DATA_1A389_:
.db $11 $E1 $04 $00 $81 $E4 $04 $00 $81 $E4 $04 $00 $02 $E1 $04 $00
.db $81 $E4 $04 $00 $81 $E4 $04 $00 $81 $E1 $05 $00 $81 $E4 $04 $00
.db $81 $E4 $04 $00 $81 $E1 $05 $00 $81 $E4 $04 $00 $81 $E4 $05 $00
.db $81 $E1 $02 $10 $02 $00 $06 $E1 $05 $00 $81 $E1 $0B $00 $05 $E1
.db $81 $00 $02 $10 $0B $00 $02 $E1 $0E $00 $02 $E1 $02 $00 $02 $10
.db $0B $00 $81 $E1 $04 $00 $81 $E6 $05 $00 $81 $E6 $04 $00 $07 $E1
.db $02 $00 $07 $E1 $00

; 4th entry of Pointer Table from 1A2D8 (indexed by unknown)
; Data from 1A3EE to 1A43F (82 bytes)
_DATA_1A3EE_:
.db $11 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00 $81 $E1 $05 $00
.db $03 $E1 $02 $00 $03 $E1 $02 $00 $81 $E1 $05 $00 $88 $E1 $0A $E1
.db $00 $00 $E1 $0A $E1 $02 $00 $07 $E1 $81 $0A $04 $E1 $81 $0A $05
.db $E1 $07 $00 $81 $E1 $06 $00 $02 $E1 $07 $00 $81 $E1 $06 $00 $81
.db $E1 $0F $00 $81 $E1 $05 $00 $07 $10 $03 $00 $09 $E1 $81 $E3 $07
.db $E1 $00

; 5th entry of Pointer Table from 1A2D8 (indexed by unknown)
; Data from 1A440 to 1A497 (88 bytes)
_DATA_1A440_:
.db $11 $E1 $0E $00 $02 $E1 $81 $06 $0D $00 $02 $E1 $03 $00 $82 $05
.db $04 $09 $00 $02 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $81 $00 $07
.db $10 $06 $00 $02 $E1 $81 $00 $07 $10 $03 $00 $05 $E1 $81 $00 $02
.db $10 $03 $00 $02 $10 $03 $00 $03 $E5 $02 $E1 $81 $00 $02 $10 $03
.db $00 $02 $10 $06 $00 $02 $E1 $81 $E6 $02 $10 $03 $00 $02 $10 $06
.db $00 $0E $E1 $81 $E3 $02 $E1 $00

; 1st entry of Pointer Table from 1A2E2 (indexed by unknown)
; Data from 1A498 to 1A51E (135 bytes)
_DATA_1A498_:
.db $02 $E1 $81 $E3 $0E $E1 $82 $00 $E2 $0C $00 $02 $E1 $0E $00 $02
.db $E1 $05 $10 $03 $00 $02 $10 $04 $00 $02 $E1 $05 $10 $02 $00 $04
.db $10 $03 $00 $02 $E1 $02 $00 $81 $10 $03 $00 $81 $10 $04 $00 $81
.db $10 $02 $00 $02 $E1 $02 $00 $81 $10 $03 $00 $86 $10 $00 $0A $0A
.db $00 $10 $02 $00 $02 $E1 $02 $00 $81 $10 $03 $00 $06 $10 $02 $00
.db $02 $E1 $02 $00 $81 $10 $03 $00 $81 $10 $04 $00 $81 $10 $02 $00
.db $02 $E1 $02 $00 $81 $10 $03 $00 $81 $10 $04 $00 $81 $10 $02 $00
.db $02 $E1 $02 $00 $81 $10 $03 $00 $81 $10 $04 $00 $81 $10 $02 $00
.db $0E $E1 $81 $E3 $02 $E1 $00

; 3rd entry of Pointer Table from 1A2E2 (indexed by unknown)
; Data from 1A51F to 1A565 (71 bytes)
_DATA_1A51F_:
.db $07 $E1 $02 $00 $08 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00
.db $02 $E1 $02 $10 $0C $00 $02 $E1 $0E $00 $02 $E1 $03 $00 $81 $10
.db $0A $00 $02 $E1 $04 $00 $81 $10 $09 $00 $02 $E1 $05 $00 $81 $10
.db $08 $00 $02 $E1 $0E $00 $02 $E1 $06 $E6 $03 $00 $04 $E6 $81 $E3
.db $0F $E1 $81 $E3 $81 $E1 $00

; 4th entry of Pointer Table from 1A2E2 (indexed by unknown)
; Data from 1A566 to 1A5D5 (112 bytes)
_DATA_1A566_:
.db $08 $E1 $81 $E3 $08 $E1 $07 $00 $82 $E2 $00 $05 $10 $02 $E1 $81
.db $0A $06 $00 $82 $E2 $00 $05 $10 $06 $E1 $02 $00 $02 $E1 $81 $00
.db $05 $10 $82 $00 $E1 $09 $00 $05 $10 $82 $00 $E1 $09 $00 $03 $10
.db $04 $E1 $05 $00 $02 $E1 $02 $00 $02 $10 $81 $E1 $02 $00 $02 $E1
.db $09 $00 $82 $10 $E1 $03 $00 $02 $E1 $09 $00 $81 $E1 $04 $00 $02
.db $E1 $04 $00 $02 $E1 $07 $00 $83 $10 $00 $E1 $04 $00 $81 $10 $08
.db $00 $82 $10 $00 $08 $E1 $86 $E3 $E1 $E1 $08 $E1 $08 $02 $E1 $00

; 5th entry of Pointer Table from 1A2E2 (indexed by unknown)
; Data from 1A5D6 to 1A63B (102 bytes)
_DATA_1A5D6_:
.db $0D $E1 $81 $E3 $03 $E1 $04 $00 $06 $10 $02 $00 $82 $E2 $00 $02
.db $E1 $04 $00 $06 $10 $02 $00 $83 $E2 $00 $E1 $05 $00 $06 $10 $02
.db $00 $83 $E2 $00 $E1 $05 $00 $06 $10 $02 $00 $82 $E2 $00 $0E $E1
.db $81 $E3 $0F $E1 $81 $E2 $03 $E1 $06 $00 $82 $E1 $02 $04 $00 $82
.db $E2 $00 $02 $E1 $05 $00 $82 $03 $E1 $05 $00 $83 $E2 $00 $E1 $06
.db $00 $82 $03 $E1 $05 $00 $83 $E2 $00 $E1 $07 $00 $81 $E1 $05 $00
.db $82 $E2 $00 $11 $E1 $00

; 1st entry of Pointer Table from 1A2EC (indexed by unknown)
; Data from 1A63C to 1A6BD (130 bytes)
_DATA_1A63C_:
.db $81 $FF $09 $E7 $81 $EF $05 $F0 $81 $FF $09 $E7 $06 $F1 $81 $FF
.db $06 $E7 $83 $E9 $EA $E7 $04 $E8 $83 $EB $EC $FF $06 $E7 $83 $ED
.db $EE $E7 $04 $E8 $83 $ED $EE $FF $06 $E7 $83 $ED $EE $EF $04 $F0
.db $83 $ED $EE $FF $06 $E7 $82 $ED $EE $05 $F1 $83 $ED $EE $FF $06
.db $E7 $8A $ED $EE $E8 $F2 $F3 $F4 $FB $FC $FD $FF $06 $E7 $8A $ED
.db $EE $E8 $F5 $F6 $F7 $FB $FC $FD $FF $06 $E7 $8A $ED $EE $E8 $F8
.db $00 $F9 $FB $FC $FD $FF $06 $E7 $8A $ED $EE $E8 $F8 $00 $F9 $FB
.db $FC $FD $FF $06 $E7 $89 $ED $EE $F1 $F8 $00 $F9 $FE $FC $FD $10
.db $FA $00

; 2nd entry of Pointer Table from 1A2EC (indexed by unknown)
; Data from 1A6BE to 1A746 (137 bytes)
_DATA_1A6BE_:
.db $0D $E1 $81 $E3 $02 $E1 $02 $00 $BE $E4 $00 $E4 $00 $E4 $00 $E4
.db $00 $E4 $00 $00 $E2 $00 $E1 $00 $00 $E4 $00 $E4 $00 $E4 $00 $E4
.db $00 $E4 $00 $00 $E2 $00 $E1 $00 $00 $E4 $00 $E4 $00 $E4 $00 $E4
.db $00 $E4 $00 $00 $E2 $00 $E1 $00 $00 $E5 $00 $E4 $00 $E4 $00 $E4
.db $00 $E5 $00 $00 $E2 $00 $E1 $04 $00 $85 $E4 $00 $E4 $00 $E4 $04
.db $00 $83 $E2 $00 $E1 $04 $00 $85 $E5 $00 $E4 $00 $E5 $04 $00 $83
.db $E2 $00 $E1 $06 $00 $81 $E4 $06 $00 $83 $E2 $00 $E1 $06 $00 $81
.db $E5 $06 $00 $83 $E2 $00 $E1 $0D $00 $83 $E2 $00 $E1 $0D $00 $82
.db $E2 $00 $0D $E1 $81 $08 $03 $E1 $00

; 3rd entry of Pointer Table from 1A2EC (indexed by unknown)
; Data from 1A747 to 1A7C1 (123 bytes)
_DATA_1A747_:
.db $0E $E1 $81 $E3 $02 $E1 $0D $00 $81 $E2 $02 $E1 $0E $00 $02 $E1
.db $82 $00 $E3 $0C $00 $02 $E1 $82 $00 $E2 $05 $00 $81 $E3 $04 $00
.db $02 $10 $02 $E1 $82 $00 $E2 $05 $00 $84 $E2 $00 $00 $E3 $04 $00
.db $83 $E1 $00 $E2 $05 $00 $84 $E2 $00 $00 $E2 $04 $00 $84 $E1 $10
.db $E2 $10 $04 $00 $81 $E2 $05 $00 $88 $E3 $E1 $E1 $00 $E2 $00 $00
.db $E3 $04 $00 $81 $E2 $03 $00 $88 $E2 $E1 $E1 $00 $E2 $00 $00 $E2
.db $04 $00 $81 $E2 $04 $00 $02 $E1 $85 $00 $E2 $00 $00 $E2 $04 $00
.db $81 $E2 $04 $00 $03 $E1 $81 $E3 $0D $E1 $00

; 4th entry of Pointer Table from 1A2EC (indexed by unknown)
; Data from 1A7C2 to 1A81E (93 bytes)
_DATA_1A7C2_:
.db $08 $E1 $81 $E3 $08 $E1 $06 $00 $82 $E1 $E2 $06 $00 $02 $E1 $06
.db $00 $82 $E1 $E2 $06 $00 $02 $E1 $06 $00 $82 $E1 $E2 $06 $00 $02
.db $E1 $06 $00 $07 $E1 $82 $00 $E1 $0F $00 $81 $E1 $0F $00 $03 $E1
.db $0C $00 $03 $E1 $03 $00 $81 $E1 $0A $00 $02 $E1 $03 $00 $81 $E1
.db $03 $00 $81 $E1 $03 $00 $81 $E1 $02 $00 $02 $E1 $03 $00 $81 $E1
.db $03 $00 $81 $E1 $03 $00 $81 $E1 $02 $00 $11 $E1 $00

; 5th entry of Pointer Table from 1A2EC (indexed by unknown)
; Data from 1A81F to 1A84D (47 bytes)
_DATA_1A81F_:
.db $11 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00
.db $02 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00
.db $02 $E1 $0E $00 $02 $E1 $0E $00 $04 $E1 $81 $E3 $0C $E1 $00

; 1st entry of Pointer Table from 1A2F6 (indexed by unknown)
; Data from 1A84E to 1A8AA (93 bytes)
_DATA_1A84E_:
.db $11 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00 $02 $E1 $0E $00
.db $02 $E1 $0F $00 $81 $E1 $03 $00 $81 $E1 $06 $10 $81 $E1 $04 $00
.db $81 $E1 $03 $00 $82 $E1 $10 $04 $00 $82 $10 $E1 $03 $00 $02 $E1
.db $03 $00 $82 $E1 $10 $04 $00 $82 $10 $E1 $02 $00 $03 $E1 $03 $00
.db $02 $10 $86 $00 $E1 $00 $00 $10 $E1 $03 $00 $02 $E1 $03 $00 $02
.db $10 $84 $00 $10 $10 $00 $02 $10 $03 $00 $11 $E1 $00

; 3rd entry of Pointer Table from 1A2F6 (indexed by unknown)
; Data from 1A8AB to 1A919 (111 bytes)
_DATA_1A8AB_:
.db $02 $E1 $81 $E3 $0F $E1 $81 $E2 $02 $E1 $0A $00 $03 $E1 $81 $E2
.db $0C $00 $03 $E1 $81 $E2 $04 $00 $02 $E1 $06 $00 $06 $E1 $82 $00
.db $E1 $02 $00 $02 $E1 $88 $00 $E1 $E1 $00 $E1 $00 $00 $E1 $0C $00
.db $81 $E1 $03 $00 $81 $E1 $03 $00 $81 $E1 $04 $00 $81 $E1 $02 $00
.db $02 $E1 $02 $00 $83 $E1 $00 $E1 $05 $00 $81 $E1 $02 $00 $03 $E1
.db $05 $00 $84 $E1 $00 $00 $E1 $03 $00 $84 $E1 $00 $00 $E1 $03 $00
.db $81 $E1 $0B $00 $02 $E1 $09 $00 $81 $E1 $04 $00 $10 $E1 $00

; 4th entry of Pointer Table from 1A2F6 (indexed by unknown)
; Data from 1A91A to 1A984 (107 bytes)
_DATA_1A91A_:
.db $11 $E1 $04 $00 $02 $E4 $03 $00 $02 $E4 $03 $00 $02 $E1 $04 $00
.db $02 $E4 $03 $00 $02 $E4 $03 $00 $02 $E1 $04 $00 $02 $E1 $03 $00
.db $02 $E1 $03 $00 $02 $E1 $04 $00 $02 $E1 $03 $00 $02 $E1 $03 $00
.db $02 $E1 $04 $00 $02 $E1 $83 $00 $E1 $00 $02 $E1 $03 $00 $02 $E1
.db $04 $00 $02 $E5 $83 $00 $E5 $00 $02 $E5 $03 $00 $02 $E1 $0E $00
.db $81 $E1 $03 $00 $81 $10 $08 $00 $03 $10 $0D $00 $03 $10 $0D $00
.db $03 $10 $81 $00 $08 $E1 $81 $08 $07 $E1 $00

; 5th entry of Pointer Table from 1A2F6 (indexed by unknown)
; Data from 1A985 to 1A9C5 (65 bytes)
_DATA_1A985_:
.db $03 $E1 $81 $E3 $0D $E1 $02 $00 $81 $E2 $0B $00 $02 $E1 $02 $00
.db $81 $E2 $0B $00 $0C $E1 $02 $00 $04 $E1 $0E $00 $02 $E1 $0E $00
.db $05 $E1 $03 $00 $07 $E1 $81 $E3 $02 $E1 $0D $00 $82 $E2 $E1 $0E
.db $00 $82 $E2 $E1 $03 $00 $05 $E1 $81 $00 $07 $E1 $0F $00 $11 $E1
.db $00

; 1st entry of Pointer Table from 677D (indexed by unknown)
; Pointer Table from 1A9C6 to 1A9C7 (1 entries, indexed by unknown)
_DATA_1A9C6_:
.dw _DATA_1A9C8_

; 1st entry of Pointer Table from 1A9C6 (indexed by unknown)
; Pointer Table from 1A9C8 to 1A9CD (3 entries, indexed by unknown)
_DATA_1A9C8_:
.dw _DATA_1A9CE_ _DATA_1AA1A_ _DATA_1AA88_

; 1st entry of Pointer Table from 1A9C8 (indexed by unknown)
; Data from 1A9CE to 1AA19 (76 bytes)
_DATA_1A9CE_:
.db $0D $00 $82 $0B $0C $03 $00 $82 $0B $0C $22 $00 $81 $98 $03 $00
.db $84 $9B $A6 $9C $A7 $07 $00 $82 $A7 $99 $03 $A2 $03 $9D $81 $A8
.db $04 $00 $86 $A7 $00 $00 $A9 $A5 $A0 $05 $9D $86 $A9 $00 $03 $00
.db $00 $A9 $02 $00 $02 $14 $02 $4C $82 $14 $4C $03 $14 $85 $4C $14
.db $00 $00 $14 $22 $00 $81 $4C $0A $00 $20 $AA $00

; 2nd entry of Pointer Table from 1A9C8 (indexed by unknown)
; Data from 1AA1A to 1AA87 (110 bytes)
_DATA_1AA1A_:
.db $04 $00 $86 $2D $2E $2F $00 $0B $0C $08 $00 $87 $A7 $30 $31 $32
.db $33 $34 $A7 $09 $00 $8A $A8 $35 $36 $37 $38 $39 $A8 $00 $00 $03
.db $06 $00 $87 $A8 $35 $3A $3B $3C $39 $A8 $03 $00 $81 $03 $05 $00
.db $87 $A9 $35 $3A $3B $3C $39 $A9 $04 $00 $81 $03 $04 $00 $02 $14
.db $81 $4C $02 $14 $02 $4C $05 $00 $81 $03 $0E $00 $81 $03 $03 $00
.db $81 $4C $0A $00 $81 $03 $04 $00 $81 $14 $09 $00 $82 $03 $4C $07
.db $00 $81 $03 $02 $4C $04 $00 $02 $4C $03 $00 $20 $AA $00

; 3rd entry of Pointer Table from 1A9C8 (indexed by unknown)
; Data from 1AA88 to 1AAB3 (44 bytes)
_DATA_1AA88_:
.db $0C $00 $82 $0B $0C $04 $00 $82 $0B $0C $13 $00 $82 $0B $0C $58
.db $00 $02 $A7 $87 $A2 $9B $A6 $9C $A7 $9B $9C $07 $00 $02 $A9 $87
.db $A5 $A0 $9E $9D $A9 $A0 $9E $06 $00 $20 $AA $00

; 1st entry of Pointer Table from 6789 (indexed by unknown)
; Pointer Table from 1AAB4 to 1AAB5 (1 entries, indexed by unknown)
_DATA_1AAB4_:
.dw _DATA_1AAB6_

; 1st entry of Pointer Table from 1AAB4 (indexed by unknown)
; Pointer Table from 1AAB6 to 1AAC5 (8 entries, indexed by unknown)
_DATA_1AAB6_:
.dw _DATA_1AAC6_ _DATA_1AB36_ _DATA_1AB36_ _DATA_1AB0F_ _DATA_1AB36_ _DATA_1AAC6_ _DATA_1AB0F_ _DATA_1AAC6_

; 1st entry of Pointer Table from 1AAB6 (indexed by unknown)
; Data from 1AAC6 to 1AB0E (73 bytes)
_DATA_1AAC6_:
.db $85 $00 $0B $0C $00 $14 $06 $00 $81 $14 $08 $00 $81 $14 $0F $00
.db $81 $14 $06 $00 $84 $14 $00 $0B $0C $09 $00 $84 $14 $00 $00 $14
.db $08 $00 $81 $14 $06 $00 $81 $14 $08 $00 $81 $14 $03 $00 $81 $14
.db $0B $00 $81 $14 $03 $00 $81 $14 $1F $00 $81 $14 $17 $00 $02 $15
.db $0C $69 $04 $15 $0C $68 $02 $15 $00

; 4th entry of Pointer Table from 1AAB6 (indexed by unknown)
; Data from 1AB0F to 1AB35 (39 bytes)
_DATA_1AB0F_:
.db $12 $00 $81 $14 $09 $00 $81 $14 $18 $00 $02 $14 $10 $00 $81 $14
.db $10 $00 $02 $14 $28 $00 $81 $14 $09 $00 $81 $14 $13 $00 $0E $69
.db $02 $15 $0E $68 $02 $15 $00

; 2nd entry of Pointer Table from 1AAB6 (indexed by unknown)
; Data from 1AB36 to 1AB51 (28 bytes)
_DATA_1AB36_:
.db $11 $00 $82 $0B $0C $08 $00 $82 $0B $0C $19 $00 $82 $0B $0C $68
.db $00 $02 $15 $0C $69 $04 $15 $0C $68 $02 $15 $00

; 1st entry of Pointer Table from 6795 (indexed by unknown)
; Pointer Table from 1AB52 to 1AB53 (1 entries, indexed by unknown)
_DATA_1AB52_:
.dw _DATA_1AB54_

; 1st entry of Pointer Table from 1AB52 (indexed by unknown)
; Pointer Table from 1AB54 to 1AB57 (2 entries, indexed by unknown)
_DATA_1AB54_:
.dw _DATA_1AB58_ _DATA_1ABE9_

; 1st entry of Pointer Table from 1AB54 (indexed by unknown)
; Data from 1AB58 to 1ABE8 (145 bytes)
_DATA_1AB58_:
.db $81 $FF $06 $E7 $82 $E9 $EA $05 $E7 $83 $E9 $EA $FF $06 $E7 $82
.db $ED $EE $05 $E7 $83 $FC $FD $FF $06 $E7 $82 $ED $EE $05 $EF $83
.db $FC $FD $FF $05 $E7 $83 $E9 $ED $EE $05 $F0 $83 $FC $FD $FF $05
.db $E7 $02 $ED $81 $EE $05 $FE $83 $FC $FD $FF $05 $E7 $02 $ED $89
.db $EE $E8 $F2 $F3 $F4 $FB $FC $FD $FF $05 $E7 $02 $ED $89 $EE $E8
.db $F5 $F6 $F7 $FB $FC $FD $FF $05 $E7 $02 $ED $89 $EE $E8 $F8 $00
.db $F9 $FB $FC $FD $FF $05 $E7 $02 $ED $89 $EE $E8 $F8 $00 $F9 $FB
.db $FC $FD $FF $05 $E7 $02 $ED $89 $EE $E8 $F8 $00 $F9 $FB $FC $FD
.db $FF $05 $E7 $02 $ED $88 $EE $F1 $F8 $00 $F9 $FE $FC $FD $10 $FA
.db $00

; 2nd entry of Pointer Table from 1AB54 (indexed by unknown)
; Data from 1ABE9 to 1AC6B (131 bytes)
_DATA_1ABE9_:
.db $04 $00 $82 $7A $7B $07 $00 $82 $7A $7B $05 $00 $82 $7C $7D $07
.db $00 $82 $7C $7D $05 $00 $82 $7C $7D $07 $00 $82 $7C $7D $05 $00
.db $82 $7C $7D $07 $00 $82 $7C $7D $05 $00 $8B $7C $7D $00 $00 $83
.db $84 $85 $86 $00 $7C $7D $05 $00 $8B $7C $7D $00 $00 $87 $88 $89
.db $8A $00 $7C $7D $05 $00 $82 $7C $7D $03 $00 $86 $8B $8C $00 $00
.db $7C $7D $05 $00 $82 $7C $7D $03 $00 $86 $8D $8E $00 $00 $7C $7D
.db $05 $00 $8B $7E $7F $00 $00 $91 $8F $90 $94 $00 $7E $7F $04 $00
.db $85 $80 $81 $82 $80 $92 $04 $93 $87 $95 $81 $82 $80 $00 $00 $92
.db $1D $93 $00

; 1st entry of Pointer Table from 67A1 (indexed by unknown)
; Pointer Table from 1AC6C to 1AC6D (1 entries, indexed by unknown)
_DATA_1AC6C_:
.dw _DATA_1AC6E_

; 1st entry of Pointer Table from 1AC6C (indexed by unknown)
; Pointer Table from 1AC6E to 1AC83 (11 entries, indexed by unknown)
_DATA_1AC6E_:
.dw _DATA_1AC84_ _DATA_1ACB3_ _DATA_1ACF0_ _DATA_1AD25_ _DATA_1AD58_ _DATA_1AD94_ _DATA_1ADD2_ _DATA_1AE0D_
.dw _DATA_1AE64_ _DATA_1AEA6_ _DATA_1AF0D_

; 1st entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AC84 to 1ACB2 (47 bytes)
_DATA_1AC84_:
.db $1C $00 $82 $0B $0C $03 $00 $82 $0B $0C $53 $00 $87 $22 $23 $24
.db $00 $22 $23 $24 $09 $00 $88 $25 $26 $27 $28 $25 $26 $27 $28 $08
.db $00 $88 $29 $2A $2B $2C $29 $2A $2B $2C $02 $00 $20 $15 $00

; 2nd entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1ACB3 to 1ACEF (61 bytes)
_DATA_1ACB3_:
.db $18 $00 $82 $0B $0C $23 $00 $86 $0B $0C $00 $00 $0B $0C $11 $00
.db $83 $2D $2E $2F $0C $00 $85 $30 $31 $32 $33 $34 $0B $00 $85 $35
.db $36 $37 $38 $39 $0B $00 $85 $35 $3A $3B $3C $39 $06 $00 $81 $0A
.db $04 $00 $85 $35 $3A $3B $3C $39 $08 $00 $20 $15 $00

; 3rd entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1ACF0 to 1AD24 (53 bytes)
_DATA_1ACF0_:
.db $15 $00 $82 $0B $0C $15 $00 $82 $0B $0C $04 $00 $82 $0B $0C $4E
.db $00 $8B $10 $00 $0A $00 $00 $10 $00 $0A $0A $00 $03 $05 $00 $81
.db $10 $04 $00 $81 $10 $04 $00 $81 $10 $03 $00 $0E $15 $81 $69 $0F
.db $15 $82 $68 $15 $00

; 4th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AD25 to 1AD57 (51 bytes)
_DATA_1AD25_:
.db $16 $00 $82 $0B $0C $18 $00 $82 $0B $0C $0C $00 $82 $0B $0C $17
.db $00 $06 $03 $08 $00 $08 $14 $14 $00 $02 $10 $11 $00 $08 $10 $03
.db $00 $82 $0A $69 $07 $15 $81 $69 $07 $15 $81 $68 $07 $15 $81 $68
.db $07 $15 $00

; 5th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AD58 to 1AD93 (60 bytes)
_DATA_1AD58_:
.db $14 $00 $82 $0B $0C $08 $00 $82 $0B $0C $50 $00 $02 $10 $03 $00
.db $81 $0A $06 $00 $84 $0A $00 $00 $22 $0F $00 $81 $25 $0F $00 $81
.db $29 $04 $15 $81 $69 $03 $15 $81 $69 $03 $15 $03 $69 $05 $15 $81
.db $68 $03 $15 $81 $68 $03 $15 $03 $68 $81 $15 $00

; 6th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AD94 to 1ADD1 (62 bytes)
_DATA_1AD94_:
.db $1D $00 $82 $0B $0C $14 $00 $82 $0B $0C $04 $00 $82 $0B $0C $35
.db $00 $82 $23 $24 $03 $00 $81 $0A $04 $00 $03 $0A $03 $00 $83 $26
.db $27 $28 $0D $00 $84 $2A $2B $2C $0A $0C $00 $04 $15 $81 $69 $04
.db $15 $03 $69 $08 $15 $81 $68 $04 $15 $03 $68 $04 $15 $00

; 7th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1ADD2 to 1AE0C (59 bytes)
_DATA_1ADD2_:
.db $0B $00 $82 $0B $0C $1B $00 $82 $0B $0C $08 $00 $82 $0B $0C $0A
.db $00 $82 $0B $0C $26 $00 $81 $0A $0A $00 $81 $02 $0A $00 $02 $0A
.db $02 $03 $0C $00 $04 $10 $0C $00 $04 $10 $03 $69 $04 $15 $81 $69
.db $08 $15 $03 $68 $04 $15 $81 $68 $08 $15 $00

; 8th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AE0D to 1AE63 (87 bytes)
_DATA_1AE0D_:
.db $10 $00 $82 $0B $0C $1A $00 $82 $0B $0C $16 $00 $07 $0A $08 $00
.db $81 $14 $07 $10 $08 $00 $84 $14 $0A $0A $10 $09 $00 $02 $03 $82
.db $00 $14 $02 $0A $02 $00 $81 $10 $07 $00 $02 $10 $84 $00 $10 $00
.db $10 $0A $00 $02 $10 $82 $00 $10 $06 $00 $81 $10 $05 $00 $07 $15
.db $81 $69 $03 $15 $81 $69 $02 $15 $02 $69 $07 $15 $81 $68 $03 $15
.db $81 $68 $02 $15 $02 $68 $00

; 9th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AE64 to 1AEA5 (66 bytes)
_DATA_1AE64_:
.db $14 $00 $82 $0B $0C $15 $00 $82 $0B $0C $13 $00 $82 $0B $0C $09
.db $00 $81 $0A $0E $00 $83 $0A $00 $0A $22 $00 $81 $22 $03 $00 $82
.db $14 $0A $02 $00 $02 $14 $06 $00 $81 $25 $03 $00 $82 $14 $0A $02
.db $00 $02 $14 $06 $00 $81 $29 $0A $15 $03 $69 $0D $15 $03 $68 $03
.db $15 $00

; 10th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AEA6 to 1AF0C (103 bytes)
_DATA_1AEA6_:
.db $0F $00 $81 $14 $09 $00 $82 $0B $0C $04 $00 $81 $14 $0F $00 $84
.db $14 $00 $0B $0C $09 $00 $84 $02 $00 $00 $14 $0C $00 $02 $14 $82
.db $00 $14 $0C $00 $84 $14 $00 $00 $14 $07 $00 $81 $10 $03 $00 $02
.db $14 $02 $00 $86 $14 $23 $24 $00 $00 $14 $05 $00 $03 $14 $02 $00
.db $86 $14 $26 $27 $28 $00 $14 $03 $00 $81 $10 $04 $14 $03 $00 $88
.db $2A $2B $2C $00 $14 $00 $00 $10 $05 $14 $03 $00 $05 $15 $02 $69
.db $0E $15 $02 $68 $09 $15 $00

; 11th entry of Pointer Table from 1AC6E (indexed by unknown)
; Data from 1AF0D to 1AF34 (40 bytes)
_DATA_1AF0D_:
.db $12 $00 $82 $0B $0C $08 $00 $82 $0B $0C $18 $00 $82 $0B $0C $42
.db $00 $83 $22 $23 $24 $0D $00 $84 $25 $26 $27 $28 $0C $00 $84 $29
.db $2A $2B $2C $02 $00 $20 $15 $00

; 1st entry of Pointer Table from 67AD (indexed by unknown)
; Pointer Table from 1AF35 to 1AF40 (6 entries, indexed by unknown)
_DATA_1AF35_:
.dw _DATA_1AF4F_ _DATA_1AF5D_ _DATA_1AF6B_ _DATA_1AF79_ _DATA_1AF87_ _DATA_1AF95_

; 2nd entry of Pointer Table from 67AD (indexed by unknown)
; Pointer Table from 1AF41 to 1AF4E (7 entries, indexed by unknown)
_DATA_1AF41_:
.dw _DATA_1AFA3_ _DATA_1AFAF_ _DATA_1AFBB_ _DATA_1AFC7_ _DATA_1AFD3_ _DATA_1AFDF_ _DATA_1AFEB_

; 1st entry of Pointer Table from 1AF35 (indexed by unknown)
; Pointer Table from 1AF4F to 1AF5C (7 entries, indexed by unknown)
_DATA_1AF4F_:
.dw _DATA_1AFF7_ _DATA_1AFF7_ _DATA_1AFF7_ _DATA_1B065_ _DATA_1B0DF_ _DATA_1B117_ _DATA_1B182_

; 2nd entry of Pointer Table from 1AF35 (indexed by unknown)
; Pointer Table from 1AF5D to 1AF6A (7 entries, indexed by unknown)
_DATA_1AF5D_:
.dw _DATA_1B1BD_ _DATA_1B209_ _DATA_1B239_ _DATA_1B28B_ _DATA_1B2C8_ _DATA_1B319_ _DATA_1B39F_

; 3rd entry of Pointer Table from 1AF35 (indexed by unknown)
; Pointer Table from 1AF6B to 1AF78 (7 entries, indexed by unknown)
_DATA_1AF6B_:
.dw _DATA_1B3CF_ _DATA_1B3CF_ _DATA_1B41C_ _DATA_1B481_ _DATA_1B4EA_ _DATA_1B535_ _DATA_1B59B_

; 4th entry of Pointer Table from 1AF35 (indexed by unknown)
; Pointer Table from 1AF79 to 1AF86 (7 entries, indexed by unknown)
_DATA_1AF79_:
.dw _DATA_1B5EB_ _DATA_1B5EB_ _DATA_1B61A_ _DATA_1B679_ _DATA_1B6E7_ _DATA_1B74D_ _DATA_1B7BA_

; 5th entry of Pointer Table from 1AF35 (indexed by unknown)
; Pointer Table from 1AF87 to 1AF94 (7 entries, indexed by unknown)
_DATA_1AF87_:
.dw _DATA_1B80C_ _DATA_1B80C_ _DATA_1B86A_ _DATA_1B8B7_ _DATA_1B919_ _DATA_1B990_ _DATA_1B9DD_

; 6th entry of Pointer Table from 1AF35 (indexed by unknown)
; Pointer Table from 1AF95 to 1AFA2 (7 entries, indexed by unknown)
_DATA_1AF95_:
.dw _DATA_1BA66_ _DATA_1BA66_ _DATA_1BADC_ _DATA_1BB3A_ _DATA_1BB90_ _DATA_1BBBE_ _DATA_1BC10_

; 1st entry of Pointer Table from 1AF41 (indexed by unknown)
; Pointer Table from 1AFA3 to 1AFAE (6 entries, indexed by unknown)
_DATA_1AFA3_:
.dw _DATA_1AFF7_ _DATA_1B1BD_ _DATA_1B3CF_ _DATA_1B5EB_ _DATA_1B80C_ _DATA_1BA66_

; 2nd entry of Pointer Table from 1AF41 (indexed by unknown)
; Pointer Table from 1AFAF to 1AFBA (6 entries, indexed by unknown)
_DATA_1AFAF_:
.dw _DATA_1AFF7_ _DATA_1B209_ _DATA_1B3CF_ _DATA_1B5EB_ _DATA_1B80C_ _DATA_1BA66_

; 3rd entry of Pointer Table from 1AF41 (indexed by unknown)
; Pointer Table from 1AFBB to 1AFC6 (6 entries, indexed by unknown)
_DATA_1AFBB_:
.dw _DATA_1AFF7_ _DATA_1B239_ _DATA_1B41C_ _DATA_1B61A_ _DATA_1B86A_ _DATA_1BADC_

; 4th entry of Pointer Table from 1AF41 (indexed by unknown)
; Pointer Table from 1AFC7 to 1AFD2 (6 entries, indexed by unknown)
_DATA_1AFC7_:
.dw _DATA_1B065_ _DATA_1B28B_ _DATA_1B481_ _DATA_1B679_ _DATA_1B8B7_ _DATA_1BB3A_

; 5th entry of Pointer Table from 1AF41 (indexed by unknown)
; Pointer Table from 1AFD3 to 1AFDE (6 entries, indexed by unknown)
_DATA_1AFD3_:
.dw _DATA_1B0DF_ _DATA_1B2C8_ _DATA_1B4EA_ _DATA_1B6E7_ _DATA_1B919_ _DATA_1BB90_

; 6th entry of Pointer Table from 1AF41 (indexed by unknown)
; Pointer Table from 1AFDF to 1AFEA (6 entries, indexed by unknown)
_DATA_1AFDF_:
.dw _DATA_1B117_ _DATA_1B319_ _DATA_1B535_ _DATA_1B74D_ _DATA_1B990_ _DATA_1BBBE_

; 7th entry of Pointer Table from 1AF41 (indexed by unknown)
; Pointer Table from 1AFEB to 1AFF6 (6 entries, indexed by unknown)
_DATA_1AFEB_:
.dw _DATA_1B182_ _DATA_1B39F_ _DATA_1B59B_ _DATA_1B7BA_ _DATA_1B9DD_ _DATA_1BC10_

; 1st entry of Pointer Table from 1AF4F (indexed by unknown)
; Data from 1AFF7 to 1B064 (110 bytes)
_DATA_1AFF7_:
.db $81 $E1 $10 $50 $0E $00 $02 $50 $0F $00 $81 $50 $05 $00 $81 $50
.db $09 $00 $81 $50 $03 $00 $85 $50 $00 $50 $00 $50 $03 $00 $81 $50
.db $03 $00 $81 $50 $04 $00 $02 $50 $82 $00 $50 $03 $00 $82 $50 $00
.db $03 $50 $82 $00 $50 $07 $00 $81 $50 $04 $00 $02 $50 $82 $00 $50
.db $07 $00 $81 $50 $04 $00 $02 $50 $03 $00 $81 $50 $0A $00 $02 $50
.db $03 $00 $02 $50 $82 $00 $50 $07 $00 $02 $50 $89 $00 $50 $00 $50
.db $50 $00 $50 $00 $50 $04 $00 $0F $50 $81 $51 $02 $50 $00

; 4th entry of Pointer Table from 1AF4F (indexed by unknown)
; Data from 1B065 to 1B0DE (122 bytes)
_DATA_1B065_:
.db $11 $50 $AB $00 $58 $00 $00 $58 $00 $00 $58 $00 $00 $58 $00 $00
.db $0A $50 $00 $00 $58 $00 $00 $58 $00 $00 $58 $00 $00 $58 $00 $00
.db $10 $50 $00 $00 $50 $00 $00 $58 $00 $00 $58 $00 $00 $50 $03 $00
.db $84 $50 $00 $00 $50 $08 $53 $81 $50 $03 $00 $02 $50 $82 $00 $50
.db $08 $00 $88 $50 $00 $00 $10 $50 $50 $00 $50 $08 $00 $81 $50 $03
.db $00 $02 $50 $82 $00 $50 $08 $00 $81 $50 $03 $00 $82 $50 $06 $0D
.db $00 $81 $10 $02 $50 $0B $00 $81 $10 $02 $00 $07 $50 $03 $5C $04
.db $50 $02 $00 $02 $50 $0E $00 $81 $50 $00

; 5th entry of Pointer Table from 1AF4F (indexed by unknown)
; Data from 1B0DF to 1B116 (56 bytes)
_DATA_1B0DF_:
.db $11 $50 $0E $00 $82 $06 $50 $0F $00 $81 $50 $06 $00 $05 $50 $04
.db $00 $05 $50 $07 $00 $05 $50 $0F $00 $81 $50 $0F $00 $81 $50 $05
.db $00 $05 $50 $05 $00 $04 $50 $07 $00 $06 $50 $0F $00 $81 $50 $0F
.db $00 $0C $50 $81 $51 $03 $50 $00

; 6th entry of Pointer Table from 1AF4F (indexed by unknown)
; Data from 1B117 to 1B181 (107 bytes)
_DATA_1B117_:
.db $11 $50 $04 $00 $81 $50 $09 $00 $81 $50 $05 $00 $81 $10 $09 $00
.db $81 $50 $05 $00 $81 $10 $09 $00 $09 $50 $05 $00 $83 $50 $00 $50
.db $07 $00 $81 $10 $03 $00 $85 $10 $00 $50 $00 $50 $07 $00 $81 $10
.db $03 $00 $85 $50 $00 $50 $00 $50 $07 $00 $81 $10 $05 $00 $82 $50
.db $00 $0F $50 $82 $00 $50 $03 $00 $81 $50 $05 $00 $81 $10 $05 $00
.db $81 $50 $03 $00 $81 $50 $05 $00 $81 $10 $05 $00 $03 $50 $81 $51
.db $03 $50 $81 $51 $05 $50 $81 $51 $03 $50 $00

; 7th entry of Pointer Table from 1AF4F (indexed by unknown)
; Data from 1B182 to 1B1BC (59 bytes)
_DATA_1B182_:
.db $14 $50 $08 $10 $07 $50 $81 $10 $08 $00 $81 $10 $05 $50 $81 $10
.db $0A $00 $81 $10 $03 $50 $81 $10 $0C $00 $81 $10 $02 $50 $0E $00
.db $02 $50 $0E $00 $02 $50 $0E $00 $02 $50 $0E $00 $02 $50 $0E $00
.db $02 $50 $0E $00 $02 $50 $81 $51 $0E $50 $00

; 1st entry of Pointer Table from 1AF5D (indexed by unknown)
; Data from 1B1BD to 1B208 (76 bytes)
_DATA_1B1BD_:
.db $81 $4D $0D $00 $02 $50 $81 $4D $0D $00 $02 $50 $84 $4D $00 $0B
.db $0C $0A $00 $02 $50 $81 $4D $08 $00 $82 $0B $0C $04 $00 $82 $50
.db $4D $0E $00 $82 $50 $4D $0E $00 $82 $50 $4D $0E $00 $82 $5B $4D
.db $0D $00 $83 $5B $00 $4D $0C $00 $84 $5B $00 $00 $4D $0B $00 $81
.db $5B $0E $00 $81 $5B $04 $00 $0A $50 $06 $5A $00

; 2nd entry of Pointer Table from 1AF5D (indexed by unknown)
; Data from 1B209 to 1B238 (48 bytes)
_DATA_1B209_:
.db $11 $50 $0E $00 $02 $50 $0E $00 $02 $50 $0E $00 $02 $50 $0E $00
.db $02 $50 $0E $00 $81 $50 $0F $00 $81 $50 $0F $00 $81 $50 $0F $00
.db $81 $50 $0D $00 $02 $03 $82 $50 $00 $11 $50 $0C $00 $02 $50 $00

; 3rd entry of Pointer Table from 1AF5D (indexed by unknown)
; Data from 1B239 to 1B28A (82 bytes)
_DATA_1B239_:
.db $0D $50 $81 $51 $03 $50 $0B $59 $82 $50 $52 $03 $50 $0B $00 $82
.db $50 $52 $03 $50 $0B $00 $82 $50 $52 $03 $50 $0B $00 $82 $50 $52
.db $03 $50 $0B $00 $82 $50 $52 $03 $50 $0B $00 $85 $50 $52 $50 $50
.db $06 $0B $00 $82 $50 $52 $03 $50 $0B $00 $82 $50 $52 $03 $50 $0B
.db $00 $82 $50 $52 $03 $50 $0B $00 $82 $50 $00 $04 $50 $81 $51 $0D
.db $50 $00

; 4th entry of Pointer Table from 1AF5D (indexed by unknown)
; Data from 1B28B to 1B2C7 (61 bytes)
_DATA_1B28B_:
.db $04 $50 $07 $00 $02 $50 $02 $00 $02 $50 $0E $00 $02 $50 $0E $00
.db $02 $50 $0E $00 $02 $50 $0C $00 $04 $50 $0A $00 $06 $50 $06 $00
.db $0A $50 $0A $00 $06 $50 $0D $00 $82 $50 $00 $04 $50 $81 $54 $09
.db $00 $82 $50 $00 $06 $50 $81 $06 $02 $00 $17 $50 $00

; 5th entry of Pointer Table from 1AF5D (indexed by unknown)
; Data from 1B2C8 to 1B318 (81 bytes)
_DATA_1B2C8_:
.db $02 $50 $81 $00 $09 $50 $81 $51 $04 $50 $08 $00 $84 $50 $00 $00
.db $52 $02 $00 $02 $50 $08 $00 $84 $10 $00 $00 $52 $02 $00 $02 $50
.db $04 $00 $05 $50 $05 $00 $02 $50 $04 $00 $81 $10 $03 $00 $81 $50
.db $05 $00 $0B $50 $05 $00 $02 $50 $0E $00 $02 $50 $0E $00 $81 $50
.db $0F $00 $81 $50 $0F $00 $06 $50 $06 $5C $06 $50 $0E $00 $81 $50
.db $00

; 6th entry of Pointer Table from 1AF5D (indexed by unknown)
; Data from 1B319 to 1B39E (134 bytes)
_DATA_1B319_:
.db $02 $50 $81 $52 $03 $50 $81 $51 $05 $50 $81 $51 $05 $50 $8B $52
.db $50 $00 $00 $52 $00 $00 $50 $00 $00 $52 $02 $00 $03 $50 $8B $52
.db $50 $00 $00 $52 $00 $00 $50 $00 $00 $52 $02 $00 $03 $50 $8B $52
.db $50 $00 $00 $52 $00 $00 $50 $00 $00 $52 $02 $00 $03 $50 $85 $52
.db $50 $00 $00 $52 $02 $10 $03 $50 $81 $52 $02 $00 $03 $50 $82 $52
.db $50 $03 $00 $02 $10 $03 $50 $03 $00 $03 $50 $81 $52 $05 $50 $83
.db $00 $50 $00 $07 $50 $82 $52 $50 $0B $00 $03 $50 $82 $52 $50 $0B
.db $00 $03 $50 $82 $52 $50 $0C $00 $02 $50 $82 $52 $50 $0C $00 $02
.db $50 $81 $51 $0D $50 $00

; 7th entry of Pointer Table from 1AF5D (indexed by unknown)
; Data from 1B39F to 1B3CE (48 bytes)
_DATA_1B39F_:
.db $82 $50 $51 $0F $50 $81 $52 $0D $00 $02 $50 $0E $00 $02 $50 $0E
.db $00 $02 $50 $0E $00 $02 $50 $0E $00 $02 $50 $0E $00 $02 $50 $0E
.db $00 $02 $50 $0E $00 $81 $50 $0F $00 $81 $50 $0F $00 $11 $50 $00

; 1st entry of Pointer Table from 1AF6B (indexed by unknown)
; Data from 1B3CF to 1B41B (77 bytes)
_DATA_1B3CF_:
.db $02 $50 $0D $00 $04 $50 $0C $00 $02 $50 $0D $00 $04 $50 $0D $00
.db $03 $50 $81 $0A $0A $00 $07 $50 $09 $00 $06 $50 $0A $00 $04 $50
.db $81 $00 $02 $50 $0A $00 $03 $50 $02 $00 $81 $50 $07 $00 $81 $0A
.db $06 $50 $09 $00 $02 $50 $02 $00 $05 $50 $81 $0A $06 $00 $81 $50
.db $02 $00 $03 $50 $02 $00 $02 $50 $08 $00 $03 $50 $00

; 3rd entry of Pointer Table from 1AF6B (indexed by unknown)
; Data from 1B41C to 1B480 (101 bytes)
_DATA_1B41C_:
.db $02 $50 $81 $51 $0E $50 $82 $00 $52 $0D $00 $83 $50 $00 $52 $0D
.db $00 $85 $50 $00 $52 $00 $50 $06 $00 $81 $50 $04 $00 $83 $50 $00
.db $50 $04 $00 $81 $50 $07 $00 $02 $50 $04 $00 $82 $50 $51 $08 $00
.db $02 $50 $05 $00 $85 $52 $00 $00 $51 $50 $04 $5C $02 $50 $05 $00
.db $84 $52 $00 $00 $52 $05 $00 $02 $50 $03 $00 $82 $51 $50 $03 $00
.db $81 $52 $05 $00 $02 $50 $03 $00 $81 $52 $0A $00 $02 $50 $81 $02
.db $0D $00 $11 $50 $00

; 4th entry of Pointer Table from 1AF6B (indexed by unknown)
; Data from 1B481 to 1B4E9 (105 bytes)
_DATA_1B481_:
.db $10 $50 $06 $00 $03 $50 $06 $00 $81 $50 $07 $00 $03 $50 $05 $00
.db $81 $50 $0E $00 $85 $0A $50 $50 $00 $51 $0B $00 $85 $0A $50 $50
.db $00 $52 $08 $00 $02 $10 $89 $00 $0A $50 $50 $00 $52 $00 $00 $50
.db $06 $00 $82 $10 $00 $03 $50 $85 $00 $52 $00 $00 $50 $04 $00 $03
.db $10 $81 $00 $03 $50 $85 $00 $52 $00 $00 $50 $09 $55 $02 $50 $85
.db $00 $52 $00 $00 $50 $09 $56 $02 $50 $85 $00 $52 $00 $00 $50 $09
.db $57 $03 $50 $82 $51 $00 $0C $50 $00

; 5th entry of Pointer Table from 1AF6B (indexed by unknown)
; Data from 1B4EA to 1B534 (75 bytes)
_DATA_1B4EA_:
.db $02 $50 $0C $00 $03 $50 $0C $00 $05 $50 $0D $00 $02 $50 $0D $00
.db $05 $50 $0B $00 $05 $50 $09 $00 $07 $50 $0A $00 $05 $50 $0A $00
.db $02 $50 $81 $00 $05 $50 $81 $0A $07 $00 $81 $50 $02 $00 $02 $50
.db $02 $00 $02 $50 $09 $00 $04 $50 $02 $00 $81 $50 $06 $00 $81 $0A
.db $07 $50 $08 $00 $02 $50 $02 $00 $81 $50 $00

; 6th entry of Pointer Table from 1AF6B (indexed by unknown)
; Data from 1B535 to 1B59A (102 bytes)
_DATA_1B535_:
.db $02 $50 $81 $51 $0F $50 $81 $51 $0E $50 $A4 $00 $52 $00 $58 $00
.db $00 $58 $00 $00 $58 $00 $00 $58 $00 $50 $50 $00 $52 $00 $50 $00
.db $00 $58 $00 $00 $58 $00 $00 $50 $00 $50 $50 $00 $52 $00 $50 $08
.db $53 $88 $50 $00 $50 $50 $00 $52 $00 $50 $08 $00 $88 $50 $00 $50
.db $50 $00 $52 $00 $50 $08 $00 $88 $50 $00 $50 $50 $00 $52 $00 $50
.db $08 $00 $86 $50 $00 $50 $50 $00 $52 $0D $00 $81 $50 $0F $00 $81
.db $50 $0F $00 $10 $50 $00

; 7th entry of Pointer Table from 1AF6B (indexed by unknown)
; Data from 1B59B to 1B5EA (80 bytes)
_DATA_1B59B_:
.db $11 $50 $09 $00 $81 $10 $04 $00 $02 $50 $09 $00 $81 $10 $04 $00
.db $02 $50 $06 $00 $02 $50 $82 $00 $50 $04 $00 $04 $50 $07 $00 $81
.db $50 $04 $00 $02 $50 $09 $00 $07 $50 $03 $00 $03 $50 $08 $00 $02
.db $50 $0E $00 $83 $50 $00 $10 $06 $00 $81 $50 $06 $00 $83 $50 $00
.db $10 $0D $00 $83 $50 $00 $10 $0D $00 $0D $50 $81 $51 $03 $50 $00

; 1st entry of Pointer Table from 1AF79 (indexed by unknown)
; Data from 1B5EB to 1B619 (47 bytes)
_DATA_1B5EB_:
.db $02 $50 $0D $00 $03 $50 $0C $00 $06 $50 $0A $00 $04 $50 $0C $00
.db $05 $50 $0C $00 $03 $50 $0C $00 $04 $50 $0D $00 $02 $50 $0F $00
.db $81 $50 $0F $00 $0D $50 $03 $00 $0E $50 $02 $00 $10 $50 $00

; 3rd entry of Pointer Table from 1AF79 (indexed by unknown)
; Data from 1B61A to 1B678 (95 bytes)
_DATA_1B61A_:
.db $11 $50 $04 $00 $81 $10 $09 $00 $02 $50 $04 $00 $81 $10 $09 $00
.db $02 $50 $85 $00 $03 $00 $00 $10 $09 $00 $08 $50 $08 $00 $02 $50
.db $05 $00 $03 $50 $06 $00 $02 $50 $0E $00 $81 $50 $04 $00 $81 $50
.db $04 $00 $81 $50 $02 $00 $04 $50 $03 $00 $02 $50 $04 $5C $81 $50
.db $05 $00 $81 $50 $03 $00 $02 $50 $0A $00 $81 $50 $03 $00 $02 $50
.db $04 $00 $85 $10 $00 $00 $50 $51 $0F $50 $81 $51 $02 $50 $00

; 4th entry of Pointer Table from 1AF79 (indexed by unknown)
; Data from 1B679 to 1B6E6 (110 bytes)
_DATA_1B679_:
.db $02 $50 $82 $51 $00 $0D $50 $85 $00 $52 $00 $00 $10 $09 $00 $02
.db $50 $85 $00 $52 $00 $00 $10 $07 $00 $82 $03 $00 $02 $50 $04 $00
.db $81 $50 $03 $00 $81 $50 $05 $00 $02 $50 $04 $00 $81 $50 $09 $00
.db $08 $50 $04 $00 $81 $50 $03 $00 $02 $50 $03 $00 $82 $0A $50 $09
.db $00 $02 $50 $03 $00 $82 $0A $50 $07 $00 $04 $50 $03 $00 $82 $0A
.db $50 $0A $00 $81 $50 $04 $0A $81 $50 $04 $00 $81 $50 $05 $00 $81
.db $50 $04 $5C $81 $50 $0A $00 $81 $50 $04 $00 $0B $50 $00

; 5th entry of Pointer Table from 1AF79 (indexed by unknown)
; Data from 1B6E7 to 1B74C (102 bytes)
_DATA_1B6E7_:
.db $81 $50 $0E $00 $02 $50 $0F $00 $81 $50 $0F $3D $81 $50 $0F $21
.db $81 $50 $0F $21 $81 $50 $07 $21 $81 $4B $07 $21 $81 $50 $07 $21
.db $81 $4B $04 $21 $84 $4B $21 $21 $50 $05 $4B $02 $21 $81 $4B $04
.db $21 $81 $4B $02 $21 $05 $00 $89 $4B $21 $21 $4B $21 $4B $21 $21
.db $4B $02 $21 $05 $00 $89 $4B $21 $21 $4B $21 $4B $21 $21 $4B $02
.db $21 $05 $00 $89 $4B $21 $21 $4B $21 $4B $21 $21 $4B $02 $21 $02
.db $50 $81 $51 $0D $4B $00

; 6th entry of Pointer Table from 1AF79 (indexed by unknown)
; Data from 1B74D to 1B7B9 (109 bytes)
_DATA_1B74D_:
.db $10 $50 $02 $00 $84 $50 $00 $00 $50 $03 $00 $81 $50 $05 $00 $87
.db $50 $3D $3D $50 $3D $3D $50 $03 $3D $81 $50 $05 $3D $84 $50 $21
.db $21 $50 $06 $21 $81 $50 $05 $21 $84 $50 $21 $21 $50 $06 $21 $81
.db $50 $05 $21 $84 $50 $21 $21 $50 $0C $21 $87 $50 $21 $21 $50 $21
.db $21 $4B $09 $21 $87 $50 $21 $21 $50 $21 $21 $4B $09 $21 $81 $50
.db $05 $21 $81 $4B $03 $21 $81 $4B $0B $21 $81 $4B $03 $21 $81 $4B
.db $0B $21 $81 $4B $03 $21 $81 $4B $06 $21 $10 $4B $00

; 7th entry of Pointer Table from 1AF79 (indexed by unknown)
; Data from 1B7BA to 1B80B (82 bytes)
_DATA_1B7BA_:
.db $0C $50 $81 $51 $04 $50 $0B $00 $81 $52 $02 $00 $02 $50 $0E $3D
.db $02 $50 $81 $4F $0D $21 $02 $50 $03 $21 $0A $4F $84 $21 $50 $50
.db $4F $0D $21 $02 $50 $02 $21 $04 $4E $03 $21 $05 $4F $08 $50 $81
.db $4F $07 $21 $81 $50 $03 $21 $04 $69 $81 $4F $07 $21 $81 $50 $08
.db $21 $04 $4F $03 $21 $81 $50 $04 $21 $02 $4E $08 $21 $81 $4E $11
.db $50 $00

; 1st entry of Pointer Table from 1AF87 (indexed by unknown)
; Data from 1B80C to 1B869 (94 bytes)
_DATA_1B80C_:
.db $11 $50 $0F $00 $81 $50 $0F $00 $81 $50 $0F $00 $81 $50 $05 $00
.db $02 $50 $02 $00 $02 $50 $04 $00 $81 $50 $05 $00 $81 $50 $04 $00
.db $81 $50 $04 $00 $03 $50 $02 $00 $81 $50 $05 $00 $81 $50 $04 $00
.db $86 $50 $03 $00 $10 $10 $50 $05 $00 $06 $50 $02 $00 $83 $10 $00
.db $50 $05 $00 $06 $50 $85 $0A $00 $50 $00 $10 $03 $00 $06 $10 $82
.db $00 $50 $04 $00 $82 $10 $00 $08 $10 $81 $00 $10 $50 $00

; 3rd entry of Pointer Table from 1AF87 (indexed by unknown)
; Data from 1B86A to 1B8B6 (77 bytes)
_DATA_1B86A_:
.db $0D $50 $81 $52 $02 $50 $04 $00 $09 $50 $81 $52 $02 $50 $06 $00
.db $02 $50 $05 $00 $83 $52 $00 $50 $06 $00 $81 $10 $08 $00 $81 $50
.db $06 $00 $81 $10 $08 $00 $81 $50 $06 $00 $81 $10 $03 $00 $81 $50
.db $04 $00 $81 $50 $05 $00 $02 $50 $03 $00 $81 $50 $04 $00 $21 $50
.db $13 $00 $81 $52 $0C $00 $03 $50 $81 $51 $0C $50 $00

; 4th entry of Pointer Table from 1AF87 (indexed by unknown)
; Data from 1B8B7 to 1B918 (98 bytes)
_DATA_1B8B7_:
.db $81 $50 $04 $00 $0C $50 $0E $00 $02 $50 $0E $00 $02 $50 $0C $00
.db $82 $10 $00 $02 $50 $0C $00 $82 $10 $00 $02 $50 $0C $00 $82 $10
.db $00 $02 $50 $04 $00 $02 $10 $05 $00 $83 $10 $03 $00 $02 $50 $03
.db $00 $03 $10 $05 $00 $81 $10 $02 $00 $02 $50 $03 $00 $04 $10 $81
.db $00 $06 $10 $81 $50 $04 $00 $85 $10 $03 $10 $10 $00 $06 $10 $81
.db $50 $03 $00 $05 $10 $81 $00 $05 $10 $81 $52 $0F $50 $81 $51 $81
.db $50 $00

; 5th entry of Pointer Table from 1AF87 (indexed by unknown)
; Data from 1B919 to 1B98F (119 bytes)
_DATA_1B919_:
.db $02 $50 $81 $51 $0E $50 $82 $00 $52 $0C $00 $02 $50 $82 $00 $52
.db $0C $00 $02 $50 $82 $00 $52 $0D $00 $81 $50 $0F $00 $81 $50 $05
.db $00 $02 $50 $08 $00 $84 $50 $55 $55 $50 $02 $55 $02 $50 $03 $55
.db $81 $50 $02 $55 $03 $50 $02 $56 $81 $50 $02 $56 $02 $50 $03 $56
.db $81 $50 $02 $56 $03 $50 $02 $57 $81 $50 $02 $57 $02 $50 $03 $57
.db $81 $50 $02 $57 $03 $50 $02 $57 $81 $50 $02 $57 $02 $50 $03 $57
.db $81 $50 $02 $57 $03 $50 $02 $57 $81 $50 $02 $57 $02 $50 $03 $57
.db $81 $50 $02 $57 $12 $50 $00

; 6th entry of Pointer Table from 1AF87 (indexed by unknown)
; Data from 1B990 to 1B9DC (77 bytes)
_DATA_1B990_:
.db $12 $50 $0D $00 $03 $50 $0D $00 $81 $50 $0F $00 $81 $50 $0F $00
.db $81 $50 $0F $00 $03 $50 $02 $00 $84 $02 $00 $00 $50 $07 $00 $03
.db $50 $02 $00 $84 $02 $00 $00 $50 $07 $00 $03 $50 $05 $00 $02 $50
.db $06 $00 $03 $50 $05 $00 $02 $50 $07 $00 $02 $50 $05 $54 $03 $50
.db $02 $00 $81 $51 $03 $00 $0C $50 $81 $51 $03 $50 $00

; 7th entry of Pointer Table from 1AF87 (indexed by unknown)
; Data from 1B9DD to 1BA65 (137 bytes)
_DATA_1B9DD_:
.db $11 $50 $02 $00 $02 $10 $05 $00 $02 $50 $03 $00 $02 $50 $82 $10
.db $00 $03 $10 $04 $00 $02 $50 $03 $00 $02 $50 $02 $00 $02 $50 $81
.db $10 $03 $00 $81 $10 $02 $50 $03 $00 $02 $50 $82 $00 $10 $03 $50
.db $03 $00 $03 $50 $03 $00 $02 $50 $02 $00 $03 $50 $03 $00 $81 $10
.db $02 $50 $03 $00 $02 $50 $82 $10 $00 $03 $50 $03 $00 $81 $10 $02
.db $50 $03 $00 $02 $50 $02 $00 $02 $50 $81 $10 $03 $00 $03 $50 $03
.db $00 $02 $50 $81 $00 $03 $50 $81 $10 $03 $00 $03 $50 $03 $00 $81
.db $50 $03 $00 $03 $50 $09 $00 $81 $50 $03 $00 $03 $50 $07 $00 $82
.db $52 $00 $0E $50 $81 $51 $02 $50 $00

; 1st entry of Pointer Table from 1AF95 (indexed by unknown)
; Data from 1BA66 to 1BADB (118 bytes)
_DATA_1BA66_:
.db $81 $50 $02 $00 $0E $50 $02 $00 $03 $50 $03 $00 $03 $53 $83 $50
.db $53 $00 $02 $50 $02 $00 $02 $50 $82 $10 $0A $08 $00 $02 $50 $02
.db $00 $84 $10 $00 $00 $10 $08 $00 $02 $50 $05 $00 $03 $50 $03 $00
.db $02 $50 $81 $00 $02 $50 $03 $00 $05 $50 $03 $00 $02 $53 $81 $00
.db $02 $50 $03 $00 $82 $53 $50 $03 $53 $06 $00 $02 $50 $04 $00 $81
.db $10 $04 $00 $81 $50 $04 $00 $02 $50 $04 $00 $81 $10 $0A $00 $81
.db $50 $04 $00 $81 $50 $05 $00 $81 $50 $04 $00 $81 $50 $03 $00 $02
.db $50 $0A $00 $10 $50 $00

; 3rd entry of Pointer Table from 1AF95 (indexed by unknown)
; Data from 1BADC to 1BB39 (94 bytes)
_DATA_1BADC_:
.db $03 $50 $81 $51 $0D $50 $02 $00 $81 $52 $0C $00 $84 $50 $00 $00
.db $52 $02 $00 $02 $10 $08 $00 $81 $50 $02 $00 $08 $50 $02 $5C $04
.db $50 $0E $00 $02 $50 $0E $00 $02 $50 $81 $10 $0C $00 $81 $03 $02
.db $50 $03 $00 $03 $50 $06 $00 $03 $50 $04 $00 $03 $50 $02 $00 $02
.db $50 $02 $00 $03 $50 $04 $00 $03 $50 $02 $00 $02 $50 $02 $00 $03
.db $50 $03 $00 $04 $50 $02 $54 $02 $50 $02 $54 $13 $50 $00

; 4th entry of Pointer Table from 1AF95 (indexed by unknown)
; Data from 1BB3A to 1BB8F (86 bytes)
_DATA_1BB3A_:
.db $0E $50 $83 $51 $50 $00 $04 $10 $09 $00 $82 $52 $50 $0E $00 $81
.db $52 $02 $50 $0E $00 $02 $50 $05 $00 $04 $50 $05 $00 $02 $50 $03
.db $00 $08 $50 $03 $00 $02 $50 $02 $00 $03 $50 $04 $00 $07 $50 $02
.db $00 $03 $50 $04 $00 $07 $50 $06 $00 $81 $50 $06 $00 $82 $10 $00
.db $02 $50 $05 $00 $81 $50 $06 $00 $82 $10 $00 $02 $50 $05 $00 $02
.db $50 $07 $00 $10 $50 $00

; 5th entry of Pointer Table from 1AF95 (indexed by unknown)
; Data from 1BB90 to 1BBBD (46 bytes)
_DATA_1BB90_:
.db $12 $50 $0C $59 $04 $50 $0C $00 $04 $50 $0C $00 $04 $50 $0C $00
.db $04 $50 $0C $00 $04 $50 $0C $00 $04 $50 $0C $00 $02 $50 $0E $00
.db $81 $10 $0F $00 $81 $10 $0F $00 $82 $10 $00 $10 $50 $00

; 6th entry of Pointer Table from 1AF95 (indexed by unknown)
; Data from 1BBBE to 1BC0F (82 bytes)
_DATA_1BBBE_:
.db $0C $50 $81 $51 $07 $50 $81 $0A $02 $00 $02 $50 $03 $10 $83 $52
.db $00 $0A $04 $50 $04 $00 $82 $53 $50 $03 $10 $02 $00 $81 $0A $04
.db $50 $05 $00 $0E $50 $09 $00 $03 $50 $04 $53 $09 $00 $03 $50 $05
.db $00 $81 $50 $07 $00 $03 $50 $07 $00 $02 $50 $04 $00 $81 $50 $09
.db $00 $02 $50 $0D $00 $04 $50 $0C $00 $04 $50 $02 $54 $02 $00 $10
.db $50 $00

; 7th entry of Pointer Table from 1AF95 (indexed by unknown)
; Data from 1BC10 to 1BC52 (67 bytes)
_DATA_1BC10_:
.db $0D $50 $81 $51 $03 $50 $0C $00 $81 $52 $03 $50 $0D $00 $03 $50
.db $0A $00 $06 $50 $09 $00 $07 $50 $08 $00 $08 $50 $08 $00 $04 $10
.db $04 $50 $08 $00 $04 $10 $03 $50 $08 $00 $81 $50 $04 $10 $81 $00
.db $02 $50 $05 $00 $04 $50 $04 $10 $83 $00 $02 $50 $0E $00 $81 $02
.db $11 $50 $00

; 1st entry of Pointer Table from 67B9 (indexed by unknown)
; Pointer Table from 1BC53 to 1BC54 (1 entries, indexed by unknown)
_DATA_1BC53_:
.dw _DATA_1BC55_

; 1st entry of Pointer Table from 1BC53 (indexed by unknown)
; Pointer Table from 1BC55 to 1BC5C (4 entries, indexed by unknown)
_DATA_1BC55_:
.dw _DATA_1BC5D_ _DATA_1BCAF_ _DATA_1BD3B_ _DATA_1BD72_

; 1st entry of Pointer Table from 1BC55 (indexed by unknown)
; Data from 1BC5D to 1BCAE (82 bytes)
_DATA_1BC5D_:
.db $0B $00 $82 $0B $0C $05 $00 $82 $0B $0C $0B $00 $81 $5D $06 $00
.db $82 $0B $0C $07 $00 $81 $5D $0E $00 $82 $5D $6B $0E $00 $82 $5E
.db $6A $09 $00 $03 $0A $02 $00 $82 $5E $6B $0E $00 $82 $5E $6A $04
.db $00 $03 $03 $07 $00 $82 $5D $6B $0E $00 $82 $5E $6A $0E $00 $84
.db $5D $6B $6A $6E $0C $3D $84 $6F $6A $6A $6E $0C $21 $81 $6D $81
.db $6B $00

; 2nd entry of Pointer Table from 1BC55 (indexed by unknown)
; Data from 1BCAF to 1BD3A (140 bytes)
_DATA_1BCAF_:
.db $82 $6B $6C $05 $21 $82 $11 $16 $05 $21 $84 $6F $6A $6A $6E $05
.db $21 $82 $11 $16 $05 $21 $84 $6D $6B $6B $6C $03 $21 $84 $11 $21
.db $21 $16 $05 $21 $84 $6F $6A $6A $6E $03 $21 $82 $16 $21 $02 $11
.db $05 $21 $84 $6D $6B $6B $6C $05 $21 $82 $11 $16 $05 $21 $84 $6F
.db $6A $6A $6E $05 $21 $84 $03 $11 $11 $03 $03 $11 $84 $6D $6B $6B
.db $6C $0C $21 $84 $6F $6A $6A $6E $0C $21 $84 $6D $6B $6B $6C $0C
.db $21 $84 $6F $6A $6A $6E $0C $21 $A2 $6D $6B $6B $6A $73 $71 $73
.db $71 $73 $6C $21 $21 $6F $71 $73 $71 $6B $6A $6A $6B $6A $6B $6A
.db $6B $6A $6E $21 $21 $6D $6B $6A $6B $6A $6B $00

; 3rd entry of Pointer Table from 1BC55 (indexed by unknown)
; Data from 1BD3B to 1BD71 (55 bytes)
_DATA_1BD3B_:
.db $02 $5F $0A $60 $06 $5F $0A $60 $06 $5F $0A $60 $06 $5F $0A $60
.db $06 $5F $0A $60 $06 $5F $0A $60 $06 $5F $0E $60 $02 $5F $0B $60
.db $83 $63 $64 $49 $02 $5F $0B $60 $83 $65 $66 $49 $02 $5F $0B $60
.db $83 $67 $68 $49 $20 $5F $00

; 4th entry of Pointer Table from 1BC55 (indexed by unknown)
; Data from 1BD72 to 1BDB8 (71 bytes)
_DATA_1BD72_:
.db $11 $61 $0E $60 $02 $61 $0E $60 $02 $61 $8B $60 $61 $60 $60 $62
.db $60 $60 $62 $60 $60 $62 $03 $60 $02 $61 $81 $60 $0C $61 $81 $60
.db $02 $61 $0E $60 $81 $61 $0F $60 $81 $61 $0E $60 $02 $61 $0F $60
.db $81 $61 $0F $60 $03 $61 $8D $07 $61 $61 $05 $61 $61 $09 $61 $61
.db $04 $61 $61 $06 $11 $61 $00

; Pointer Table from 1BDB9 to 1BDCC (10 entries, indexed by unknown)
_DATA_1BDB9_:
.dw _DATA_1BDF1_ _DATA_1BDED_ _DATA_1BDE9_ _DATA_1BDE5_ _DATA_1BDE1_ _DATA_1BDDD_ _DATA_1BDD9_ _DATA_1BDD5_
.dw _DATA_1BDD1_ _DATA_1BDCD_

; 10th entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDCD to 1BDD0 (2 entries, indexed by unknown)
_DATA_1BDCD_:
.dw _RAM_CCF4_ _DATA_1BDF5_

; 9th entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDD1 to 1BDD4 (2 entries, indexed by unknown)
_DATA_1BDD1_:
.dw _RAM_CCF8_ _DATA_1BDFD_

; 8th entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDD5 to 1BDD8 (2 entries, indexed by unknown)
_DATA_1BDD5_:
.dw _RAM_CCE0_ _DATA_1BE05_

; 7th entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDD9 to 1BDDC (2 entries, indexed by unknown)
_DATA_1BDD9_:
.dw _RAM_CCF0_ _DATA_1BE0D_

; 6th entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDDD to 1BDE0 (2 entries, indexed by unknown)
_DATA_1BDDD_:
.dw _RAM_CCEC_ _DATA_1BE15_

; 5th entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDE1 to 1BDE4 (2 entries, indexed by unknown)
_DATA_1BDE1_:
.dw _RAM_CCD8_ _DATA_1BE1D_

; 4th entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDE5 to 1BDE8 (2 entries, indexed by unknown)
_DATA_1BDE5_:
.dw _RAM_CCE4_ _DATA_1BE25_

; 3rd entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDE9 to 1BDEC (2 entries, indexed by unknown)
_DATA_1BDE9_:
.dw _RAM_CCDC_ _DATA_1BE2D_

; 2nd entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDED to 1BDF0 (2 entries, indexed by unknown)
_DATA_1BDED_:
.dw _RAM_CCE8_ _DATA_1BE35_

; 1st entry of Pointer Table from 1BDB9 (indexed by unknown)
; Pointer Table from 1BDF1 to 1BDF4 (2 entries, indexed by unknown)
_DATA_1BDF1_:
.dw _RAM_CCD4_ _DATA_1BE3D_

; 2nd entry of Pointer Table from 1BDCD (indexed by unknown)
; Data from 1BDF5 to 1BDFC (8 bytes)
_DATA_1BDF5_:
.db $D1 $28 $D2 $28 $D3 $28 $D4 $28

; 2nd entry of Pointer Table from 1BDD1 (indexed by unknown)
; Data from 1BDFD to 1BE04 (8 bytes)
_DATA_1BDFD_:
.db $D5 $48 $D6 $48 $D7 $48 $D8 $48

; 2nd entry of Pointer Table from 1BDD5 (indexed by unknown)
; Data from 1BE05 to 1BE0C (8 bytes)
_DATA_1BE05_:
.db $D9 $68 $DA $68 $DB $68 $DC $68

; 2nd entry of Pointer Table from 1BDD9 (indexed by unknown)
; Data from 1BE0D to 1BE14 (8 bytes)
_DATA_1BE0D_:
.db $CC $88 $00 $88 $CD $88 $00 $88

; 2nd entry of Pointer Table from 1BDDD (indexed by unknown)
; Data from 1BE15 to 1BE1C (8 bytes)
_DATA_1BE15_:
.db $CE $A8 $CE $AA $CF $A8 $D0 $A8

; 2nd entry of Pointer Table from 1BDE1 (indexed by unknown)
; Data from 1BE1D to 1BE24 (8 bytes)
_DATA_1BE1D_:
.db $EC $08 $ED $08 $EE $08 $EF $08

; 2nd entry of Pointer Table from 1BDE5 (indexed by unknown)
; Data from 1BE25 to 1BE2C (8 bytes)
_DATA_1BE25_:
.db $F0 $08 $F1 $08 $F2 $08 $F3 $08

; 2nd entry of Pointer Table from 1BDE9 (indexed by unknown)
; Data from 1BE2D to 1BE34 (8 bytes)
_DATA_1BE2D_:
.db $DD $E8 $DE $E8 $DF $E8 $DF $EA

; 2nd entry of Pointer Table from 1BDED (indexed by unknown)
; Data from 1BE35 to 1BE3C (8 bytes)
_DATA_1BE35_:
.db $F4 $C8 $F5 $C8 $F6 $C8 $F7 $C8

; 2nd entry of Pointer Table from 1BDF1 (indexed by unknown)
; Data from 1BE3D to 1BE44 (8 bytes)
_DATA_1BE3D_:
.db $F8 $08 $F9 $E8 $FA $08 $FB $E8

; 1st entry of Pointer Table from 1F89 (indexed by v_level)
; Data from 1BE45 to 1BE46 (2 bytes)
_DATA_1BE45_:
.db $94 $CA

; Pointer Table from 1BE47 to 1BE4A (2 entries, indexed by unknown)
.dw _DATA_1BEF9_ _RAM_CA9C_

; Pointer Table from 1BE4B to 1BE50 (3 entries, indexed by unknown)
.dw _DATA_1BED5_ _RAM_CAA4_ _DATA_1BE9F_

; 3rd entry of Pointer Table from 1F89 (indexed by v_level)
; Data from 1BE51 to 1BE52 (2 bytes)
_DATA_1BE51_:
.db $94 $CA

; Pointer Table from 1BE53 to 1BE56 (2 entries, indexed by unknown)
.dw _DATA_1BF1D_ _RAM_CA9C_

; Pointer Table from 1BE57 to 1BE5C (3 entries, indexed by unknown)
.dw _DATA_1BEB1_ _RAM_CAA4_ _DATA_1BF0B_

; 7th entry of Pointer Table from 1F89 (indexed by v_level)
; Data from 1BE5D to 1BE5E (2 bytes)
_DATA_1BE5D_:
.db $94 $CA

; Pointer Table from 1BE5F to 1BE62 (2 entries, indexed by unknown)
.dw _DATA_1BEF9_ _RAM_CA9C_

; Pointer Table from 1BE63 to 1BE68 (3 entries, indexed by unknown)
.dw _DATA_1BEB1_ _RAM_CAA4_ _DATA_1BE8D_

; 9th entry of Pointer Table from 1F89 (indexed by v_level)
; Data from 1BE69 to 1BE6A (2 bytes)
_DATA_1BE69_:
.db $94 $CA

; Pointer Table from 1BE6B to 1BE6E (2 entries, indexed by unknown)
.dw _DATA_1BF1D_ _RAM_CA9C_

; Pointer Table from 1BE6F to 1BE74 (3 entries, indexed by unknown)
.dw _DATA_1BEC3_ _RAM_CAA4_ _DATA_1BE9F_

; 11th entry of Pointer Table from 1F89 (indexed by v_level)
; Data from 1BE75 to 1BE76 (2 bytes)
_DATA_1BE75_:
.db $94 $CA

; Pointer Table from 1BE77 to 1BE7A (2 entries, indexed by unknown)
.dw _DATA_1BEB1_ _RAM_CA9C_

; Pointer Table from 1BE7B to 1BE80 (3 entries, indexed by unknown)
.dw _DATA_1BEC3_ _RAM_CAA4_ _DATA_1BF0B_

; 15th entry of Pointer Table from 1F89 (indexed by v_level)
; Data from 1BE81 to 1BE82 (2 bytes)
_DATA_1BE81_:
.db $94 $CA

; Pointer Table from 1BE83 to 1BE86 (2 entries, indexed by unknown)
.dw _DATA_1BEF9_ _RAM_CA9C_

; Pointer Table from 1BE87 to 1BE8C (3 entries, indexed by unknown)
.dw _DATA_1BED5_ _RAM_CAA4_ _DATA_1BE8D_

; 3rd entry of Pointer Table from 1BE63 (indexed by unknown)
; Data from 1BE8D to 1BE9E (18 bytes)
_DATA_1BE8D_:
.db $C1 $00 $C2 $00 $C0 $00 $00 $00 $90 $48 $00 $00 $00 $00 $91 $48
.db $00 $00

; 3rd entry of Pointer Table from 1BE4B (indexed by unknown)
; Data from 1BE9F to 1BEB0 (18 bytes)
_DATA_1BE9F_:
.db $C1 $00 $C0 $00 $C0 $00 $00 $00 $92 $48 $92 $4A $00 $00 $93 $48
.db $94 $48

; 1st entry of Pointer Table from 1BE77 (indexed by unknown)
; Data from 1BEB1 to 1BEC2 (18 bytes)
_DATA_1BEB1_:
.db $C1 $00 $C0 $00 $C0 $00 $00 $00 $95 $48 $96 $48 $00 $00 $97 $48
.db $98 $48

; 1st entry of Pointer Table from 1BE6F (indexed by unknown)
; Data from 1BEC3 to 1BED4 (18 bytes)
_DATA_1BEC3_:
.db $C1 $00 $C2 $00 $C0 $00 $00 $00 $99 $48 $9A $48 $00 $00 $9B $48
.db $9C $48

; 1st entry of Pointer Table from 1BE4B (indexed by unknown)
; Data from 1BED5 to 1BEF8 (36 bytes)
_DATA_1BED5_:
.db $C1 $00 $C0 $00 $C0 $00 $00 $00 $A1 $48 $A2 $48 $00 $00 $A3 $48
.db $A3 $4A $C1 $00 $C0 $00 $C0 $00 $00 $00 $9D $48 $9E $48 $00 $00
.db $9F $48 $A0 $48

; 1st entry of Pointer Table from 1BE47 (indexed by unknown)
; Data from 1BEF9 to 1BF0A (18 bytes)
_DATA_1BEF9_:
.db $C2 $00 $C0 $00 $C0 $00 $00 $00 $A4 $48 $A5 $48 $00 $00 $A6 $48
.db $A7 $48

; 3rd entry of Pointer Table from 1BE57 (indexed by unknown)
; Data from 1BF0B to 1BF1C (18 bytes)
_DATA_1BF0B_:
.db $C5 $00 $C0 $00 $C0 $00 $00 $00 $A8 $48 $A9 $48 $00 $00 $AA $48
.db $AB $48

; 1st entry of Pointer Table from 1BE53 (indexed by unknown)
; Data from 1BF1D to 1BF50 (52 bytes)
_DATA_1BF1D_:
.db $C2 $00 $C0 $00 $C0 $00 $00 $00 $AC $48 $AD $48 $00 $00 $AE $48
.db $AF $48 $51 $BF $51 $BF $60 $BF $60 $BF $60 $BF $60 $BF $6F $BF
.db $6F $BF $7E $BF $7E $BF $8D $BF $8D $BF $8D $BF $8D $BF $9C $BF
.db $9C $BF $9C $BF

; 1st entry of Pointer Table from 1FAB (indexed by v_level)
; Data from 1BF51 to 1BF51 (1 bytes)
_DATA_1BF51_:
.db $07

; Pointer Table from 1BF52 to 1BF59 (4 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D506_ _DATA_19CD7_

; Data from 1BF5A to 1BF5F (6 bytes)
.db $CA $02 $DA $D7 $A4 $CA

; 3rd entry of Pointer Table from 1FAB (indexed by v_level)
; Data from 1BF60 to 1BF60 (1 bytes)
_DATA_1BF60_:
.db $09

; Pointer Table from 1BF61 to 1BF6E (7 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D503_ _DATA_19CD7_ _DATA_8CA_ _RAM_D7DA_ _RAM_CAA4_

; 7th entry of Pointer Table from 1FAB (indexed by v_level)
; Data from 1BF6F to 1BF6F (1 bytes)
_DATA_1BF6F_:
.db $07

; Pointer Table from 1BF70 to 1BF77 (4 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D503_ _DATA_19CD7_

; Data from 1BF78 to 1BF7D (6 bytes)
.db $CA $01 $DA $D7 $A4 $CA

; 9th entry of Pointer Table from 1FAB (indexed by v_level)
; Data from 1BF7E to 1BF7E (1 bytes)
_DATA_1BF7E_:
.db $09

; Pointer Table from 1BF7F to 1BF86 (4 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D504_ _DATA_19CD7_

; Data from 1BF87 to 1BF8C (6 bytes)
.db $CA $02 $DA $D7 $A4 $CA

; 11th entry of Pointer Table from 1FAB (indexed by v_level)
; Data from 1BF8D to 1BF8D (1 bytes)
_DATA_1BF8D_:
.db $03

; Pointer Table from 1BF8E to 1BF9B (7 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D504_ _DATA_19CD7_ _DATA_8CA_ _RAM_D7DA_ _RAM_CAA4_

; 15th entry of Pointer Table from 1FAB (indexed by v_level)
; Data from 1BF9C to 1BF9C (1 bytes)
_DATA_1BF9C_:
.db $07

; Pointer Table from 1BF9D to 1BFA4 (4 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D506_ _DATA_19CD7_

; Data from 1BFA5 to 1BFFF (91 bytes)
.db $CA $01 $DA $D7 $A4 $CA
.dsb 85, $FF

.BANK 7
.ORG $0000

; Data from 1C000 to 1C068 (105 bytes)
_DATA_1C000_:
.db $90 $07 $0C $18 $18 $0C $46 $66 $3C $00 $80 $80 $38 $61 $C3 $CB
.db $71 $03 $00 $85 $E6 $93 $12 $24 $CC $03 $00 $85 $CE $12 $3C $30
.db $1E $00 $90 $F8 $F3 $E7 $E7 $F3 $B9 $99 $C3 $FF $7F $7F $C7 $9E
.db $3C $34 $8E $03 $FF $85 $19 $6C $ED $DB $33 $03 $FF $85 $31 $ED
.db $C3 $CF $E1 $00 $90 $F8 $F3 $E7 $E7 $F3 $B9 $99 $C3 $FF $7F $7F
.db $C7 $9E $3C $34 $8E $03 $FF $85 $19 $6C $ED $DB $33 $03 $FF $85
.db $31 $ED $C3 $CF $E1 $00 $20 $00 $00

; Data from 1C069 to 1C168 (256 bytes)
_DATA_1C069_:
.db $00 $00 $00 $00 $00 $1F $1F $00 $1F $20 $20 $00 $3F $4F $40 $00
.db $3F $5F $40 $00 $3F $57 $40 $00 $77 $DF $88 $00 $7F $DF $80 $00
.db $00 $00 $00 $00 $00 $C0 $C0 $00 $C0 $20 $20 $00 $E0 $90 $10 $00
.db $E0 $D0 $10 $00 $E0 $50 $10 $00 $70 $D8 $88 $00 $F0 $D8 $08 $00
.db $3F $57 $40 $00 $3F $40 $40 $00 $3F $4F $40 $00 $1F $27 $20 $00
.db $1F $20 $20 $00 $15 $2A $2A $00 $25 $7A $5A $00 $7A $FF $85 $00
.db $E0 $50 $10 $00 $E0 $10 $10 $00 $E0 $90 $10 $00 $C0 $20 $20 $00
.db $C0 $20 $20 $00 $40 $A0 $A0 $00 $20 $F0 $D0 $00 $F0 $F8 $08 $00
.db $6F $FF $90 $00 $73 $FF $8C $00 $3D $7F $42 $00 $1D $7F $62 $01
.db $5D $FF $A2 $41 $62 $FF $9D $60 $36 $FF $C9 $30 $00 $7F $7F $00
.db $EC $FE $12 $00 $9C $FE $62 $00 $78 $FC $84 $00 $70 $FC $8C $00
.db $74 $FE $8A $04 $8C $FE $72 $0C $D8 $FE $26 $18 $00 $FC $FC $00
.db $3F $57 $40 $00 $3F $40 $40 $00 $38 $4F $47 $07 $18 $2F $27 $07
.db $1F $27 $20 $00 $15 $2A $2A $00 $25 $7A $5A $00 $7A $FF $85 $00
.db $E0 $50 $10 $00 $E0 $10 $10 $00 $E0 $90 $10 $00 $C0 $A0 $20 $00
.db $C0 $20 $20 $00 $40 $A0 $A0 $00 $20 $F0 $D0 $00 $F0 $F8 $08 $00

; Data from 1C169 to 1C1E8 (128 bytes)
_DATA_1C169_:
.db $00 $00 $00 $00 $00 $C7 $C7 $00 $47 $B8 $B8 $00 $7F $80 $80 $00
.db $5B $A4 $A4 $00 $5B $A4 $A4 $00 $5F $A0 $A0 $00 $7B $84 $84 $00
.db $00 $F8 $F8 $00 $F8 $06 $06 $00 $EE $11 $13 $02 $6E $91 $91 $00
.db $7E $81 $83 $02 $EE $11 $11 $00 $6E $91 $93 $02 $6E $91 $91 $00
.db $5B $A4 $A4 $00 $7F $80 $80 $00 $5B $A4 $A4 $00 $5B $A4 $A4 $00
.db $5F $A0 $A0 $00 $7F $80 $80 $00 $38 $47 $47 $00 $00 $38 $38 $00
.db $7E $81 $83 $02 $EE $11 $11 $00 $7E $81 $83 $02 $7E $81 $81 $00
.db $F2 $0D $0F $02 $04 $FF $FB $00 $04 $0F $0B $00 $00 $0E $0E $00

; Data from 1C1E9 to 1C268 (128 bytes)
_DATA_1C1E9_:
.db $0E $01 $0F $0E $37 $08 $3F $37 $5D $22 $7F $5D $77 $1C $63 $6B
.db $A2 $5D $E3 $BE $F7 $1C $E3 $EB $DD $22 $FF $DD $77 $88 $FF $77
.db $30 $0C $3C $30 $6C $92 $FE $6C $EE $11 $EF $FE $82 $7D $C7 $BA
.db $C6 $39 $C7 $FE $92 $6D $D7 $BA $FE $01 $FF $FE $6A $95 $FF $6A
.db $47 $B8 $C7 $7F $B9 $46 $FB $BD $C7 $38 $E7 $DF $B9 $46 $BB $FD
.db $C7 $38 $CF $F7 $B9 $46 $FB $BD $7C $83 $FF $7C $00 $7C $7C $00
.db $FE $01 $FF $FE $4A $B5 $CF $7A $E6 $19 $E7 $FE $66 $99 $E7 $7E
.db $E4 $1A $E6 $FC $4C $B2 $CE $7C $18 $64 $7C $18 $00 $18 $18 $00

; Data from 1C269 to 1C3A8 (320 bytes)
_DATA_1C269_:
.dsb 9, $00
.db $DB $DB $00 $1B $FF $A4 $00 $3F $C5 $BA $00 $7F $B2 $CD $00 $4F
.db $F9 $B6 $00 $4F $FA $B5
.dsb 10, $00
.db $60 $60 $00 $00 $E0 $A0 $00 $80 $60 $A0 $00 $C0 $A0 $60 $00 $80
.db $60 $A0 $00 $C0 $A0 $60 $00 $00 $DB $DB $00 $5A $A5 $FF $00 $6E
.db $B1 $CF $10 $3A $CD $B3 $00 $6E $B1 $CF $10 $3A $CD $B3 $00 $6E
.db $B1 $CF $10 $3A $CD $B3 $00 $02 $07 $05 $00 $03 $07 $04 $00 $00
.db $37 $37 $00 $33 $CC $FF $00 $FF $33 $CC $00 $FF $CC $33 $00 $FF
.db $33 $CC $00 $FF $CC $33 $00 $7C $CB $B5 $00 $FE $D5 $2B $00 $CC
.db $BB $77 $00 $32 $CD $FF $00 $FE $33 $CD $00 $FE $CD $33 $00 $FE
.db $33 $CD $00 $FE $CD $33 $00 $00 $B6 $B6 $00 $B4 $4A $FE $00 $EC
.db $1A $E6 $10 $B8 $66 $9A $00 $EC $1A $E6 $10 $B8 $66 $9A $00 $EC
.db $1A $E6 $10 $B8 $66 $9A $00 $6E $B1 $CF $10 $3A $CD $B3 $00 $6E
.db $B1 $CF $10 $3A $CD $B3 $00 $6E $B1 $CF $10 $3A $CD $B3 $00 $6E
.db $B1 $CF $10 $00 $FF $FF $00 $F8 $37 $CF $00 $F0 $CF $38 $07 $E0
.db $3F $D7 $08 $C0 $F8 $28 $10 $C0 $38 $E8 $10 $C0 $F8 $28 $10 $C0
.db $38 $E8 $10 $00 $F8 $F8 $00 $3E $F3 $CD $00 $1E $ED $33 $C0 $0E
.db $F3 $DD $20 $06 $3D $2B $10 $06 $3B $2D $10 $06 $3D $2B $10 $06
.db $3F $29 $10 $00 $3F $3F $00 $EC $1A $E6 $10 $B8 $66 $9A $00 $EC
.db $1A $E6 $10 $B8 $66 $9A $00 $EC $1A $E6 $10 $B8 $66 $9A $00 $EC
.db $1A $E6 $10 $00 $FE $FE $00

; Data from 1C3A9 to 1C3C8 (32 bytes)
_DATA_1C3A9_:
.db $39 $07 $00 $06 $6C $1E $02 $12 $58 $3C $04 $24 $98 $7C $04 $64
.db $98 $7C $04 $64 $58 $3C $04 $24 $6C $1E $02 $12 $39 $07 $00 $06

; Data from 1C3C9 to 1C448 (128 bytes)
_DATA_1C3C9_:
.db $00 $03 $03 $00 $03 $0F $0F $00 $0C $1C $1F $03 $11 $30 $3C $0E
.db $26 $60 $70 $19 $28 $60 $70 $17 $48 $C1 $E1 $37 $50 $C7 $E7 $2F
.db $00 $C0 $C0 $00 $C0 $F0 $F0 $00 $30 $38 $F8 $C0 $88 $0C $3C $70
.db $04 $86 $8E $F8 $04 $86 $8E $F8 $02 $C3 $C7 $FC $02 $F3 $F7 $FC
.db $50 $C1 $E1 $2F $50 $C3 $E3 $2F $20 $62 $72 $1F $20 $60 $70 $1F
.db $10 $30 $3C $0F $0C $1C $1F $03 $03 $0F $0F $00 $00 $03 $03 $00
.db $02 $C3 $C7 $FC $02 $63 $67 $FC $04 $26 $2E $F8 $04 $06 $0E $F8
.db $08 $0C $3C $F0 $30 $38 $F8 $C0 $C0 $F0 $F0 $00 $00 $C0 $C0 $00

; Data from 1C449 to 1C4C8 (128 bytes)
_DATA_1C449_:
.db $00 $01 $01 $00 $01 $02 $02 $00 $02 $1C $1C $01 $1E $3E $20 $01
.db $25 $7F $40 $1A $49 $FF $80 $36 $49 $FF $80 $36 $49 $FF $80 $36
.db $00 $80 $80 $00 $80 $40 $40 $00 $00 $38 $38 $C0 $78 $7C $04 $80
.db $A4 $FE $02 $58 $92 $FF $01 $6C $92 $FF $01 $6C $92 $FF $01 $6C
.db $49 $FF $80 $36 $48 $FF $81 $37 $29 $7E $42 $16 $28 $7E $42 $17
.db $1E $21 $3F $01 $1F $3F $20 $00 $1F $20 $3F $00 $00 $3F $3F $00
.db $92 $FF $01 $6C $12 $FF $81 $EC $14 $7E $42 $E8 $14 $7E $42 $E8
.db $78 $84 $FC $80 $F8 $FC $04 $00 $F8 $04 $FC $00 $00 $FC $FC $00

; Data from 1C4C9 to 1C528 (96 bytes)
_DATA_1C4C9_:
.db $07 $00 $00 $00 $18 $00 $00 $00 $20 $00 $00 $00 $40 $00 $00 $00
.db $40 $00 $00 $00 $80 $00 $00 $00 $80 $00 $00 $00 $80 $00 $00 $00
.db $E0 $00 $00 $00 $18 $00 $00 $00 $04 $00 $00 $00 $02 $00 $00 $00
.db $02 $00 $00 $00 $01 $00 $00 $00 $01 $00 $00 $00 $01 $00 $00 $00
.db $80 $00 $00 $00 $80 $00 $00 $00 $80 $00 $00 $00 $80 $00 $00 $00
.db $80 $00 $00 $00 $80 $00 $00 $00 $80 $00 $00 $00 $80 $00 $00 $00

; Data from 1C529 to 1C568 (64 bytes)
_DATA_1C529_:
.db $00 $00 $00 $00 $00 $38 $00 $00 $38 $7C $00 $00 $44 $FE $00 $38
.db $44 $FE $00 $38 $2C $7E $00 $10 $30 $7C $00 $00 $00 $30 $00 $00
.db $00 $30 $00 $00 $30 $7C $00 $00 $4C $FE $00 $30 $44 $FE $00 $38
.db $48 $FC $00 $30 $30 $78 $00 $00 $00 $30 $00 $00 $00 $00 $00 $00

; Data from 1C569 to 1C5A8 (64 bytes)
_DATA_1C569_:
.db $00 $00 $00 $00 $38 $38 $38 $00 $44 $44 $7C $38 $82 $82 $C6 $7C
.db $82 $82 $C6 $7C $42 $42 $6E $3C $4C $4C $7C $30 $30 $30 $30 $00
.db $30 $30 $30 $00 $4C $4C $7C $30 $82 $82 $CE $7C $82 $82 $C6 $7C
.db $84 $84 $CC $78 $48 $48 $78 $30 $30 $30 $30 $00 $00 $00 $00 $00

; Data from 1C5A9 to 1C5E8 (64 bytes)
_DATA_1C5A9_:
.db $00 $00 $00 $00 $38 $38 $00 $38 $7C $44 $00 $7C $C6 $BA $00 $FE
.db $C6 $BA $00 $FE $6E $52 $00 $7E $7C $4C $00 $7C $30 $30 $00 $30
.db $30 $30 $00 $30 $7C $4C $00 $7C $CE $B2 $00 $FE $C6 $BA $00 $FE
.db $CC $B4 $00 $FC $78 $48 $00 $78 $30 $30 $00 $30 $00 $00 $00 $00

; Data from 1C5E9 to 1C628 (64 bytes)
_DATA_1C5E9_:
.db $00 $00 $00 $00 $00 $38 $00 $00 $38 $6C $00 $10 $6C $D6 $00 $38
.db $6C $DA $00 $34 $3C $6E $00 $10 $30 $5C $00 $20 $00 $30 $00 $00
.db $00 $30 $00 $00 $30 $7C $00 $00 $7C $CA $00 $34 $4C $B6 $00 $78
.db $78 $DC $00 $20 $30 $68 $08 $10 $00 $30 $00 $00 $00 $00 $00 $00

; Data from 1C629 to 1C7E8 (448 bytes)
_DATA_1C629_:
.db $00 $07 $07 $00 $06 $1F $18 $07 $1A $3F $20 $1F $38 $7F $41 $3F
.db $37 $7F $40 $3F $7F $FF $80 $7F $7F $FF $80 $6D $77 $F9 $88 $20
.db $00 $E0 $E0 $00 $60 $F8 $18 $E0 $58 $FC $04 $F8 $1C $FE $82 $FC
.db $EC $FE $02 $FC $FE $FF $01 $FE $FE $FF $01 $B6 $EE $9F $11 $04
.db $69 $F7 $96 $20 $7B $F5 $84 $20 $7F $FF $80 $20 $7E $FF $81 $61
.db $67 $FF $98 $60 $6F $F2 $90 $60 $50 $E1 $A1 $4F $3A $71 $41 $05
.db $96 $EF $69 $04 $DE $AF $21 $04 $FE $FF $01 $04 $7E $FF $81 $86
.db $E6 $FF $19 $06 $F6 $4F $09 $06 $0A $87 $85 $F2 $5C $8E $82 $A0
.db $33 $78 $48 $04 $70 $FC $8C $03 $10 $70 $60 $0F $00 $20 $20 $1F
.db $00 $20 $20 $1F $00 $40 $40 $3F $3F $40 $40 $00 $00 $7F $7F $00
.db $CC $1E $12 $20 $0E $3F $31 $C0 $08 $0E $06 $F0 $00 $04 $04 $F8
.db $00 $04 $04 $F8 $00 $02 $02 $FC $FC $02 $02 $00 $00 $FE $FE $00
.db $69 $F7 $96 $20 $7B $F5 $84 $20 $7E $FE $81 $20 $7E $FF $81 $61
.db $66 $FE $99 $60 $6F $F3 $90 $60 $50 $E1 $A1 $4F $3A $71 $41 $05
.db $96 $EF $69 $04 $DE $AF $21 $04 $7E $7F $81 $04 $7E $FF $81 $86
.db $66 $7F $99 $06 $F6 $CF $09 $06 $0A $87 $85 $F2 $5C $8E $82 $A0
.db $00 $07 $07 $00 $07 $18 $19 $01 $1F $20 $25 $05 $3F $40 $57 $17
.db $3F $40 $48 $08 $7F $80 $92 $12 $7F $80 $AD $2D $7F $80 $E8 $68
.db $00 $E0 $E0 $00 $E0 $18 $98 $80 $F8 $04 $A4 $A0 $FC $02 $E2 $E0
.db $FC $02 $12 $10 $FE $01 $49 $48 $FE $01 $B5 $B4 $FE $01 $17 $16
.db $7F $80 $B6 $36 $7F $80 $A5 $25 $7F $80 $A8 $28 $7F $80 $E1 $61
.db $7F $80 $B0 $30 $6F $90 $BD $2D $5F $A0 $E2 $42 $3F $40 $52 $12
.db $FE $01 $6D $6C $FE $01 $25 $24 $FE $01 $05 $04 $FE $01 $97 $96
.db $FE $01 $0D $0C $F6 $09 $BD $B4 $FA $05 $47 $42 $FC $02 $4A $48
.db $3F $40 $4B $0B $7F $80 $8C $0C $1F $60 $70 $10 $1F $20 $24 $04
.db $1F $20 $20 $00 $3F $40 $7F $3F $3F $40 $40 $00 $00 $7F $7F $00
.db $FC $02 $D2 $D0 $FE $01 $31 $30 $F8 $06 $8E $88 $F8 $04 $04 $00
.db $F8 $04 $24 $20 $FC $02 $FE $FC $FC $02 $02 $00 $00 $FE $FE $00

; Data from 1C7E9 to 1CA08 (544 bytes)
_DATA_1C7E9_:
.db $00 $3C $00 $3C $3C $42 $00 $42 $5A $A5 $00 $A5 $7E $81 $00 $81
.db $7E $81 $00 $81 $5A $A5 $00 $A5 $3C $42 $00 $42 $00 $3C $00 $3C
.db $00 $03 $00 $03 $03 $04 $00 $04 $07 $38 $00 $38 $3B $44 $00 $44
.db $3D $42 $00 $42 $7D $82 $00 $82 $7F $80 $00 $80 $7F $80 $00 $80
.db $00 $E0 $00 $E0 $E0 $18 $00 $18 $98 $66 $00 $66 $7E $81 $00 $81
.db $FE $01 $00 $01 $FE $01 $00 $01 $FE $01 $00 $01 $EC $12 $00 $12
.db $3B $44 $00 $44 $47 $B8 $00 $B8 $7F $80 $00 $80 $7B $84 $00 $84
.db $3C $43 $00 $43 $3F $40 $00 $40 $0F $30 $00 $30 $00 $0F $00 $0F
.db $F0 $0E $00 $0E $FE $01 $00 $01 $FE $01 $00 $01 $BE $41 $00 $41
.db $7E $81 $00 $81 $7C $82 $00 $82 $38 $C6 $00 $C6 $00 $3C $00 $3C
.db $00 $00 $00 $00 $00 $03 $00 $03 $03 $1C $00 $1C $1D $22 $00 $22
.db $3E $41 $00 $41 $3E $41 $00 $41 $7F $80 $00 $80 $7F $80 $00 $80
.db $00 $E0 $00 $E0 $E0 $17 $00 $17 $F7 $08 $00 $08 $EF $10 $00 $10
.db $DF $20 $00 $20 $DF $20 $00 $20 $DF $20 $00 $20 $EF $10 $00 $10
.db $00 $00 $00 $00 $00 $80 $00 $80 $80 $60 $00 $60 $E0 $10 $00 $10
.db $E0 $10 $00 $10 $F0 $08 $00 $08 $E0 $18 $00 $18 $80 $7C $00 $7C
.db $3F $40 $00 $40 $1F $20 $00 $20 $1F $20 $00 $20 $03 $1C $00 $1C
.db $1D $22 $00 $22 $3F $40 $00 $40 $3E $41 $00 $41 $7E $81 $00 $81
.db $FF $00 $00 $00 $FF $00 $00 $00 $FF $00 $00 $00 $FF $00 $00 $00
.db $BF $40 $00 $40 $7F $80 $00 $80 $FF $00 $00 $00 $FF $00 $00 $00
.db $BC $42 $00 $42 $BE $41 $00 $41 $FE $01 $00 $01 $FE $01 $00 $01
.db $FC $02 $00 $02 $FC $02 $00 $02 $E0 $1C $00 $1C $FC $02 $00 $02
.db $7E $81 $00 $81 $7F $80 $00 $80 $7F $80 $00 $80 $3F $40 $00 $40
.db $27 $58 $00 $58 $1F $20 $00 $20 $3E $41 $00 $41 $39 $46 $00 $46
.db $FF $00 $00 $00 $7E $81 $00 $81 $7F $80 $00 $80 $BF $40 $00 $40
.db $FF $00 $00 $00 $FF $00 $00 $00 $7E $81 $00 $81 $FF $00 $00 $00
.db $FC $02 $00 $02 $FE $01 $00 $01 $7E $81 $00 $81 $7E $81 $00 $81
.db $6E $91 $00 $91 $6E $91 $00 $91 $F6 $09 $00 $09 $F8 $06 $00 $06
.db $6F $90 $00 $90 $5F $A0 $00 $A0 $5F $A0 $00 $A0 $1F $60 $00 $60
.db $1F $60 $00 $60 $0F $30 $00 $30 $01 $0E $00 $0E $00 $01 $00 $01
.db $FF $00 $00 $00 $F7 $08 $00 $08 $FB $04 $00 $04 $FD $02 $00 $02
.db $FD $02 $00 $02 $FD $02 $00 $02 $F0 $0D $00 $0D $00 $F0 $00 $F0
.db $F8 $04 $00 $04 $F8 $04 $00 $04 $F8 $04 $00 $04 $F0 $08 $00 $08
.db $F0 $08 $00 $08 $C0 $30 $00 $30 $00 $C0 $00 $C0 $00 $00 $00 $00

; Data from 1CA09 to 1CB88 (384 bytes)
_DATA_1CA09_:
.db $00 $00 $00 $00 $00 $0F $0F $00 $0F $3F $3F $0F $39 $7F $79 $3F
.db $71 $FF $FD $7F $73 $FF $F7 $7F $01 $FF $FF $01 $AB $57 $57 $53
.db $00 $0F $0F $00 $0F $C3 $C3 $03 $C7 $EF $EF $C7 $0F $DF $DF $0F
.db $DF $FF $FF $DF $FE $FF $FF $FE $F0 $FF $FF $F0 $FF $FF $FF $FF
.db $00 $F0 $F0 $00 $F0 $F8 $F8 $F0 $F8 $FC $FC $F8 $FC $FE $FE $FC
.db $C6 $FF $FF $C6 $00 $C6 $C6 $00 $00 $80 $80 $00 $80 $E0 $E0 $80
.db $19 $FF $FF $D9 $A1 $7B $7B $21 $00 $61 $61 $00 $00 $03 $03 $00
.db $00 $07 $04 $03 $00 $0F $0B $04 $00 $04 $04 $00 $00 $00 $00 $00
.dsb 12, $FF
.db $3E $FF $FF $3E $00 $FE $5E $A0 $00 $F8 $88 $70 $00 $7C $74 $08
.db $00 $08 $08 $00 $80 $D0 $D0 $80 $D0 $F8 $F8 $D0 $F8 $FC $FC $F8
.db $10 $F8 $F8 $10 $00 $10 $10
.dsb 14, $00
.db $0F $0F $00 $0F $3F $3F $0F $31 $7F $75 $3F $71 $FF $FD $7F $73
.db $FF $F3 $7F $01 $FF $FF $01 $AB $57 $57 $53 $02 $3F $3F $3A $00
.db $C0 $C0 $00 $C0 $E0 $E0 $C0 $00 $C7 $C7 $00 $C7 $FF $FF $C7 $F2
.db $FF $FF $F2 $FD $F3 $F3 $F1 $F3 $FF $FF $F3 $FF $FF $FF $FF $00
.db $0C $0C $00 $0C $7F $7F $0C $70 $FC $FC $70 $80 $F0 $F0 $80 $00
.db $80 $80 $00 $00 $80 $80 $00 $80 $E4 $E4 $80 $E4 $FE $FE $E4 $07
.db $FF $FF $C7 $47 $2F $2F $07 $01 $07 $07 $01 $00 $01 $01 $00 $00
.db $01 $01 $00 $00 $07 $06 $01 $00 $0F $09 $06 $00 $06 $06 $00 $FF
.db $FF $FF $FF $FE $FF $FF $FE $F0 $FE $FE $F0 $00 $F0 $B0 $40 $00
.db $F8 $88 $70 $00 $F8 $68 $90 $00 $90 $90 $00 $00 $00 $00 $00 $F0
.db $F8 $F8 $F0 $20 $F0 $F0 $20 $00 $20 $20
.dsb 21, $00

; Data from 1CB89 to 1CDC8 (576 bytes)
_DATA_1CB89_:
.db $00 $01 $01 $00 $01 $7F $7E $01 $5F $A7 $A0 $07 $1F $EF $E0 $0F
.db $7E $8F $81 $0E $7F $9F $80 $1F $3F $5E $40 $1F $1F $38 $20 $1F
.db $00 $F0 $F0 $00 $F0 $FF $0F $F0 $FF $FC $00 $FC $FF $FE $00 $FE
.db $EF $FE $10 $EE $FF $FF $00 $FF $FF $0F $00 $FF $FF $03 $00 $FF
.db $00 $00 $00 $00 $00 $C0 $C0 $00 $40 $A0 $A0 $00 $00 $E0 $E0 $00
.db $C0 $20 $20 $00 $C0 $20 $20 $00 $80 $40 $40 $00 $00 $80 $80 $00
.db $07 $18 $18 $0F $06 $39 $39 $1E $21 $5E $7E $3D $04 $7B $7F $3F
.db $4C $F7 $BB $7F $5C $AB $F7 $7F $76 $DD $AB $77 $76 $AB $DC $77
.db $07 $F8 $F8 $07 $FB $04 $04 $FB $8C $73 $73 $FD $01 $FE $DF $FF
.db $01 $FF $8E $FF $01 $FE $8F $FF $03 $FD $06 $FF $03 $FE $01 $FF
.db $00 $C0 $C0 $80 $00 $E0 $E0 $C0 $20 $D0 $F0 $E0 $00 $F0 $F0 $E0
.db $90 $78 $E8 $F0 $80 $F8 $08 $F0 $00 $F8 $08 $F0 $00 $F8 $48 $B0
.db $72 $DD $AE $73 $23 $FE $85 $7B $01 $FF $82 $7D $01 $FE $8F $71
.db $01 $FB $AA $51 $03 $56 $55 $03 $03 $05 $06 $03 $07 $0A $0D $07
.db $02 $FD $03 $FE $06 $FB $05 $FE $04 $FE $02 $FC $8E $FB $05 $FE
.db $FE $55 $AB $FE $DF $AA $75 $DF $DF $75 $AA $DF $DF $AA $75 $DF
.db $00 $B8 $A8 $10 $00 $10 $10
.dsb 14, $00
.db $80 $80 $00 $00 $80 $80 $00 $00 $80 $80 $00 $78 $D5 $AD $78 $78
.db $AD $D5 $78 $38 $54 $6C $38 $10 $6C $54 $38 $00 $FE $82 $7C $00
.db $FE $82 $7C $00 $FE $AA $54 $00 $54 $54 $00 $E0 $58 $A8 $F0 $00
.db $F0 $50 $A0 $00 $A0 $A0
.dsb 21, $00
.db $07 $18 $18 $0F $06 $39 $39 $1E $21 $5E $7E $3D $04 $7B $7F $3F
.db $4C $F7 $BB $7F $0C $FB $87 $7F $06 $FD $83 $7F $06 $FB $94 $6F
.db $00 $C0 $C0 $80 $00 $E0 $E0 $C0 $20 $D0 $F0 $E0 $00 $F0 $F0 $E0
.db $90 $78 $E8 $F0 $D0 $A8 $78 $F0 $70 $D8 $A8 $70 $70 $A8 $D8 $70
.db $02 $ED $AE $43 $03 $46 $45 $03 $01 $03 $02 $01 $03 $06 $05 $03
.db $03 $05 $06 $03 $07 $0A $0D $07 $07 $0D $0A $07 $07 $0A $0D $07
.db $02 $FD $03 $FE $06 $FB $05 $FE $04 $FF $02 $FD $8C $FB $07 $FC
.db $FC $56 $AA $FC $DE $AB $75 $DE $DE $75 $AB $DE $DF $AA $75 $DF
.db $70 $D8 $A8 $70 $20 $F8 $08 $F0 $00 $F8 $08 $F0 $00 $F8 $88 $70
.db $00 $F8 $A8 $50 $00 $50 $50 $00 $00 $00 $00 $00 $00 $80 $80 $00
.db $38 $D5 $AD $78 $00 $7D $55 $28 $00 $29 $29 $00 $00 $01 $01 $00
.db $00 $03 $02 $01 $00 $03 $02 $01 $00 $03 $02 $01 $00 $01 $01 $00
.db $F0 $58 $A8 $F0 $F0 $A8 $58 $F0 $E0 $50 $B0 $E0 $40 $B0 $50 $E0
.db $00 $F8 $08 $F0 $00 $F8 $08 $F0 $00 $F8 $A8 $50 $00 $50 $50 $00

; Data from 1CDC9 to 1CE08 (64 bytes)
_DATA_1CDC9_:
.db $06 $00 $00 $00 $64 $00 $00 $02 $E0 $00 $00 $10 $EC $00 $00 $10
.db $1C $00 $00 $62 $1C $00 $00 $02 $40 $00 $00 $0C $00 $00 $00 $00
.db $60 $00 $00 $00 $E6 $00 $00 $10 $E4 $00 $00 $12 $00 $00 $00 $60
.db $06 $00 $00 $00 $2E $00 $00 $01 $0E $00 $00 $01 $00 $00 $00 $06

; Data from 1CE09 to 1CEC8 (192 bytes)
_DATA_1CE09_:
.dsb 9, $00
.db $30 $30 $00 $00 $78 $78 $30 $00 $FC $FC $78 $00 $FC $FC $48 $08
.db $54 $5C $00 $00 $1C $1C $08 $00 $1F $1F $00 $01 $3E $3F $1E $30
.db $4F $4F $0F $10 $EF $EF $4F $05 $FA $FF $7A $42 $3D $7F $00 $3E
.db $00 $3E $00 $40 $00 $40 $00 $00 $07 $07 $02 $02 $ED $EF $04 $A4
.db $5B $FF $42 $94 $6B $FF $6A $B4 $4A $FE $48 $92 $6C $FE $00 $49
.db $00 $49 $00 $08 $00 $08
.dsb 14, $00
.db $30 $30 $00 $00 $78 $78 $30 $08 $F4 $FC $70 $00 $FC $FC $48 $04
.db $7A $7E $20 $00 $0F $0F $00 $00 $1F $1F $0F $18 $27 $27 $07 $08
.db $77 $77 $27 $05 $7A $7F $3A $85 $3A $BF $00 $7D $00 $7D $00 $80
.db $00 $80 $00 $00 $AE $AE $04 $86 $79 $FF $00 $52 $AD $FF $A4 $4A
.db $B5 $FF $B4 $6C $92 $FE $90 $24 $D8 $FC $00 $24 $00 $24 $00 $20
.db $00 $20 $00

; Data from 1CEC9 to 1CFC8 (256 bytes)
_DATA_1CEC9_:
.db $00 $07 $07 $00 $05 $1F $1A $05 $17 $38 $28 $17 $3F $70 $40 $3F
.db $17 $68 $68 $17 $7B $E4 $84 $7B $3D $C2 $C2 $3D $78 $C7 $87 $78
.db $00 $F0 $F0 $00 $F0 $0C $0C $F0 $FC $02 $02 $9C $9E $61 $61 $0E
.db $9E $61 $61 $0C $F8 $06 $06 $9A $F8 $07 $07 $F7 $E2 $1D $1D $EC
.db $37 $4F $48 $37 $37 $4F $48 $37 $5B $E7 $A4 $5B $1C $E3 $E3 $1C
.db $6F $F0 $90 $6F $13 $7C $6C $13 $14 $3F $2B $14 $00 $1C $1C $00
.db $6A $95 $95 $52 $0E $F1 $F1 $0E $5C $A2 $A2 $5C $EC $16 $12 $EC
.db $F0 $1C $0C $F0 $C0 $78 $38 $C0 $00 $C0 $C0 $00 $00 $00 $00 $00
.db $00 $1C $1C $00 $14 $3F $2B $14 $13 $7C $6C $13 $6F $F0 $90 $6F
.db $1C $E3 $E3 $1C $5B $E7 $A4 $5B $37 $4F $48 $37 $37 $4F $48 $37
.db $00 $E0 $E0 $00 $A0 $F8 $58 $A0 $E8 $3C $14 $E8 $FC $0E $02 $FC
.db $E8 $16 $16 $E8 $5E $A3 $A1 $5E $3C $C3 $C3 $3C $7E $83 $81 $7E
.db $71 $8E $8E $71 $7B $C4 $84 $7B $33 $4C $4C $31 $28 $77 $57 $2A
.db $1E $61 $61 $1D $1C $33 $23 $1D $07 $18 $18 $06 $00 $07 $07 $00
.db $FC $02 $02 $CC $CC $32 $32 $84 $CC $32 $32 $84 $FC $02 $02 $CC
.db $F8 $04 $04 $78 $38 $C4 $C4 $B8 $30 $C8 $C8 $D0 $00 $B0 $B0 $80

; Data from 1CFC9 to 1D0C8 (256 bytes)
_DATA_1CFC9_:
.dsb 9, $00
.db $0F $0F $00 $0F $1F $10 $00 $1F $3F $20 $00 $1F $3F $20 $00 $3F
.db $67 $40 $00 $77 $EF $88
.dsb 10, $00
.db $80 $80 $00 $80 $C0 $40 $00 $C0 $E0 $20 $00 $C0 $E0 $20 $00 $E0
.db $30 $10 $00 $70 $B8 $88 $00 $3F $7F $40 $00 $1F $33 $20 $00 $0F
.db $10 $10 $00 $0F $17 $10 $00 $07 $2B $38 $10 $07 $48 $78 $30 $03
.db $44 $7C $38 $03 $84 $FC $78 $F8 $FC $04 $00 $F0 $98 $08 $00 $E0
.db $16 $10 $00 $E0 $D6 $10 $00 $C0 $AE $3E $10 $C6 $2F $39 $10 $86
.db $4F $79 $30 $80 $46 $7E $38 $01 $F2 $FE $0C $71 $FA $8E $04 $60
.db $F1 $9F $0E $00 $EE $FF $11 $0E $9F $F1 $60 $0E $5F $71 $20 $06
.db $3F $39 $00 $00 $06 $06 $00 $00 $82 $FC $7C $00 $86 $FC $78 $00
.db $02 $FC $FC $00 $E2 $FC $1C $E0 $F2 $1C $0C $E0 $F6 $1C $08 $C0
.db $FA $38 $00 $00 $C2 $C0 $00 $3F $7F $40 $00 $1F $33 $20 $00 $0F
.db $10 $10 $00 $0C $17 $13 $03 $04 $2F $3B $13 $07 $4B $78 $30 $03
.db $44 $7C $38 $03 $84 $FC $78 $F8 $FC $04 $00 $F0 $98 $08 $00 $E0
.db $16 $10 $00 $60 $D6 $90 $80 $40 $EE $BE $90 $C6 $AF $39 $10 $86
.db $4F $79 $30 $80 $46 $7E $38

; Data from 1D0C9 to 1D348 (640 bytes)
_DATA_1D0C9_:
.dsb 9, $00
.db $FF $FF $00 $00 $FF $FF $00 $00 $1C $1C $63 $00 $1C $1C $63 $00
.db $1C $1C $63 $00 $1C $1C $63 $00 $3C $3C $00 $00 $66 $66 $00 $00
.db $FF $FF $00 $00 $FF $FF $00 $00 $E7 $E7 $18 $00 $E7 $E7 $18 $00
.db $E7 $E7 $18 $00 $E7 $81 $18
.dsb 9, $00
.db $FF $FF $00 $00 $FF $FF $00 $00 $38 $38 $C6 $00 $38 $38 $C6 $00
.db $38 $38 $C6 $00 $38 $38 $C6 $00 $39 $38 $C6 $00 $39 $38 $C6 $00
.db $39 $38 $C6 $08 $39 $30 $C6 $09 $39 $30 $C6 $09 $39 $30 $C6 $09
.db $38 $30 $C6 $09 $38 $30 $C6 $00 $CE $00 $31 $00 $CE $00 $31 $00
.db $CE $00 $31 $40 $CE $00 $31 $C8 $CE $00 $31 $CE $02 $00 $31 $86
.db $48 $48 $31 $86 $48 $48 $31 $00 $70 $70 $8C $00 $70 $70 $8C $00
.db $70 $70 $8C $40 $70 $30 $8C $40 $70 $30 $8C $40 $70 $30 $8C $40
.db $70 $30 $8C $40 $70 $30 $8C $09 $38 $30 $C6 $01 $39 $38 $C6 $01
.db $39 $38 $C6 $00 $3F $3F $C0 $07 $3F $38 $C0 $06 $3F $39 $C0 $06
.db $3F $39 $C0 $00 $3F $3F $C1 $CE $00 $00 $31 $CE $CE $00 $31 $CE
.db $CE $00 $31 $00 $CF $CF $30 $03 $CF $CC $78 $CD $CF $CE $30 $CD
.db $CF $CE $30 $00 $CF $CF $FE $40 $70 $30 $8C $00 $70 $70 $8C $00
.db $70 $70 $8C $00 $F0 $F0 $0C $80 $F0 $70 $0C $80 $F0 $70 $0C $80
.db $F0 $70 $0C $00 $F0 $F0 $0C $00 $1C $1C $63 $00 $1C $1C $63 $00
.db $1C $1C $63 $00 $1C $1C $63 $00 $1C $1C $63 $00 $1C $1C $63 $00
.db $FF $FF $00 $00 $FF $FF $00 $E7 $E7 $E7 $18 $E7 $E7 $E7 $18 $24
.db $E7 $A5 $5A $00 $E7 $00 $FF $00 $E7 $00 $FF $00 $E7 $E7 $18 $00
.db $FF $FF $00 $00 $FF $FF $00 $00 $38 $38 $C6 $00 $38 $38 $C6 $00
.db $38 $38 $C6 $00 $38 $38 $C6 $00 $38 $38 $C6 $00 $38 $38 $C6 $00
.db $FF $FF $00 $00 $FF $FF $00 $00 $07 $07 $00 $00 $1F $18 $00 $00
.db $3F $20 $00 $00 $7F $40 $00 $00 $7F $40 $00 $43 $FF $80 $00 $4F
.db $FF $80 $00 $5F $F9 $80 $00 $00 $E0 $E0 $00 $00 $F8 $18 $00 $00
.db $FC $04 $00 $00 $FE $02 $00 $00 $FE $02 $00 $02 $FF $01 $00 $C2
.db $FF $01 $00 $FA $9F $01 $00 $5D $F3 $82 $00 $5D $F3 $82 $00 $5F
.db $F1 $80 $00 $1F $7E $41 $00 $0F $3F $20 $00 $00 $1F $1F $00 $08
.db $1B $1E $03 $0E $3F $2E $11 $BA $CF $41 $00 $BA $CF $41 $00 $FA
.db $8F $01 $00 $F8 $7E $82 $00 $F0 $FC $04 $00 $00 $F8 $F8 $00 $10
.db $D8 $78 $C0 $70 $FC $74 $88 $1F $FF $9F $60 $60 $FF $9F $1F $7F
.db $FF $9F $00 $1C $7F $7F $00 $04 $1F $17 $08 $00 $3F $23 $1C $00
.db $7F $43 $3C $00 $7C $7C $00 $E0 $FC $E4 $18 $18 $FC $E4 $E0 $F8
.db $FC $E4 $00 $E0 $F8 $F8 $00 $80 $E0 $A0 $40 $00 $F0 $10 $E0 $00
.db $F8 $08 $F0 $00 $F8 $F8 $00 $5D $F3 $82 $00 $5D $F3 $82 $00 $5F
.db $F2 $81 $00 $1C $7F $43 $03 $0E $3F $21 $01 $03 $1F $1C $00 $08
.db $1B $1F $00 $0E $3F $2E $11 $BA $CF $41 $00 $BA $CF $41 $00 $FA
.db $4F $81 $00 $38 $FE $C2 $C0 $70 $FC $84 $80 $C0 $F8 $38 $00 $10
.db $D8 $F8 $00 $70 $FC $74 $88

; Data from 1D349 to 1D428 (224 bytes)
_DATA_1D349_:
.db $00 $1B $1B $00 $1B $24 $24 $00 $0F $10 $10 $00 $07 $08 $08 $00
.db $03 $0F $0C $00 $0F $30 $30 $00 $3F $40 $40 $00 $7B $84 $84 $00
.db $00 $60 $60 $00 $60 $90 $90 $00 $C0 $20 $20 $00 $80 $40 $40 $00
.db $00 $C0 $C0 $00 $C0 $30 $30 $00 $F0 $08 $08 $00 $78 $84 $84 $00
.db $38 $47 $47 $00 $7D $82 $82 $00 $78 $87 $87 $00 $7D $82 $82 $00
.db $7D $82 $82 $00 $3C $43 $43 $00 $0F $30 $30 $00 $00 $0F $0F $00
.db $1C $E2 $E2 $00 $BE $41 $41 $00 $1E $E1 $E1 $00 $BE $41 $41 $00
.db $BE $41 $41 $00 $3C $C2 $C2 $00 $F0 $0C $0C $00 $00 $F0 $F0
.dsb 18, $00
.db $54 $54 $00 $54 $AA $AA $00 $38 $44 $44 $00 $10 $38 $28 $00 $0E
.db $31 $31 $00 $35 $4A $4A $00 $60 $9F $9F $00 $75 $8A $8A $00 $60
.db $9F $9F $00 $75 $8A $8A $00 $31 $4E $4E $00 $00 $3F $3F $00 $00
.db $80 $80 $00 $80 $40 $40 $00 $C0 $20 $20 $00 $C0 $20 $20 $00 $C0
.db $20 $20 $00 $C0 $20 $20 $00 $80 $40 $40 $00 $00 $80 $80 $00

; Data from 1D429 to 1D5E8 (448 bytes)
_DATA_1D429_:
.db $00 $10 $10 $10 $10 $10 $00 $00 $28 $38 $00 $10 $44 $FE $82 $BA
.db $28 $38 $00 $10 $10 $10 $00 $00 $00 $10 $10 $10 $00 $00 $00 $00
.db $00 $01 $01 $01 $00 $01 $01 $01 $01 $01 $00 $00 $01 $1B $1A $1A
.db $0A $1F $14 $15 $02 $0F $08 $0D $0C $1F $10 $13 $30 $FF $C0 $CF
.dsb 13, $00
.db $B0 $B0 $B0 $A0 $F0 $50 $50 $80 $E0 $20 $60 $60 $F0 $10 $90 $18
.db $FE $06 $E6 $63 $FF $80 $9C $14 $7F $41 $6B $55 $FF $A2 $AA $08
.db $DD $D5 $D5 $08 $08 $00 $00 $00 $08 $08 $08 $00 $08 $08 $08 $00
.db $00 $00 $00 $00 $80 $80 $80 $00 $00 $00 $00 $00 $80 $80 $80 $00
.db $80 $80 $80
.dsb 25, $00
.db $80 $80 $80 $00 $65 $65 $65 $00 $7F $7F $7F $18 $3F $27 $27 $1F
.db $3F $20 $20 $09 $7F $70 $76 $00 $40 $40 $40 $40 $E0 $A0 $A0 $40
.db $E0 $A0 $A0 $40 $F4 $B4 $B4 $A0 $FF $1F $5F $A3 $FF $1C $5C $BF
.db $FF $00 $40 $12 $FF $01 $ED
.dsb 9, $00
.db $20 $20 $20 $00 $C0 $C0 $C0 $00 $C0 $C0 $C0 $00 $80 $80 $80 $00
.db $80 $80 $80 $00 $C0 $C0 $C0 $02 $0F $0C $0D $03 $1F $1C $1C $0E
.db $7F $70 $71 $70 $FF $80 $8F $0E $7F $70 $71 $03 $1F $1C $1C $02
.db $0F $0C $0D $02 $1F $1C $1D $00 $EF $00 $EF $01 $AB $00 $AA $00
.db $C7 $00 $C7 $00 $01 $00 $01 $00 $C7 $00 $C7 $01 $AB $00 $AA $00
.db $EF $00 $EF $44 $FF $00 $BB $80 $E0 $60 $60 $80 $F0 $70 $70 $E0
.db $FC $1C $1C $1C $FE $02 $E2 $E0 $FC $1C $1C $80 $F0 $70 $70 $80
.db $E0 $60 $60 $80 $F0 $70 $70 $1F $3F $20 $20 $18 $3F $27 $27 $00
.db $7F $7F $7F $00 $65 $65 $65 $00 $80 $80 $80
.dsb 12, $00
.db $BF $FF $00 $40 $A3 $FF $1C $5C $A0 $FF $1F $5F $40 $F4 $B4 $B4
.db $40 $E0 $A0 $A0 $40 $E0 $A0 $A0 $00 $40 $40 $40 $00 $00 $00 $00
.db $00 $80 $80 $80 $00 $80 $80 $80 $00 $C0 $C0 $C0 $00 $C0 $C0 $C0
.db $00 $20 $20 $20
.dsb 12, $00

; Data from 1D5E9 to 1D768 (384 bytes)
_DATA_1D5E9_:
.db $00 $00 $00 $00 $00 $07 $07 $00 $07 $18 $18 $07 $1F $20 $20 $1F
.db $3F $40 $40 $3F $3F $5F $40 $3F $70 $8F $88 $67 $60 $9F $98 $67
.db $00 $3E $3E $00 $0E $FF $F1 $0E $E3 $1F $1C $E3 $F5 $0B $0A $F5
.db $F6 $09 $09 $F6 $F7 $C8 $08 $F7 $77 $C8 $08 $F7 $74 $CB $0B $F4
.db $00 $00 $00 $00 $00 $80 $80 $00 $80 $C0 $40 $80 $80 $C0 $40 $80
.db $C0 $E0 $20 $C0 $40 $E8 $A8 $40 $A8 $74 $54 $A8 $D8 $2C $24 $D8
.db $1C $23 $20 $1F $1F $60 $60 $1F $6A $95 $95 $55 $7F $80 $80 $7F
.db $7F $80 $80 $7F $3F $40 $40 $3F $0F $30 $30 $0F $00 $0F $0F $00
.db $3C $E3 $03 $FC $FD $03 $02 $FD $9D $6B $62 $7D $FC $0B $03 $FC
.db $FD $32 $02 $FD $FD $02 $02 $FD $FB $04 $04 $FB $00 $FF $FF $00
.db $DE $E5 $21 $DE $DE $E3 $21 $DE $DC $E6 $22 $DC $1E $E3 $E1 $1E
.db $FE $05 $01 $FE $F6 $0B $09 $F6 $C2 $35 $35 $C2 $00 $C2 $C2 $00
.db $00 $00 $00 $00 $00 $07 $07 $00 $07 $18 $18 $07 $1F $20 $20 $1F
.db $3F $40 $40 $3F $3F $5F $40 $3F $62 $9D $84 $79 $60 $9F $86 $79
.db $00 $3E $3E $00 $0E $FF $F1 $0E $E3 $1F $1C $E3 $F5 $0B $0A $F5
.db $F6 $09 $09 $F6 $F7 $C8 $08 $F7 $74 $CB $0B $F4 $73 $CF $0C $F3
.db $00 $00 $00 $00 $00 $80 $80 $00 $80 $C0 $40 $80 $80 $C0 $40 $80
.db $C0 $E0 $20 $C0 $40 $E0 $A0 $40 $A0 $7C $5C $A0 $48 $B4 $B4 $48
.db $1C $23 $20 $1F $1F $20 $20 $1F $00 $7F $7F $3F $6A $95 $95 $55
.db $7F $80 $80 $7F $7F $80 $80 $7F $1F $60 $60 $1F $00 $1F $1F $00
.db $3D $E3 $02 $FD $FD $03 $02 $FD $1D $EB $E2 $FD $9C $6B $63 $7C
.db $FD $0A $02 $FD $FD $32 $02 $FD $FB $04 $04 $FB $00 $FF $FF $00
.db $DE $E7 $21 $DE $DE $E1 $21 $DE $3E $C7 $C1 $3E $FE $01 $01 $FE
.db $FE $07 $01 $FE $F2 $0D $0D $F2 $C0 $33 $33 $C0 $00 $C0 $C0 $00

; Data from 1D769 to 1DA48 (736 bytes)
_DATA_1D769_:
.dsb 9, $00
.db $1F $1F $00 $1F $3C $20 $00 $3F $7C $40 $00 $3F $7E $40 $00 $7F
.db $E7 $80 $00 $5F $E7 $A0 $00 $00 $40 $40 $00 $40 $BF $BF $00 $FB
.db $3F $04 $00 $FB $2F $14 $00 $F7 $3F $08 $00 $EF $7F $10 $00 $EF
.db $FF $10 $00 $EF $FF $10 $00 $00 $00 $00 $00 $00 $E0 $E0 $00 $E0
.db $FC $1C $00 $FC $FF $03 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF
.db $FF $00 $00 $FF $FF
.dsb 19, $00
.db $80 $80 $00 $80 $C0 $40 $00 $C0 $E0 $20 $00 $C0 $E0 $20 $00 $1F
.db $33 $20 $00 $1F $3F $20 $00 $3F $7F $40 $00 $0F $FF $F0 $70 $37
.db $CF $F8 $48 $37 $CF $D8 $48 $A6 $5F $59 $18 $40 $3E $3E $00 $F7
.db $FF $08 $00 $F7 $FF $08 $00 $CF $FF $30 $00 $3F $FF $C0 $00 $7F
.db $FF $80 $00 $6F $FF $90 $00 $5F $FF $A0 $00 $3F $FF $C0 $00 $FF
.db $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF
.db $FF $00 $00 $FF $FF $00 $00 $F7 $FF $08 $00 $C7 $FF $38 $00 $F8
.db $FC $04 $00 $FC $FE $02 $00 $FE $FF $01 $00 $FA $FF $05 $00 $FA
.db $FF $05 $00 $FA $FF $05 $00 $FA $FF $05 $00 $F0 $FF $09 $06 $07
.db $1F $18 $00 $1F $3F $20 $00 $3C $7F $43 $00 $10 $7C $4C $20 $00
.db $F8 $88 $70 $00 $F8 $88 $70 $00 $F0 $F0 $00 $00 $00 $00 $00 $F0
.db $FE $0E $00 $80 $F0 $70 $00 $00 $80 $80
.dsb 21, $00
.db $7E $FF $81 $00 $3F $7F $40 $00 $07 $3F $38 $00 $01 $07 $06 $00
.db $00 $01 $01
.dsb 14, $00
.db $F0 $90 $60 $00 $E0 $E0 $00 $80 $C0 $40 $00 $80 $E0 $20 $40 $00
.db $F0 $10 $E0 $00 $F0 $90 $60 $00 $F0 $90 $60 $00 $60 $60 $00 $00
.db $02 $02 $00 $02 $05 $05 $00 $03 $1C $1C $00 $1F $3C $20 $00 $3F
.db $78 $40 $00 $7F $FC $80 $00 $7F $E7 $80 $00 $5F $E7 $A0 $00 $00
.db $CF $CF $00 $CF $FF $30 $00 $EF $BF $50 $00 $EF $7F $10 $00 $9F
.db $7F $60 $00 $BF $FF $40 $00 $DF $FF $20 $00 $DF $FF $20 $00 $00
.db $80 $80 $00 $80 $F8 $78 $00 $F8 $FE $06 $00 $FE $FF $01 $00 $FF
.db $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.dsb 19, $00
.db $80 $80 $00 $00 $80 $80 $00 $80 $C0 $40 $00 $80 $C0 $40 $00 $1F
.db $33 $20 $00 $1F $3F $20 $00 $1F $7F $60 $00 $7F $FF $80 $00 $07
.db $FF $F8 $78 $37 $CF $F8 $48 $36 $CF $D9 $48 $A0 $5E $5E $00 $F7
.db $FF $08 $00 $EF $FF $10 $00 $DF $FF $20 $00 $BF $FF $40 $00 $7F
.db $FF $80 $00 $7F $FF $80 $00 $7F $FF $80 $00 $3E $FF $C1 $00 $FF
.db $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF
.db $FF $00 $00 $FF $FF $00 $00 $BF $FF $40 $00 $7F $FF $80 $00 $F0
.db $F8 $08 $00 $F8 $FC $04 $00 $E8 $FC $14 $00 $E8 $FC $14 $00 $D0
.db $F8 $28 $00 $80 $F8 $48 $30 $80 $F8 $48 $30 $80 $F0 $70 $00 $80
.dsb 31, $00
.db $3D $FF $C2 $00 $0E $3F $31 $00 $37 $7F $48 $00 $1B $7F $44 $20
.db $00 $FB $8A $71 $00 $7B $4A $31 $00 $33 $32 $01 $00 $03 $03 $00
.db $F8 $FE $06 $00 $E0 $F8 $18 $00 $00 $E0 $E0 $00 $80 $C0 $40 $00
.db $00 $C0 $40 $80 $00 $E0 $20 $C0 $00 $E0 $20 $C0 $00 $C0 $C0 $00

; Data from 1DA49 to 1DB08 (192 bytes)
_DATA_1DA49_:
.db $00 $00 $00 $00 $00 $07 $07 $00 $00 $0F $0F $07 $0E $1F $11 $01
.db $07 $3F $38 $00 $1F $23 $20 $00 $3F $63 $40 $00 $6F $F3 $90 $00
.db $00 $00 $00 $00 $00 $80 $80 $00 $00 $E0 $E0 $80 $00 $F0 $F0 $E0
.db $80 $FC $7C $70 $C0 $F2 $3E $3C $C0 $E1 $3B $3E $C0 $E1 $33 $3E
.db $1F $FF $E0 $00 $0D $FF $F2 $00 $63 $FF $9C $00 $00 $FF $FF $7F
.db $00 $FF $FF $7F $00 $7F $64 $3F $00 $3F $24 $1F $00 $1F $1F $00
.db $C0 $E1 $33 $3E $80 $F2 $7E $7C $00 $FE $FE $FC $00 $FC $FC $F8
.db $00 $FC $FC $F8 $00 $F8 $F8 $F0 $00 $F0 $70 $C0 $00 $C0 $C0 $00
.db $00 $00 $00 $00 $00 $80 $80 $00 $00 $E0 $E0 $80 $00 $F0 $F0 $E0
.db $80 $F8 $78 $70 $C0 $FC $3C $38 $C0 $FC $3C $38 $C0 $FE $3E $3C
.db $C0 $FE $3E $3C $80 $8E $7E $7C $00 $06 $8E $FC $00 $0C $9C $F8
.db $00 $9C $FC $F8 $00 $F8 $F8 $F0 $00 $F0 $70 $C0 $00 $C0 $C0 $00

; Data from 1DB09 to 1DB28 (32 bytes)
_DATA_1DB09_:
.db $00 $3C $3C $00 $00 $7E $7E $3C $18 $E7 $FF $66 $3C $DB $E7 $42
.db $3C $DB $E7 $42 $18 $E7 $FF $66 $00 $7E $7E $3C $00 $3C $3C $00

; Data from 1DB29 to 1DB48 (32 bytes)
_DATA_1DB29_:
.db $00 $38 $38 $00 $28 $54 $7C $10 $54 $BA $EE $28 $28 $FE $C6 $54
.db $54 $BA $EE $28 $28 $54 $7C $10 $00 $38 $38 $00 $00 $00 $00 $00

; Data from 1DB49 to 1DCA8 (352 bytes)
_DATA_1DB49_:
.db $00 $03 $03 $00 $00 $0F $0C $00 $00 $1F $10 $00 $00 $7F $60 $00
.db $66 $FF $80 $00 $6F $FF $80 $00 $09 $FF $86 $00 $06 $FF $89 $00
.db $00 $C0 $C0 $00 $00 $F0 $30 $00 $00 $F8 $08 $00 $00 $FC $04 $00
.db $60 $FC $04 $00 $F0 $FC $04 $00 $90 $FC $64 $00 $64 $FE $92 $00
.db $17 $E9 $90 $00 $0D $FB $82 $00 $0F $FE $81 $00 $0C $FF $83 $03
.db $07 $7F $50 $10 $00 $7F $58 $18 $01 $7F $5C $1C $01 $7F $7C $3C
.db $EC $96 $0A $00 $B4 $DE $42 $00 $F0 $7C $84 $00 $30 $FE $C2 $C0
.db $E0 $FF $09 $08 $00 $FF $19 $18 $80 $FF $39 $38 $80 $FF $3D $3C
.db $03 $FF $F8 $78 $00 $7F $78 $38 $00 $3F $20 $00 $00 $7F $47 $00
.db $00 $38 $28 $00 $00 $78 $68 $00 $60 $FC $84 $00 $00 $FC $FC $00
.db $00 $FE $7A $78 $00 $FE $72 $70 $0C $FE $12 $00 $0C $FE $82 $00
.db $00 $7C $5C $00 $00 $78 $58 $00 $18 $FC $84 $00 $00 $FC $FC $00
.db $00 $07 $07 $00 $00 $1F $18 $00 $00 $3F $20 $00 $00 $7F $40 $00
.db $0C $7F $40 $00 $1F $7F $40 $00 $13 $7F $4C $00 $4C $FF $93 $00
.db $00 $80 $80 $00 $00 $E0 $60 $00 $00 $F0 $10 $00 $00 $F8 $08 $00
.db $C0 $F8 $08 $00 $E0 $F8 $08 $00 $20 $F8 $C8 $00 $C8 $FC $24 $00
.db $6F $D3 $A0 $00 $5B $F7 $84 $00 $1F $7C $43 $00 $18 $7F $47 $07
.db $0F $FF $A0 $20 $00 $FF $90 $10 $03 $FF $88 $08 $03 $FF $C0 $40
.db $D8 $2C $14 $00 $68 $BC $84 $00 $E0 $F8 $08 $00 $60 $FC $84 $80
.db $C0 $FE $12 $10 $00 $FE $32 $30 $00 $FE $72 $70 $00 $FE $7A $78
.db $0B $FF $E0 $60 $1C $7F $60 $20 $18 $3F $20 $00 $00 $7F $47 $00
.db $00 $38 $28 $00 $00 $78 $68 $00 $60 $FC $84 $00 $00 $FC $FC $00

; Data from 1DCA9 to 1DCC8 (32 bytes)
_DATA_1DCA9_:
.db $00 $00 $00 $00 $00 $3C $3C $00 $3C $7E $42 $3C $7E $C3 $81 $7E
.db $7E $C3 $81 $7E $3C $7E $42 $3C $00 $3C $3C $00 $00 $00 $00 $00

; Data from 1DCC9 to 1DD48 (128 bytes)
_DATA_1DCC9_:
.db $00 $3C $3C $00 $00 $7E $42 $00 $00 $7F $41 $00 $34 $FF $C1 $00
.db $36 $4F $41 $00 $56 $EF $A1 $00 $70 $FE $82 $00 $18 $64 $64 $00
.db $50 $C4 $EC $00 $10 $84 $EC $00 $30 $84 $CC $00 $30 $78 $48 $00
.db $00 $28 $38 $00 $10 $38 $38 $00 $30 $78 $78 $00 $00 $78 $78 $00
.db $00 $3C $3C $00 $00 $7E $42 $00 $00 $7F $41 $00 $34 $FF $C1 $00
.db $36 $4F $41 $00 $56 $EF $A1 $00 $70 $FE $82 $00 $10 $68 $68 $00
.db $28 $64 $74 $00 $04 $42 $7A $00 $06 $43 $79 $00 $06 $67 $79 $00
.db $42 $C3 $FF $00 $42 $DB $FF $00 $00 $66 $66 $00 $00 $00 $00 $00

; Data from 1DD49 to 1DE48 (256 bytes)
_DATA_1DD49_:
.db $00 $06 $06 $00 $06 $09 $09 $00 $0B $74 $74 $00 $6B $94 $94 $60
.db $76 $89 $89 $70 $19 $E6 $C6 $79 $0F $F0 $A0 $7F $03 $7C $40 $3F
.dsb 9, $00
.db $80 $80 $00 $00 $80 $80 $00 $00 $B8 $B8 $00 $38 $C4 $C4 $38 $FC
.db $02 $02 $FC $FC $02 $02 $FC $03 $7C $40 $3F $0F $30 $30 $0F $0C
.db $13 $10 $0F $0C $F3 $F2 $0D $FC $03 $02 $FD $38 $C5 $C5 $38 $51
.db $AA $AA $51 $90 $6B $6B $90 $FE $01 $01 $FE $FE $01 $01 $FE $46
.db $B9 $B9 $46 $3A $C5 $45 $BA $7E $81 $81 $7E $0C $F2 $F2 $0C $FC
.db $02 $02 $FC $00 $FC $FC $00 $07 $F8 $80 $7F $3F $40 $40 $3F $39
.db $46 $40 $3F $1C $23 $20 $1F $1C $23 $21 $1E $1C $23 $23 $1C $0C
.db $13 $13 $0C $0C $13 $13 $0C $FC $02 $02 $FC $FC $02 $02 $FC $FC
.db $02 $02 $FC $FC $02 $02 $FC $FC $02 $02 $FC $DC $22 $22 $DC $3C
.db $C2 $C2 $3C $38 $C4 $C4 $38 $61 $92 $92 $61 $71 $82 $82 $71 $30
.db $4D $4D $30 $3C $42 $42 $3C $18 $24 $24 $18 $0C $12 $12 $0C $06
.db $09 $09 $06 $00 $07 $07 $00 $C0 $20 $20 $C0 $C0 $20 $20 $C0 $C0
.db $20 $20 $C0 $40 $A0 $A0 $40 $60 $90 $90 $60 $60 $90 $90 $60 $30
.db $C0 $C0 $30 $10 $20 $20 $10

; Data from 1DE49 to 1DEE8 (160 bytes)
_DATA_1DE49_:
.dsb 9, $00
.db $01 $01 $00 $01 $3E $3E $01 $3D $42 $42 $3D $67 $98 $98 $67 $43
.db $A4 $A4 $43 $43 $AC $AC $43 $00 $78 $78 $00 $78 $84 $84 $78 $CC
.db $32 $32 $CC $84 $6A $6A $84 $24 $DA $DA $24 $44 $AA $AA $44 $4C
.db $B2 $B2 $4C $38 $C4 $C4 $38 $6B $94 $94 $6B $31 $4A $4A $31 $01
.db $3E $3E $01 $0D $12 $12 $0D $13 $2C $2C $13 $0B $14 $14 $0B $01
.db $0A $0A $01 $01 $02 $02 $01 $00 $B8 $B8 $00 $00 $80 $80 $00 $00
.db $80 $80 $00 $00 $80 $80 $00 $00 $80 $80 $00 $00 $80 $80 $00 $00
.db $80 $80 $00 $00 $80 $80 $00 $40 $A0 $A0 $40 $40 $A0 $A0 $40 $40
.db $A0 $A0 $40 $40 $A0 $A0 $40 $40 $A0 $A0 $40 $40 $A0 $A0 $40 $40
.db $A0 $A0 $40 $40 $A0 $A0 $40

; Data from 1DEE9 to 1DFA8 (192 bytes)
_DATA_1DEE9_:
.db $00 $00 $00 $00 $00 $01 $01 $00 $01 $67 $67 $01 $65 $FF $9D $05
.db $6E $FF $9E $0E $5F $F9 $B9 $19 $5F $F0 $B0 $10 $7D $F2 $92 $10
.db $00 $00 $00 $00 $00 $C0 $C0 $00 $C0 $F6 $F6 $C0 $F6 $FF $F9 $F0
.db $FE $FF $F9 $F8 $7A $CF $4D $48 $7E $87 $05 $04 $5E $A7 $21 $00
.db $7D $F3 $F1 $71 $1A $FF $9A $1A $66 $FF $E6 $66 $7A $FF $FA $7A
.db $3D $7F $7D $3D $3D $7F $7D $3D $1D $3F $3F $1D $00 $1D $1D $00
.db $78 $9C $1C $18 $98 $FC $9C $98 $E8 $FC $EC $E8 $F0 $FC $F4 $F0
.db $F0 $F8 $F8 $F0 $F0 $F8 $F8 $F0 $E0 $F0 $F0 $E0 $00 $E0 $E0 $00
.db $00 $60 $60 $00 $60 $F3 $93 $00 $63 $FF $9F $03 $4B $FF $BB $0B
.db $5D $FF $BD $1D $7E $F3 $B2 $32 $7A $E5 $A4 $20 $7E $E1 $A0 $20
.db $00 $18 $18 $00 $18 $BC $A4 $00 $98 $FC $E4 $80 $E8 $FC $F4 $E0
.db $F8 $FC $F4 $F0 $F8 $9C $94 $90 $B8 $4C $44 $00 $F8 $0C $04 $00

; Data from 1DFA9 to 1E0A8 (256 bytes)
_DATA_1DFA9_:
.db $00 $04 $04 $04 $05 $02 $07 $02 $09 $16 $1F $16 $10 $0F $1F $0F
.db $22 $1F $3D $1D $44 $3F $7B $3B $54 $AF $EB $AB $16 $EF $E9 $E0
.dsb 9, $00
.db $40 $40 $40 $40 $80 $C0 $80 $80 $00 $80 $00 $40 $A0 $E0 $A0 $80
.db $60 $60 $60 $A0 $40 $60 $40 $47 $3F $78 $38 $47 $BF $F8 $B8 $8F
.db $7F $F0 $70 $8F $7F $F0 $70 $8F $7F $F0 $70 $67 $1F $78 $18 $18
.db $07 $1F $07 $07 $00 $07 $00 $10 $E4 $F4 $E4 $90 $E8 $78 $68 $80
.db $F8 $78 $78 $88 $F0 $78 $70 $88 $F0 $78 $70 $10 $E0 $F0 $E0 $60
.db $80 $E0 $80 $80 $00 $80 $00 $08 $04 $0C $04 $0A $04 $0E $04 $12
.db $0D $1F $0D $01 $3E $3F $3E $28 $1F $37 $17 $44 $BF $FB $BB $54
.db $0F $6B $0B $94 $4F $EB $42
.dsb 16, $00
.db $80 $20 $A0 $20 $40 $A0 $E0 $A0 $C0 $00 $40 $00 $80 $40 $40 $40
.db $23 $9F $BC $9C $27 $5F $78 $58 $07 $7F $78 $78 $47 $3F $78 $38
.db $47 $3F $78 $38 $23 $1F $3C $1C $18 $07 $1F $07 $07 $00 $07 $00
.db $88 $F0 $78 $70 $88 $F4 $7C $74 $C4 $F8 $3C $38 $C4 $F8 $3C $38
.db $C4 $F8 $3C $38 $98 $E0 $78 $60 $60 $80 $E0 $80 $80 $00 $80 $00

; Data from 1E0A9 to 1E0C8 (32 bytes)
_DATA_1E0A9_:
.db $00 $11 $00 $11 $00 $13 $00 $13 $00 $26 $00 $26 $00 $2A $00 $2A
.db $00 $54 $00 $54 $00 $64 $00 $64 $00 $C8 $00 $C8 $00 $88 $00 $88

; Data from 1E0C9 to 1E188 (192 bytes)
_DATA_1E0C9_:
.db $00 $0E $0E $00 $0E $31 $3F $0E $3F $40 $7F $3F $7F $80 $FF $7F
.db $7F $80 $FF $7F $7F $80 $FF $7F $3B $44 $7F $3B $47 $B8 $FF $47
.db $00 $1E $1E $00 $1E $A1 $BF $1E $BF $40 $FF $BF $FF $00 $FF $FF
.db $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF $FF $00 $FF $FF
.db $00 $00 $00 $00 $00 $60 $60 $00 $60 $90 $F0 $60 $F0 $08 $F8 $F0
.db $F0 $08 $F8 $F0 $F8 $04 $FC $F8 $FC $02 $FE $FC $BC $42 $FE $BC
.db $3F $40 $7F $3F $7F $80 $FF $7F $77 $88 $FF $77 $77 $88 $FF $77
.db $3B $44 $7F $3B $3C $43 $7F $3C $0E $31 $3F $0E $00 $0E $0E $00
.db $FF $00 $FF $FF $FF $00 $FF $FF $FD $02 $FF $FD $FE $01 $FF $FE
.db $DF $20 $FF $DF $3F $C0 $FF $3F $3C $43 $7F $3C $00 $3C $3C $00
.db $EE $11 $FF $EE $EC $12 $FE $EC $DC $22 $FE $DC $38 $C4 $FC $38
.db $FC $02 $FE $FC $7C $82 $FE $7C $38 $44 $7C $38 $00 $38 $38 $00

; Data from 1E189 to 1E208 (128 bytes)
_DATA_1E189_:
.db $00 $03 $03 $00 $02 $0F $0F $01 $0C $1D $1F $03 $00 $30 $3C $1F
.db $20 $6B $7B $1F $23 $67 $74 $1C $46 $CF $E8 $39 $04 $EF $E8 $7B
.db $00 $80 $80 $00 $80 $E0 $E0 $00 $60 $70 $F0 $80 $00 $18 $78 $F0
.db $08 $AC $BC $F0 $88 $CC $5C $70 $C4 $E6 $2E $38 $40 $EE $2E $BC
.db $46 $CF $E8 $39 $23 $67 $74 $1C $20 $6B $7B $1F $00 $30 $3C $1F
.db $0C $1D $1F $03 $02 $0F $0F $01 $00 $03 $03 $00 $00 $00 $00 $00
.db $C4 $E6 $2E $38 $88 $CC $5C $70 $08 $AC $BC $F0 $00 $18 $78 $F0
.db $60 $70 $F0 $80 $80 $E0 $E0 $00 $00 $80 $80 $00 $00 $00 $00 $00

; Data from 1E209 to 1E228 (32 bytes)
_DATA_1E209_:
.db $00 $7E $7E $00 $3C $42 $42 $00 $3C $42 $42 $00 $3C $42 $42 $00
.db $7E $81 $81 $00 $3C $42 $42 $00 $18 $24 $24 $00 $00 $18 $18 $00

; Data from 1E229 to 1E2A8 (128 bytes)
_DATA_1E229_:
.db $00 $03 $03 $00 $00 $0F $0C $03 $00 $1F $10 $0F $00 $3F $27 $1F
.db $00 $7F $4F $3F $0B $7F $50 $34 $1B $FF $80 $64 $00 $FF $80 $7F
.db $00 $80 $80 $00 $00 $E0 $60 $80 $00 $F0 $10 $E0 $00 $F8 $C8 $F0
.db $00 $FC $E4 $F8 $00 $FC $F4 $F8 $80 $FE $72 $7C $80 $FE $72 $7C
.db $1B $FF $80 $64 $0B $7F $50 $34 $00 $7F $4F $3F $00 $3F $27 $1F
.db $00 $1F $10 $0F $00 $0F $0C $03 $00 $03 $03 $00 $00 $00 $00 $00
.db $80 $FE $72 $7C $00 $FC $F4 $F8 $00 $FC $E4 $F8 $00 $F8 $C8 $F0
.db $00 $F0 $10 $E0 $00 $E0 $60 $80 $00 $80 $80 $00 $00 $00 $00 $00

; Data from 1E2A9 to 1ED88 (2784 bytes)
_DATA_1E2A9_:
.incbin "baserom_DATA_1E2A9_.inc"

; Data from 1ED89 to 1EE08 (128 bytes)
_DATA_1ED89_:
.db $00 $02 $02 $00 $02 $27 $27 $02 $23 $7F $5F $03 $3D $7F $7F $3D
.db $7F $FF $FF $7F $7F $FF $FF $7F $66 $FF $FF $66 $00 $66 $66 $00
.db $00 $40 $40 $00 $40 $E4 $E4 $40 $C4 $FE $FA $C0 $BC $FE $FE $BC
.db $FE $FF $FF $FE $FE $FF $FF $FE $66 $FF $FF $66 $00 $66 $66 $00
.db $00 $49 $49 $00 $49 $FF $BF $09 $6F $FF $FF $6F $76 $FF $FF $76
.db $7F $FF $FF $7F $7F $FF $FF $7F $49 $FF $FF $49 $00 $49 $49 $00
.db $00 $20 $20 $00 $20 $F0 $D0 $00 $60 $F0 $F0 $60 $E0 $F0 $F0 $E0
.db $E0 $F0 $F0 $E0 $E0 $F0 $F0 $E0 $20 $F0 $F0 $20 $00 $20 $20 $00

; Data from 1EE09 to 1EF08 (256 bytes)
_DATA_1EE09_:
.db $00 $00 $00 $00 $00 $01 $01 $00 $01 $0F $0E $01 $0F $13 $10 $03
.db $1E $21 $21 $00 $16 $29 $29 $00 $3E $41 $41 $32 $7E $81 $81 $7E
.db $00 $00 $00 $00 $00 $C0 $C0 $00 $C0 $E0 $20 $C0 $E0 $F0 $10 $E0
.db $F0 $38 $08 $F0 $F0 $1C $0C $F0 $F4 $0E $0A $F4 $FC $EE $02 $FC
.db $3F $C0 $C0 $7F $3F $40 $40 $3F $1F $20 $20 $1F $0F $10 $10 $0F
.db $03 $0C $0C $03 $00 $03 $03
.dsb 9, $00
.db $7E $F7 $81 $7E $7E $F7 $81 $7E $7A $87 $85 $7A $70 $8A $8A $70
.db $70 $98 $88 $70 $30 $F8 $C8 $30 $00 $30 $30
.dsb 10, $00
.db $03 $03 $00 $03 $0F $0C $03 $0F $13 $10 $03 $1E $21 $21 $00 $3A
.db $45 $45 $20 $7E $81 $81 $72 $7E $81 $81 $7E $00 $00 $00 $00 $00
.db $80 $80 $00 $80 $C0 $40 $80 $C0 $E0 $20 $C0 $E0 $30 $10 $E0 $F0
.db $18 $08 $F0 $F0 $0C $0C $F0 $F4 $CE $0A $F4 $7F $80 $80 $7F $3F
.db $40 $40 $3F $3F $40 $40 $3F $1F $20 $20 $1F $03 $1C $1C $03 $00
.db $03 $03
.dsb 9, $00
.db $7E $E7 $81 $7E $7A $E7 $85 $7A $78 $86 $86 $78 $70 $88 $88 $70
.db $78 $9C $84 $78 $10 $F8 $E8 $10 $00 $10 $10 $00 $00 $00 $00 $00

; Data from 1EF09 to 1EFC8 (192 bytes)
_DATA_1EF09_:
.db $00 $07 $07 $00 $07 $08 $0F $07 $0F $70 $79 $09 $7B $84 $FD $79
.db $0F $70 $7F $0F $06 $09 $0F $06 $0F $10 $16 $07 $1E $21 $23 $02
.db $00 $00 $00 $00 $00 $80 $80 $00 $80 $40 $C0 $80 $80 $40 $C0 $80
.db $00 $80 $80 $00 $00 $00 $00 $00 $00 $80 $80 $00 $00 $00 $00 $00
.db $7C $82 $8A $0C $78 $84 $8C $08 $3C $42 $5A $1C $1C $22 $3E $1C
.db $0C $52 $5E $0C $4C $B2 $FE $4C $38 $44 $7C $38 $00 $38 $38 $00
.db $00 $07 $07 $00 $07 $08 $0F $07 $0F $70 $79 $09 $7B $84 $FD $79
.db $0F $70 $7F $0F $06 $09 $0F $06 $0F $10 $16 $07 $0F $10 $13 $03
.db $00 $00 $00 $00 $00 $80 $80 $00 $80 $40 $C0 $80 $80 $40 $C0 $80
.db $00 $80 $80 $00 $00 $00 $00 $00 $00 $80 $80 $00 $00 $80 $80 $00
.db $7C $82 $8A $0C $3C $42 $4E $0C $1E $21 $2D $0E $0E $11 $1F $0E
.db $06 $19 $1F $06 $16 $29 $3F $16 $0C $12 $1E $0C $00 $0C $0C $00

; Data from 1EFC9 to 1F0A8 (224 bytes)
_DATA_1EFC9_:
.db $00 $0F $0F $00 $00 $10 $1F $0F $00 $26 $3F $19 $00 $2F $3F $10
.db $40 $1F $0B $14 $A0 $1F $1F $00 $40 $06 $3F $39 $40 $00 $3F $3F
.db $00 $C0 $C0 $00 $00 $20 $E0 $C0 $00 $10 $F0 $E0 $00 $08 $F8 $F0
.db $00 $08 $F8 $F0 $00 $04 $FC $F8 $00 $04 $FC $F8 $00 $04 $FC $F8
.db $80 $40 $7F $3F $80 $20 $3F $1F $80 $38 $3F $07 $80 $20 $3F $1F
.db $80 $20 $3F $1F $80 $20 $3F $1F $00 $20 $3F $1F $00 $1F $1F $00
.db $00 $08 $F8 $F0 $00 $08 $F8 $F0 $00 $08 $F8 $F0 $00 $08 $F8 $F0
.db $00 $08 $F8 $F0 $00 $08 $F8 $F0 $00 $04 $FC $F8 $00 $FC $FC $00
.db $00 $0F $0F $00 $00 $10 $1F $0F $00 $26 $3F $19 $00 $2F $3F $10
.db $00 $1F $0B $14 $00 $1F $1F $00 $40 $1E $1F $01 $A0 $18 $1F $07
.db $80 $00 $7F $7F $80 $00 $7F $7F $80 $48 $7F $37 $80 $30 $3F $0F
.db $80 $20 $3F $1F $80 $20 $3F $1F $80 $10 $1F $0F $80 $0F $0F $00
.db $00 $08 $F8 $F0 $00 $08 $F8 $F0 $00 $08 $F8 $F0 $00 $08 $F8 $F0
.db $00 $08 $F8 $F0 $00 $04 $FC $F8 $00 $02 $FE $FC $00 $FE $FE $00

; Data from 1F0A9 to 1F108 (96 bytes)
_DATA_1F0A9_:
.dsb 12, $00
.db $18 $00 $00 $00 $3C $00 $00 $00 $7E $00 $00 $00 $FF $00 $00 $00
.db $FF $00 $00 $00 $40 $3F $3F $00 $40 $3F $3F $00 $C0 $3F $3F $00
.db $C0 $3F $3F $00 $C0 $3F $3F $00 $C0 $3F $3F $00 $40 $3F $3F $00
.db $00 $1F $1F $00 $20 $C0 $C0 $00 $20 $C0 $C0 $00 $30 $C0 $C0 $00
.db $30 $C0 $C0 $00 $30 $C0 $C0 $00 $30 $C0 $C0 $00 $20 $C0 $C0 $00
.db $00 $80 $80 $00

; 1st entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F109 to 1F154 (76 bytes)
_DATA_1F109_:
.db $9C $20 $B0 $84 $80 $B0 $9A $60 $B0 $83 $C0 $B0 $19 $20 $E7 $D5
.db $DC $D3 $DF $DD $D5 $B1 $B0 $E0 $DC $D5 $D1 $E3 $D5 $B0 $D2 $E5
.db $E9 $B0 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0 $98 $60 $B0 $01 $80 $E4
.db $18 $20 $D8 $D5 $B0 $E4 $D8 $D9 $DE $D7 $E3 $B0 $E4 $D8 $D1 $E4
.db $B0 $E9 $DF $E5 $B0 $DC $D9 $DB $D5 $BE $00 $00

; 2nd entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F155 to 1F19C (72 bytes)
_DATA_1F155_:
.db $9A $20 $B0 $84 $80 $B0 $98 $60 $B0 $83 $C0 $B0 $17 $20 $E9 $DF
.db $E5 $B0 $D1 $E2 $D5 $B0 $E3 $D8 $DF $E2 $E4 $B0 $DF $D6 $B0 $DD
.db $DF $DE $D5 $E9 $BC $01 $80 $B0 $96 $60 $B0 $01 $80 $D1 $16 $20
.db $E2 $D5 $DE $B7 $E4 $B0 $E9 $DF $E5 $CF
.dsb 12, $B0
.db $00 $00

; 3rd entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F19D to 1F1B7 (27 bytes)
_DATA_1F19D_:
.db $8D $20 $B0 $02 $80 $B0 $B0 $8B $60 $B0 $01 $C0 $B0 $0A $20 $E4
.db $D8 $D1 $DE $DB $B0 $E9 $DF $E5 $BE $00 $00

; 6th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F1B8 to 1F271 (186 bytes)
_DATA_1F1B8_:
.db $9D $20 $B0 $8A $80 $B0 $9B $60 $B0 $89 $C0 $B0 $1A $20 $D9 $B7
.db $DD $B0 $B2 $E0 $D1 $E0 $D5 $E2 $B0 $D8 $D5 $D1 $D4 $BC $B2
.dsb 9, $B0
.db $01 $80 $B0 $99 $60 $B0 $01 $80 $E4 $19 $20 $D8 $D5 $B0 $D6 $D9
.db $E2 $E3 $E4 $B0 $D8 $D5 $DE $D3 $D8 $DD $D1 $DE $B0 $DF $D6 $B0
.db $E4 $D8 $D5 $B0 $01 $80 $B0 $99 $60 $B0 $01 $80 $DB $19 $20 $D9
.db $DE $D7 $BE $B0 $D9 $B7 $DC $DC $B0 $DC $D5 $E4 $B0 $E9 $DF $E5
.db $B0 $E0 $D1 $E3 $E3 $B0 $D2 $E9 $01 $80 $B0 $99 $60 $B0 $01 $80
.db $D8 $19 $20 $D5 $E2 $D5 $B0 $D9 $D6 $B0 $E9 $DF $E5 $B0 $E7 $D9
.db $DE $B0 $E4 $D8 $E2 $D5 $D5 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0 $99
.db $60 $B0 $01 $80 $B2 $19 $20 $DA $D1 $DE $DB $D5 $DE $B2 $B0 $DD
.db $D1 $E4 $D3 $D8 $D5 $E3 $BE
.dsb 9, $B0
.db $00 $00

; 5th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F272 to 1F32B (186 bytes)
_DATA_1F272_:
.db $9D $20 $B0 $8A $80 $B0 $9B $60 $B0 $89 $C0 $B0 $1A $20 $D9 $B7
.db $DD $B0 $B2 $E3 $D3 $D9 $E3 $E3 $DF $E2 $E3 $B0 $D8 $D5 $D1 $D4
.db $BC $B2 $B0 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0 $99 $60 $B0 $01 $80
.db $E4 $19 $20 $D8 $D5 $B0 $E3 $D5 $D3 $DF $DE $D4 $B0 $D8 $D5 $DE
.db $D3 $D8 $DD $D1 $DE $B0 $DF $D6 $B0 $E4 $D8 $D5 $01 $80 $B0 $99
.db $60 $B0 $01 $80 $DB $19 $20 $D9 $DE $D7 $BE $B0 $D9 $B7 $DC $DC
.db $B0 $DC $D5 $E4 $B0 $E9 $DF $E5 $B0 $E0 $D1 $E3 $E3 $B0 $D2 $E9
.db $01 $80 $B0 $99 $60 $B0 $01 $80 $D8 $19 $20 $D5 $E2 $D5 $B0 $D9
.db $D6 $B0 $E9 $DF $E5 $B0 $E7 $D9 $DE $B0 $E4 $D8 $E2 $D5 $D5 $B0
.db $B0 $B0 $B0 $B0 $01 $80 $B0 $99 $60 $B0 $01 $80 $B2 $19 $20 $DA
.db $D1 $DE $DB $D5 $DE $B2 $B0 $DD $D1 $E4 $D3 $D8 $D5 $E3 $BE
.dsb 9, $B0
.db $00 $00

; 4th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F32C to 1F3E5 (186 bytes)
_DATA_1F32C_:
.db $9D $20 $B0 $8A $80 $B0 $9B $60 $B0 $89 $C0 $B0 $1A $20 $D9 $B7
.db $DD $B0 $B2 $E3 $E4 $DF $DE $D5 $B0 $D8 $D5 $D1 $D4 $BC $B2
.dsb 9, $B0
.db $01 $80 $B0 $99 $60 $B0 $01 $80 $E4 $19 $20 $D8 $D5 $B0 $E4 $D8
.db $D9 $E2 $D4 $B0 $D8 $D5 $DE $D3 $D8 $DD $D1 $DE $B0 $DF $D6 $B0
.db $E4 $D8 $D5 $B0 $01 $80 $B0 $99 $60 $B0 $01 $80 $DB $19 $20 $D9
.db $DE $D7 $BE $B0 $D9 $B7 $DC $DC $B0 $DC $D5 $E4 $B0 $E9 $DF $E5
.db $B0 $E0 $D1 $E3 $E3 $B0 $D2 $E9 $01 $80 $B0 $99 $60 $B0 $01 $80
.db $D8 $19 $20 $D5 $E2 $D5 $B0 $D9 $D6 $B0 $E9 $DF $E5 $B0 $E7 $D9
.db $DE $B0 $E4 $D8 $E2 $D5 $D5 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0 $99
.db $60 $B0 $01 $80 $B2 $19 $20 $DA $D1 $DE $DB $D5 $DE $B2 $B0 $DD
.db $D1 $E4 $D3 $D8 $D5 $E3 $BE
.dsb 9, $B0
.db $00 $00

; 7th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F3E6 to 1F473 (142 bytes)
_DATA_1F3E6_:
.db $9B $20 $B0 $88 $80 $B0 $99 $60 $B0 $87 $C0 $B0 $18 $20 $E9 $DF
.db $E5 $B0 $DD $E5 $E3 $E4 $B0 $D3 $D8 $DF $DF $E3 $D5 $B0 $D5 $D9
.db $E4 $D8 $D5 $E2 $B0 $B0 $01 $80 $B0 $97 $60 $B0 $01 $80 $E4 $17
.db $20 $D8 $D5 $B0 $B2 $E0 $D1 $E0 $D5 $E2 $BC $B2 $B0 $B2 $E3 $D3
.db $D9 $E3 $E3 $DF $E2 $E3 $BC $B2 $01 $80 $B0 $97 $60 $B0 $01 $80
.db $DF $17 $20 $E2 $B0 $B2 $E3 $E4 $DF $DE $D5 $B2 $B0 $D2 $D5 $D6
.db $DF $E2 $D5 $B0 $E4 $D8 $D5 $B0 $B0 $B0 $01 $80 $B0 $97 $60 $B0
.db $01 $80 $DD $17 $20 $E5 $E3 $D9 $D3 $B0 $E3 $E4 $DF $E0 $E3 $BE
.dsb 12, $B0
.db $00 $00

; 8th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F474 to 1F496 (35 bytes)
_DATA_1F474_:
.db $95 $20 $B0 $02 $80 $B0 $B0 $93 $60 $B0 $01 $C0 $B0 $12 $20 $D9
.db $B0 $E7 $D9 $DE $BE $B0 $E9 $DF $E5 $B0 $D7 $DF $E4 $B0 $D9 $E4
.db $BE $00 $00

; 9th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F497 to 1F4B7 (33 bytes)
_DATA_1F497_:
.db $93 $20 $B0 $02 $80 $B0 $B0 $91 $60 $B0 $01 $C0 $B0 $10 $20 $D4
.db $D1 $E2 $DE $B0 $D9 $E4 $BE $B0 $D9 $B0 $DC $DF $E3 $D5 $BE $00
.db $00

; 10th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F4B8 to 1F4F9 (66 bytes)
_DATA_1F4B8_:
.db $97 $20 $B0 $84 $80 $B0 $95 $60 $B0 $83 $C0 $B0 $14 $20 $D9 $E4
.db $B7 $E3 $B0 $D1 $B0 $D4 $E2 $D1 $E7 $BE $B0 $B0 $B0 $B0 $B0 $B0
.db $B0 $B0 $01 $80 $B0 $93 $60 $B0 $01 $80 $E9 $13 $20 $DF $E5 $B0
.db $E3 $E5 $E2 $D5 $B0 $DC $E5 $D3 $DB $D5 $D4 $B0 $DF $E5 $E4 $BE
.db $00 $00

; 11th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F4FA to 1F568 (111 bytes)
_DATA_1F4FA_:
.db $9C $20 $B0 $86 $80 $B0 $9A $60 $B0 $85 $C0 $B0 $19 $20 $E7 $D5
.db $DC $DC $B0 $D9 $E4 $B0 $DC $DF $DF $DB $E3 $B0 $DC $D9 $DB $D5
.db $B0 $E4 $D8 $D1 $E4 $B7 $E3 $01 $80 $B0 $98 $60 $B0 $01 $80 $E4
.db $18 $20 $D8 $D5 $B0 $E7 $D1 $E9 $B0 $D9 $E4 $B7 $E3 $B0 $DD $D5
.db $D1 $DE $E4 $B0 $E4 $DF $B0 $D2 $D5 $BE $01 $80 $B0 $98 $60 $B0
.db $01 $80 $DF $18 $20 $DB $BE $B0 $E4 $D1 $DB $D5 $B0 $E4 $D8 $D9
.db $E3 $B1
.dsb 11, $B0
.db $00 $00

; 12th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F569 to 1F663 (251 bytes)
_DATA_1F569_:
.db $9C $20 $B0 $8E $80 $B0 $9A $60 $B0 $8D $C0 $B0 $19 $20 $D9 $E4
.db $B7 $E3 $B0 $DC $E5 $D3 $DB $E9 $B0 $E4 $D8 $D1 $E4 $B0 $E9 $DF
.db $E5 $B0 $D8 $D1 $E6 $D5 $B0 $01 $80 $B0 $98 $60 $B0 $01 $80 $DD
.db $18 $20 $D1 $DE $D1 $D7 $D5 $D4 $B0 $E4 $DF $B0 $D3 $DF $DD $D5
.db $B0 $E4 $D8 $D9 $E3 $B0 $D6 $D1 $E2 $BC $01 $80 $B0 $98 $60 $B0
.db $01 $80 $D8 $18 $20 $DF $E7 $D5 $E6 $D5 $E2 $BC $B0 $D9 $B7 $DC
.db $DC $B0 $E0 $E5 $E4 $B0 $D1 $DE $B0 $D5 $DE $D4 $B0 $01 $80 $B0
.db $98 $60 $B0 $01 $80 $E4 $18 $20 $DF $B0 $E4 $D8 $D1 $E4 $BE $B0
.db $DC $D5 $E4 $B7 $E3 $B0 $B2 $DA $D1 $DE $DB $D5 $DE $B2 $B0 $B0
.db $01 $80 $B0 $98 $60 $B0 $01 $80 $D6 $18 $20 $DF $E2 $B0 $E4 $D8
.db $E2 $D5 $D5 $B0 $DD $D1 $E4 $D3 $D8 $D5 $E3 $B0 $D1 $DE $D4 $B0
.db $D9 $D6 $B0 $01 $80 $B0 $98 $60 $B0 $01 $80 $E9 $18 $20 $DF $E5
.db $B0 $DC $DF $E3 $D5 $BC $B0 $D9 $B7 $DC $DC $B0 $DD $D1 $DB $D5
.db $B0 $E9 $DF $E5 $B0 $B0 $01 $80 $B0 $98 $60 $B0 $01 $80 $E4 $18
.db $20 $E5 $E2 $DE $B0 $D9 $DE $E4 $DF $B0 $D1 $B0 $E3 $E4 $DF $DE
.db $D5 $BE $B0 $B0 $B0 $B0 $B0 $B0 $B0 $00 $00

; 13th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F664 to 1F7DB (376 bytes)
_DATA_1F664_:
.db $9E $20 $B0 $94 $80 $B0 $9C $60 $B0 $93 $C0 $B0 $1B $20 $E7 $D5
.db $DC $D3 $DF $DD $D5 $BC $B0 $D1 $DC $D5 $E8 $BE $B0 $E9 $DF $E5
.db $B0 $D1 $E2 $D5 $B0 $D1 $B0 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01
.db $80 $E0 $1A $20 $E2 $D9 $DE $D3 $D5 $B0 $D6 $E2 $DF $DD $B0 $E4
.db $D8 $D5 $B0 $D3 $DF $E5 $DE $E4 $E2 $E9 $B0 $DF $D6 $B0 $01 $80
.db $B0 $9A $60 $B0 $01 $80 $E2 $1A $20 $D1 $D4 $D1 $E8 $D9 $D1 $DE
.db $BC $B0 $E7 $D8 $DF $B0 $E7 $D1 $E3 $B0 $DB $D9 $D4 $DE $D1 $E0
.db $E0 $D5 $D4 $01 $80 $B0 $9A $60 $B0 $01 $80 $D2 $1A $20 $E9 $B0
.db $D5 $E6 $D9 $DC $B0 $DD $D5 $DE $B0 $E7 $D8 $D5 $DE $B0 $E9 $DF
.db $E5 $B0 $E7 $D5 $E2 $D5 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80
.db $D2 $1A $20 $E5 $E4 $B0 $D1 $B0 $E3 $DD $D1 $DC $DC $B0 $D2 $DF
.db $E9 $BE $E9 $DF $E5 $E2 $B0 $DE $D1 $E4 $D9 $E6 $D5 $01 $80 $B0
.db $9A $60 $B0 $01 $80 $DC $1A $20 $D1 $DE $D4 $B0 $D9 $E3 $B0 $DE
.db $DF $E7 $B0 $D2 $D5 $D9 $DE $D7 $B0 $D7 $E2 $DF $E3 $E3 $DC $E9
.db $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $DD $1A $20 $D9 $E3 $D7
.db $DF $E6 $D5 $E2 $DE $D5 $D4 $B0 $D2 $E9 $B0 $E4 $D8 $D5 $B0 $E4
.db $E9 $E2 $D1 $DE $E4 $BC $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $B2
.db $1A $20 $DA $D1 $DE $DB $D5 $DE $B0 $E4 $D8 $D5 $B0 $D7 $E2 $D5
.db $D1 $E4 $BE $B2 $B0 $E9 $DF $E5 $E2 $B0 $B0 $B0 $01 $80 $B0 $9A
.db $60 $B0 $01 $80 $DD $1A $20 $D9 $E3 $E3 $D9 $DF $DE $B0 $D9 $E3
.db $B0 $E4 $DF $B0 $E3 $D1 $E6 $D5 $B0 $E4 $D8 $D5 $B0 $B0 $B0 $B0
.db $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $E0 $1A $20 $DF $E0 $E5 $DC
.db $D1 $D3 $D5 $B0 $D6 $E2 $DF $DD $B0 $D8 $D9 $DD $BE
.dsb 9, $B0
.db $00 $00

; 14th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F7DC to 1F8E4 (265 bytes)
_DATA_1F7DC_:
.db $9E $20 $B0 $8E $80 $B0 $9C $60 $B0 $8D $C0 $B0 $1B $20 $E0 $E2
.db $D9 $DE $D3 $D5 $B0 $D1 $DC $D5 $E8 $B0 $DF $D6 $B0 $B2 $E2 $D1
.db $D4 $D1 $E8 $D9 $D1 $DE $BC $B2 $B0 $01 $80 $B0 $9A $60 $B0 $01
.db $80 $E9 $1A $20 $DF $E5 $B0 $D1 $E2 $D5 $B0 $DC $DF $DF $DB $D9
.db $DE $D7 $B0 $E6 $D5 $E2 $E9 $B0 $E7 $D5 $DC $DC $B0 $B0 $01 $80
.db $B0 $9A $60 $B0 $01 $80 $D9 $1A $20 $DE $D4 $D5 $D5 $D4 $B1 $B0
.db $E7 $D5 $B0 $D8 $D5 $D1 $E2 $B0 $E4 $D8 $D1 $E4 $B0 $E9 $DF $E5
.db $E2 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $D5 $1A $20 $DC $D4
.db $D5 $E2 $B0 $D2 $E2 $DF $E4 $D8 $D5 $E2 $B0 $D9 $E3 $B0 $D9 $DD
.db $E0 $E2 $D9 $E3 $DF $DE $D5 $D4 $01 $80 $B0 $9A $60 $B0 $01 $80
.db $D9 $1A $20 $DE $B0 $E4 $D8 $D5 $B0 $B2 $E2 $D1 $D4 $D1 $E8 $D9
.db $D1 $DE $B2 $B0 $D3 $D1 $E3 $E4 $DC $D5 $B0 $B0 $B0 $01 $80 $B0
.db $9A $60 $B0 $01 $80 $D1 $1A $20 $DE $D4 $B0 $E9 $DF $E5 $B0 $D1
.db $E2 $D5 $B0 $E4 $D8 $D5 $B0 $DF $DE $DC $E9 $B0 $E0 $D5 $E2 $E3
.db $DF $DE $01 $80 $B0 $9A $60 $B0 $01 $80 $E7 $1A $20 $D8 $DF $B0
.db $D3 $D1 $DE $B0 $D3 $DF $DD $D5 $B0 $E4 $DF $B0 $D8 $D9 $E3 $B0
.db $E2 $D5 $E3 $D3 $E5 $D5 $BE $00 $00

; 15th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1F8E5 to 1FA5C (376 bytes)
_DATA_1F8E5_:
.db $9E $20 $B0 $94 $80 $B0 $9C $60 $B0 $93 $C0 $B0 $1B $20 $E4 $D8
.db $D1 $DE $DB $B0 $E9 $DF $E5 $BC $B0 $D1 $DC $D5 $E8 $BE $B0 $E4
.db $D8 $D5 $B0 $DD $DF $DF $DE $BD $B0 $01 $80 $B0 $9A $60 $B0 $01
.db $80 $DC $1A $20 $D9 $D7 $D8 $E4 $B0 $E3 $E4 $DF $DE $D5 $B0 $D9
.db $E3 $B0 $D9 $DE $B0 $E4 $D8 $D5 $B0 $B0 $B0 $B0 $B0 $B0 $01 $80
.db $B0 $9A $60 $B0 $01 $80 $DE $1A $20 $D9 $D2 $D1 $DE $D1 $B0 $DB
.db $D9 $DE $D7 $D4 $DF $DD $BC $E3 $DF $B0 $E9 $DF $E5 $B0 $DD $E5
.db $E3 $E4 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $E2 $1A $20 $D5 $D1
.db $D3 $D8 $B0 $E4 $D8 $D5 $E2 $D5 $B0 $D2 $D5 $D6 $DF $E2 $D5 $B0
.db $DA $D1 $DE $DB $D5 $DE $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80
.db $E4 $1A $20 $D8 $D5 $B0 $D7 $E2 $D5 $D1 $E4 $B0 $D4 $DF $D5 $E3
.db $BE $B0 $D1 $DE $B0 $D1 $E5 $E4 $DF $BD $B0 $B0 $B0 $01 $80 $B0
.db $9A $60 $B0 $01 $80 $D7 $1A $20 $E2 $D1 $E0 $D8 $D5 $D4 $B0 $DC
.db $D5 $E4 $E4 $D5 $E2 $B0 $D1 $D4 $D4 $E2 $D5 $E3 $E3 $D5 $D4 $B0
.db $E4 $DF $01 $80 $B0 $9A $60 $B0 $01 $80 $E4 $1A $20 $D8 $D5 $B0
.db $DE $D9 $D2 $D1 $DE $D1 $B0 $DB $D9 $DE $D7 $D4 $DF $DD $B0 $D9
.db $E3 $B0 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $D8
.db $1A $20 $D9 $D4 $D4 $D5 $DE $B0 $E3 $DF $DD $D5 $E7 $D8 $D5 $E2
.db $D5 $B0 $D9 $DE $B0 $E4 $D8 $D9 $E3 $B0 $B0 $B0 $01 $80 $B0 $9A
.db $60 $B0 $01 $80 $D3 $1A $20 $D1 $E3 $E4 $DC $D5 $BE $B0 $D1 $D6
.db $E4 $D5 $E2 $B0 $D6 $D9 $DE $D4 $D9 $DE $D7 $B0 $D9 $E4 $BC $B0
.db $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $E4 $1A $20 $D1 $DB $D5 $B0
.db $D9 $E4 $B0 $E7 $D9 $E4 $D8 $B0 $E9 $DF $E5 $BE
.dsb 10, $B0
.db $00 $00

; 16th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1FA5D to 1FB40 (228 bytes)
_DATA_1FA5D_:
.db $9E $20 $B0 $8C $80 $B0 $9C $60 $B0 $8B $C0 $B0 $1B $20 $DF $D8
.db $BC $D1 $DC $D5 $E8 $BC $D9 $B7 $DD $B0 $E4 $D5 $E2 $E2 $D9 $D2
.db $DC $E9 $B0 $E3 $DF $E2 $E2 $E9 $BC $01 $80 $B0 $9A $60 $B0 $01
.db $80 $D2 $1A $20 $E5 $E4 $B0 $D9 $B0 $E7 $D1 $E3 $B0 $DA $E5 $E3
.db $E4 $B0 $E2 $DF $D2 $D2 $D5 $D4 $B0 $DF $D6 $B0 $B0 $B0 $01 $80
.db $B0 $9A $60 $B0 $01 $80 $E4 $1A $20 $D8 $D5 $B0 $DD $DF $DF $DE
.db $DC $D9 $D7 $D8 $E4 $B0 $E3 $E4 $DF $DE $D5 $BE $B0 $E4 $D8 $D5
.db $B0 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $B2 $1A $20 $D3 $E2
.db $DF $E7 $DE $B2 $B0 $D9 $E3 $B0 $D9 $DE $B0 $DC $D1 $DB $D5 $B0
.db $D4 $D5 $D5 $E0 $BE $B0 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80
.db $E9 $1A $20 $DF $E5 $B7 $D4 $B0 $D2 $D5 $E4 $E4 $D5 $E2 $B0 $E4
.db $D1 $DB $D5 $B0 $E4 $D8 $D9 $E3 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0
.db $9A $60 $B0 $01 $80 $E3 $1A $20 $E4 $DF $DE $D5 $B0 $E3 $DC $D1
.db $D2 $B0 $E7 $D9 $E4 $D8 $B0 $E9 $DF $E5 $BE $B0 $B0 $B0 $B0 $B0
.db $B0 $B0 $00 $00

; 17th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1FB41 to 1FB88 (72 bytes)
_DATA_1FB41_:
.db $9A $20 $B0 $84 $80 $B0 $98 $60 $B0 $83 $C0 $B0 $17 $20 $D9 $B0
.db $D8 $D1 $E6 $D5 $B0 $DE $DF $B0 $D2 $E5 $E3 $D9 $DE $D5 $E3 $E3
.db $B0 $E7 $D9 $E4 $D8 $01 $80 $B0 $96 $60 $B0 $01 $80 $E9 $16 $20
.db $DF $E5 $BC $B0 $E3 $DF $B0 $E0 $DC $D5 $D1 $E3 $D5 $B0 $DC $D5
.db $D1 $E6 $D5 $BE $B0 $B0 $00 $00

; 18th entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1FB89 to 1FC47 (191 bytes)
_DATA_1FB89_:
.db $9E $20 $B0 $8A $80 $B0 $9C $60 $B0 $89 $C0 $B0 $1B $20 $E4 $D8
.db $D1 $DE $DB $B0 $E9 $DF $E5 $BC $D1 $DC $D5 $E8 $BE $E9 $DF $E5
.db $E2 $B0 $DD $DF $E4 $D8 $D5 $E2 $B0 $01 $80 $B0 $9A $60 $B0 $01
.db $80 $D9 $1A $20 $E3 $B0 $E7 $D5 $DC $DC $B0 $D1 $DE $D4 $B0 $D9
.db $DE $B0 $D7 $DF $DF $D4 $B0 $D8 $D1 $DE $D4 $E3 $BE $B0 $01 $80
.db $B0 $9A $60 $B0 $01 $80 $E0 $1A $20 $DC $D5 $D1 $E3 $D5 $B0 $E3
.db $D1 $E6 $D5 $B0 $E4 $D8 $D5 $B0 $E2 $D1 $D4 $D1 $E8 $D9 $D1 $DE
.db $B0 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80 $E0 $1A $20 $D5 $DF
.db $E0 $DC $D5 $B0 $E7 $D9 $E4 $D8 $B0 $E9 $DF $E5 $E2 $B0 $DD $DF
.db $E3 $E4 $B0 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0 $9A $60 $B0 $01 $80
.db $E0 $1A $20 $DF $E7 $D5 $E2 $D6 $E5 $DC $B0 $E7 $D5 $D1 $E0 $DF
.db $DE $BC $E4 $D8 $D5 $B2 $D3 $E2 $DF $E7 $DE $BE $B2 $00 $00

; 21st entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1FC48 to 1FC83 (60 bytes)
_DATA_1FC48_:
.db $94 $20 $B0 $84 $80 $B0 $92 $60 $B0 $83 $C0 $B0 $11 $20 $E9 $DF
.db $E5 $B0 $D2 $D5 $E4 $E4 $D5 $E2 $B0 $D1 $D3 $D3 $D5 $E0 $E4 $01
.db $80 $B0 $90 $60 $B0 $01 $80 $E4 $10 $20 $D8 $D5 $B0 $D9 $DE $D5
.db $E6 $D9 $E4 $D1 $D2 $DC $D5 $B1 $B0 $B0 $00 $00

; 22nd entry of Pointer Table from 7F50 (indexed by v_messageToShowInTheTextBoxIndex)
; Data from 1FC84 to 1FC9D (26 bytes)
_DATA_1FC84_:
.db $8C $20 $B0 $02 $80 $B0 $B0 $8A $60 $B0 $01 $C0 $B0 $09 $20 $E3
.db $DF $DC $D4 $B0 $DF $E5 $E4 $BE $00 $00

; 1st entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FC9E to 1FCBD (32 bytes)
_DATA_1FC9E_:
.db $30 $3F $37 $3B $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 15th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FCBE to 1FCDD (32 bytes)
_DATA_1FCBE_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 3rd entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FCDE to 1FCFD (32 bytes)
_DATA_1FCDE_:
.db $30 $3F $37 $3B $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $38 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 4th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FCFE to 1FD1D (32 bytes)
_DATA_1FCFE_:
.db $30 $3F $06 $01 $0F $0B $00 $2A $25 $3C $02 $03 $38 $0C $08 $00
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 5th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FD1E to 1FD3D (32 bytes)
_DATA_1FD1E_:
.db $30 $3F $03 $03 $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $38 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 6th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FD3E to 1FD5D (32 bytes)
_DATA_1FD3E_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 7th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FD5E to 1FD7D (32 bytes)
_DATA_1FD5E_:
.db $01 $3F $37 $3B $0F $0B $00 $2F $06 $0B $30 $3E $38 $03 $02 $01
.db $01 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 8th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FD7E to 1FD9D (32 bytes)
_DATA_1FD7E_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $04 $01 $2F $38 $0C $08 $04
.db $04 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 11th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FD9E to 1FDBD (32 bytes)
_DATA_1FD9E_:
.db $25 $3F $37 $3B $0F $0B $00 $2F $30 $3E $20 $34 $38 $06 $01 $05
.db $25 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 9th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FDBE to 1FDDD (32 bytes)
_DATA_1FDBE_:
.db $30 $3F $37 $03 $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $06 $0C $0F $08 $3A $36 $03 $0A

; 10th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FDDE to 1FDFD (32 bytes)
_DATA_1FDDE_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 12th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FDFE to 1FE1D (32 bytes)
_DATA_1FDFE_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 2nd entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FE1E to 1FE3D (32 bytes)
_DATA_1FE1E_:
.db $30 $3F $03 $03 $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 14th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FE3E to 1FE5D (32 bytes)
_DATA_1FE3E_:
.db $25 $3F $37 $3B $0F $0B $00 $2F $30 $0F $02 $07 $0B $06 $01 $3C
.db $25 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 16th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FE5E to 1FE7D (32 bytes)
_DATA_1FE5E_:
.db $20 $3F $37 $3B $0F $0B $00 $2F $30 $3E $3C $3E $38 $06 $01 $05
.db $20 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 17th entry of Pointer Table from 1112 (indexed by v_level)
; Data from 1FE7E to 1FFFF (386 bytes)
_DATA_1FE7E_:
.db $30 $3F $37 $3B $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A
.db $40 $00 $40 $02 $41 $60 $42 $60 $43 $60 $43 $60 $40 $00 $40 $02
.db $40 $00 $40 $02 $3D $80 $3E $80 $3D $80 $3E $80 $3E $80 $3D $80
.db $3E $80 $3D $80 $3D $80 $3E $80 $3D $80 $3E $80 $3E $80 $3D $80
.db $3E $80 $3D $80 $3D $80 $3E $80 $3D $80 $3E $80 $3E $80 $3D $80
.db $3E $80 $3D $80 $41 $60 $42 $60 $41 $60 $42 $60 $43 $60 $43 $60
.db $43 $60 $43 $60 $4D $00 $4D $02 $3D $80 $3E $80 $3E $80 $3D $80
.db $3D $80 $3E $80 $3E $80 $3D $80 $3D $80 $3E $80 $3E $80 $3D $80
.db $3D $80 $3E $80 $3E $80 $3D $80 $3D $80 $3E $80 $3E $80 $3D $80
.db $3D $80 $3E $80 $3E $80 $3D $80 $00 $00 $00 $00 $00 $00 $00 $00
.db $4D $00 $4D $02 $00 $00 $00 $00 $00 $00 $00 $00 $4D $00 $4D $02
.db $00 $00 $00 $00 $00 $00 $00 $00 $40 $60 $41 $60 $40 $60 $41 $60
.db $40 $60 $41 $60 $40 $60 $41 $60 $40 $60 $41 $60 $40 $60 $41 $60
.db $40 $60 $41 $60 $40 $60 $41 $60 $42 $60 $42 $60 $42 $60 $42 $60
.db $42 $60 $42 $60 $42 $60 $42 $60 $42 $60 $42 $60 $42 $60 $42 $60
.db $42 $60 $42 $60 $42 $60 $42 $60
.dsb 122, $FF

