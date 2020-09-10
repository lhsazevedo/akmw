.INCDIR "src/data"

.INC "audio.asm"

.INC "src/graphics/1bppCharacters.asm"

;; For each level...
.INCLUDE "data/levels/entitiesDescriptors.asm"

.INCLUDE "data/levels/screenEntitiesDescriptors.asm"

.dsb 376, $FF

.BANK 3
.ORG $0000

; Data from C000 to C47F (1152 bytes)
_DATA_C000_:
.incbin "src/graphics/boxes/skull.bin"
.incbin "src/graphics/boxes/question_mark.bin"
.incbin "src/graphics/boxes/star.bin"
.incbin "src/graphics/boxes/star_pink.bin"
.incbin "src/graphics/boxes/waves_pink.bin"
.incbin "src/graphics/boxes/fish_pink.bin"
.incbin "src/graphics/boxes/moon_pink.bin"
.incbin "src/graphics/boxes/skull_pink.bin"
.incbin "src/graphics/boxes/sun_pink.bin"

; Pointer Table from C480 to C4A1 (17 entries, indexed by v_level)
levelMainTilesetPointers:
.dw tiles_mainSet tiles_mainSet2 tiles_mainSet3 tiles_mainSet4 tiles_mainSet tiles_mainSet5 tiles_level7MainSet tiles_level8MainSet
.dw tiles_mainSet tiles_mainSet2 tiles_level11MainSet tiles_mainSet5 tiles_mainSet2 tiles_level14MainSet tiles_mainSet2 tiles_level16MainSet
.dw tiles_level17MainSet

; Data from C4A2 to C582 (225 bytes)
tiles_bagOfGoldCoinsAndCloud:
.incbin "src/graphics/bag_of_gold_coins_and_cloud.bin"

; Data from C583 to C9E0 (1118 bytes)
tiles_aditionalSet1:
.incbin "src/graphics/aditionalSet1.bin"

; Data from C9E1 to CE64 (1156 bytes)
tiles_aditionalSet2:
.incbin "src/graphics/aditionalSet2.bin"

; Data from CE65 to CECD (105 bytes)
tiles_aditionalSet3:
.incbin "src/graphics/aditionalTileset3.bin"

; 1st entry of Pointer Table from C480 (indexed by v_level)
; Data from CECE to D157 (650 bytes)
tiles_mainSet:
.incbin "src/graphics/mainTileset.bin"

; 2nd entry of Pointer Table from C480 (indexed by v_level)
; Data from D158 to D316 (447 bytes)
tiles_mainSet2:
.incbin "src/graphics/mainSet2.bin"

; 3rd entry of Pointer Table from C480 (indexed by v_level)
; Data from D317 to D569 (595 bytes)
tiles_mainSet3:
.incbin "src/graphics/mainSet3.bin"

; 4th entry of Pointer Table from C480 (indexed by v_level)
; Data from D56A to DB81 (1560 bytes)
tiles_mainSet4:
.incbin "src/graphics/mainSet4.bin"

; 6th entry of Pointer Table from C480 (indexed by v_level)
; Data from DB82 to DF1C (923 bytes)
tiles_mainSet5:
.incbin "src/graphics/mainSet5.bin"

; 7th entry of Pointer Table from C480 (indexed by v_level)
; Data from DF1D to E24B (815 bytes)
tiles_level7MainSet:
.incbin "src/graphics/level7MainSet.bin"

; 8th entry of Pointer Table from C480 (indexed by v_level)
; Data from E24C to EA04 (1977 bytes)
tiles_level8MainSet:
.incbin "src/graphics/level8MainSet.bin"

; 11th entry of Pointer Table from C480 (indexed by v_level)
; Data from EA05 to EE32 (1070 bytes)
; Also used for level 14
tiles_level11MainSet:
.incbin "src/graphics/level11MainSet.bin"

; 16th entry of Pointer Table from C480 (indexed by v_level)
; Data from EE33 to F116 (740 bytes)
tiles_level16MainSet:
.incbin "src/graphics/level16MainSet.bin"

; 17th entry of Pointer Table from C480 (indexed by v_level)
; Data from F117 to F49A (900 bytes)
tiles_level17MainSet:
.INCBIN "src/graphics/level17MainTileSet.bin"

; 14th entry of Pointer Table from C480 (indexed by v_level)
; Data from F49B to F75B (705 bytes)
tiles_level14MainSet:
.INCBIN "src/graphics/level14MainSet.bin"

; Data from F75C to F7F5 (154 bytes)
tiles_level17AditionalSet:
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
tiles_aditionalSet4:
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
tiles_aditionalSet5:
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
data_endingSequenceText:
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
tiles_AlexKiddEatingRiceBall:
.INCBIN "src/graphics/alexKiddEatingRiceBall.bin"


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

.INC "metatileNametablePointers.asm"

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

.INC "metatileNametableEntries.asm"

.INC "demoInputEntries.asm"

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

.INC "src/graphics/hirotaStoneCloseUp.asm"

.INC "src/data/map.asm"

; Data from 161D5 to 16F10 (3388 bytes)
mapTiles:
.incbin "src/graphics/map.bin"

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

; 1st entry of Pointer Table from 1620 (indexed by v_titleScreen6FrameTileTimer)
; Data from 17853 to 17892 (64 bytes)
_DATA_17853_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $05 $05 $82 $87 $00 $00 $FF $FF
.db $22 $22 $DD $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $18 $10 $00 $10 $62 $22 $9C $BE $08 $08 $F7 $FF $00 $00 $FF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $10 $10 $EF $FF $00 $00 $FF $FF

; 2nd entry of Pointer Table from 1620 (indexed by v_titleScreen6FrameTileTimer)
; Data from 17893 to 178D2 (64 bytes)
_DATA_17893_:
.db $00 $00 $00 $00 $00 $00 $01 $01 $14 $14 $0B $1F $00 $00 $FF $FF
.db $04 $04 $FB $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF
.db $20 $00 $40 $40 $98 $90 $60 $F0 $22 $22 $DC $FE $08 $08 $F7 $FF
.db $00 $00 $FF $FF $20 $20 $DF $FF $00 $00 $FF $FF $00 $00 $FF $FF

; 3rd entry of Pointer Table from 1620 (indexed by v_titleScreen6FrameTileTimer)
; Data from 178D3 to 17912 (64 bytes)
_DATA_178D3_:
.db $04 $00 $02 $02 $19 $09 $06 $0F $44 $44 $3B $7F $10 $10 $EF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $02 $02 $FD $FF $00 $00 $FF $FF
.db $00 $00 $00 $00 $00 $00 $E0 $E0 $28 $28 $D0 $F8 $00 $00 $FF $FF
.db $20 $20 $DF $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF

; 4th entry of Pointer Table from 1620 (indexed by v_titleScreen6FrameTileTimer)
; Data from 17913 to 17952 (64 bytes)
_DATA_17913_:
.db $18 $08 $00 $08 $46 $44 $39 $7D $10 $10 $EF $FF $00 $00 $FF $FF
.db $00 $00 $FF $FF $00 $00 $FF $FF $04 $04 $FB $FF $00 $00 $FF $FF
.db $00 $00 $00 $00 $00 $00 $00 $00 $A0 $A0 $41 $E1 $00 $00 $FF $FF
.db $44 $44 $BB $FF $00 $00 $FF $FF $00 $00 $FF $FF $00 $00 $FF $FF

; 1st entry of Pointer Table from 162C (indexed by v_titleScreen6FrameTileTimer)
; Data from 17953 to 17992 (64 bytes)
_DATA_17953_:
.dsb 20, $00
.db $83 $87 $83 $04 $CC $FF $FE $33 $97 $FF $9F $68
.dsb 12, $00
.db $18 $10 $18 $08 $CA $7E $FA $B4 $99 $FE $9F $67 $35 $FF $7D $CA
.db $CE $FF $FF $31

; 2nd entry of Pointer Table from 162C (indexed by v_titleScreen6FrameTileTimer)
; Data from 17993 to 179D2 (64 bytes)
_DATA_17993_:
.dsb 16, $00
.db $01 $00 $01 $01 $1D $13 $1D $0E $A2 $FF $BB $5D $89 $FF $CF $76
.dsb 12, $00
.db $60 $20 $60 $40 $30 $F8 $F8 $C8 $CE $FC $FE $32 $40 $FF $CE $BF
.db $AF $FF $BF $50

; 3rd entry of Pointer Table from 162C (indexed by v_titleScreen6FrameTileTimer)
; Data from 179D3 to 17A12 (64 bytes)
_DATA_179D3_:
.dsb 12, $00
.db $06 $04 $06 $02 $0C $1F $1F $13 $73 $3F $7F $4C $02 $FF $73 $FD
.db $F5 $FF $FD $0A
.dsb 16, $00
.db $80 $00 $80 $80 $B8 $C8 $B8 $70 $45 $FF $DD $BA $91 $FF $F3 $6E

; 4th entry of Pointer Table from 162C (indexed by v_titleScreen6FrameTileTimer)
; Data from 17A13 to 17A52 (64 bytes)
_DATA_17A13_:
.dsb 12, $00
.db $18 $08 $18 $10 $53 $7E $5F $2D $99 $7F $F9 $E6 $AC $FF $BE $53
.db $73 $FF $FF $8C
.dsb 20, $00
.db $C1 $E1 $C1 $20 $33 $FF $7F $CC $E9 $FF $F9 $16

; 1st entry of Pointer Table from 1638 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17A53 to 17AB2 (96 bytes)
_DATA_17A53_:
.dsb 24, $00
.db $03 $07 $00 $07 $07 $0E $01 $0E $07 $0C $03 $0C $0E $1C $03 $1C
.db $FF $FF $00 $FF $F7 $FF $00 $FF $FF $FF $00 $FF $5D $FF $00 $FF
.db $EA $FF $00 $FF $55 $FF $00 $FF $60 $30 $C0 $30 $F0 $38 $C0 $38
.db $FF $FF $00 $FF $BF $FF $00 $FF $EF $FF $00 $FF $55 $FF $00 $FF
.db $BA $FF $00 $FF $D5 $FF $00 $FF

; 2nd entry of Pointer Table from 1638 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17AB3 to 17B12 (96 bytes)
_DATA_17AB3_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $03 $00 $03 $07 $0C $03 $0C
.db $0F $08 $07 $08 $0E $18 $07 $18 $0C $10 $0F $10 $0C $10 $0F $10
.db $1E $38 $07 $38 $FF $FC $03 $FC $FF $FF $00 $FF $F7 $FF $00 $FF
.db $FF $FF $00 $FF $5D $FF $00 $FF $EA $FF $00 $FF $55 $FF $00 $FF
.db $78 $1C $E0 $1C $FF $3F $C0 $3F $FF $FF $00 $FF $BF $FF $00 $FF
.db $EF $FF $00 $FF $55 $FF $00 $FF $BA $FF $00 $FF $D5 $FF $00 $FF

; 3rd entry of Pointer Table from 1638 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17B13 to 17B72 (96 bytes)
_DATA_17B13_:
.db $01 $03 $00 $03 $07 $0E $01 $0E $0F $08 $07 $08 $0E $10 $0F $10
.db $1C $10 $0F $10 $1C $10 $0F $10 $1E $30 $0F $30 $3F $38 $07 $38
.db $FF $FC $03 $FC $FF $FF $00 $FF $FF $FF $00 $FF $F7 $FF $00 $FF
.db $FF $FF $00 $FF $5D $FF $00 $FF $EA $FF $00 $FF $55 $FF $00 $FF
.db $FF $3F $C0 $3F $FF $FF $00 $FF $FF $FF $00 $FF $BF $FF $00 $FF
.db $EF $FF $00 $FF $55 $FF $00 $FF $BA $FF $00 $FF $D5 $FF $00 $FF

; 4th entry of Pointer Table from 1638 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17B73 to 17BD2 (96 bytes)
_DATA_17B73_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $48 $48 $24 $48 $34 $24 $12 $24
.db $16 $16 $00 $16 $02 $02 $00 $02 $00 $00 $00 $00 $1A $08 $12 $08
.db $0F $1C $03 $1C $07 $0E $01 $0E $FF $FF $00 $FF $F7 $FF $00 $FF
.db $FF $FF $00 $FF $5D $FF $00 $FF $EA $FF $00 $FF $55 $FF $00 $FF
.db $F0 $38 $C0 $38 $E0 $70 $80 $70 $FF $FF $00 $FF $BF $FF $00 $FF
.db $EF $FF $00 $FF $55 $FF $00 $FF $BA $FF $00 $FF $D5 $FF $00 $FF

; 1st entry of Pointer Table from 1640 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17BD3 to 17C32 (96 bytes)
_DATA_17BD3_:
.dsb 25, $00
.db $03 $04 $07 $01 $06 $08 $0F $03 $04 $08 $0F $03 $0C $10 $1E $00
.db $FF $00 $FF $00 $F7 $08 $FF $00 $FF $00 $FF $00 $5D $A2 $FF $00
.db $EA $15 $FF $00 $55 $AA $FF $C0 $20 $10 $70 $C0 $30 $08 $F8 $00
.db $FF $00 $FF $00 $BF $40 $FF $00 $EF $10 $FF $00 $55 $AA $FF $00
.db $BA $45 $FF $00 $D5 $2A $FF

; 2nd entry of Pointer Table from 1640 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17C33 to 17C92 (96 bytes)
_DATA_17C33_:
.dsb 9, $00
.db $01 $02 $03 $03 $04 $08 $0F $07 $08 $00 $0F $07 $08 $10 $1E $0F
.db $00 $10 $1C $0F $00 $10 $1C $07 $18 $20 $3E $03 $FC $00 $FF $00
.db $FF $00 $FF $00 $F7 $08 $FF $00 $FF $00 $FF $00 $5D $A2 $FF $00
.db $EA $15 $FF $00 $55 $AA $FF $E0 $18 $04 $7C $C0 $3F $00 $FF $00
.db $FF $00 $FF $00 $BF $40 $FF $00 $EF $10 $FF $00 $55 $AA $FF $00
.db $BA $45 $FF $00 $D5 $2A $FF

; 3rd entry of Pointer Table from 1640 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17C93 to 17CF2 (96 bytes)
_DATA_17C93_:
.db $00 $01 $02 $03 $01 $06 $08 $0F $07 $08 $00 $0F $0F $00 $10 $1E
.db $0F $10 $00 $1C $0F $10 $00 $1C $0F $10 $20 $3E $07 $38 $00 $3F
.db $03 $FC $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $F7 $08 $FF
.db $00 $FF $00 $FF $00 $5D $A2 $FF $00 $EA $15 $FF $00 $55 $AA $FF
.db $C0 $3F $00 $FF $00 $FF $00 $FF $00 $FF $00 $FF $00 $BF $40 $FF
.db $00 $EF $10 $FF $00 $55 $AA $FF $00 $BA $45 $FF $00 $D5 $2A $FF

; 4th entry of Pointer Table from 1640 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17CF3 to 17D52 (96 bytes)
_DATA_17CF3_:
.db $00 $00 $00 $00 $12 $24 $00 $24 $02 $24 $00 $26 $00 $03 $00 $03
.db $10 $23 $00 $23 $08 $10 $00 $18 $00 $00 $00 $00 $09 $04 $00 $0D
.db $01 $06 $08 $0F $00 $03 $04 $07 $00 $FF $00 $FF $00 $F7 $08 $FF
.db $00 $FF $00 $FF $00 $5D $A2 $FF $00 $EA $15 $FF $00 $55 $AA $FF
.db $C0 $30 $08 $F8 $80 $60 $10 $F0 $00 $FF $00 $FF $00 $BF $40 $FF
.db $00 $EF $10 $FF $00 $55 $AA $FF $00 $BA $45 $FF $00 $D5 $2A $FF

; 1st entry of Pointer Table from 1648 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17D53 to 17DB2 (96 bytes)
_DATA_17D53_:
.dsb 24, $00
.db $03 $04 $07 $07 $07 $08 $0F $0E $07 $08 $0F $0C $0E $10 $1F $1C
.db $FF $00 $FF $FF $F7 $08 $FF $FF $FF $00 $FF $FF $5D $A2 $FF $FF
.db $EA $15 $FF $FF $55 $AA $FF $FF $60 $10 $F0 $30 $F0 $08 $F8 $38
.db $FF $00 $FF $FF $BF $40 $FF $FF $EF $10 $FF $FF $55 $AA $FF $FF
.db $BA $45 $FF $FF $D5 $2A $FF $FF

; 2nd entry of Pointer Table from 1648 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17DB3 to 17E12 (96 bytes)
_DATA_17DB3_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $02 $03 $03 $07 $08 $0F $0C
.db $0F $00 $0F $08 $0E $10 $1F $18 $0C $10 $1F $10 $0C $10 $1F $10
.db $1E $20 $3F $38 $FF $00 $FF $FC $FF $00 $FF $FF $F7 $08 $FF $FF
.db $FF $00 $FF $FF $5D $A2 $FF $FF $EA $15 $FF $FF $55 $AA $FF $FF
.db $78 $04 $FC $1C $FF $00 $FF $3F $FF $00 $FF $FF $BF $40 $FF $FF
.db $EF $10 $FF $FF $55 $AA $FF $FF $BA $45 $FF $FF $D5 $2A $FF $FF

; 3rd entry of Pointer Table from 1648 (indexed by v_titleScreen4FrameTileTimer)
; Data from 17E13 to 17E72 (96 bytes)
_DATA_17E13_:
.db $01 $02 $03 $03 $07 $08 $0F $0E $0F $00 $0F $08 $0E $10 $1F $10
.db $1C $00 $1F $10 $1C $00 $1F $10 $1E $20 $3F $30 $3F $00 $3F $38
.db $FF $00 $FF $FC $FF $00 $FF $FF $FF $00 $FF $FF $F7 $08 $FF $FF
.db $FF $00 $FF $FF $5D $A2 $FF $FF $EA $15 $FF $FF $55 $AA $FF $FF
.db $FF $00 $FF $3F $FF $00 $FF $FF $FF $00 $FF $FF $BF $40 $FF $FF
.db $EF $10 $FF $FF $55 $AA $FF $FF $BA $45 $FF $FF $D5 $2A $FF $FF

; 4th entry of Pointer Table from 1648 (indexed by v_titleScreen4FrameTileTimer)
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

.INC "src/data/levels/layouts.asm"

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

.INC "src/data/shop.asm"

; Unused
.dsb 85, $FF

.BANK 7
.ORG $0000

.INC "src/graphics/score.asm"

.INC "src/graphics/tiles.asm"

.INC "src/data/messages.asm"

.INC "src/data/palettes.asm"

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

