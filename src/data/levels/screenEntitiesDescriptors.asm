;; For each screen...
.INCLUDE "data/levels/mtEthernalStage1/screenEntitiesDescriptors.asm"

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