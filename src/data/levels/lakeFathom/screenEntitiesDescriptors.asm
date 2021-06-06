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
; Special screen type 0x08
.db $88
; Bytes to copy to v_unknownEntityByteCount_RAM_D8A0_
.db $16
; Bytes that will be copied.
.db $07 
.db $10 $CA $03
.db $14 $CA $03
.db $18 $CA $03
.db $1C $CA $03
.db $28 $CA $03
.db $2C $CA $03
.db $30 $CA $03

; Another special entity
.db $81
.db $4B $78 $C0 $00

; Remaining entities
.db $04
.db $2D $20 $90 $00
.db $2D $58 $70 $00
.db $3E $98 $60 $00
.db $3E $98 $F0 $00

; 11th entry of Pointer Table from B563 (indexed by v_entityIndex)
; Data from B85E to B873 (22 bytes)
_DATA_B85E_:
.db $84 $44 $30 $E0 $00 $04 $3E $98 $30 $00 $3E $98 $D0 $00 $3E $20
.db $70 $00 $52 $20 $70 $05
