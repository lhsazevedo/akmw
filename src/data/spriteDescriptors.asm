; 10th entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 8000 to 800D (14 bytes)
_DATA_8000_:
.db $04 $88 $00 $00 $08 $08 $00 $8C $08 $8D $00 $8E $08 $8F

; 9th entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 800E to 801B (14 bytes)
_DATA_800E_:
.db $04 $88 $00 $00 $08 $08 $00 $B7 $08 $B8 $00 $B9 $08 $BA

; 8th entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 801C to 8021 (6 bytes)
_DATA_801C_:
.db $04 $88 $00 $00 $08 $08

; 1st entry of Pointer Table from 5D8C (indexed by _RAM_CF98_)
; Data from 8022 to 8029 (8 bytes)
_DATA_8022_:
.db $00 $8C $08 $8D $00 $8E $08 $8F

; Data from 802A to 802E (5 bytes)
_DATA_802A_:
.db $02 $2F $80 $43 $80

; Data from 802F to 8056 (40 bytes)
_DATA_802F_:
.db $06 $00 $00 $00 $08 $08 $10 $10 $01 $55 $09 $56 $01 $57 $09 $58
.db $00 $59 $08 $5A $06 $00 $00 $00 $08 $08 $10 $10 $01 $55 $09 $56
.db $01 $5B $09 $5C $00 $59 $08 $5A

; 3rd entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 8057 to 8064 (14 bytes)
_DATA_8057_:
.db $04 $88 $00 $00 $08 $08 $00 $88 $08 $89 $00 $8A $08 $8B

; 4th entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 8065 to 8072 (14 bytes)
_DATA_8065_:
.db $04 $88 $00 $00 $08 $08 $00 $59 $08 $5A $00 $5B $08 $5C

; Data from 8073 to 80C4 (82 bytes)
.INC "src/asm/entities/jankensCastle/sprites.asm"

; 2nd entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 80C5 to 80D2 (14 bytes)
_DATA_80C5_:
.db $04 $88 $00 $00 $08 $08 $00 $7C $08 $7D $00 $7E $08 $7F

; 1st entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 80D3 to 80E0 (14 bytes)
_DATA_80D3_:
.db $04 $88 $00 $00 $08 $08 $00 $88 $08 $89 $00 $8A $08 $8B

; Data from 80E1 to 8101 (33 bytes)
_DATA_80E1_:
.db $01 $6C $00 $00 $1F $04 $00 $00 $00 $08 $08 $00 $18 $08 $19 $00
.db $1A $08 $1B $04 $00 $00 $00 $08 $08 $00 $10 $08 $11 $00 $12 $08
.db $13

; 4th entry of Pointer Table from 5D8C (indexed by _RAM_CF98_)
; Data from 8102 to 8102 (1 bytes)
_DATA_8102_:
.db $02

; Pointer Table from 8103 to 8106 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8107_ _DATA_810C_

; 1st entry of Pointer Table from 8103 (indexed by _RAM_CF84_)
; Data from 8107 to 810B (5 bytes)
_DATA_8107_:
.db $01 $00 $00 $00 $42

; 2nd entry of Pointer Table from 8103 (indexed by _RAM_CF84_)
; Data from 810C to 8110 (5 bytes)
_DATA_810C_:
.db $01 $00 $00 $00 $43

; 2nd entry of Pointer Table from 5D8C (indexed by _RAM_CF98_)
; Data from 8111 to 8111 (1 bytes)
_DATA_8111_:
.db $02

; Pointer Table from 8112 to 8115 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8116_ _DATA_811B_

; 1st entry of Pointer Table from 8112 (indexed by _RAM_CF84_)
; Data from 8116 to 811A (5 bytes)
_DATA_8116_:
.db $01 $00 $00 $00 $40

; 2nd entry of Pointer Table from 8112 (indexed by _RAM_CF84_)
; Data from 811B to 811F (5 bytes)
_DATA_811B_:
.db $01 $00 $00 $00 $41

; 3rd entry of Pointer Table from 5D8C (indexed by _RAM_CF98_)
; Data from 8120 to 8120 (1 bytes)
_DATA_8120_:
.db $02

; Pointer Table from 8121 to 8124 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8125_ _DATA_812A_

; 1st entry of Pointer Table from 8121 (indexed by _RAM_CF84_)
; Data from 8125 to 8129 (5 bytes)
_DATA_8125_:
.db $01 $00 $00 $00 $3E

; 2nd entry of Pointer Table from 8121 (indexed by _RAM_CF84_)
; Data from 812A to 812E (5 bytes)
_DATA_812A_:
.db $01 $00 $00 $00 $3F

; Data from 812F to 8133 (5 bytes)
_DATA_812F_:
.db $02 $34 $81 $48 $81

; Data from 8134 to 815B (40 bytes)
_DATA_8134_:
.db $06 $00 $00 $00 $08 $08 $10 $10 $00 $72 $08 $73 $00 $74 $08 $75
.db $00 $76 $08 $77 $06 $00 $00 $00 $08 $08 $10 $10 $00 $72 $08 $73
.db $00 $78 $08 $79 $00 $76 $08 $77

; Data from 815C to 816F (20 bytes)
_DATA_815C_:
.db $06 $00 $00 $00 $08 $08 $10 $10 $00 $7A $08 $7B $00 $7C $08 $7D
.db $00 $7E $08 $7F

; Data from 8170 to 8170 (1 bytes)
_DATA_8170_:
.db $02

; Pointer Table from 8171 to 8174 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_817E_ _DATA_8183_

; Data from 8175 to 8175 (1 bytes)
_DATA_8175_:
.db $04

; Pointer Table from 8176 to 817D (4 entries, indexed by _RAM_CF84_)
.dw _DATA_817E_ _DATA_8183_ _DATA_8191_ _DATA_8183_

; 1st entry of Pointer Table from 8171 (indexed by _RAM_CF84_)
; Data from 817E to 8182 (5 bytes)
_DATA_817E_:
.db $01 $00 $00 $00 $44

; 2nd entry of Pointer Table from 8171 (indexed by _RAM_CF84_)
; Data from 8183 to 8190 (14 bytes)
_DATA_8183_:
.db $04 $00 $FC $FC $04 $04 $FC $45 $04 $46 $FC $47 $04 $48

; 3rd entry of Pointer Table from 8176 (indexed by _RAM_CF84_)
; Data from 8191 to 81B6 (38 bytes)
_DATA_8191_:
.db $0C $00 $F4 $F4 $F4 $FC $FC $FC $04 $04 $04 $0C $0C $0C $F9 $49
.db $01 $4A $09 $4B $F8 $4C $00 $4D $08 $4E $F8 $4F $00 $50 $08 $51
.db $F9 $52 $01 $53 $09 $54

; FIXME> Move entities sprite descriptors to data
.INC "src/asm/entities/monsterBirdLeft/sprites.asm"
.INC "src/asm/entities/monsterBirdRight/sprites.asm"

; Data from 8211 to 8211 (1 bytes)
_DATA_8211_:
.db $02

; Pointer Table from 8212 to 8215 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8216_ _DATA_8239_

; 1st entry of Pointer Table from 8212 (indexed by _RAM_CF84_)
; Data from 8216 to 8238 (35 bytes)
_DATA_8216_:
.db $0B $5C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $02 $AE $0A
.db $AF $12 $B0 $01 $B1 $09 $B2 $11 $B3 $01 $B4 $09 $B5 $11 $B6 $05
.db $B7 $0D $B8

; 2nd entry of Pointer Table from 8212 (indexed by _RAM_CF84_)
; Data from 8239 to 825B (35 bytes)
_DATA_8239_:
.db $0B $5C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $02 $AE $0A
.db $AF $12 $B0 $01 $B9 $09 $B2 $11 $BA $01 $BB $09 $BC $11 $BD $05
.db $BE $0D $BF

; Data from 825C to 825C (1 bytes)
_DATA_825C_:
.db $02

; Pointer Table from 825D to 8260 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8261_ _DATA_8266_

; 1st entry of Pointer Table from 825D (indexed by _RAM_CF84_)
; Data from 8261 to 8265 (5 bytes)
_DATA_8261_:
.db $01 $88 $00 $00 $AC

; 2nd entry of Pointer Table from 825D (indexed by _RAM_CF84_)
; Data from 8266 to 826A (5 bytes)
_DATA_8266_:
.db $01 $88 $00 $00 $AD

; Data from 826B to 826B (1 bytes)
_DATA_826B_:
.db $02

; Pointer Table from 826C to 826F (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8270_ _DATA_827B_

; 1st entry of Pointer Table from 826C (indexed by _RAM_CF84_)
; Data from 8270 to 827A (11 bytes)
_DATA_8270_:
.db $03 $64 $00 $08 $08 $0A $A8 $00 $A9 $08 $AA

; 2nd entry of Pointer Table from 826C (indexed by _RAM_CF84_)
; Data from 827B to 8285 (11 bytes)
_DATA_827B_:
.db $03 $64 $00 $08 $08 $08 $AB $00 $AC $08 $AD

; Data from 8286 to 8286 (1 bytes)
_DATA_8286_:
.db $02

; Pointer Table from 8287 to 828A (2 entries, indexed by _RAM_CF84_)
.dw _DATA_828B_ _DATA_8296_

; 1st entry of Pointer Table from 8287 (indexed by _RAM_CF84_)
; Data from 828B to 8295 (11 bytes)
_DATA_828B_:
.db $03 $68 $00 $08 $08 $FE $AE $08 $AF $00 $B0

; 2nd entry of Pointer Table from 8287 (indexed by _RAM_CF84_)
; Data from 8296 to 82BC (39 bytes)
_DATA_8296_:
.db $03 $68 $00 $08 $08 $00 $B1 $08 $B2 $00 $B3 $04 $6C $00 $00 $08
.db $08 $00 $95 $08 $96 $00 $97 $08 $98 $04 $6C $00 $00 $08 $08 $00
.db $99 $08 $9A $01 $9B $09 $9C

; Data from 82BD to 82CA (14 bytes)
_DATA_82BD_:
.db $04 $6C $00 $00 $08 $08 $08 $9D $00 $9E $08 $9F $00 $A0

; Data from 82CB to 82D8 (14 bytes)
_DATA_82CB_:
.db $04 $6C $00 $00 $08 $08 $08 $A1 $00 $A2 $07 $A3 $FF $A4

; Data from 82D9 to 82DD (5 bytes)
_DATA_82D9_:
.db $02 $DE $82 $F2 $82

; Data from 82DE to 8305 (40 bytes)
_DATA_82DE_:
.db $06 $00 $00 $00 $08 $08 $10 $10 $01 $95 $09 $96 $00 $97 $08 $98
.db $00 $99 $08 $9A $06 $00 $00 $00 $08 $08 $10 $10 $01 $95 $09 $96
.db $00 $9B $08 $9C $00 $99 $08 $9A

; Data from 8306 to 830A (5 bytes)
_DATA_8306_:
.db $02 $31 $83 $45 $83

; Data from 830B to 8330 (38 bytes)
_DATA_830B_:
.db $0C $00 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $00 $8C
.db $08 $8D $10 $8E $01 $8F $09 $90 $11 $91 $01 $92 $09 $93 $11 $94
.db $00 $95 $08 $96 $10 $97

; Data from 8331 to 8358 (40 bytes)
_DATA_8331_:
.db $06 $00 $08 $08 $10 $10 $18 $18 $04 $98 $0C $99 $04 $9A $0C $9B
.db $05 $9C $0D $9D $06 $00 $08 $08 $10 $10 $18 $18 $04 $98 $0C $99
.db $04 $9E $0C $9F $05 $9C $0D $9D

.INC "entities/moneyBag/sprites.asm"

; Data from 8372 to 8372 (1 bytes)
_DATA_8372_:
.db $04

; Pointer Table from 8373 to 837A (4 entries, indexed by _RAM_CF84_)
.dw _DATA_837B_ _DATA_8380_ _DATA_838E_ _DATA_8380_

; 1st entry of Pointer Table from 8373 (indexed by _RAM_CF84_)
; Data from 837B to 837F (5 bytes)
_DATA_837B_:
.db $01 $00 $00 $00 $11

; 2nd entry of Pointer Table from 8373 (indexed by _RAM_CF84_)
; Data from 8380 to 838D (14 bytes)
_DATA_8380_:
.db $04 $74 $FC $FC $04 $04 $FC $12 $04 $13 $FF $14 $07 $15

; 3rd entry of Pointer Table from 8373 (indexed by _RAM_CF84_)
; Data from 838E to 83AA (29 bytes)
_DATA_838E_:
.db $09 $00 $F8 $F8 $F8 $00 $00 $00 $08 $08 $08 $FA $16 $02 $17 $0A
.db $18 $F8 $19 $00 $1A $08 $1B $FA $1C $02 $1D $0A $1E

; Data from 83AB to 83AB (1 bytes)
_DATA_83AB_:
.db $02

; Pointer Table from 83AC to 83AF (2 entries, indexed by _RAM_CF84_)
.dw _DATA_83B0_ _DATA_83C4_

; 1st entry of Pointer Table from 83AC (indexed by _RAM_CF84_)
; Data from 83B0 to 83C3 (20 bytes)
_DATA_83B0_:
.db $06 $78 $00 $00 $00 $08 $08 $08 $02 $65 $0A $66 $12 $67 $00 $68
.db $08 $69 $10 $6A

; 2nd entry of Pointer Table from 83AC (indexed by _RAM_CF84_)
; Data from 83C4 to 83D7 (20 bytes)
_DATA_83C4_:
.db $06 $78 $00 $00 $00 $08 $08 $08 $02 $6B $0A $6C $12 $6D $00 $6E
.db $08 $6F $10 $70

; Data from 83D8 to 83D8 (1 bytes)
_DATA_83D8_:
.db $02

; Pointer Table from 83D9 to 83DC (2 entries, indexed by _RAM_CF84_)
.dw _DATA_83DD_ _DATA_83F1_

; 1st entry of Pointer Table from 83D9 (indexed by _RAM_CF84_)
; Data from 83DD to 83F0 (20 bytes)
_DATA_83DD_:
.db $06 $7C $00 $00 $00 $08 $08 $08 $0E $71 $06 $72 $FE $73 $10 $74
.db $08 $75 $00 $76

; 2nd entry of Pointer Table from 83D9 (indexed by _RAM_CF84_)
; Data from 83F1 to 8404 (20 bytes)
_DATA_83F1_:
.db $06 $7C $00 $00 $00 $08 $08 $08 $0E $77 $06 $78 $FE $79 $10 $7A
.db $08 $7B $00 $7C

; Data from 8405 to 8405 (1 bytes)
_DATA_8405_:
.db $02

; Pointer Table from 8406 to 8409 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_840A_ _DATA_8430_

; 1st entry of Pointer Table from 8406 (indexed by _RAM_CF84_)
; Data from 840A to 842F (38 bytes)
_DATA_840A_:
.db $0C $80 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $16 $77
.db $0E $78 $06 $79 $FE $7A $18 $7B $10 $7C $08 $7D $00 $7E $15 $7F
.db $0D $80 $04 $81 $FC $82

; 2nd entry of Pointer Table from 8406 (indexed by _RAM_CF84_)
; Data from 8430 to 8452 (35 bytes)
_DATA_8430_:
.db $0B $80 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $15 $83 $0D
.db $84 $05 $85 $FD $86 $17 $87 $0F $88 $07 $89 $FF $8A $16 $8B $0D
.db $8C $05 $8D

; Data from 8453 to 8453 (1 bytes)
_DATA_8453_:
.db $02

; Pointer Table from 8454 to 8457 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8458_ _DATA_847E_

; 1st entry of Pointer Table from 8454 (indexed by _RAM_CF84_)
; Data from 8458 to 847D (38 bytes)
_DATA_8458_:
.db $0C $80 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $02 $60
.db $0A $61 $12 $62 $1A $63 $00 $64 $08 $65 $10 $66 $18 $67 $03 $68
.db $0B $69 $14 $6A $1C $6B

; 2nd entry of Pointer Table from 8454 (indexed by _RAM_CF84_)
; Data from 847E to 84A0 (35 bytes)
_DATA_847E_:
.db $0B $80 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $03 $6C $0B
.db $6D $13 $6E $1B $6F $01 $70 $09 $71 $11 $72 $19 $73 $02 $74 $0B
.db $75 $13 $76

; Data from 84A1 to 84A1 (1 bytes)
_DATA_84A1_:
.db $02

; Pointer Table from 84A2 to 84A5 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_84A6_ _DATA_84B4_

; 1st entry of Pointer Table from 84A2 (indexed by _RAM_CF84_)
; Data from 84A6 to 84B3 (14 bytes)
_DATA_84A6_:
.db $04 $84 $00 $00 $08 $08 $00 $94 $08 $95 $00 $96 $08 $97

; 2nd entry of Pointer Table from 84A2 (indexed by _RAM_CF84_)
; Data from 84B4 to 84C1 (14 bytes)
_DATA_84B4_:
.db $04 $84 $00 $00 $08 $08 $00 $94 $08 $98 $00 $96 $08 $99

; Data from 84C2 to 84C2 (1 bytes)
_DATA_84C2_:
.db $02

; Pointer Table from 84C3 to 84C6 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_84C7_ _DATA_84D5_

; 1st entry of Pointer Table from 84C3 (indexed by _RAM_CF84_)
; Data from 84C7 to 84D4 (14 bytes)
_DATA_84C7_:
.db $04 $84 $00 $00 $08 $08 $08 $9A $00 $9B $08 $9C $00 $9D

; 2nd entry of Pointer Table from 84C3 (indexed by _RAM_CF84_)
; Data from 84D5 to 84E2 (14 bytes)
_DATA_84D5_:
.db $04 $84 $00 $00 $08 $08 $08 $9A $00 $9E $08 $9C $00 $9F

; Data from 84E3 to 84EC (10 bytes)
_DATA_84E3_:
.db $01 $88 $00 $00 $BF $01 $88 $00 $00 $10

; Data from 84ED to 84ED (1 bytes)
_DATA_84ED_:
.db $02

; Pointer Table from 84EE to 84F1 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8509_ _DATA_84F2_

; 2nd entry of Pointer Table from 84EE (indexed by _RAM_CF84_)
; Data from 84F2 to 8508 (23 bytes)
_DATA_84F2_:
.db $07 $8C $00 $00 $00 $08 $08 $10 $10 $00 $60 $00 $55 $08 $56 $00
.db $57 $08 $58 $01 $59 $09 $5A

; 1st entry of Pointer Table from 84EE (indexed by _RAM_CF84_)
; Data from 8509 to 851C (20 bytes)
_DATA_8509_:
.db $06 $8C $00 $00 $08 $08 $10 $10 $01 $5B $09 $5C $01 $5D $09 $5E
.db $01 $5F $09 $5A

; Data from 851D to 8521 (5 bytes)
_DATA_851D_:
.db $01 $88 $00 $00 $60

; Data from 8522 to 8522 (1 bytes)
_DATA_8522_:
.db $02

; Pointer Table from 8523 to 8526 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8527_ _DATA_852F_

; 1st entry of Pointer Table from 8523 (indexed by _RAM_CF84_)
; Data from 8527 to 852E (8 bytes)
_DATA_8527_:
.db $02 $90 $00 $08 $00 $10 $01 $11

; 2nd entry of Pointer Table from 8523 (indexed by _RAM_CF84_)
; Data from 852F to 8536 (8 bytes)
_DATA_852F_:
.db $02 $90 $00 $08 $00 $12 $00 $13

; Data from 8537 to 8537 (1 bytes)
_DATA_8537_:
.db $02

; Pointer Table from 8538 to 853B (2 entries, indexed by _RAM_CF84_)
.dw _DATA_853C_ _DATA_8544_

; 1st entry of Pointer Table from 8538 (indexed by _RAM_CF84_)
; Data from 853C to 8543 (8 bytes)
_DATA_853C_:
.db $02 $90 $00 $08 $00 $14 $FF $15

; 2nd entry of Pointer Table from 8538 (indexed by _RAM_CF84_)
; Data from 8544 to 854B (8 bytes)
_DATA_8544_:
.db $02 $90 $00 $08 $00 $16 $00 $17

; Data from 854C to 8559 (14 bytes)
_DATA_854C_:
.db $04 $98 $00 $00 $08 $08 $00 $80 $08 $81 $00 $82 $08 $83

; Data from 855A to 856D (20 bytes)
_DATA_855A_:
.db $06 $98 $F8 $F8 $00 $00 $08 $08 $00 $80 $08 $81 $01 $84 $09 $85
.db $04 $86 $0C $87

; Data from 856E to 8584 (23 bytes)
_DATA_856E_:
.db $07 $9C $00 $00 $08 $08 $10 $18 $20 $01 $BB $09 $BC $01 $BD $09
.db $BE $07 $BF $07 $BF $07 $BF

; Data from 8585 to 8585 (1 bytes)
_DATA_8585_:
.db $02

; Pointer Table from 8586 to 8589 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_858A_ _DATA_8598_

; 1st entry of Pointer Table from 8586 (indexed by _RAM_CF84_)
; Data from 858A to 8597 (14 bytes)
_DATA_858A_:
.db $04 $84 $00 $00 $08 $08 $00 $B4 $08 $B5 $01 $B6 $09 $B7

; 2nd entry of Pointer Table from 8586 (indexed by _RAM_CF84_)
; Data from 8598 to 85A5 (14 bytes)
_DATA_8598_:
.db $04 $84 $00 $00 $08 $08 $01 $B8 $09 $B9 $01 $B6 $09 $B7

; Data from 85A6 to 85A6 (1 bytes)
_DATA_85A6_:
.db $02

; Pointer Table from 85A7 to 85AA (2 entries, indexed by _RAM_CF84_)
.dw _DATA_85AB_ _DATA_85B9_

; 1st entry of Pointer Table from 85A7 (indexed by _RAM_CF84_)
; Data from 85AB to 85B8 (14 bytes)
_DATA_85AB_:
.db $04 $84 $00 $00 $08 $08 $02 $A0 $0A $A1 $01 $A2 $09 $A3

; 2nd entry of Pointer Table from 85A7 (indexed by _RAM_CF84_)
; Data from 85B9 to 85D4 (28 bytes)
_DATA_85B9_:
.db $04 $84 $00 $00 $08 $08 $02 $A4 $0A $A5 $00 $A6 $08 $A7 $04 $88
.db $00 $00 $08 $08 $00 $06 $08 $07 $00 $08 $08 $09

; Data from 85D5 to 85E8 (20 bytes)
_DATA_85D5_:
.db $06 $00 $00 $00 $00 $08 $08 $08 $01 $99 $09 $9A $11 $9B $00 $9C
.db $08 $9D $10 $9E

; Data from 85E9 to 85E9 (1 bytes)
_DATA_85E9_:
.db $14

; Pointer Table from 85EA to 8611 (20 entries, indexed by _RAM_CF84_)
.dw _DATA_8612_ _DATA_8629_ _DATA_8643_ _DATA_8660_ _DATA_8680_ _DATA_86A3_ _DATA_86C9_ _DATA_86F2_
.dw _DATA_871E_ _DATA_874D_ _DATA_877F_ _DATA_87B4_ _DATA_87EC_ _DATA_8827_ _DATA_8865_ _DATA_88A6_
.dw _DATA_88EA_ _DATA_8931_ _DATA_897B_ _DATA_89C8_

; 1st entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8612 to 8628 (23 bytes)
_DATA_8612_:
.db $07 $BC $00 $00 $00 $08 $08 $08 $10 $01 $99 $09 $9A $11 $9B $00
.db $9C $08 $9D $10 $9E $08 $9F

; 2nd entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8629 to 8642 (26 bytes)
_DATA_8629_:
.db $08 $BC $00 $00 $00 $08 $08 $08 $10 $18 $01 $99 $09 $9A $11 $9B
.db $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F

; 3rd entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8643 to 865F (29 bytes)
_DATA_8643_:
.db $09 $BC $00 $00 $00 $08 $08 $08 $10 $18 $20 $01 $99 $09 $9A $11
.db $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F

; 4th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8660 to 867F (32 bytes)
_DATA_8660_:
.db $0A $BC $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $01 $99 $09 $9A
.db $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F

; 5th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8680 to 86A2 (35 bytes)
_DATA_8680_:
.db $0B $BC $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $01 $99 $09
.db $9A $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F

; 6th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 86A3 to 86C8 (38 bytes)
_DATA_86A3_:
.db $0C $BC $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $01 $99
.db $09 $9A $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F

; 7th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 86C9 to 86F1 (41 bytes)
_DATA_86C9_:
.db $0D $BC $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $01
.db $99 $09 $9A $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F

; 8th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 86F2 to 871D (44 bytes)
_DATA_86F2_:
.db $0E $BC $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $01 $99 $09 $9A $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F

; 9th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 871E to 874C (47 bytes)
_DATA_871E_:
.db $0F $C0 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $01 $99 $09 $9A $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F

; 10th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 874D to 877E (50 bytes)
_DATA_874D_:
.db $10 $C0 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $01 $99 $09 $9A $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F

; 11th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 877F to 87B3 (53 bytes)
_DATA_877F_:
.db $11 $C0 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $01 $99 $09 $9A $11 $9B $00 $9C $08 $9D $10 $9E $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F

; 12th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 87B4 to 87EB (56 bytes)
_DATA_87B4_:
.db $12 $C0 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $01 $99 $09 $9A $11 $9B $00 $9C $08 $9D $10 $9E
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F

; 13th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 87EC to 8826 (59 bytes)
_DATA_87EC_:
.db $13 $C0 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $01 $99 $09 $9A $11 $9B $00 $9C $08 $9D $10
.db $9E $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F

; 14th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8827 to 8864 (62 bytes)
_DATA_8827_:
.db $14 $C0 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $78 $01 $99 $09 $9A $11 $9B $00 $9C $08 $9D
.db $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F

; 15th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8865 to 88A5 (65 bytes)
_DATA_8865_:
.db $15 $C4 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $78 $80 $01 $99 $09 $9A $11 $9B $00 $9C $08
.db $9D $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F

; 16th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 88A6 to 88E9 (68 bytes)
_DATA_88A6_:
.db $16 $C4 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $78 $80 $88 $01 $99 $09 $9A $11 $9B $00 $9C
.db $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F

; 17th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 88EA to 8930 (71 bytes)
_DATA_88EA_:
.db $17 $C4 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $78 $80 $88 $90 $01 $99 $09 $9A $11 $9B $00
.db $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F

; 18th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 8931 to 897A (74 bytes)
_DATA_8931_:
.db $18 $C4 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $78 $80 $88 $90 $98 $01 $99 $09 $9A $11 $9B
.db $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F

; 19th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 897B to 89C7 (77 bytes)
_DATA_897B_:
.db $19 $C4 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $78 $80 $88 $90 $98 $A0 $01 $99 $09 $9A $11
.db $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08
.db $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F

; 20th entry of Pointer Table from 85EA (indexed by _RAM_CF84_)
; Data from 89C8 to 8A17 (80 bytes)
_DATA_89C8_:
.db $1A $C4 $00 $00 $00 $08 $08 $08 $10 $18 $20 $28 $30 $38 $40 $48
.db $50 $58 $60 $68 $70 $78 $80 $88 $90 $98 $A0 $A8 $01 $99 $09 $9A
.db $11 $9B $00 $9C $08 $9D $10 $9E $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F
.db $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F $08 $9F

; Data from 8A18 to 8A18 (1 bytes)
.INC "entities/arrow/sprites.asm"

; 5th entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 8A27 to 8A34 (14 bytes)
_DATA_8A27_:
.db $04 $84 $00 $00 $08 $08 $00 $6E $08 $6F $00 $70 $08 $71

; Data from 8A35 to 8A35 (1 bytes)
_DATA_8A35_:
.db $02

; Pointer Table from 8A36 to 8A39 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8A49_ _DATA_8A87_

; Data from 8A3A to 8A3A (1 bytes)
_DATA_8A3A_:
.db $02

; Pointer Table from 8A3B to 8A3E (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8ACB_ _DATA_8A87_

; Data from 8A3F to 8A3F (1 bytes)
_DATA_8A3F_:
.db $02

; Pointer Table from 8A40 to 8A43 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8B03_ _DATA_8B41_

; Data from 8A44 to 8A44 (1 bytes)
_DATA_8A44_:
.db $02

; Pointer Table from 8A45 to 8A48 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8B85_ _DATA_8B41_

; 1st entry of Pointer Table from 8A36 (indexed by _RAM_CF84_)
; Data from 8A49 to 8A86 (62 bytes)
_DATA_8A49_:
.db $14 $AC $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $12 $61 $1A $62 $10 $63 $18 $64 $20 $65
.db $11 $66 $19 $67 $21 $68 $00 $69 $08 $6A $10 $6B $18 $6C $20 $6D
.db $02 $6E $0A $6F $12 $70 $1A $71 $22 $72 $15 $73 $1D $74

; 2nd entry of Pointer Table from 8A36 (indexed by _RAM_CF84_)
; Data from 8A87 to 8ACA (68 bytes)
_DATA_8A87_:
.db $16 $AC $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $28 $12 $61 $1A $62 $10 $63 $18 $64
.db $20 $65 $11 $66 $19 $75 $21 $76 $04 $69 $0C $77 $14 $78 $1C $79
.db $24 $7A $06 $6E $0E $7B $16 $7C $1E $7D $26 $7E $0F $7F $17 $80
.db $1F $81 $27 $82

; 1st entry of Pointer Table from 8A3B (indexed by _RAM_CF84_)
; Data from 8ACB to 8B02 (56 bytes)
_DATA_8ACB_:
.db $12 $B0 $F0 $F0 $F8 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18
.db $20 $20 $28 $28 $22 $83 $2A $84 $1E $85 $12 $61 $1A $86 $10 $87
.db $18 $88 $20 $65 $11 $66 $19 $89 $21 $68 $11 $8A $19 $8B $21 $8C
.db $17 $8D $1F $8E $15 $73 $1D $74

; 1st entry of Pointer Table from 8A40 (indexed by _RAM_CF84_)
; Data from 8B03 to 8B40 (62 bytes)
_DATA_8B03_:
.db $14 $B4 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $17 $8F $1F $90 $13 $91 $1B $92 $23 $93
.db $12 $94 $1A $95 $22 $96 $12 $97 $1A $98 $22 $99 $2A $9A $32 $9B
.db $14 $9C $1C $9D $24 $6F $2C $9E $34 $9F $15 $A0 $1D $A1

; 2nd entry of Pointer Table from 8A40 (indexed by _RAM_CF84_)
; Data from 8B41 to 8B84 (68 bytes)
_DATA_8B41_:
.db $16 $B4 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $18 $18 $20
.db $20 $20 $20 $20 $28 $28 $28 $28 $17 $8F $1F $90 $13 $91 $1B $92
.db $23 $93 $12 $A2 $1A $A3 $22 $96 $12 $A4 $1A $A5 $22 $A6 $2A $A7
.db $32 $A8 $11 $A9 $19 $AA $21 $AB $29 $AC $31 $AD $10 $AE $18 $AF
.db $20 $B0 $28 $82

; 1st entry of Pointer Table from 8A45 (indexed by _RAM_CF84_)
; Data from 8B85 to 8BBC (56 bytes)
_DATA_8B85_:
.db $12 $B8 $F0 $F0 $F8 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18
.db $20 $20 $28 $28 $0A $B1 $12 $B2 $12 $B3 $16 $B4 $1E $B5 $13 $91
.db $1B $92 $23 $93 $12 $94 $1A $95 $22 $96 $12 $97 $1A $98 $22 $B6
.db $14 $9C $1C $B7 $15 $A0 $1D $A1

; Data from 8BBD to 8BBD (1 bytes)
_DATA_8BBD_:
.db $02

; Pointer Table from 8BBE to 8BC1 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8BC2_ _DATA_8BCA_

; 1st entry of Pointer Table from 8BBE (indexed by _RAM_CF84_)
; Data from 8BC2 to 8BC9 (8 bytes)
_DATA_8BC2_:
.db $02 $C8 $00 $00 $00 $BA $08 $BB

; 2nd entry of Pointer Table from 8BBE (indexed by _RAM_CF84_)
; Data from 8BCA to 8BD1 (8 bytes)
_DATA_8BCA_:
.db $02 $C8 $00 $00 $02 $BC $0A $BD

; Data from 8BD2 to 8BD2 (1 bytes)
.INC "entities/smallFish/spritesLeft.asm"

; Data from 8BF3 to 8BF3 (1 bytes)
_DATA_8BF3_:
.db $02

; Pointer Table from 8BF4 to 8BF7 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8BF8_ _DATA_8C03_

; 1st entry of Pointer Table from 8BF4 (indexed by _RAM_CF84_)
; Data from 8BF8 to 8C02 (11 bytes)
_DATA_8BF8_:
.db $03 $A0 $00 $00 $08 $03 $90 $0B $91 $05 $92

; 2nd entry of Pointer Table from 8BF4 (indexed by _RAM_CF84_)
; Data from 8C03 to 8C0D (11 bytes)
_DATA_8C03_:
.db $03 $A0 $00 $00 $08 $02 $93 $0A $94 $05 $95

; 6th entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 8C0E to 8C1B (14 bytes)
_DATA_8C0E_:
.db $04 $64 $00 $00 $08 $08 $00 $2E $08 $2F $00 $30 $08 $31

; 7th entry of Pointer Table from 6422 (indexed by _RAM_CF83_)
; Data from 8C1C to 8C29 (14 bytes)
.INC "entities/powerBracelet/sprites.asm"

; Data from 8C2A to 8C2A (1 bytes)
.INC "entities/ghost/spritesLeft.asm"

; Data from 8C4B to 8C4B (1 bytes)
.INC "entities/smallFish/spritesRight.asm"

; Data from 8C6C to 8C6C (1 bytes)
.INC "entities/ghost/spritesRight.asm"

; Data from 8CC7 to 8CE5 (31 bytes)
_DATA_8CC7_:
.db $03 $64 $00 $08 $08 $04 $0D $02 $0E $0A $0F $06 $8C $00 $00 $08
.db $08 $10 $10 $04 $14 $0C $15 $03 $16 $14 $16 $03 $16 $14 $16

; Data from 8CE6 to 8CE6 (1 bytes)
_DATA_8CE6_:
.db $02

; Pointer Table from 8CE7 to 8CEA (2 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8E88_ _DATA_90BC_

; Data from 8CEB to 8CEB (1 bytes)
_DATA_8CEB_:
.db $04

; Pointer Table from 8CEC to 8CF3 (4 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8D2F_ _DATA_8D41_ _DATA_8D2F_ _DATA_8D56_

; Data from 8CF4 to 8CF4 (1 bytes)
_DATA_8CF4_:
.db $04

; Pointer Table from 8CF5 to 8CFC (4 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8D6B_ _DATA_8D7D_ _DATA_8D6B_ _DATA_8D92_

; Data from 8CFD to 8CFD (1 bytes)
_DATA_8CFD_:
.db $02

; Pointer Table from 8CFE to 8D01 (2 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8E01_ _DATA_8E13_

; Data from 8D02 to 8D02 (1 bytes)
_DATA_8D02_:
.db $02

; Pointer Table from 8D03 to 8D06 (2 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8E25_ _DATA_8E37_

; Data from 8D07 to 8D07 (1 bytes)
_DATA_8D07_:
.db $04

; Pointer Table from 8D08 to 8D0F (4 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8F7B_ _DATA_8F9F_ _DATA_8FC6_ _DATA_8FEA_

; Data from 8D10 to 8D10 (1 bytes)
_DATA_8D10_:
.db $04

; Pointer Table from 8D11 to 8D18 (4 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_9011_ _DATA_9035_ _DATA_905C_ _DATA_9080_

; Data from 8D19 to 8D19 (1 bytes)
_DATA_8D19_:
.db $02

; Pointer Table from 8D1A to 8D1D (2 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8F2A_ _DATA_8F45_

; Data from 8D1E to 8D1E (1 bytes)
_DATA_8D1E_:
.db $02

; Pointer Table from 8D1F to 8D22 (2 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_9152_ _DATA_916D_

; Data from 8D23 to 8D23 (1 bytes)
_DATA_8D23_:
.db $03

; Pointer Table from 8D24 to 8D29 (3 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_90E3_ _DATA_90F8_ _DATA_910D_

; Data from 8D2A to 8D2A (1 bytes)
_DATA_8D2A_:
.db $02

; Pointer Table from 8D2B to 8D2E (2 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_8E73_ _DATA_8E88_

; 1st entry of Pointer Table from 8CEC (indexed by v_entities.1.animationFrame)
; Data from 8D2F to 8D40 (18 bytes)
_DATA_8D2F_:
.db $80 $05 $04 $00 $00 $08 $08 $10 $01 $00 $09 $01 $01 $02 $09 $03
.db $05 $04

; 2nd entry of Pointer Table from 8CEC (indexed by v_entities.1.animationFrame)
; Data from 8D41 to 8D55 (21 bytes)
_DATA_8D41_:
.db $81 $06 $04 $00 $00 $08 $08 $10 $10 $01 $00 $09 $01 $01 $02 $09
.db $03 $02 $04 $0A $05

; 4th entry of Pointer Table from 8CEC (indexed by v_entities.1.animationFrame)
; Data from 8D56 to 8D6A (21 bytes)
_DATA_8D56_:
.db $82 $06 $04 $00 $00 $08 $08 $10 $10 $01 $00 $09 $01 $01 $02 $09
.db $03 $01 $04 $09 $05

; 1st entry of Pointer Table from 8CF5 (indexed by v_entities.1.animationFrame)
; Data from 8D6B to 8D7C (18 bytes)
_DATA_8D6B_:
.db $83 $05 $0C $00 $00 $08 $08 $10 $00 $00 $08 $01 $00 $02 $08 $03
.db $04 $04

; 2nd entry of Pointer Table from 8CF5 (indexed by v_entities.1.animationFrame)
; Data from 8D7D to 8D91 (21 bytes)
_DATA_8D7D_:
.db $84 $06 $0C $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 4th entry of Pointer Table from 8CF5 (indexed by v_entities.1.animationFrame)
; Data from 8D92 to 8DA6 (21 bytes)
_DATA_8D92_:
.db $85 $06 $0C $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; Data from 8DA7 to 8DBB (21 bytes)
_DATA_8DA7_:
.db $86 $06 $14 $04 $04 $0C $0C $14 $14 $01 $00 $09 $01 $01 $02 $09
.db $03 $03 $04 $0B $05

; Data from 8DBC to 8DD0 (21 bytes)
_DATA_8DBC_:
.db $87 $06 $18 $04 $04 $0C $0C $14 $14 $00 $00 $08 $01 $00 $02 $08
.db $03 $00 $04 $08 $05

; Data from 8DD1 to 8DE8 (24 bytes)
_DATA_8DD1_:
.db $88 $07 $04 $01 $01 $08 $09 $09 $11 $11 $01 $00 $09 $01 $F9 $02
.db $01 $03 $09 $04 $02 $05 $0A $06

; Data from 8DE9 to 8E00 (24 bytes)
_DATA_8DE9_:
.db $89 $07 $0C $01 $01 $09 $09 $08 $11 $11 $00 $00 $08 $01 $00 $02
.db $08 $03 $10 $04 $01 $05 $09 $06

; 1st entry of Pointer Table from 8CFE (indexed by v_entities.1.animationFrame)
; Data from 8E01 to 8E12 (18 bytes)
_DATA_8E01_:
.db $8A $05 $1C $00 $00 $08 $08 $08 $01 $00 $09 $01 $01 $02 $09 $03
.db $11 $04

; 2nd entry of Pointer Table from 8CFE (indexed by v_entities.1.animationFrame)
; Data from 8E13 to 8E24 (18 bytes)
_DATA_8E13_:
.db $8B $05 $1C $00 $00 $08 $08 $08 $01 $00 $09 $01 $01 $02 $09 $03
.db $11 $04

; 1st entry of Pointer Table from 8D03 (indexed by v_entities.1.animationFrame)
; Data from 8E25 to 8E36 (18 bytes)
_DATA_8E25_:
.db $8C $05 $24 $00 $00 $08 $08 $08 $08 $00 $10 $01 $00 $02 $08 $03
.db $10 $04

; 2nd entry of Pointer Table from 8D03 (indexed by v_entities.1.animationFrame)
; Data from 8E37 to 8E48 (18 bytes)
_DATA_8E37_:
.db $8D $05 $24 $00 $00 $08 $08 $08 $08 $00 $10 $01 $01 $02 $09 $03
.db $10 $04

; Data from 8E49 to 8E5D (21 bytes)
_DATA_8E49_:
.db $8E $06 $1C $00 $00 $08 $08 $08 $08 $01 $00 $09 $01 $F9 $02 $01
.db $03 $09 $04 $11 $05

; Data from 8E5E to 8E72 (21 bytes)
_DATA_8E5E_:
.db $8F $06 $24 $00 $00 $08 $08 $08 $08 $08 $00 $10 $01 $00 $02 $08
.db $03 $10 $04 $18 $05

; 1st entry of Pointer Table from 8D2B (indexed by v_entities.1.animationFrame)
; Data from 8E73 to 8E87 (21 bytes)
_DATA_8E73_:
.db $90 $06 $0C $01 $01 $09 $09 $11 $11 $00 $00 $08 $01 $00 $02 $08
.db $03 $02 $04 $0A $05

; 1st entry of Pointer Table from 8CE7 (indexed by v_entities.1.animationFrame)
; Data from 8E88 to 8E9C (21 bytes)
_DATA_8E88_:
.db $91 $06 $0C $01 $01 $09 $09 $11 $11 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 1st entry of Pointer Table from 395B (indexed by _RAM_CF97_)
; Data from 8E9D to 8EBD (33 bytes)
_DATA_8E9D_:
.db $92 $0A $0C $01 $01 $09 $09 $11 $11 $03 $03 $0B $0B $00 $00 $08
.db $01 $00 $02 $08 $03 $01 $04 $09 $05 $10 $06 $18 $07 $10 $08 $18
.db $09

; 2nd entry of Pointer Table from 395B (indexed by _RAM_CF97_)
; Data from 8EBE to 8EDE (33 bytes)
_DATA_8EBE_:
.db $93 $0A $0C $01 $01 $09 $09 $11 $11 $03 $03 $0B $0B $00 $00 $08
.db $01 $00 $02 $08 $03 $01 $04 $09 $05 $10 $06 $18 $07 $10 $08 $18
.db $09

; 3rd entry of Pointer Table from 395B (indexed by _RAM_CF97_)
; Data from 8EDF to 8EFF (33 bytes)
_DATA_8EDF_:
.db $94 $0A $0C $01 $01 $09 $09 $11 $11 $03 $03 $0B $0B $00 $00 $08
.db $01 $00 $02 $08 $03 $01 $04 $09 $05 $10 $06 $18 $07 $10 $08 $18
.db $09

; Data from 8F00 to 8F14 (21 bytes)
_DATA_8F00_:
.db $95 $06 $2C $00 $00 $08 $08 $10 $10 $01 $00 $09 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; Data from 8F15 to 8F29 (21 bytes)
_DATA_8F15_:
.db $96 $06 $34 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 1st entry of Pointer Table from 8D1A (indexed by v_entities.1.animationFrame)
; Data from 8F2A to 8F44 (27 bytes)
_DATA_8F2A_:
.db $97 $08 $3C $00 $00 $08 $08 $08 $10 $10 $10 $02 $00 $0A $01 $01
.db $02 $09 $03 $11 $04 $00 $05 $08 $06 $10 $07

; 2nd entry of Pointer Table from 8D1A (indexed by v_entities.1.animationFrame)
; Data from 8F45 to 8F5F (27 bytes)
_DATA_8F45_:
.db $98 $08 $3C $00 $00 $08 $08 $08 $10 $10 $10 $02 $00 $0A $01 $01
.db $02 $09 $03 $11 $04 $00 $05 $08 $06 $10 $07

; Data from 8F60 to 8F7A (27 bytes)
_DATA_8F60_:
.db $99 $08 $40 $00 $00 $08 $08 $08 $10 $10 $10 $01 $00 $09 $01 $01
.db $02 $09 $03 $11 $04 $00 $05 $08 $06 $10 $07

; 1st entry of Pointer Table from 8D08 (indexed by v_entities.1.animationFrame)
; Data from 8F7B to 8F9E (36 bytes)
_DATA_8F7B_:
.db $9D $0B $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $00 $00
.db $08 $01 $10 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $02 $09 $0A $0A

; 2nd entry of Pointer Table from 8D08 (indexed by v_entities.1.animationFrame)
; Data from 8F9F to 8FC5 (39 bytes)
_DATA_8F9F_:
.db $9E $0C $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $02 $09 $0A $0A $12 $0B

; 3rd entry of Pointer Table from 8D08 (indexed by v_entities.1.animationFrame)
; Data from 8FC6 to 8FE9 (36 bytes)
_DATA_8FC6_:
.db $9F $0B $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $02 $00
.db $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $02 $09 $0A $0A

; 4th entry of Pointer Table from 8D08 (indexed by v_entities.1.animationFrame)
; Data from 8FEA to 9010 (39 bytes)
_DATA_8FEA_:
.db $A0 $0C $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $02 $09 $0A $0A $12 $0B

; 1st entry of Pointer Table from 8D11 (indexed by v_entities.1.animationFrame)
; Data from 9011 to 9034 (36 bytes)
_DATA_9011_:
.db $A1 $0B $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $00 $00
.db $08 $01 $10 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $06 $09 $0E $0A

; 2nd entry of Pointer Table from 8D11 (indexed by v_entities.1.animationFrame)
; Data from 9035 to 905B (39 bytes)
_DATA_9035_:
.db $A2 $0C $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $05 $09 $0D $0A $15 $0B

; 3rd entry of Pointer Table from 8D11 (indexed by v_entities.1.animationFrame)
; Data from 905C to 907F (36 bytes)
_DATA_905C_:
.db $A3 $0B $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $02 $00
.db $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $06 $09 $0E $0A

; 4th entry of Pointer Table from 8D11 (indexed by v_entities.1.animationFrame)
; Data from 9080 to 90A6 (39 bytes)
_DATA_9080_:
.db $A4 $0C $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $05 $09 $0D $0A $15 $0B

; Data from 90A7 to 90BB (21 bytes)
_DATA_90A7_:
.db $A5 $06 $04 $00 $00 $08 $08 $10 $10 $01 $00 $09 $01 $01 $02 $09
.db $03 $00 $04 $08 $05

; 2nd entry of Pointer Table from 8CE7 (indexed by v_entities.1.animationFrame)
; Data from 90BC to 90D0 (21 bytes)
_DATA_90BC_:
.db $A6 $06 $0C $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $00 $04 $08 $05

; Data from 90D1 to 90E2 (18 bytes)
_DATA_90D1_:
.db $A8 $05 $0C $00 $00 $08 $08 $10 $00 $00 $08 $01 $00 $02 $08 $03
.db $04 $04

; 1st entry of Pointer Table from 8D24 (indexed by v_entities.1.animationFrame)
; Data from 90E3 to 90F7 (21 bytes)
_DATA_90E3_:
.db $A9 $06 $00 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 2nd entry of Pointer Table from 8D24 (indexed by v_entities.1.animationFrame)
; Data from 90F8 to 910C (21 bytes)
_DATA_90F8_:
.db $AA $06 $00 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 3rd entry of Pointer Table from 8D24 (indexed by v_entities.1.animationFrame)
; Data from 910D to 9121 (21 bytes)
_DATA_910D_:
.db $AB $06 $00 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $02 $04 $0A $05

; Data from 9122 to 9136 (21 bytes)
_DATA_9122_:
.db $AC $06 $00 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $00 $04 $08 $05

; Data from 9137 to 9151 (27 bytes)
_DATA_9137_:
.db $9A $08 $44 $00 $00 $08 $08 $08 $10 $10 $10 $00 $00 $08 $01 $00
.db $02 $08 $03 $10 $04 $00 $05 $08 $06 $10 $07

; 1st entry of Pointer Table from 8D1F (indexed by v_entities.1.animationFrame)
; Data from 9152 to 916C (27 bytes)
_DATA_9152_:
.db $9B $08 $44 $00 $00 $08 $08 $08 $10 $10 $10 $00 $00 $08 $01 $00
.db $02 $08 $03 $10 $04 $00 $05 $08 $06 $10 $07

; 2nd entry of Pointer Table from 8D1F (indexed by v_entities.1.animationFrame)
; Data from 916D to 9187 (27 bytes)
_DATA_916D_:
.db $9C $08 $44 $00 $00 $08 $08 $08 $10 $10 $10 $00 $00 $08 $01 $00
.db $02 $08 $03 $10 $04 $00 $05 $08 $06 $10 $07

; Data from 9188 to 9188 (1 bytes)
_DATA_9188_:
.db $04

; Pointer Table from 9189 to 9190 (4 entries, indexed by v_entities.1.animationFrame)
.dw _DATA_9191_ _DATA_91A6_ _DATA_9191_ _DATA_91BB_

; 1st entry of Pointer Table from 9189 (indexed by v_entities.1.animationFrame)
; Data from 9191 to 91A5 (21 bytes)
_DATA_9191_:
.db $AD $06 $04 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $02 $04 $0A $05

; 2nd entry of Pointer Table from 9189 (indexed by v_entities.1.animationFrame)
; Data from 91A6 to 91BA (21 bytes)
_DATA_91A6_:
.db $AE $06 $04 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 4th entry of Pointer Table from 9189 (indexed by v_entities.1.animationFrame)
; Data from 91BB to 91CF (21 bytes)
_DATA_91BB_:
.db $AF $06 $04 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $03 $04 $0B $05

; Data from 91D0 to 92A7 (216 bytes)
_DATA_91D0_:
.db $00 $00 $00 $00 $06 $05 $04 $12 $F9 $08 $08 $08 $05 $05 $04 $12
.db $0F $08 $08 $08 $06 $05 $08 $0E $05 $05 $08 $0E $03 $0C $04 $0A
.db $F9 $08 $08 $08 $09 $0C $04 $0A $17 $08 $08 $08 $06 $05 $04 $10
.db $F9 $08 $08 $08 $05 $05 $04 $10 $0F $08 $08 $08 $04 $0C $02 $14
.db $02 $0D $03 $12 $03 $0A $04 $0E $03 $0A $04 $0C $03 $0F $04 $12
.db $06 $0F $04 $12 $03 $13 $03 $0A $02 $13 $03 $0A $05 $0E $01 $19
.db $01 $06 $01 $06 $02 $0D $05 $0A $01 $0D $05 $0A $00 $10 $00 $10
.db $07 $12 $04 $2C $00 $08 $00 $08 $03 $12 $03 $0C $03 $12 $03 $0C
.db $02 $1C $01 $17 $02 $0C $03 $0C $01 $06 $01 $06 $01 $0E $03 $15
.db $00 $08 $00 $0F $03 $0A $03 $0A $00 $10 $02 $0E $01 $07 $01 $08
.db $06 $05 $02 $0E $00 $18 $00 $08 $10 $18 $00 $30 $04 $0C $1A $08
.db $10 $10 $00 $10 $28 $10 $1A $08 $08 $10 $00 $10 $08 $08 $00 $40
.db $08 $08 $00 $78 $08 $08 $00 $A8 $02 $0C $01 $06 $08 $18 $08 $28
.db $08 $08 $00 $08 $04 $08 $10 $10

; Data from 92A8 to 92C7 (32 bytes)
_DATA_92A8_:
.db $80 $09 $81 $09 $82 $09 $83 $09 $84 $09 $1F $09 $1F $09 $85 $09
.db $86 $09 $1F $09 $1F $09 $87 $09 $88 $09 $89 $09 $8A $09 $8B $09

; 1st entry of Pointer Table from 763B (indexed by _RAM_CF97_)
; Data from 92C8 to 92D5 (14 bytes)
_DATA_92C8_:
.db $04 $00 $08 $08 $10 $10 $08 $8C $10 $8D $08 $8E $10 $8F

; 2nd entry of Pointer Table from 763B (indexed by _RAM_CF97_)
; Data from 92D6 to 92E3 (14 bytes)
_DATA_92D6_:
.db $04 $00 $08 $08 $10 $10 $08 $90 $10 $91 $08 $92 $10 $93

; 3rd entry of Pointer Table from 763B (indexed by _RAM_CF97_)
; Data from 92E4 to 94FF (540 bytes)
_DATA_92E4_:
.db $04 $00 $08 $08 $10 $10 $08 $94 $10 $95 $08 $96 $10 $97 $02 $FC
.db $92 $16 $93 $02 $4D $93 $30 $93 $08 $00 $00 $00 $08 $08 $10 $10
.db $18 $18 $00 $20 $08 $21 $00 $22 $08 $23 $00 $24 $08 $25 $00 $26
.db $08 $27 $08 $00 $01 $01 $09 $09 $11 $11 $19 $19 $00 $20 $08 $21
.db $00 $22 $08 $23 $00 $28 $08 $29 $00 $2A $08 $2B $09 $00 $00 $00
.db $08 $08 $10 $10 $18 $18 $0C $00 $20 $08 $21 $00 $2C $08 $23 $00
.db $2D $08 $25 $00 $26 $08 $27 $F8 $30 $0A $00 $00 $00 $08 $08 $10
.db $10 $18 $18 $08 $10 $00 $20 $08 $21 $00 $2C $08 $23 $00 $2D $08
.db $25 $00 $26 $08 $27 $F8 $2E $F8 $2F $08 $00 $00 $00 $08 $08 $10
.db $10 $18 $18 $00 $31 $08 $32 $00 $33 $08 $34 $00 $35 $08 $36 $00
.db $37 $08 $38 $04 $84 $00 $00 $08 $08 $00 $31 $08 $32 $00 $33 $08
.db $34 $04 $D4 $10 $10 $18 $18 $00 $35 $08 $36 $00 $37 $08 $38 $0C
.db $00 $00 $00 $08 $08 $10 $10 $18 $18 $08 $08 $10 $10 $00 $20 $08
.db $21 $00 $2C $08 $23 $00 $2D $08 $25 $00 $26 $08 $27 $F0 $98 $F8
.db $99 $F0 $9A $F8 $9B $0C $00 $00 $00 $08 $08 $10 $10 $18 $18 $08
.db $08 $10 $10 $00 $20 $08 $21 $00 $2C $08 $23 $00 $2D $08 $25 $00
.db $26 $08 $27 $F0 $9C $F8 $9D $F0 $9E $F8 $9F $0C $00 $00 $00 $08
.db $08 $10 $10 $18 $18 $08 $08 $10 $10 $00 $20 $08 $21 $00 $2C $08
.db $23 $00 $2D $08 $25 $00 $26 $08 $27 $F0 $A0 $F8 $A1 $F0 $A2 $F8
.db $A3 $02 $1A $94 $3B $94 $0A $00 $00 $00 $08 $08 $10 $10 $18 $18
.db $08 $10 $00 $20 $08 $21 $00 $2C $08 $23 $00 $2D $08 $25 $00 $2E
.db $08 $27 $F8 $2F $F8 $30 $00 $09 $00 $00 $00 $08 $08 $10 $10 $18
.db $18 $0C $00 $20 $08 $21 $00 $2C $08 $23 $00 $2D $08 $25 $00 $2E
.db $08 $27 $F8 $31 $08 $00 $00 $00 $08 $08 $10 $10 $18 $18 $00 $20
.db $08 $21 $00 $22 $08 $23 $00 $32 $08 $33 $00 $2E $08 $34 $04 $84
.db $00 $00 $08 $08 $00 $20 $08 $21 $00 $22 $08 $23 $04 $D4 $10 $10
.db $18 $18 $00 $32 $08 $33 $00 $2E $08 $34 $0C $00 $00 $00 $08 $08
.db $10 $10 $18 $18 $08 $08 $10 $10 $00 $20 $08 $21 $00 $2C $08 $23
.db $00 $2D $08 $25 $00 $2E $08 $27 $F0 $98 $F8 $99 $F0 $9A $F8 $9B
.db $0C $00 $00 $00 $08 $08 $10 $10 $18 $18 $08 $08 $10 $10 $00 $20
.db $08 $21 $00 $2C $08 $23 $00 $2D $08 $25 $00 $2E $08 $27 $F0 $9C
.db $F8 $9D $F0 $9E $F8 $9F $0C $00 $00 $00 $08 $08 $10 $10 $18 $18
.db $08 $08 $10 $10 $00 $20 $08 $21 $00 $2C $08 $23 $00 $2D $08 $25
.db $00 $2E $08 $27 $F0 $A0 $F8 $A1 $F0 $A2 $F8 $A3

; 1st entry of Pointer Table from 7657 (indexed by _RAM_C3A3_)
; Data from 9500 to 9504 (5 bytes)
_DATA_9500_:
.db $02 $0A $95 $4B $95

; 1st entry of Pointer Table from 7659 (indexed by _RAM_C3A3_)
; Data from 9505 to 974A (582 bytes)
_DATA_9505_:
.db $02 $D3 $95 $8C $95 $15 $00 $00 $00 $00 $08 $08 $08 $10 $10 $10
.db $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $05 $20 $0D $21
.db $15 $22 $04 $23 $0C $24 $14 $25 $03 $26 $0B $27 $13 $28 $1B $29
.db $02 $2A $0A $2B $12 $2C $1A $2D $03 $2E $0B $2F $13 $30 $1B $31
.db $03 $32 $0B $33 $13 $34 $15 $00 $00 $00 $00 $08 $08 $08 $10 $10
.db $10 $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $06 $35 $0E
.db $36 $16 $37 $06 $38 $0E $39 $16 $3A $00 $3B $08 $3C $10 $3D $18
.db $3E $02 $3F $0A $40 $12 $41 $1A $42 $02 $43 $0A $44 $12 $45 $1A
.db $31 $03 $46 $0B $47 $13 $48 $17 $00 $01 $01 $01 $09 $09 $09 $11
.db $11 $11 $19 $19 $19 $21 $21 $21 $21 $29 $29 $29 $29 $10 $18 $18
.db $06 $35 $0E $36 $16 $37 $06 $38 $0E $39 $16 $3A $06 $49 $0E $4A
.db $16 $4B $06 $4C $0E $4D $16 $4E $03 $4F $0B $50 $13 $51 $1B $52
.db $01 $53 $09 $54 $11 $55 $19 $56 $04 $57 $F9 $58 $01 $59 $17 $00
.db $01 $01 $01 $09 $09 $09 $11 $11 $11 $19 $19 $19 $21 $21 $21 $21
.db $29 $29 $29 $29 $10 $10 $18 $06 $35 $0E $36 $16 $37 $06 $38 $0E
.db $39 $16 $3A $06 $49 $0E $4A $16 $4B $06 $4C $0E $4D $16 $4E $03
.db $4F $0B $50 $13 $51 $1B $52 $01 $53 $09 $54 $11 $55 $19 $56 $FC
.db $5A $04 $5B $00 $5C $15 $00 $00 $00 $00 $08 $08 $08 $10 $10 $10
.db $10 $18 $18 $18 $18 $20 $20 $20 $20 $28 $28 $28 $05 $20 $0D $21
.db $15 $22 $04 $23 $0C $24 $14 $25 $02 $5D $0A $5E $12 $5F $1A $60
.db $01 $61 $09 $62 $11 $63 $19 $64 $00 $65 $08 $66 $10 $67 $18 $68
.db $03 $46 $0B $69 $13 $34 $1A $00 $01 $01 $01 $09 $09 $09 $11 $11
.db $11 $19 $19 $19 $21 $21 $21 $21 $29 $29 $29 $29 $10 $18 $13 $13
.db $1B $1B $06 $35 $0E $36 $16 $37 $06 $38 $0E $39 $16 $3A $06 $49
.db $0E $4A $16 $4B $06 $4C $0E $4D $16 $4E $03 $4F $0B $50 $13 $51
.db $1B $52 $01 $53 $09 $54 $11 $55 $19 $56 $04 $57 $01 $59 $F0 $98
.db $F8 $99 $F0 $9A $F8 $9B $1A $00 $01 $01 $01 $09 $09 $09 $11 $11
.db $11 $19 $19 $19 $21 $21 $21 $21 $29 $29 $29 $29 $10 $18 $13 $13
.db $1B $1B $06 $35 $0E $36 $16 $37 $06 $38 $0E $39 $16 $3A $06 $49
.db $0E $4A $16 $4B $06 $4C $0E $4D $16 $4E $03 $4F $0B $50 $13 $51
.db $1B $52 $01 $53 $09 $54 $11 $55 $19 $56 $04 $57 $01 $59 $F0 $9C
.db $F8 $9D $F0 $9E $F8 $9F $1A $00 $01 $01 $01 $09 $09 $09 $11 $11
.db $11 $19 $19 $19 $21 $21 $21 $21 $29 $29 $29 $29 $10 $18 $13 $13
.db $1B $1B $06 $35 $0E $36 $16 $37 $06 $38 $0E $39 $16 $3A $06 $49
.db $0E $4A $16 $4B $06 $4C $0E $4D $16 $4E $03 $4F $0B $50 $13 $51
.db $1B $52 $01 $53 $09 $54 $11 $55 $19 $56 $04 $57 $01 $59 $F0 $A0
.db $F8 $A1 $F0 $A2 $F8 $A3

; Data from 974B to 974F (5 bytes)
_DATA_974B_:
.db $01 $88 $00 $00 $A6

; Data from 9750 to 9750 (1 bytes)
_DATA_9750_:
.db $02

; Pointer Table from 9751 to 9754 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_9755_ _DATA_9799_

; 1st entry of Pointer Table from 9751 (indexed by _RAM_CF84_)
; Data from 9755 to 9798 (68 bytes)
_DATA_9755_:
.db $16 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $20 $20 $28 $28 $28 $06 $60 $0E $61 $16 $62 $03 $63
.db $0B $64 $13 $65 $1B $66 $03 $67 $0B $68 $13 $69 $1B $6A $01 $6B
.db $09 $6C $11 $6D $19 $6E $00 $6F $08 $70 $10 $71 $18 $72 $03 $73
.db $0B $74 $13 $75

; 2nd entry of Pointer Table from 9751 (indexed by _RAM_CF84_)
; Data from 9799 to 97DC (68 bytes)
_DATA_9799_:
.db $16 $00 $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $18 $18 $18
.db $18 $20 $20 $20 $20 $28 $28 $28 $07 $76 $0F $77 $17 $78 $03 $79
.db $0B $7A $13 $7B $1B $7C $01 $7D $09 $7E $11 $7F $19 $80 $00 $81
.db $08 $82 $10 $83 $18 $84 $00 $85 $08 $86 $10 $87 $18 $88 $04 $89
.db $0C $8A $14 $8B
