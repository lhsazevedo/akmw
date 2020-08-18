; This disassembly was created using Emulicious (http://www.emulicious.net)
.MEMORYMAP
SLOTSIZE $7FF0
SLOT 0 $0000
SLOTSIZE $10
SLOT 1 $7FF0
SLOTSIZE $4000
SLOT 2 $8000
DEFAULTSLOT 2
.ENDME
.ROMBANKMAP
BANKSTOTAL 8
BANKSIZE $7FF0
BANKS 1
BANKSIZE $10
BANKS 1
BANKSIZE $4000
BANKS 6
.ENDRO

.enum $C000 export
_RAM_C000_ dsb $4
_RAM_C004_ db
_RAM_C005_ db
_RAM_C006_ db
_RAM_C007_ db
_RAM_C008_ db
_RAM_C009_ dw
.ende

.enum $C00E export
_RAM_C00E_ dw
.ende

.enum $C011 export
_RAM_C011_ db
.ende

.enum $C014 export
_RAM_C014_ db
_RAM_C015_ db
_RAM_C016_ db
.ende

.enum $C01F export
_RAM_C01F_ db
_RAM_C020_ dsb $3
_RAM_C023_ dw
_RAM_C025_ db
.ende

.enum $C030 export
_RAM_C030_ db
_RAM_C031_ db
.ende

.enum $C038 export
_RAM_C038_ dw
_RAM_C03A_ dw
_RAM_C03C_ db
_RAM_C03D_ db
_RAM_C03E_ db
_RAM_C03F_ db
.ende

.enum $C046 export
_RAM_C046_ db
_RAM_C047_ db
_RAM_C048_ db
_RAM_C049_ db
_RAM_C04A_ db
_RAM_C04B_ db
_RAM_C04C_ db
_RAM_C04D_ db
_RAM_C04E_ db
_RAM_C04F_ db
.ende

.enum $C051 export
_RAM_C051_ db
.ende

.enum $C053 export
_RAM_C053_ db
_RAM_C054_ db
_RAM_C055_ db
_RAM_C056_ db
_RAM_C057_ db
_RAM_C058_ dw
_RAM_C05A_ dw
_RAM_C05C_ db
_RAM_C05D_ db
.ende

.enum $C05F export
_RAM_C05F_ db
.ende

.enum $C061 export
_RAM_C061_ dw
_RAM_C063_ db
_RAM_C064_ db
_RAM_C065_ db
_RAM_C066_ db
_RAM_C067_ db
.ende

.enum $C069 export
_RAM_C069_ db
_RAM_C06A_ dw
_RAM_C06C_ db
_RAM_C06D_ dw
_RAM_C06F_ db
_RAM_C070_ dw
_RAM_C072_ dw
_RAM_C074_ dw
_RAM_C076_ db
_RAM_C077_ db
_RAM_C078_ dw
_RAM_C07A_ dw
_RAM_C07C_ db
_RAM_C07D_ db
_RAM_C07E_ db
_RAM_C07F_ db
_RAM_C080_ db
_RAM_C081_ db
.ende

.enum $C085 export
_RAM_C085_ dw
_RAM_C087_ dw
_RAM_C089_ dw
.ende

.enum $C08D export
_RAM_C08D_ db
_RAM_C08E_ db
_RAM_C08F_ db
_RAM_C090_ db
_RAM_C091_ db
_RAM_C092_ db
_RAM_C093_ db
_RAM_C094_ db
_RAM_C095_ db
_RAM_C096_ db
.ende

.enum $C0A0 export
_RAM_C0A0_ db
_RAM_C0A1_ db
.ende

.enum $C0A3 export
_RAM_C0A3_ dw
_RAM_C0A5_ db
_RAM_C0A6_ db
.ende

.enum $C0A8 export
_RAM_C0A8_ dw
_RAM_C0AA_ db
_RAM_C0AB_ db
_RAM_C0AC_ db
_RAM_C0AD_ db
_RAM_C0AE_ db
_RAM_C0AF_ db
_RAM_C0B0_ dw
.ende

.enum $C0B3 export
_RAM_C0B3_ db
_RAM_C0B4_ db
_RAM_C0B5_ db
_RAM_C0B6_ db
_RAM_C0B7_ dw
_RAM_C0B9_ db
_RAM_C0BA_ db
_RAM_C0BB_ db
_RAM_C0BC_ db
_RAM_C0BD_ db
_RAM_C0BE_ dw
.ende

.enum $C0C1 export
_RAM_C0C1_ db
_RAM_C0C2_ db
_RAM_C0C3_ db
_RAM_C0C4_ db
_RAM_C0C5_ dw
.ende

.enum $C0C9 export
_RAM_C0C9_ db
_RAM_C0CA_ dsb $2a
_RAM_C0F4_ dw
.ende

.enum $C0F8 export
_RAM_C0F8_ db
_RAM_C0F9_ dw
_RAM_C0FB_ db
.ende

.enum $C0FD export
_RAM_C0FD_ dw
_RAM_C0FF_ db
_RAM_C100_ db
.ende

.enum $C103 export
_RAM_C103_ dw
_RAM_C105_ dw
_RAM_C107_ dw
.ende

.enum $C10A export
_RAM_C10A_ db
_RAM_C10B_ db
.ende

.enum $C10D export
_RAM_C10D_ db
.ende

.enum $C110 export
_RAM_C110_ db
_RAM_C111_ db
_RAM_C112_ db
_RAM_C113_ db
_RAM_C114_ db
_RAM_C115_ db
_RAM_C116_ db
.ende

.enum $C118 export
_RAM_C118_ dsb $8
_RAM_C120_ db
.ende

.enum $C138 export
_RAM_C138_ dsb $8
_RAM_C140_ db
.ende

.enum $C158 export
_RAM_C158_ db
.ende

.enum $C160 export
_RAM_C160_ db
.ende

.enum $C178 export
_RAM_C178_ db
.ende

.enum $C198 export
_RAM_C198_ dsb $9
.ende

.enum $C1B8 export
_RAM_C1B8_ dsb $9
.ende

.enum $C1D8 export
_RAM_C1D8_ dsb $9
.ende

.enum $C200 export
_RAM_C200_ db
.ende

.enum $C202 export
_RAM_C202_ db
_RAM_C203_ db
_RAM_C204_ dw
_RAM_C206_ dw
_RAM_C208_ db
_RAM_C209_ db
.ende

.enum $C20B export
_RAM_C20B_ db
_RAM_C20C_ dw
_RAM_C20E_ dw
_RAM_C210_ db
_RAM_C211_ dw
_RAM_C213_ db
_RAM_C214_ db
_RAM_C215_ db
_RAM_C216_ db
_RAM_C217_ db
_RAM_C218_ db
_RAM_C219_ dw
_RAM_C21B_ dw
.ende

.enum $C220 export
_RAM_C220_ db
_RAM_C221_ db
_RAM_C222_ db
_RAM_C223_ dw
_RAM_C225_ db
_RAM_C226_ db
_RAM_C227_ db
_RAM_C228_ db
_RAM_C229_ db
_RAM_C22A_ db
.ende

.enum $C230 export
_RAM_C230_ dw
_RAM_C232_ dw
_RAM_C234_ dw
_RAM_C236_ dw
_RAM_C238_ dw
_RAM_C23A_ dw
_RAM_C23C_ dw
_RAM_C23E_ db
.ende

.enum $C240 export
_RAM_C240_ dsb $1a
_RAM_C25A_ db
.ende

.enum $C25C export
_RAM_C25C_ db
.ende

.enum $C260 export
_RAM_C260_ dsb $2e
.ende

.enum $C2A0 export
_RAM_C2A0_ dsb $b
.ende

.enum $C300 export
_RAM_C300_ dsb $4
_RAM_C304_ db
_RAM_C305_ db
_RAM_C306_ db
_RAM_C307_ dw
_RAM_C309_ db
_RAM_C30A_ db
.ende

.enum $C30C export
_RAM_C30C_ db
.ende

.enum $C30E export
_RAM_C30E_ db
_RAM_C30F_ db
_RAM_C310_ db
_RAM_C311_ db
_RAM_C312_ db
_RAM_C313_ db
_RAM_C314_ db
.ende

.enum $C317 export
_RAM_C317_ db
_RAM_C318_ db
.ende

.enum $C31A export
_RAM_C31A_ db
_RAM_C31B_ db
_RAM_C31C_ db
_RAM_C31D_ db
.ende

.enum $C31F export
_RAM_C31F_ db
_RAM_C320_ db
.ende

.enum $C327 export
_RAM_C327_ dw
_RAM_C329_ db
.ende

.enum $C32C export
_RAM_C32C_ db
.ende

.enum $C32E export
_RAM_C32E_ db
_RAM_C32F_ dw
_RAM_C331_ dw
.ende

.enum $C339 export
_RAM_C339_ db
.ende

.enum $C340 export
_RAM_C340_ db
.ende

.enum $C347 export
_RAM_C347_ dw
.ende

.enum $C360 export
_RAM_C360_ db
.ende

.enum $C367 export
_RAM_C367_ dw
_RAM_C369_ db
_RAM_C36A_ db
.ende

.enum $C36C export
_RAM_C36C_ db
.ende

.enum $C36E export
_RAM_C36E_ db
_RAM_C36F_ dw
_RAM_C371_ dw
.ende

.enum $C374 export
_RAM_C374_ db
.ende

.enum $C37B export
_RAM_C37B_ dw
.ende

.enum $C3A0 export
_RAM_C3A0_ db
.ende

.enum $C3A2 export
_RAM_C3A2_ db
_RAM_C3A3_ db
.ende

.enum $C3A5 export
_RAM_C3A5_ db
.ende

.enum $C3A7 export
_RAM_C3A7_ dw
.ende

.enum $C3AA export
_RAM_C3AA_ db
.ende

.enum $C3AC export
_RAM_C3AC_ db
.ende

.enum $C3AE export
_RAM_C3AE_ db
.ende

.enum $C3B7 export
_RAM_C3B7_ db
.ende

.enum $C3B9 export
_RAM_C3B9_ db
_RAM_C3BA_ db
.ende

.enum $C3BF export
_RAM_C3BF_ db
_RAM_C3C0_ db
.ende

.enum $C3C2 export
_RAM_C3C2_ db
.ende

.enum $C3C7 export
_RAM_C3C7_ dw
.ende

.enum $C3CC export
_RAM_C3CC_ db
.ende

.enum $C3CE export
_RAM_C3CE_ db
_RAM_C3CF_ dw
_RAM_C3D1_ dw
.ende

.enum $C3D4 export
_RAM_C3D4_ db
.ende

.enum $C3D7 export
_RAM_C3D7_ db
_RAM_C3D8_ db
.ende

.enum $C3DA export
_RAM_C3DA_ db
_RAM_C3DB_ db
_RAM_C3DC_ dw
_RAM_C3DE_ dw
_RAM_C3E0_ db
.ende

.enum $C3E7 export
_RAM_C3E7_ dw
.ende

.enum $C3EC export
_RAM_C3EC_ db
.ende

.enum $C3EE export
_RAM_C3EE_ db
_RAM_C3EF_ dw
.ende

.enum $C400 export
_RAM_C400_ db
.ende

.enum $C500 export
_RAM_C500_ db
.ende

.enum $C5C0 export
_RAM_C5C0_ db
.ende

.enum $C5C7 export
_RAM_C5C7_ dw
.ende

.enum $C5CC export
_RAM_C5CC_ db
.ende

.enum $C5CE export
_RAM_C5CE_ db
.ende

.enum $C5E0 export
_RAM_C5E0_ db
.ende

.enum $C640 export
_RAM_C640_ db
.ende

.enum $C657 export
_RAM_C657_ db
.ende

.enum $C660 export
_RAM_C660_ db
.ende

.enum $C677 export
_RAM_C677_ db
.ende

.enum $C680 export
_RAM_C680_ db
.ende

.enum $C700 export
_RAM_C700_ dsb $6
_RAM_C706_ db
.ende

.enum $C780 export
_RAM_C780_ db
.ende

.enum $C800 export
_RAM_C800_ dsb $8
_RAM_C808_ dw
_RAM_C80A_ dw
.ende

.enum $C828 export
_RAM_C828_ dsb $24
.ende

.enum $C850 export
_RAM_C850_ dsb $24
.ende

.enum $C878 export
_RAM_C878_ dsb $24
.ende

.enum $C908 export
_RAM_C908_ dsb $2e
.ende

.enum $CA08 export
_RAM_CA08_ dsb $24
_RAM_CA2C_ dsb $8
.ende

.enum $CA48 export
_RAM_CA48_ dsb $8
.ende

.enum $CA94 export
_RAM_CA94_ db
.ende

.enum $CA9C export
_RAM_CA9C_ db
.ende

.enum $CAA4 export
_RAM_CAA4_ db
.ende

.enum $CB08 export
_RAM_CB08_ dsb $8
.ende

.enum $CB48 export
_RAM_CB48_ dsb $8
.ende

.enum $CBB4 export
_RAM_CBB4_ dsb $8
.ende

.enum $CBF4 export
_RAM_CBF4_ dsb $8
.ende

.enum $CC06 export
_RAM_CC06_ db
.ende

.enum $CC08 export
_RAM_CC08_ db
.ende

.enum $CCD4 export
_RAM_CCD4_ db
.ende

.enum $CCD8 export
_RAM_CCD8_ db
.ende

.enum $CCDC export
_RAM_CCDC_ db
.ende

.enum $CCE0 export
_RAM_CCE0_ db
.ende

.enum $CCE4 export
_RAM_CCE4_ db
.ende

.enum $CCE8 export
_RAM_CCE8_ db
.ende

.enum $CCEC export
_RAM_CCEC_ db
.ende

.enum $CCF0 export
_RAM_CCF0_ db
.ende

.enum $CCF4 export
_RAM_CCF4_ dsb $4
_RAM_CCF8_ db
.ende

.enum $CD44 export
_RAM_CD44_ dsb $12
.ende

.enum $CE84 export
_RAM_CE84_ db
.ende

.enum $CF00 export
_RAM_CF00_ db
.ende

.enum $CF38 export
_RAM_CF38_ db
.ende

.enum $CF80 export
_RAM_CF80_ dsb $20
_RAM_CFA0_ dsb $20
_RAM_CFC0_ db
.ende

.enum $CFE0 export
_RAM_CFE0_ db
.ende

.enum $D000 export
_RAM_D000_ dsb $503
_RAM_D503_ db
_RAM_D504_ db
.ende

.enum $D506 export
_RAM_D506_ db
.ende

.enum $D700 export
_RAM_D700_ db
.ende

.enum $D7D0 export
_RAM_D7D0_ db
_RAM_D7D1_ db
.ende

.enum $D7DA export
_RAM_D7DA_ db
.ende

.enum $D800 export
_RAM_D800_ db
_RAM_D801_ db
_RAM_D802_ db
_RAM_D803_ db
_RAM_D804_ db
_RAM_D805_ db
_RAM_D806_ db
_RAM_D807_ db
.ende

.enum $D8A0 export
_RAM_D8A0_ db
.ende

.enum $D900 export
_RAM_D900_ dsb $600
.ende

.enum $FFFF export
_RAM_FFFF_ db
.ende

; Ports
.define Port_PSG $7F
.define Port_VDPData $BE
.define Port_VDPAddress $BF
.define _PORT_DE_ $DE
.define _PORT_DF_ $DF

; Input Ports
.define Port_VDPStatus $BF
.define Port_IOPort1 $DC
.define Port_IOPort2 $DD

.BANK 0 SLOT 0
.ORG $0000

_LABEL_0_:
	di
	im 1
	ld sp, $DFF0
	jr _LABEL_85_

_LABEL_8_:
	ld a, e
	out (Port_VDPAddress), a
	ld a, d
	out (Port_VDPAddress), a
	ret

; Data from F to F (1 bytes)
.db $FF

_LABEL_10_:
	add a, a
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ret

; Data from 1A to 1A (1 bytes)
.db $FF

_LABEL_1B_:
	bit 7, a
	ret z
	and $0F
_LABEL_20_:
	add a, a
_LABEL_21_:
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

; Data from 2A to 2F (6 bytes)
.db $FF $FF $FF $FF $FF $FF

_LABEL_30_:
	rst $08	; _LABEL_8_
	ld c, Port_VDPData
-:
	outi
	jr nz, -
	ret

_LABEL_38_:
	jp _LABEL_C0_

; Jump Table from 3B to 52 (12 entries, indexed by _RAM_C01F_)
_DATA_3B_:
.dw _LABEL_76D_ _LABEL_76D_ _LABEL_9E5_ _LABEL_194F_ _LABEL_18CE_ _LABEL_1BC9_ _LABEL_6C05_ _LABEL_7DC2_
.dw _LABEL_1650_ _LABEL_A88_ _LABEL_A88_ _LABEL_1FCD_

_LABEL_53_:
	xor a
	ld (_RAM_C01F_), a
-:
	ld hl, _RAM_C01F_
	ld a, (hl)
	and $0F
	exx
	ld hl, _DATA_3B_
	rst $20	; _LABEL_20_
	jp -

; Data from 65 to 65 (1 bytes)
.db $FF

_LABEL_66_:
	push af
	ld a, (_RAM_C31A_)
	cp $0F
	jp z, +
	ld a, (_RAM_C015_)
	or a
	jp nz, +
	ld a, (_RAM_C01F_)
	cp $8A
	jr c, +
	ld a, $01
	ld (_RAM_C093_), a
+:
	pop af
	retn

_LABEL_85_:
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_9E02_
	ld hl, _RAM_C000_
	ld de, _RAM_C000_ + 1
	ld bc, $1FFF
	ld (hl), l
	ldir
	call _LABEL_341_
	call _LABEL_350_
-:
	ld a, $82
	ld (_RAM_FFFF_), a
	ld sp, $DFF0
	call _LABEL_9E02_
	call _LABEL_26B_
	ld hl, $0000
	ld de, $4000
	ld bc, $3800
	call _LABEL_184_
	ei
	call _LABEL_2F6_
	jp _LABEL_53_

_LABEL_C0_:
	push af
	push bc
	push de
	push hl
	exx
	ex af, af'
	push af
	push bc
	push de
	push hl
	push ix
	push iy
	in a, (Port_VDPStatus)
	in a, (Port_IOPort2)
	and $10
	ld hl, _RAM_C096_
	ld c, (hl)
	ld (hl), a
	xor c
	and c
	jp nz, -
	ld a, (_RAM_FFFF_)
	push af
	ld a, (_RAM_C008_)
	rrca
	push af
	call c, _LABEL_1F7_
	call _LABEL_41AC_
	pop af
	rrca
	push af
	call _LABEL_367_
	call _LABEL_107C_
	pop af
	rrca
	push af
	call _LABEL_264F_
	pop af
	rrca
	ld a, (_RAM_C01F_)
	ld hl, _DATA_127_
	call c, _LABEL_1B_
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_984F_
	xor a
	ld (_RAM_C008_), a
	pop af
	ld (_RAM_FFFF_), a
	pop iy
	pop ix
	pop hl
	pop de
	pop bc
	pop af
	exx
	ex af, af'
	pop hl
	pop de
	pop bc
	pop af
	ei
	ret

; Jump Table from 127 to 13E (12 entries, indexed by _RAM_C01F_)
_DATA_127_:
.dw _LABEL_842_ _LABEL_842_ _LABEL_A35_ _LABEL_1A01_ _LABEL_18CD_ _LABEL_1BEE_ _LABEL_6EA7_ _LABEL_7F22_
.dw _LABEL_16A6_ _LABEL_AB1_ _LABEL_AB1_ _LABEL_1FE6_

_LABEL_13F_:
	push af
	rst $08	; _LABEL_8_
	pop af
	out (Port_VDPData), a
	ret

_LABEL_145_:
	rst $08	; _LABEL_8_
	ld a, c
	or a
	jr z, +
	inc b
+:
	ld a, b
	ld b, c
	ld c, Port_VDPData
-:
	outi
	jp nz, -
	dec a
	jp nz, -
	ret

_LABEL_159_:
	rst $08	; _LABEL_8_
	ld a, (_RAM_C10A_)
	ld c, Port_VDPData
-:
	outi
	push af
	pop af
	out (c), a
	jr nz, -
	ret

; Data from 168 to 17B (20 bytes)
.db $CF $79 $B7 $28 $01 $04 $78 $41 $0E $BE $ED $A2 $C2 $72 $01 $3D
.db $C2 $72 $01 $C9

_LABEL_17C_:
	ld de, $7800
	ld bc, $0700
	ld l, $00
_LABEL_184_:
	rst $08	; _LABEL_8_
	ld a, c
	or a
	ld a, l
	jr z, _LABEL_18B_
	inc b
_LABEL_18B_:
	out (Port_VDPData), a
	dec c
	jr nz, _LABEL_18B_
	djnz _LABEL_18B_
	ret

_LABEL_193_:
	push bc
	rst $08	; _LABEL_8_
	ld b, c
	ld c, Port_VDPData
-:
	outi
	nop
	jr nz, -
	ex de, hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop bc
	djnz _LABEL_193_
	ret

; Data from 1A7 to 1C4 (30 bytes)
.db $32 $0A $C1 $C5 $CF $41 $0E $BE $ED $A3 $3A $0A $C1 $00 $ED $79
.db $00 $C2 $AF $01 $EB $01 $40 $00 $09 $EB $C1 $10 $E6 $C9

_LABEL_1C5_:
	ld hl, $0040
	rst $08	; _LABEL_8_
	push bc
	xor a
-:
	out (Port_VDPData), a
	dec c
	jr nz, -
	add hl, de
	ex de, hl
	pop bc
	djnz _LABEL_1C5_
	ret

_LABEL_1D6_:
	ld (_RAM_C10B_), a
	rst $08	; _LABEL_8_
--:
	ld a, (hl)
	exx
	ld c, Port_VDPData
	ld b, $04
	ld h, a
	ld a, (_RAM_C10B_)
-:
	rra
	ld d, h
	jr c, +
	ld d, $00
+:
	out (c), d
	djnz -
	exx
	inc hl
	dec bc
	ld a, b
	or c
	jp nz, --
	ret

_LABEL_1F7_:
	ld a, (_RAM_C01F_)
	and $0F
	cp $02
	jr c, _LABEL_208_
	ld hl, _RAM_C10D_
	inc (hl)
	bit 0, (hl)
	jr z, +
_LABEL_208_:
	ld hl, _RAM_C700_
	ld de, $7F00
	ld bc,  $4000 | Port_VDPData
	rst $08	; _LABEL_8_
-:
	outi
	jr nz, -
	ld hl, _RAM_C780_
	ld de, $7F80
	ld b, $80
	rst $08	; _LABEL_8_
-:
	outi
	jr nz, -
	ret

+:
	ld a, (_RAM_C009_)
	cp $13
	jr c, _LABEL_208_
	ld hl, _RAM_C700_
	ld bc,  $1100 | Port_VDPData
	ld de, $7F00
	rst $08	; _LABEL_8_
-:
	outi
	jr nz, -
	ld hl, (_RAM_C009_)
	ld a, l
	dec l
	sub $11
	ld b, a
-:
	outd
	jr nz, -
	ld a, $D0
	out (Port_VDPData), a
	ld hl, _RAM_C780_
	ld de, $7F80
	ld b, $22
	rst $08	; _LABEL_8_
-:
	outi
	jr nz, -
	ld hl, (_RAM_C009_)
	sla l
	set 7, l
	ld a, l
	sub $A2
	ld b, a
-:
	dec l
	dec l
	outi
	outd
	jp nz, -
	ret

_LABEL_26B_:
	ld hl, _DATA_27D_
	ld bc,  $1600 | Port_VDPAddress
	otir
	xor a
	out (Port_VDPData), a
	ld a, (_DATA_27D_ + 2)
	ld (_RAM_C004_), a
	ret

; Data from 27D to 292 (22 bytes)
_DATA_27D_:
.db $26 $80 $A0 $81 $FF $82 $FF $83 $FF $84 $FF $85 $FF $86 $00 $88
.db $00 $89 $00 $87 $10 $C0

_LABEL_293_:
	ld b, $04
-:
	push bc
	push de
	call _LABEL_2A0_
	pop de
	inc de
	pop bc
	djnz -
	ret

_LABEL_2A0_:
	ld a, (hl)
	inc hl
	or a
	ret z
	ld b, a
	ld c, a
	res 7, b
-:
	ld a, e
	out (Port_VDPAddress), a
	ld a, d
	out (Port_VDPAddress), a
	ld a, (hl)
	out (Port_VDPData), a
	bit 7, c
	jp z, +
	inc hl
+:
	inc de
	inc de
	inc de
	inc de
	djnz -
	jp nz, _LABEL_2A0_
	inc hl
	jp _LABEL_2A0_

; Data from 2C4 to 2C4 (1 bytes)
.db $CF

_LABEL_2C5_:
	ld e, $08
	ld d, (hl)
-:
	sla d
	rra
	dec e
	jr nz, -
	out (Port_VDPData), a
	inc hl
	dec bc
	ld a, b
	or c
	jr nz, _LABEL_2C5_
	ret

; Data from 2D7 to 2E5 (15 bytes)
.db $21 $00 $C7 $11 $01 $C7 $01 $BF $00 $36 $E0 $ED $B0 $3E $01

_LABEL_2E6_:
	ld hl, _RAM_C008_
	ld (hl), a
-:
	ld a, (hl)
	or a
	jr nz, -
	ret

_LABEL_2EF_:
	ld a, (_RAM_C004_)
	and $BF
	jr +

_LABEL_2F6_:
	ld a, (_RAM_C004_)
	or $40
+:
	ld (_RAM_C004_), a
	ld e, a
	ld d, $81
	rst $08	; _LABEL_8_
	ret

_LABEL_303_:
	xor a
	ld (_RAM_C0BE_), a
	ld (_RAM_C0B0_), a
	ld e, a
	ld d, $89
	rst $08	; _LABEL_8_
	dec d
	rst $08	; _LABEL_8_
	ret

_LABEL_311_:
	call _LABEL_2EF_
	ld hl, $0000
	ld (_RAM_C0AF_), hl
	ld (_RAM_C0BD_), hl
	ld (_RAM_C0AB_), hl
	ld (_RAM_C0B9_), hl
	ld hl, _RAM_C700_
	ld de, _RAM_C700_ + 1
	ld bc, $00BF
	ld (hl), $E0
	ldir
	ld de, $8800
	rst $08	; _LABEL_8_
	ld d, $89
	rst $08	; _LABEL_8_
	ei
	ld a, $01
	call _LABEL_2E6_
	di
	jp _LABEL_17C_

_LABEL_341_:
	ld b, $0A
_LABEL_343_:
	push bc
	ld bc, $3333
-:
	dec bc
	ld a, b
	or c
	jr nz, -
	pop bc
	djnz _LABEL_343_
	ret

_LABEL_350_:
	ld a, $92
	out (_PORT_DF_), a
	ld hl, _RAM_C005_
	ld a, (hl)
	and $02
	or $01
	ld (hl), a
	xor a
	out (_PORT_DE_), a
	in a, (_PORT_DE_)
	or a
	ret z
	res 0, (hl)
	ret

_LABEL_367_:
	ld a, (_RAM_C005_)
	bit 0, a
	jp nz, +
	in a, (Port_IOPort1)
	jp _LABEL_3C4_

+:
	ld a, $07
	out (_PORT_DE_), a
	in a, (Port_IOPort1)
	ld c, a
	ld a, $04
	out (_PORT_DE_), a
	in a, (Port_IOPort1)
	bit 5, a
	jp nz, +
	res 1, c
+:
	ld a, $05
	out (_PORT_DE_), a
	in a, (Port_IOPort1)
	bit 5, a
	jp nz, +
	res 2, c
+:
	ld a, $06
	out (_PORT_DE_), a
	in a, (Port_IOPort1)
	bit 5, a
	jp nz, +
	res 3, c
+:
	bit 6, a
	jp nz, +
	res 0, c
+:
	ld a, $02
	out (_PORT_DE_), a
	in a, (Port_IOPort1)
	bit 4, a
	jp nz, +
	res 4, c
+:
	ld a, $03
	out (_PORT_DE_), a
	in a, (Port_IOPort1)
	bit 4, a
	jp nz, +
	res 5, c
+:
	ld a, c
_LABEL_3C4_:
	ld hl, _RAM_C006_
	cpl
	ld c, a
	xor (hl)
	ld (hl), c
	inc hl
	and c
	ld (hl), a
	ret

_LABEL_3CF_:
	ld a, (_RAM_C005_)
	and $20
	ret nz
	ld bc, _RAM_C030_
	ld de, _DATA_483_
	ld h, $00
	add hl, de
	call +
	ret nc
	ld hl, _RAM_C030_
	ld c, $99
	ld (hl), c
	inc hl
	ld (hl), c
	inc hl
	ld (hl), c
	ret

_LABEL_3ED_:
	ld a, (_RAM_C005_)
	and $20
	ret nz
	ld bc, _RAM_C020_
	ld de, _DATA_489_
	ld h, $00
	add hl, de
	call +
	ret nc
	ld hl, _RAM_C000_
	ld c, $99
	ld (hl), c
	inc hl
	ld (hl), c
	inc hl
	ld (hl), c
	ret

+:
	ld a, (bc)
	add a, (hl)
	daa
	ld (bc), a
	inc bc
	inc hl
	ld a, (bc)
	adc a, (hl)
	daa
	ld (bc), a
	inc bc
	inc hl
	ld a, (bc)
	adc a, (hl)
	daa
	ld (bc), a
	ret

_LABEL_41C_:
	ld a, (bc)
	sub (hl)
	daa
	ld (bc), a
	inc hl
	inc c
	ld a, (bc)
	sbc a, (hl)
	daa
	ld (bc), a
	inc hl
	inc c
	ld a, (bc)
	sbc a, (hl)
	daa
	ld (bc), a
	ret

_LABEL_42D_:
	ld a, (bc)
	sub (hl)
	daa
	inc hl
	inc c
	ld a, (bc)
	sbc a, (hl)
	daa
	inc hl
	inc c
	ld a, (bc)
	sbc a, (hl)
	daa
	ret

_LABEL_43B_:
	ld de, _RAM_C020_
	ld hl, _RAM_C000_
	ld b, $03
	or a
-:
	ld a, (de)
	sbc a, (hl)
	inc hl
	inc de
	djnz -
	ret c
	ex de, hl
	dec hl
	dec de
	ld bc, $0003
	lddr
	ret

_LABEL_454_:
	ld c, $03
_LABEL_456_:
	call _LABEL_8_
	set 7, e
--:
	ld a, $C0
	ld b, $02
-:
	rld
	push af
	cp $C0
	jr nz, +
	bit 7, e
	jr z, ++
	ld a, $00
	jr ++

+:
	res 7, e
++:
	out (Port_VDPData), a
	push af
	pop af
	ld a, (_RAM_C10A_)
	out (Port_VDPData), a
	pop af
	djnz -
	rld
	dec hl
	dec c
	jr nz, --
	ret

; Data from 483 to 488 (6 bytes)
_DATA_483_:
.db $01 $00 $00 $02 $00 $00

; Data from 489 to 4CD (69 bytes)
_DATA_489_:
.db $20 $00 $00 $40 $00 $00 $60 $00 $00 $80 $00 $00 $00 $01 $00 $20
.db $01 $00 $00 $02 $00 $00 $10 $00 $23 $5E $23 $56 $23 $46 $23 $7E
.db $C9 $46 $C5 $CD $A1 $04 $23 $E5 $66 $6F $CD $59 $01 $E1 $C1 $10
.db $F1 $C9 $08 $3E $82 $32 $FF $FF $08 $11 $00 $44 $01 $00 $02 $21
.db $05 $B3 $C3 $D6 $01

_LABEL_4CE_:
	ld l, (ix+27)
	ld a, (ix+28)
	and $01
	ld (ix+28), a
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
	ld hl, _DATA_4EE_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

; Jump Table from 4EE to 4FD (8 entries, indexed by _RAM_CF9C_)
_DATA_4EE_:
.dw _LABEL_4FE_ _LABEL_535_ _LABEL_571_ _LABEL_5A8_ _LABEL_5E4_ _LABEL_61B_ _LABEL_657_ _LABEL_68E_

; 1st entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_4FE_:
	ld hl, _DATA_6CA_
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	add a, h
	ld (ix+14), a
	ld a, (ix+25)
	adc a, $00
	ld (ix+10), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	add a, h
	ld (ix+12), a
	ld a, (ix+26)
	sbc a, $00
	ld (ix+9), a
	ret

; 2nd entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_535_:
	ld hl, _DATA_6CA_ + 2
	ld a, c
	cpl
	add a, $7F
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	add a, h
	ld (ix+12), a
	ld a, (ix+26)
	sbc a, $00
	ld (ix+9), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	add a, h
	ld (ix+14), a
	ld a, (ix+25)
	adc a, $00
	ld (ix+10), a
	ret

; 3rd entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_571_:
	ld hl, _DATA_6CA_ + 2
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	sub h
	ld (ix+12), a
	ld a, (ix+26)
	adc a, $00
	ld (ix+9), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	add a, h
	ld (ix+14), a
	ld a, (ix+25)
	adc a, $00
	ld (ix+10), a
	ret

; 4th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_5A8_:
	ld hl, _DATA_6CA_
	ld a, c
	cpl
	add a, $7F
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	add a, h
	ld (ix+14), a
	ld a, (ix+25)
	adc a, $00
	ld (ix+10), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	sub h
	ld (ix+12), a
	ld a, (ix+26)
	adc a, $00
	ld (ix+9), a
	ret

; 5th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_5E4_:
	ld hl, _DATA_6CA_
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	sub h
	ld (ix+14), a
	ld a, (ix+25)
	sbc a, $00
	ld (ix+10), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	sub h
	ld (ix+12), a
	ld a, (ix+26)
	adc a, $00
	ld (ix+9), a
	ret

; 6th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_61B_:
	ld hl, _DATA_6CA_ + 2
	ld a, c
	cpl
	add a, $7F
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	sub h
	ld (ix+12), a
	ld a, (ix+26)
	adc a, $00
	ld (ix+9), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	sub h
	ld (ix+14), a
	ld a, (ix+25)
	sbc a, $00
	ld (ix+10), a
	ret

; 7th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_657_:
	ld hl, _DATA_6CA_ + 2
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	add a, h
	ld (ix+12), a
	ld a, (ix+26)
	sbc a, $00
	ld (ix+9), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	sub h
	ld (ix+14), a
	ld a, (ix+25)
	sbc a, $00
	ld (ix+10), a
	ret

; 8th entry of Jump Table from 4EE (indexed by _RAM_CF9C_)
_LABEL_68E_:
	ld hl, _DATA_6CA_
	ld a, c
	cpl
	add a, $7F
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	exx
	ld e, a
	ld l, (ix+29)
	call _LABEL_74C_
	ld a, (ix+30)
	sub h
	ld (ix+14), a
	ld a, (ix+25)
	sbc a, $00
	ld (ix+10), a
	exx
	inc hl
	ld l, (hl)
	ld e, (ix+29)
	call _LABEL_74C_
	ld a, (ix+31)
	add a, h
	ld (ix+12), a
	ld a, (ix+26)
	sbc a, $00
	ld (ix+9), a
	ret

; Data from 6CA to 74B (130 bytes)
_DATA_6CA_:
.db $00 $FF $03 $FF $06 $FF $09 $FF $0D $FF $10 $FF $13 $FE $16 $FE
.db $19 $FE $1C $FD $1F $FD $22 $FD $25 $FC $29 $FC $2C $FB $2F $FB
.db $32 $FA $35 $F9 $38 $F9 $3B $F8 $3E $F7 $41 $F7 $44 $F6 $47 $F5
.db $4A $F4 $4D $F3 $50 $F2 $53 $F1 $56 $F0 $59 $EF $5C $EE $5F $ED
.db $62 $EC $64 $EA $67 $E9 $6A $E8 $6D $E7 $70 $E5 $73 $E4 $75 $E2
.db $78 $E1 $7B $DF $7E $DE $80 $DC $83 $DB $86 $D9 $88 $D7 $8B $D6
.db $8E $D4 $90 $D2 $93 $D0 $95 $CF $98 $CD $9A $CB $9D $C9 $9F $C7
.db $A2 $C5 $A4 $C3 $A7 $C1 $A9 $BF $AB $BD $AE $BB $B0 $B9 $B2 $B7
.db $B4 $B4

_LABEL_74C_:
	ld h, l
	ld b, $08
	ld d, $00
	ld l, d
-:
	add hl, hl
	jr nc, +
	add hl, de
+:
	djnz -
	ret

; Data from 759 to 76C (20 bytes)
.db $06 $11 $AF $C3 $68 $07 $8F $38 $03 $BB $38 $02 $93 $B7 $3F $ED
.db $6A $10 $F3 $C9

; 1st entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_76D_:
	exx
	bit 7, (hl)
	jp nz, _LABEL_7EC_
	set 7, (hl)
	xor a
	ld (_RAM_C10A_), a
	call _LABEL_311_
	ld de, $6000
	ld bc, $0020
	ld l, $00
	call _LABEL_184_
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_9DF3_
	call _LABEL_43B_
	ld hl, _RAM_C020_
	ld de, _RAM_C020_ + 1
	ld bc, $1DDF
	ld (hl), $00
	ldir
	ld hl, _RAM_C226_
	ld (hl), $3C
	xor a
	ld (_RAM_C227_), a
	ld (_RAM_C228_), a
	ld a, $84
	ld (_RAM_FFFF_), a
	ld hl, _DATA_13332_
	ld de, $4020
	call _LABEL_293_
	ld hl, _DATA_12D9E_
	ld de, $788E
	ld bc, $061C
	call _LABEL_193_
	ld hl, _DATA_12E46_
	ld de, $79DA
	ld bc, $071A
	call _LABEL_193_
	ld hl, _DATA_8C6_
	ld de, $C000
	ld b, $20
	rst $30	; _LABEL_30_
	call _LABEL_8F6_
	call _LABEL_2F6_
	ei
	ld hl, $01D0
	ld (_RAM_C103_), hl
	ld a, $81
	ld (_RAM_C110_), a
_LABEL_7EC_:
	ld a, $09
	call _LABEL_2E6_
	call _LABEL_2694_
	ld a, (_RAM_C006_)
	ld b, a
	and $30
	jr nz, +
	ld hl, (_RAM_C103_)
	dec hl
	ld (_RAM_C103_), hl
	ld a, h
	or l
	ret nz
	ld a, $02
	ld (_RAM_C01F_), a
	ret

+:
	ld a, $26
	ld (_RAM_C05F_), a
	ld hl, _DATA_824_
	ld de, _RAM_C01F_
	ld bc, $0019
	ldir
	xor a
	ld (_RAM_C10A_), a
	ld (_RAM_C005_), a
	ret

; Data from 824 to 841 (30 bytes)
_DATA_824_:
.db $03 $00 $00 $00 $01 $01 $03
.dsb 15, $00
.db $03 $00 $00 $00 $00 $00 $00 $00

; 1st entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_842_:
	ld hl, _RAM_C226_
	dec (hl)
	ret nz
	ld (hl), $20
	inc hl
	ld a, (hl)
	cp $06
	jr c, +
	dec hl
	ld (hl), $03
	inc hl
	inc hl
	inc (hl)
	ld a, (hl)
	and $03
	ld hl, _DATA_8F2_
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	ld de, $C002
	jp _LABEL_13F_

+:
	inc (hl)
	ld hl, _RAM_FFFF_
	ld (hl), $84
	ld hl, _DATA_8E6_
	jp _LABEL_20_

; 1st entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_872_:
	ld hl, _DATA_12EFC_
	ld de, $7828
	ld bc, $0718
	call _LABEL_193_
	jp _LABEL_9C2_

; 2nd entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_881_:
	ld hl, _DATA_130A4_
	ld de, $7B98
	ld bc, $061C
	call _LABEL_193_
	jp _LABEL_97E_

; 3rd entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_890_:
	ld hl, _DATA_12FA4_
	ld de, $7800
	ld bc, $080E
	jp _LABEL_193_

; 4th entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_89C_:
	ld hl, _DATA_13014_
	ld de, $79F4
	ld bc, $0C0C
	call _LABEL_193_
	jp _LABEL_967_

; 5th entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_8AB_:
	ld hl, _DATA_131B2_
	ld de, $7A00
	ld bc, $1018
	call _LABEL_193_
	jp _LABEL_995_

; 6th entry of Jump Table from 8E6 (indexed by _RAM_C227_)
_LABEL_8BA_:
	ld hl, _DATA_1314C_
	ld de, $7D1A
	ld bc, $0322
	jp _LABEL_193_

; Data from 8C6 to 8C9 (4 bytes)
_DATA_8C6_:
.db $2F $00 $03 $04

; 5th entry of Pointer Table from 1BF61 (indexed by unknown)
; Data from 8CA to 8E5 (28 bytes)
_DATA_8CA_:
.db $0C $08 $05 $0B $30 $38 $3C $3F $02 $06 $2F $00 $2F $3F $05 $0B
.db $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; Jump Table from 8E6 to 8F1 (6 entries, indexed by _RAM_C227_)
_DATA_8E6_:
.dw _LABEL_872_ _LABEL_881_ _LABEL_890_ _LABEL_89C_ _LABEL_8AB_ _LABEL_8BA_

; Data from 8F2 to 8F5 (4 bytes)
_DATA_8F2_:
.db $03 $0F $08 $0F

_LABEL_8F6_:
	ld a, $1E
	ld (_RAM_C0F8_), a
	ld hl, _RAM_C300_
	ld (_RAM_C0F9_), hl
	call _LABEL_9D9_
	ld a, $1D
	call _LABEL_41B9_
	ld bc, $0036
	call _LABEL_41C1_
	ld bc, $002C
	call _LABEL_41C1_
	ld bc, $0014
	call _LABEL_41C1_
	ld hl, _DATA_12357_
	ld de, $6400
	call _LABEL_293_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld hl, _DATA_8F7B_ + 1
	ld de, _RAM_C800_
	xor a
	call +
	ld hl, _DATA_9152_ + 1
	ld de, _RAM_C828_
	ld a, $0B
	call +
	ld hl, _DATA_8F15_ + 1
	ld de, _RAM_C850_
	ld a, $13
	call +
	ld hl, _DATA_8E01_ + 1
	ld de, _RAM_C878_
	ld a, $19
+:
	push de
	ld bc, $0024
	ldir
	pop hl
	ld e, (hl)
	inc hl
	ld b, e
	ld d, $00
	add hl, de
	ld c, a
-:
	inc hl
	inc hl
	ld a, (hl)
	add a, c
	ld (hl), a
	djnz -
; 24th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_966_:
	ret

_LABEL_967_:
	ld ix, _RAM_C300_
	ld (ix+0), $18
	ld hl, _RAM_C800_
	ld (_RAM_C307_), hl
	ld (ix+12), $DC
	ld (ix+14), $46
	ret

_LABEL_97E_:
	ld ix, _RAM_C320_
	ld (ix+0), $18
	ld hl, $C828
	ld (_RAM_C327_), hl
	ld (ix+12), $70
	ld (ix+14), $7C
	ret

_LABEL_995_:
	ld ix, _RAM_C340_
	ld (ix+0), $18
	ld hl, $C850
	ld (_RAM_C347_), hl
	ld (ix+12), $18
	ld (ix+14), $4F
	ld ix, _RAM_C3C0_
	ld (ix+0), $18
	ld hl, $961A
	ld (_RAM_C3C7_), hl
	ld (ix+12), $30
	ld (ix+14), $77
	ret

_LABEL_9C2_:
	ld ix, _RAM_C360_
	ld (ix+0), $18
	ld hl, $C878
	ld (_RAM_C367_), hl
	ld (ix+12), $C9
	ld (ix+14), $0C
	ret

_LABEL_9D9_:
	ld b, $1E
	ld hl, _RAM_C300_
-:
	call _LABEL_278D_
	inc hl
	djnz -
	ret

; 3rd entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_9E5_:
	ld hl, _RAM_C01F_
	bit 7, (hl)
	jp nz, _LABEL_A8E_
	set 7, (hl)
	ld a, (_RAM_C016_)
	inc a
	cp $05
	jp c, +
	ld a, $01
+:
	ld (_RAM_C016_), a
	ld c, a
	ld b, $00
	ld hl, _DATA_A7C_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C023_), a
	cp $02
	jp nz, +
	ld a, $07
	ld (_RAM_C054_), a
+:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C016_)
	ld hl, _DATA_A80_ - 2
	rst $10	; _LABEL_10_
	dec hl
	ld (_RAM_C105_), hl
	ld hl, _RAM_C005_
	ld a, (hl)
	and $03
	or $20
	ld (hl), a
	ld hl, $01FF
	ld (_RAM_C107_), hl
	jp _LABEL_ABD_

; Data from A34 to A34 (1 bytes)
.db $C9

; 3rd entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_A35_:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C006_)
	and $30
	jr z, +
	ld a, $01
	ld (_RAM_C01F_), a
	ld hl, _RAM_C005_
	res 5, (hl)
	ret

+:
	ld bc, (_RAM_C107_)
	djnz ++
	ld hl, (_RAM_C105_)
	inc hl
	ld a, (hl)
	or a
	jr nz, +
	ld a, $00
	ld (_RAM_C01F_), a
	ld hl, _RAM_C005_
	res 5, (hl)
	ret

+:
	ld b, a
	inc hl
	ld a, c
	ld c, (hl)
	ld (_RAM_C105_), hl
	xor c
	and c
	ld (_RAM_C007_), a
++:
	ld (_RAM_C107_), bc
	ld a, c
	ld (_RAM_C006_), a
	jp _LABEL_AB1_

; Data from A7C to A7F (4 bytes)
_DATA_A7C_:
.db $02 $03 $04 $05

; Pointer Table from A80 to A87 (4 entries, indexed by _RAM_C016_)
_DATA_A80_:
.dw _DATA_14D35_ _DATA_14D5B_ _DATA_14E3B_ _DATA_14F6B_

; 10th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_A88_:
	exx
	bit 7, (hl)
	jp z, _LABEL_ABD_
_LABEL_A8E_:
	call _LABEL_6457_
	call _LABEL_6F3D_
	call _LABEL_2694_
	call _LABEL_67BD_
	call _LABEL_6B42_
	ld a, $09
	call _LABEL_2E6_
	ld a, (_RAM_C093_)
	or a
	ret z
	xor a
	ld (_RAM_C093_), a
	ld a, $0B
	ld (_RAM_C01F_), a
	ret

; 10th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_AB1_:
	call _LABEL_264F_
	call _LABEL_4222_
	call _LABEL_158F_
	jp _LABEL_6919_

_LABEL_ABD_:
	call _LABEL_311_
	call _LABEL_9D9_
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_9DF3_
	ld hl, _RAM_C0A0_
	ld de, _RAM_C0A0_ + 1
	ld bc, $002A
	ld (hl), $00
	ldir
	ld a, $1E
	ld (_RAM_C0F8_), a
	ld hl, _RAM_C300_
	ld (_RAM_C0F9_), hl
	call _LABEL_10FF_
	call _LABEL_1134_
	ld hl, _DATA_1F0A9_
	ld de, $61A0
	ld bc, $0060
	call _LABEL_145_
	ld hl, _DATA_1D349_
	ld de, $66C0
	ld bc, $0100
	call _LABEL_145_
	ld a, (_RAM_C023_)
	ld hl, _DATA_E1F_ - 1
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	or a
	jp z, +++
	cp $01
	jp nz, +
	ld a, $01
	ld (_RAM_C051_), a
	jp ++

+:
	ld a, $09
	ld (_RAM_C054_), a
++:
	ld hl, _DATA_1DB29_
	ld de, $6200
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_1D429_
	ld de, $6220
	ld bc, $01C0
	call _LABEL_145_
+++:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld de, $5600
	ld hl, _DATA_172B1_
	call _LABEL_293_
	ld a, $83
	ld (_RAM_FFFF_), a
	ld hl, _DATA_C000_
	ld de, $4020
	ld bc, $0480
	call _LABEL_145_
	call _LABEL_E6C_
	call _LABEL_65AA_
	ld a, (_RAM_C023_)
	ld hl, _DATA_D70_ - 3
	ld c, a
	add a, a
	add a, c
	ld c, a
	ld b, $00
	add hl, bc
	ld a, (hl)
	ld (_RAM_C069_), a
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C0FD_), hl
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	ld hl, _DATA_B505_ - 2
	call _LABEL_10_
	ld (_RAM_C061_), hl
	xor a
	ld (_RAM_C08E_), a
	ld (_RAM_C215_), a
	ld hl, _RAM_D900_
	ld (hl), $00
	ld de, _RAM_D900_ + 1
	ld bc, $05FF
	ldir
	ld a, (_RAM_C023_)
	cp $0B
	jp c, _LABEL_C43_
	jp nz, _LABEL_BF3_
	ld a, $01
	ld (_RAM_C08E_), a
	ld hl, _DATA_97DD_
	ld b, $05
	ld de, _RAM_D900_
---:
	ld (_RAM_C078_), de
	ld (_RAM_C07A_), de
--:
	push bc
	ld a, (hl)
	or a
	inc hl
	jp z, +
	inc a
	dec hl
-:
	ldi
	inc de
	dec a
	jp nz, -
+:
	ex de, hl
	ld hl, (_RAM_C07A_)
	ld bc, $0020
	add hl, bc
	ld (_RAM_C07A_), hl
	ex de, hl
	pop bc
	djnz --
	ld a, (hl)
	cp $FF
	jp z, _LABEL_C43_
	ex de, hl
	ld hl, (_RAM_C078_)
	ld bc, $0100
	add hl, bc
	ld (_RAM_C078_), hl
	ex de, hl
	ld b, $05
	jp ---

_LABEL_BF3_:
	cp $10
	jp nz, _LABEL_C43_
	ld a, $01
	ld (_RAM_C08E_), a
	ld hl, _DATA_9800_
	ld b, $07
	ld de, _RAM_D900_
---:
	ld (_RAM_C078_), de
	ld (_RAM_C07A_), de
--:
	push bc
	ld a, (hl)
	or a
	inc hl
	jp z, +
	inc a
	dec hl
-:
	ldi
	inc de
	dec a
	jp nz, -
+:
	ex de, hl
	ld hl, (_RAM_C07A_)
	ld bc, $0020
	add hl, bc
	ld (_RAM_C07A_), hl
	ex de, hl
	pop bc
	djnz --
	ld a, (hl)
	cp $FF
	jp z, _LABEL_C43_
	ex de, hl
	ld hl, (_RAM_C078_)
	ld bc, $0100
	add hl, bc
	ld (_RAM_C078_), hl
	ex de, hl
	ld b, $07
	jp ---

_LABEL_C43_:
	ld ix, _RAM_C300_
	ld (ix+0), $01
	ld a, (_RAM_C023_)
	add a, a
	ld c, a
	ld b, $00
	ld hl, _DATA_DA3_ - 2
	add hl, bc
	ld a, (hl)
	ld (ix+12), a
	inc hl
	ld a, (hl)
	ld (ix+14), a
	call _LABEL_29C2_
	call _LABEL_2694_
	ld a, (_RAM_C023_)
	ld hl, _DATA_D2C_ - 2
	call _LABEL_10_
	ld (_RAM_C00E_), hl
	ld hl, _DATA_156D_ - 2
	ld a, (_RAM_C023_)
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C223_), hl
	ld a, $01
	ld (_RAM_C220_), a
	ld a, (_RAM_C023_)
	ld hl, _DATA_D0A_ - 2
	call _LABEL_10_
	ld (_RAM_C085_), hl
	ld a, (_RAM_C023_)
	ld hl, _DATA_D4E_ - 2
	call _LABEL_10_
	ld (_RAM_C089_), hl
	ld a, (_RAM_C023_)
	ld c, a
	ld b, $00
	ld hl, _DATA_E30_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C07C_), a
	ld a, $87
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1EFC9_
	ld de, $6400
	ld bc, $00E0
	call _LABEL_145_
	ld hl, _DATA_1EFC9_
	ld bc, $00E0
	call _LABEL_2C5_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_17191_
	ld de, $65C0
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_170B1_
	ld de, $6640
	ld bc, $0060
	call _LABEL_145_
	ld hl, _DATA_170F1_
	ld bc, $0020
	call _LABEL_2C5_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C110_), a
	ld hl, _RAM_C01F_
	set 7, (hl)
	ei
	jp _LABEL_2F6_

; Jump Table from D0A to D2B (17 entries, indexed by _RAM_C023_)
_DATA_D0A_:
.dw _LABEL_645B_ _LABEL_645B_ _LABEL_6574_ _LABEL_645B_ _LABEL_6532_ _LABEL_645B_ _LABEL_645B_ _LABEL_645B_
.dw _LABEL_6532_ _LABEL_645B_ _LABEL_6476_ _LABEL_645B_ _LABEL_645B_ _LABEL_645B_ _LABEL_645B_ _LABEL_6476_
.dw _LABEL_645B_

; Jump Table from D2C to D4D (17 entries, indexed by _RAM_C023_)
_DATA_D2C_:
.dw _LABEL_1089_ _LABEL_10DE_ _LABEL_1089_ _LABEL_10E1_ _LABEL_1089_ _LABEL_10E4_ _LABEL_10E7_ _LABEL_10EA_
.dw _LABEL_1089_ _LABEL_10ED_ _LABEL_10F0_ _LABEL_10F3_ _LABEL_10F6_ _LABEL_10F9_ _LABEL_10FC_ _LABEL_1089_
.dw _LABEL_1089_

; Jump Table from D4E to D6F (17 entries, indexed by _RAM_C023_)
_DATA_D4E_:
.dw _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_
.dw _LABEL_6F41_ _LABEL_6F41_ _LABEL_707D_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_6F41_ _LABEL_707D_
.dw _LABEL_6F41_

; Data from D70 to DA2 (51 bytes)
_DATA_D70_:
.db $00 $00 $00 $60 $54 $CC $72 $5C $CC $00 $00 $00 $42 $40 $C9 $90
.db $20 $CC $00 $00 $00 $30 $08 $CC $00 $00 $00 $70 $18 $CC $00 $00
.db $00 $50 $D0 $C9 $00 $00 $00 $00 $00 $00 $50 $10 $CC $00 $00 $00
.db $00 $00 $00

; Data from DA3 to DC4 (34 bytes)
_DATA_DA3_:
.db $20 $58 $20 $88 $40 $20 $1B $90 $20 $70 $20 $88 $20 $88 $20 $88
.db $20 $88 $20 $88 $20 $88 $20 $88 $E8 $70 $20 $88 $20 $88 $20 $88
.db $10 $88

; Data from DC5 to DD6 (18 bytes)
_DATA_DC5_:
.db $82 $82 $83 $82 $88 $82 $82 $82 $83 $82 $84 $82 $88 $82 $82 $84
.db $82 $82

; Data from DD7 to E1E (72 bytes)
_DATA_DD7_:
.db $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D
.db $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E
.db $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F
.db $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D $4E $4F $4D
.db $4E $4F $4D $4E $4F $4D $4E $4F

; Data from E1F to E2F (17 bytes)
_DATA_E1F_:
.db $00 $00 $00 $00 $09 $00 $00 $00 $01 $00 $00 $00 $09 $00 $00 $00
.db $00

; Data from E30 to E40 (17 bytes)
_DATA_E30_:
.db $01 $02 $03 $04 $05 $06 $07 $08 $02 $0A $0B $0C $0D $0E $0F $10
.db $11

_LABEL_E41_:
	push de
	call _LABEL_E4B_
	inc hl
	pop de
	inc de
	jp _LABEL_E4B_

_LABEL_E4B_:
	ld a, (hl)
	or a
	ret z
	bit 7, a
	jr nz, +
	ld b, a
	inc hl
	ld a, (hl)
-:
	ld (de), a
	inc de
	inc de
	djnz -
	inc hl
	jp _LABEL_E4B_

+:
	and $7F
	ld b, a
-:
	inc hl
	ld a, (hl)
	ld (de), a
	inc de
	inc de
	djnz -
	inc hl
	jp _LABEL_E4B_

_LABEL_E6C_:
	ld hl, _DATA_C4A2_
	ld de, $44A0
	call _LABEL_293_
	ld a, (_RAM_C023_)
	ld hl, _DATA_E7D_ - 2
	rst $20	; _LABEL_20_
	ret

; Jump Table from E7D to E9E (17 entries, indexed by _RAM_C023_)
_DATA_E7D_:
.dw _LABEL_E9F_ _LABEL_FF9_ _LABEL_F21_ _LABEL_F54_ _LABEL_F99_ _LABEL_F6C_ _LABEL_FAE_ _LABEL_EC9_
.dw _LABEL_FC6_ _LABEL_F00_ _LABEL_F54_ _LABEL_F6C_ _LABEL_FF9_ _LABEL_1058_ _LABEL_F00_ _LABEL_EDF_
.dw _LABEL_1022_

; 1st entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_E9F_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4720
	call _LABEL_293_
	ld hl, _DATA_F7F6_
	ld de, $4E60
	ld b, $A0
	rst $30	; _LABEL_30_
	ld hl, _DATA_C583_
	ld de, $4F00
	jp _LABEL_293_

; 8th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_EC9_:
	ld hl, _DATA_C9E1_
	ld de, $4EC0
	call _LABEL_293_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $46A0
	jp _LABEL_293_

; 16th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_EDF_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4720
	call _LABEL_293_
	ld hl, _DATA_C583_
	ld de, $4F00
	jp _LABEL_293_

; 10th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_F00_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4720
	call _LABEL_293_
	ld hl, _DATA_C9E1_
	ld de, $4EC0
	jp _LABEL_293_

; 3rd entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_F21_:
	ld de, $46A0
	ld bc, $0200
	ld l, $00
	call _LABEL_184_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $48A0
	call _LABEL_293_
	ld hl, _DATA_F896_
	ld de, $4D00
	call _LABEL_293_
	ld hl, _DATA_F7F6_
	ld de, $4E60
	ld b, $A0
	rst $30	; _LABEL_30_
	ld hl, _DATA_C583_
	ld de, $4F00
	jp _LABEL_293_

; 4th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_F54_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4720
	jp _LABEL_293_

; 6th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_F6C_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, $02
	ld hl, $847E
	rst $10	; _LABEL_10_
	ld de, $4720
	call _LABEL_293_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4920
	call _LABEL_293_
	ld hl, _DATA_C9E1_
	ld de, $4EC0
	jp _LABEL_293_

; 5th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_F99_:
	call _LABEL_E9F_
	ld hl, _DATA_F896_
	ld de, $4D00
	call _LABEL_293_
	ld hl, _DATA_CE65_
	ld de, $47A0
	jp _LABEL_293_

; 7th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_FAE_:
	ld de, $46A0
	ld bc, $0080
	ld l, $0A
	call _LABEL_184_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4720
	jp _LABEL_293_

; 9th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_FC6_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4720
	call _LABEL_293_
	ld hl, _DATA_F896_
	ld de, $4D00
	call _LABEL_293_
	ld hl, _DATA_C583_
	ld de, $4F00
	call _LABEL_293_
	ld hl, _DATA_CE65_
	ld de, $47A0
	jp _LABEL_293_

; 2nd entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_FF9_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, $02
	ld hl, $847E
	rst $10	; _LABEL_10_
	ld de, $4720
	call _LABEL_293_
	ld hl, _DATA_C9E1_
	ld de, $4EC0
	call _LABEL_293_
	ld hl, _DATA_CE65_
	ld de, $47A0
	jp _LABEL_293_

; 17th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_1022_:
	ld de, $46A0
	ld bc, $0200
	ld l, $00
	call _LABEL_184_
	ld a, $03
	ld hl, $847E
	rst $10	; _LABEL_10_
	ld de, $48A0
	call _LABEL_293_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4AA0
	call _LABEL_293_
	ld hl, _DATA_F75C_
	ld de, $4720
	call _LABEL_293_
	ld hl, _DATA_C583_
	ld de, $4F00
	jp _LABEL_293_

; 14th entry of Jump Table from E7D (indexed by _RAM_C023_)
_LABEL_1058_:
	ld de, $46A0
	ld bc, $0080
	ld l, $00
	call _LABEL_184_
	ld a, $0B
	ld hl, $847E
	rst $10	; _LABEL_10_
	ld de, $4720
	call _LABEL_293_
	ld a, (_RAM_C023_)
	ld hl, _DATA_C480_ - 2
	rst $10	; _LABEL_10_
	ld de, $4DA0
	jp _LABEL_293_

_LABEL_107C_:
	ld a, (_RAM_C01F_)
	cp $89
	ret c
	cp $8B
	ret z
	ld hl, (_RAM_C00E_)
	jp (hl)

; 1st entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_1089_:
	ld a, (_RAM_C092_)
	or a
	jp nz, _LABEL_10B0_
	ld hl, _RAM_C100_
	dec (hl)
	jp p, _LABEL_10B0_
	ld (hl), $08
	inc hl
	ld a, (hl)
	cp $04
	jr c, +
	xor a
	ld (hl), a
+:
	inc (hl)
	ld e, a
	ld d, $00
	ld hl, _DATA_10D6_
	add hl, de
	ld de, $C00B
	ld a, (hl)
	call _LABEL_13F_
_LABEL_10B0_:
	ld a, (_RAM_C054_)
	or a
	ret z
	cp $03
	ret nc
	ld hl, _RAM_C05D_
	dec (hl)
	ret p
	ld (hl), $04
	inc hl
	ld a, (hl)
	cp $04
	jr c, +
	xor a
	ld (hl), a
+:
	inc (hl)
	ld e, a
	ld d, $00
	ld hl, _DATA_10DA_
	add hl, de
	ld de, $C014
	ld a, (hl)
	jp _LABEL_13F_

; Data from 10D6 to 10D9 (4 bytes)
_DATA_10D6_:
.db $FF $FD $FB $FD

; Data from 10DA to 10DD (4 bytes)
_DATA_10DA_:
.db $33 $3F $33 $3F

; 2nd entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10DE_:
	jp _LABEL_10B0_

; 4th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10E1_:
	jp _LABEL_10B0_

; 6th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10E4_:
	jp _LABEL_10B0_

; 7th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10E7_:
	jp _LABEL_10B0_

; 8th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10EA_:
	jp _LABEL_10B0_

; 10th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10ED_:
	jp _LABEL_10B0_

; 11th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10F0_:
	jp _LABEL_10B0_

; 12th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10F3_:
	jp _LABEL_10B0_

; 13th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10F6_:
	jp _LABEL_10B0_

; 14th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10F9_:
	jp _LABEL_10B0_

; 15th entry of Jump Table from D2C (indexed by _RAM_C023_)
_LABEL_10FC_:
	jp _LABEL_10B0_

_LABEL_10FF_:
	ld a, $87
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	ld hl, _DATA_1112_ - 2
	rst $10	; _LABEL_10_
	ld de, $C000
	ld b, $20
	rst $30	; _LABEL_30_
	ret

; Pointer Table from 1112 to 1133 (17 entries, indexed by _RAM_C023_)
_DATA_1112_:
.dw _DATA_1FC9E_ _DATA_1FE1E_ _DATA_1FCDE_ _DATA_1FCFE_ _DATA_1FD1E_ _DATA_1FD3E_ _DATA_1FD5E_ _DATA_1FD7E_
.dw _DATA_1FDBE_ _DATA_1FDDE_ _DATA_1FD9E_ _DATA_1FDFE_ _DATA_1FE1E_ _DATA_1FE3E_ _DATA_1FCBE_ _DATA_1FE5E_
.dw _DATA_1FE7E_

_LABEL_1134_:
	ld a, $87
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	ld hl, _DATA_1142_ - 2
	jp _LABEL_20_

; Jump Table from 1142 to 1163 (17 entries, indexed by _RAM_C023_)
_DATA_1142_:
.dw _LABEL_1164_ _LABEL_117F_ _LABEL_119D_ _LABEL_11B5_ _LABEL_11D3_ _LABEL_11EB_ _LABEL_1206_ _LABEL_1221_
.dw _LABEL_1239_ _LABEL_1254_ _LABEL_126F_ _LABEL_1299_ _LABEL_12AE_ _LABEL_12C0_ _LABEL_12CF_ _LABEL_12ED_
.dw _LABEL_1311_

; 1st entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_1164_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_132F_
	call _LABEL_133B_
	call _LABEL_1350_
	call _LABEL_137D_
	call _LABEL_135C_
	jp _LABEL_1368_

; 2nd entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_117F_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_1455_
	call _LABEL_1461_
	call _LABEL_132F_
	call _LABEL_1392_
	call _LABEL_139E_
	call _LABEL_13AA_
	jp _LABEL_13B6_

; 3rd entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_119D_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14CA_
	call _LABEL_132F_
	call _LABEL_1368_
	call _LABEL_137D_
	call _LABEL_13C2_
	jp _LABEL_13CE_

; 4th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_11B5_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14CA_
	call _LABEL_154A_
	call _LABEL_132F_
	call _LABEL_133B_
	call _LABEL_13DA_
	call _LABEL_1455_
	call _LABEL_1461_
	jp _LABEL_13B6_

; 5th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_11D3_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_132F_
	call _LABEL_1368_
	call _LABEL_133B_
	call _LABEL_137D_
	jp _LABEL_13E6_

; 6th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_11EB_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_1455_
	call _LABEL_1461_
	call _LABEL_132F_
	call _LABEL_13FB_
	call _LABEL_1512_
	jp _LABEL_1410_

; 7th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_1206_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14CA_
	call _LABEL_1455_
	call _LABEL_1461_
	call _LABEL_14E2_
	call _LABEL_132F_
	call _LABEL_1425_
	jp _LABEL_149A_

; 8th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_1221_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14D6_
	call _LABEL_132F_
	call _LABEL_1392_
	call _LABEL_149A_
	call _LABEL_1431_
	jp _LABEL_139E_

; 9th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_1239_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_132F_
	call _LABEL_133B_
	call _LABEL_1368_
	call _LABEL_1350_
	call _LABEL_13E6_
	jp _LABEL_135C_

; 10th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_1254_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_13B6_
	call _LABEL_132F_
	call _LABEL_143D_
	call _LABEL_1449_
	call _LABEL_1455_
	jp _LABEL_1461_

; 11th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_126F_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14CA_
	call _LABEL_132F_
	call _LABEL_14E2_
	call _LABEL_1455_
	call _LABEL_14EE_
	call _LABEL_1476_
	call _LABEL_1461_
	call _LABEL_1425_
	call _LABEL_139E_
	call _LABEL_1392_
	call _LABEL_13AA_
	jp _LABEL_149A_

; 12th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_1299_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_1455_
	call _LABEL_1461_
	call _LABEL_13AA_
	jp _LABEL_132F_

; 13th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_12AE_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_132F_
	call _LABEL_13B6_
	jp _LABEL_133B_

; 14th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_12C0_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_14FA_
	jp _LABEL_132F_

; 15th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_12CF_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_1455_
	call _LABEL_1461_
	call _LABEL_132F_
	call _LABEL_1392_
	call _LABEL_139E_
	call _LABEL_13AA_
	jp _LABEL_13B6_

; 16th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_12ED_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_132F_
	call _LABEL_13AA_
	call _LABEL_1482_
	call _LABEL_151E_
	call _LABEL_148E_
	call _LABEL_1455_
	call _LABEL_1461_
	call _LABEL_1425_
	jp _LABEL_13B6_

; 17th entry of Jump Table from 1142 (indexed by _RAM_C023_)
_LABEL_1311_:
	call _LABEL_14B2_
	call _LABEL_14A6_
	call _LABEL_14BE_
	call _LABEL_132F_
	call _LABEL_1368_
	call _LABEL_1482_
	call _LABEL_1561_
	call _LABEL_1506_
	call _LABEL_1350_
	jp _LABEL_135C_

_LABEL_132F_:
	ld hl, _DATA_1C7E9_
	ld de, $6880
	ld bc, $0220
	jp _LABEL_145_

_LABEL_133B_:
	ld hl, _DATA_1CA09_
	ld de, $6FA0
	ld bc, $0180
	call _LABEL_145_
	ld hl, _DATA_1CA09_
	ld bc, $0180
	jp _LABEL_2C5_

_LABEL_1350_:
	ld hl, _DATA_1CDC9_
	ld de, $7580
	ld bc, $0040
	jp _LABEL_145_

_LABEL_135C_:
	ld hl, _DATA_1CB89_
	ld de, $75C0
	ld bc, $0240
	jp _LABEL_145_

_LABEL_1368_:
	ld hl, _DATA_1EE09_
	ld de, $6AA0
	ld bc, $0100
	call _LABEL_145_
	ld hl, _DATA_1EE09_
	ld bc, $0100
	jp _LABEL_2C5_

_LABEL_137D_:
	ld hl, _DATA_1D5E9_
	ld de, $6CA0
	ld bc, $0180
	call _LABEL_145_
	ld hl, _DATA_1D5E9_
	ld bc, $0180
	jp _LABEL_2C5_

_LABEL_1392_:
	ld hl, _DATA_1DCA9_
	ld de, $6C00
	ld bc, $0020
	jp _LABEL_145_

_LABEL_139E_:
	ld hl, _DATA_1DB49_
	ld de, $6AA0
	ld bc, $0160
	jp _LABEL_145_

_LABEL_13AA_:
	ld hl, _DATA_1DD49_
	ld de, $7000
	ld bc, $0100
	jp _LABEL_145_

_LABEL_13B6_:
	ld hl, _DATA_1DE49_
	ld de, $7760
	ld bc, $00A0
	jp _LABEL_145_

_LABEL_13C2_:
	ld hl, _DATA_1EF09_
	ld de, $7200
	ld bc, $00C0
	jp _LABEL_145_

_LABEL_13CE_:
	ld hl, _DATA_1DB09_
	ld de, $77E0
	ld bc, $0020
	jp _LABEL_145_

_LABEL_13DA_:
	ld hl, _DATA_1CFC9_
	ld de, $72A0
	ld bc, $0100
	jp _LABEL_145_

_LABEL_13E6_:
	ld hl, _DATA_1CEC9_
	ld de, $72A0
	ld bc, $0100
	call _LABEL_145_
	ld hl, _DATA_1CEC9_
	ld bc, $0100
	jp _LABEL_2C5_

_LABEL_13FB_:
	ld hl, _DATA_1D769_
	ld de, $6C00
	ld bc, $02E0
	call _LABEL_145_
	ld hl, _DATA_1D769_
	ld bc, $02E0
	jp _LABEL_2C5_

_LABEL_1410_:
	ld hl, _DATA_1DA49_
	ld de, $7280
	ld bc, $00C0
	call _LABEL_145_
	ld hl, _DATA_1DA49_
	ld bc, $00C0
	jp _LABEL_2C5_

_LABEL_1425_:
	ld hl, _DATA_1DEE9_
	ld de, $7680
	ld bc, $00C0
	jp _LABEL_145_

_LABEL_1431_:
	ld hl, _DATA_1E2A9_
	ld de, $6C20
	ld bc, $0AE0
	jp _LABEL_145_

_LABEL_143D_:
	ld hl, _DATA_1E0A9_
	ld de, $73E0
	ld bc, $0020
	jp _LABEL_145_

_LABEL_1449_:
	ld hl, _DATA_1E0C9_
	ld de, $7320
	ld bc, $00C0
	jp _LABEL_145_

_LABEL_1455_:
	ld hl, _DATA_1DFA9_
	ld de, $7400
	ld bc, $0100
	jp _LABEL_145_

_LABEL_1461_:
	ld hl, _DATA_1CE09_
	ld de, $7500
	ld bc, $00C0
	call _LABEL_145_
	ld hl, _DATA_1CE09_
	ld bc, $00C0
	jp _LABEL_2C5_

_LABEL_1476_:
	ld hl, _DATA_1D0C9_
	ld de, $7180
	ld bc, $0280
	jp _LABEL_145_

_LABEL_1482_:
	ld hl, _DATA_1E229_
	ld de, $6DC0
	ld bc, $0080
	jp _LABEL_145_

_LABEL_148E_:
	ld hl, _DATA_1C629_
	ld de, $6E40
	ld bc, $01C0
	jp _LABEL_145_

_LABEL_149A_:
	ld hl, _DATA_1ED89_
	ld de, $7740
	ld bc, $0080
	jp _LABEL_145_

_LABEL_14A6_:
	ld hl, _DATA_1C5A9_
	ld de, $6840
	ld bc, $0040
	jp _LABEL_145_

_LABEL_14B2_:
	ld hl, _DATA_1C529_
	ld de, $6800
	ld bc, $0040
	jp _LABEL_145_

_LABEL_14BE_:
	ld hl, _DATA_1C529_
	ld de, $67C0
	ld bc, $0040
	jp _LABEL_145_

_LABEL_14CA_:
	ld hl, _DATA_1C569_
	ld de, $67C0
	ld bc, $0040
	jp _LABEL_145_

_LABEL_14D6_:
	ld hl, _DATA_1C5E9_
	ld de, $67C0
	ld bc, $0040
	jp _LABEL_145_

_LABEL_14E2_:
	ld hl, _DATA_1C3C9_
	ld de, $6F80
	ld bc, $0080
	jp _LABEL_145_

_LABEL_14EE_:
	ld hl, _DATA_1C169_
	ld de, $7100
	ld bc, $0080
	jp _LABEL_145_

_LABEL_14FA_:
	ld hl, _DATA_1C1E9_
	ld de, $6B20
	ld bc, $0080
	jp _LABEL_145_

_LABEL_1506_:
	ld hl, _DATA_1C449_
	ld de, $7100
	ld bc, $0080
	jp _LABEL_145_

_LABEL_1512_:
	ld hl, _DATA_1C069_
	ld de, $6AA0
	ld bc, $0100
	jp _LABEL_145_

_LABEL_151E_:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_16F51_
	ld de, $7180
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_16F51_
	ld bc, $0020
	call _LABEL_2C5_
	ld hl, _DATA_16F71_
	ld de, $71C0
	ld bc, $0040
	call _LABEL_145_
	ld a, $87
	ld (_RAM_FFFF_), a
	ret

_LABEL_154A_:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_17211_
	ld de, $76E0
	ld bc, $0080
	call _LABEL_145_
	ld a, $87
	ld (_RAM_FFFF_), a
	ret

_LABEL_1561_:
	ld hl, _DATA_1E189_
	ld de, $7180
	ld bc, $0080
	jp _LABEL_145_

; Jump Table from 156D to 158E (17 entries, indexed by _RAM_C023_)
_DATA_156D_:
.dw _LABEL_15D2_ _LABEL_15DF_ _LABEL_15D2_ _LABEL_15EC_ _LABEL_15D2_ _LABEL_15DF_ _LABEL_1612_ _LABEL_161F_
.dw _LABEL_15D2_ _LABEL_15DF_ _LABEL_161F_ _LABEL_161F_ _LABEL_15DF_ _LABEL_161F_ _LABEL_15DF_ _LABEL_15F9_
.dw _LABEL_15D2_

_LABEL_158F_:
	ld hl, _RAM_C225_
	ld a, (hl)
	ld (hl), $00
	or a
	jp z, +
	ld hl, _RAM_C220_
	dec (hl)
	ret nz
	inc (hl)
+:
	ld hl, _RAM_C220_
	dec (hl)
	ret nz
	ld (hl), $12
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C223_)
	jp (hl)

_LABEL_15AF_:
	ld hl, _RAM_C221_
	inc (hl)
	ld a, (hl)
	cp $04
	jp c, ++
	jp +

_LABEL_15BC_:
	ld hl, _RAM_C222_
	inc (hl)
	ld a, (hl)
	cp $06
	jp c, ++
+:
	xor a
	ld (hl), a
++:
	add a, a
	ld l, a
	ld h, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ret

; 1st entry of Jump Table from 156D (indexed by _RAM_C023_)
_LABEL_15D2_:
	ld de, _DATA_1620_
	call _LABEL_15BC_
	ld de, $5100
	ld b, $40
	rst $30	; _LABEL_30_
	ret

; 2nd entry of Jump Table from 156D (indexed by _RAM_C023_)
_LABEL_15DF_:
	ld de, _DATA_162C_
	call _LABEL_15BC_
	ld de, $48C0
	ld b, $40
	rst $30	; _LABEL_30_
	ret

; 4th entry of Jump Table from 156D (indexed by _RAM_C023_)
_LABEL_15EC_:
	ld de, _DATA_1638_
	call _LABEL_15AF_
	ld de, $49E0
	ld b, $60
	rst $30	; _LABEL_30_
	ret

; 16th entry of Jump Table from 156D (indexed by _RAM_C023_)
_LABEL_15F9_:
	ld de, _DATA_1640_
	call _LABEL_15AF_
	ld de, $48A0
	ld b, $60
	rst $30	; _LABEL_30_
	ld de, _DATA_1620_
	call _LABEL_15BC_
	ld de, $5100
	ld b, $40
	rst $30	; _LABEL_30_
	ret

; 7th entry of Jump Table from 156D (indexed by _RAM_C023_)
_LABEL_1612_:
	ld de, _DATA_1648_
	call _LABEL_15AF_
	ld de, $4B40
	ld b, $60
	rst $30	; _LABEL_30_
	ret

; 8th entry of Jump Table from 156D (indexed by _RAM_C023_)
_LABEL_161F_:
	ret

; Pointer Table from 1620 to 162B (6 entries, indexed by _RAM_C222_)
_DATA_1620_:
.dw _DATA_17853_ _DATA_17893_ _DATA_178D3_ _DATA_17913_ _DATA_178D3_ _DATA_17893_

; Pointer Table from 162C to 1637 (6 entries, indexed by _RAM_C222_)
_DATA_162C_:
.dw _DATA_17953_ _DATA_17993_ _DATA_179D3_ _DATA_17A13_ _DATA_179D3_ _DATA_17993_

; Pointer Table from 1638 to 163F (4 entries, indexed by _RAM_C221_)
_DATA_1638_:
.dw _DATA_17A53_ _DATA_17AB3_ _DATA_17B13_ _DATA_17B73_

; Pointer Table from 1640 to 1647 (4 entries, indexed by _RAM_C221_)
_DATA_1640_:
.dw _DATA_17BD3_ _DATA_17C33_ _DATA_17C93_ _DATA_17CF3_

; Pointer Table from 1648 to 164F (4 entries, indexed by _RAM_C221_)
_DATA_1648_:
.dw _DATA_17D53_ _DATA_17DB3_ _DATA_17E13_ _DATA_17E73_

; 9th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_1650_:
	exx
	bit 7, (hl)
	jp z, _LABEL_1735_
	ld a, $09
	call _LABEL_2E6_
	ld a, (_RAM_D800_)
	or a
	jr nz, +
	ld a, $8A
	ld (_RAM_C01F_), a
	ld b, $0A
	jp _LABEL_343_

+:
	ld a, (_RAM_C095_)
	or a
	ret nz
	ld hl, $0000
	ld (_RAM_C0B9_), hl
	ld a, $BD
	ld (_RAM_C014_), a
-:
	ld a, $01
	call _LABEL_2E6_
	ld hl, _RAM_C014_
	dec (hl)
	jp nz, -
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_9DF3_
	ld hl, _RAM_C030_
	ld de, _RAM_C031_
	ld (hl), $00
	ldi
	ldi
	ld a, $01
	ld (_RAM_C025_), a
	ld a, $06
	ld (_RAM_C01F_), a
	ret

; 9th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_16A6_:
	ld a, (_RAM_D800_)
	or a
	ret z
	call _LABEL_69AE_
	ld hl, (_RAM_C0B9_)
	ld de, (_RAM_C0BD_)
	add hl, de
	ld a, h
	cp $E0
	jr c, +
	ld c, $20
	add a, c
	ld h, a
+:
	ld (_RAM_C0BD_), hl
	cp d
	ret z
	and $07
	ret nz
	ld a, h
	add a, $C0
	ld c, $20
	jr c, +
	cp $E0
	jr nc, +
	ld c, $00
+:
	add a, c
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld de, $7800
	add hl, de
	ex de, hl
	ld a, $83
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C094_)
	ld a, (hl)
	inc hl
	or a
	jp z, _LABEL_170D_
	ld b, a
	inc a
	jp z, _LABEL_1730_
	inc a
	jr z, +
	push de
	exx
	pop de
	ld l, $00
	ld bc, $0040
	call _LABEL_184_
	exx
	ld a, (hl)
	or e
	ld e, a
	inc hl
	xor a
	ld (_RAM_C10A_), a
	call _LABEL_159_
_LABEL_170D_:
	ld (_RAM_C094_), hl
	ret

+:
	push hl
	ld a, d
	add a, e
	ld hl, $0100
	cp $FE
	ld bc, $0040
	jr c, +
	ld bc, $0020
	call _LABEL_184_
	ld bc, $0020
	ld de, $7800
+:
	call _LABEL_184_
	pop hl
	jr _LABEL_170D_

_LABEL_1730_:
	xor a
	ld (_RAM_C095_), a
	ret

_LABEL_1735_:
	call _LABEL_9DF3_
	ld b, $05
	call _LABEL_343_
	call _LABEL_311_
	ld hl, _RAM_C0A0_
	ld de, _RAM_C0A0_ + 1
	ld bc, $002A
	ld (hl), $00
	ldir
	xor a
	ld (_RAM_C091_), a
	ld a, (_RAM_C023_)
	cp $11
	jp z, +
	ld a, $01
	ld (_RAM_C092_), a
	ld a, $83
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	push af
	inc a
	ld (_RAM_C023_), a
	call _LABEL_E6C_
	call _LABEL_10FF_
	ld a, $87
	ld (_RAM_FFFF_), a
	call _LABEL_1134_
	pop af
	ld (_RAM_C023_), a
	ld hl, $8AD6
	ld de, $8AD6
	ld bc, $0607
	jr ++

+:
	ld a, (_RAM_D800_)
	or a
	jp nz, _LABEL_189A_
	ld hl, $BC53
	ld de, $BC53
	ld bc, $0300
	ld a, (_RAM_C07F_)
	or a
	jr z, ++
	ld bc, $0400
++:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld (_RAM_C0A3_), hl
	ld (_RAM_C0A8_), de
	ld a, b
	ld (_RAM_C0B6_), a
	xor a
	ld (_RAM_C0C4_), a
	ld a, c
	ld (_RAM_C0A0_), a
	xor a
	ld (_RAM_C0A5_), a
	ld a, $08
	ld (_RAM_C080_), a
	ld hl, $7800
	ld (_RAM_C0B7_), hl
	ld (_RAM_C0C5_), hl
-:
	ld hl, $0100
	ld (_RAM_C0AB_), hl
	call _LABEL_67BD_
	call _LABEL_6B42_
	call _LABEL_6919_
	ld hl, (_RAM_C0AF_)
	ld a, h
	or l
	jr nz, -
	ld a, $88
	ld (_RAM_C08D_), a
	ld hl, $0000
	ld (_RAM_C0AB_), hl
	ld a, (_RAM_C080_)
	ld (_RAM_C0C9_), a
	ld ix, _RAM_C300_
	ld de, $0020
	ld a, (_RAM_C0F8_)
	ld b, a
-:
	call _LABEL_278A_
	add ix, de
	djnz -
	ld a, $82
	ld (_RAM_FFFF_), a
	ld ix, _RAM_C300_
	ld (ix+0), $01
	ld a, (_RAM_C023_)
	cp $11
	jr z, +
	ld (ix+12), $10
	ld (ix+14), $88
	jr _LABEL_1874_

+:
	xor a
	ld (_RAM_C0C9_), a
	ld (ix+12), $10
	ld (ix+14), $88
	ld a, (_RAM_C07F_)
	or a
	jr nz, +
	ld c, $4C
	ld de, $88F0
	ld b, $01
	ld (ix+12), $70
	ld (ix+14), $A0
	ld (ix+10), $FF
	ld ix, _RAM_C3A0_
	ld (ix+0), c
	ld (ix+12), e
	ld (ix+14), d
	ld (ix+3), b
+:
	ld c, $60
	ld de, $98C0
	ld a, (_RAM_C07F_)
	or a
	jr z, +
	ld c, $61
	ld de, $9008
+:
	ld ix, _RAM_C3C0_
	ld (ix+0), c
	ld (ix+12), e
	ld (ix+14), d
_LABEL_1874_:
	ld ix, _RAM_C300_
	call _LABEL_29C2_
	call _LABEL_2694_
	ld de, $8026
	rst $08	; _LABEL_8_
	ld a, (_RAM_C023_)
	inc a
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C110_), a
	ld hl, _RAM_C01F_
	set 7, (hl)
	ei
	jp _LABEL_2F6_

_LABEL_189A_:
	xor a
	ld de, $C000
	call _LABEL_13F_
	xor a
	ld de, $C010
	call _LABEL_13F_
	call _LABEL_9D9_
	call _LABEL_2694_
	ld a, $83
	ld (_RAM_FFFF_), a
	ld hl, _DATA_F96A_
	ld (_RAM_C094_), hl
	ld hl, $0039
	ld (_RAM_C0B9_), hl
	ld a, $B0
	ld (_RAM_C110_), a
	ld hl, _RAM_C01F_
	set 7, (hl)
	ei
	jp _LABEL_2F6_

; 5th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_18CD_:
	ret

; 5th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_18CE_:
	exx
	bit 7, (hl)
	jp z, +
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, $01
	call _LABEL_2E6_
	ld hl, _RAM_C023_
	inc (hl)
	ld a, $85
	ld (_RAM_FFFF_), a
	ld a, $03
	ld (_RAM_C01F_), a
	ret

+:
	set 7, (hl)
	call _LABEL_9DF3_
	ld b, $05
	call _LABEL_343_
	call _LABEL_311_
	ld hl, _RAM_D7D0_
	ld de, _RAM_D7D0_ + 1
	ld (hl), $00
	ld bc, $000E
	ldir
	xor a
	ld (_RAM_C08E_), a
	ld b, $1E
	ld de, $0020
	ld ix, _RAM_C300_
-:
	call _LABEL_278A_
	add ix, de
	djnz -
	ld hl, _RAM_D800_
	ld de, _RAM_D800_ + 1
	ld (hl), $00
	ld bc, $0007
	ldir
	ld a, (_RAM_C023_)
	cp $0A
	jp nz, +
	ld hl, _RAM_D802_
	set 0, (hl)
+:
	ld de, $8026
	call _LABEL_8_
	xor a
	ld (_RAM_C091_), a
	ld (_RAM_C055_), a
	ld (_RAM_C054_), a
	ld (_RAM_C051_), a
	ld (_RAM_C092_), a
	ei
	jp _LABEL_2F6_

; 4th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_194F_:
	exx
	bit 7, (hl)
	jp z, _LABEL_1A46_
	ld a, (_RAM_C03C_)
	cp $15
	jp z, _LABEL_19AB_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C03D_)
	or a
	ld a, $09
	jp nz, +
	ld a, $01
+:
	call _LABEL_2E6_
	call _LABEL_2694_
	ld a, $85
	ld (_RAM_FFFF_), a
	xor a
	ld (_RAM_C03D_), a
	ld a, (_RAM_C03E_)
	dec a
	ld (_RAM_C03E_), a
	ret nz
	ld hl, _RAM_C03C_
	inc (hl)
	ld a, (hl)
	add a, a
	ld b, $00
	ld c, a
	ld hl, _DATA_15E45_
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C038_), hl
	ld a, $03
	ld (_RAM_C03E_), a
	ld a, $01
	ld (_RAM_C03D_), a
	ld hl, (_RAM_C03A_)
	inc hl
	inc hl
	ld (_RAM_C03A_), hl
	ret

_LABEL_19AB_:
	ld ix, _RAM_C300_
	ld (ix+0), $56
	ld a, (_RAM_C023_)
	cp $10
	jp c, _LABEL_19CB_
	ld ix, _RAM_C320_
	ld (ix+0), $58
	ld (ix+12), $98
	ld (ix+14), $50
_LABEL_19CB_:
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, $01
	call _LABEL_2E6_
	call _LABEL_2694_
	ld hl, _RAM_C03F_
	dec (hl)
	jp nz, _LABEL_19CB_
	ld ix, _RAM_C300_
	call _LABEL_278A_
	ld ix, _RAM_C320_
	call _LABEL_278A_
	ld ix, _RAM_C340_
	call _LABEL_278A_
	call _LABEL_2694_
	ld a, $0A
	ld (_RAM_C01F_), a
	ld b, $05
	jp _LABEL_343_

; 4th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_1A01_:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C038_)
	ld de, (_RAM_C03A_)
	ld bc, $1202
	call _LABEL_193_
	ld de, (_RAM_C03A_)
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld hl, _DATA_1618D_
	ld bc, $1202
	call _LABEL_193_
	ld de, (_RAM_C03A_)
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld hl, _DATA_161B1_
	ld bc, $1202
	call _LABEL_193_
	ld de, (_RAM_C03A_)
	dec de
	dec de
	dec de
	dec de
	ld (_RAM_C03A_), de
	ret

_LABEL_1A46_:
	set 7, (hl)
	call _LABEL_311_
	call _LABEL_9D9_
	call _LABEL_303_
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_9DF3_
	xor a
	ld (_RAM_C03C_), a
	ld (_RAM_C03D_), a
	ld a, $03
	ld (_RAM_C03E_), a
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1B97_
	ld de, $C000
	ld bc, $0010
	call _LABEL_145_
	xor a
	ld de, $C010
	call _LABEL_13F_
	ld hl, _DATA_161D5_
	ld de, $4000
	call _LABEL_293_
	ld de, $78C8
	ld (_RAM_C03A_), de
	ld hl, _DATA_15E75_
	ld bc, $1202
	call _LABEL_193_
	ld de, (_RAM_C03A_)
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld hl, _DATA_15E99_
	ld bc, $1202
	call _LABEL_193_
	ld de, (_RAM_C03A_)
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld hl, _DATA_1618D_
	ld bc, $1202
	call _LABEL_193_
	ld de, (_RAM_C03A_)
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld hl, _DATA_161B1_
	ld bc, $1202
	call _LABEL_193_
	ld de, $78C8
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld a, $01
	ld (_RAM_C03C_), a
	ld a, $87
	ld (_RAM_FFFF_), a
	ld de, $6800
	ld bc, $0020
	ld l, $00
	call _LABEL_184_
	ld hl, _DATA_1E209_
	ld de, $6820
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_1C269_
	ld de, $6840
	ld bc, $0140
	call _LABEL_145_
	ld a, $03
	ld (_RAM_C0F8_), a
	ld hl, _RAM_C300_
	ld (_RAM_C0F9_), hl
	ld a, $83
	ld (_RAM_FFFF_), a
	ld hl, _DATA_FC69_
	ld de, $6C00
	call _LABEL_293_
	ld ix, _RAM_C340_
	ld (ix+0), $62
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_2694_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld a, $50
	ld (_RAM_C03F_), a
	ld a, $86
	ld (_RAM_C110_), a
	ei
	jp _LABEL_2F6_

; 86th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_1B41_:
	bit 0, (ix+1)
	jp nz, _LABEL_1B88_
	set 0, (ix+1)
	ld (ix+5), $08
	ld (ix+6), $08
	ld a, (_RAM_C023_)
	add a, a
	ld c, a
	ld b, $00
	ld hl, _DATA_1BA7_ - 2
	add hl, bc
	ld a, (hl)
	ld (ix+12), a
	inc hl
	ld a, (hl)
	ld b, a
	ld a, (_RAM_C01F_)
	and $7F
	cp $03
	jp z, +
	ld a, b
	sub $18
	ld b, a
	ld a, (_RAM_C092_)
	or a
	jr z, +
	ld (ix+12), $5E
	ld (ix+14), $46
	jr _LABEL_1B88_

+:
	ld a, b
	ld (ix+14), a
_LABEL_1B88_:
	ld hl, _DATA_8A18_
	jp _LABEL_280E_

; 88th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_1B8E_:
	ld (ix+7), <_DATA_8073_
	ld (ix+8), >_DATA_8073_
	ret

; Data from 1B97 to 1BA6 (16 bytes)
_DATA_1B97_:
.db $00 $2F $0B $06 $01 $0C $08 $04 $3F $3E $38 $03 $30 $00 $0F $00

; Data from 1BA7 to 1BC8 (34 bytes)
_DATA_1BA7_:
.db $4D $74 $44 $64 $53 $5C $5A $4E $62 $4E $70 $45 $68 $30 $7D $2A
.db $8D $25 $9B $32 $AD $2A $C0 $30 $B8 $45 $70 $80 $90 $6E $A4 $44
.db $B4 $70

; 6th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_1BC9_:
	exx
	bit 7, (hl)
	jp z, _LABEL_1D04_
	bit 6, (hl)
	jp nz, _LABEL_1C33_
	ld a, $09
	call _LABEL_2E6_
	ld a, (_RAM_C011_)
	or a
	jr z, +
	ld a, $07
	ld (_RAM_C01F_), a
	ret

+:
	call _LABEL_2694_
	ld hl, $C055
	jp _LABEL_1EAF_

; 6th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_1BEE_:
	ld hl, $C032
	ld de, $7D48
	call _LABEL_454_
	call _LABEL_4222_
	ld a, (_RAM_C057_)
	or a
	ret z
	ld d, a
	xor a
	ld (_RAM_C057_), a
	ld a, $86
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	ld hl, _DATA_1FAB_ - 2
	rst $10	; _LABEL_10_
	ld b, $03
-:
	push bc
	ld a, (hl)
	cp d
	jr nz, +
	inc hl
	push hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	set 0, (hl)
	pop hl
	inc hl
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld bc, $0306
	call _LABEL_2532_
+:
	ld bc, $0005
	add hl, bc
	pop bc
	djnz -
	ret

_LABEL_1C33_:
	call _LABEL_9DF3_
	call _LABEL_311_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, $8A
	ld (_RAM_C01F_), a
	ld de, _RAM_C800_
	ld hl, _RAM_D000_
	ld bc, $0700
	ldir
	ld hl, _RAM_C800_
	ld de, $7800
	ld bc, $0700
	call _LABEL_145_
	call _LABEL_69AE_
	ld hl, _RAM_C0CA_
	ld de, _RAM_C0A0_
	ld bc, $002A
	ldir
	ld a, (_RAM_C023_)
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C110_), a
	ld a, $1E
	ld (_RAM_C0F8_), a
	ld de, _RAM_C300_
	ld hl, _RAM_CFA0_
	ld bc, $0020
	ldir
	ld ix, _RAM_C300_
	call _LABEL_29C2_
	call _LABEL_2694_
	call _LABEL_10FF_
	ld a, $83
	ld (_RAM_FFFF_), a
	call _LABEL_E6C_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_172B1_
	ld de, $5600
	call _LABEL_293_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C054_)
	cp $07
	jr c, +
	cp $08
	jr z, +
	ld a, $87
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1DB29_
	ld de, $6200
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_1D429_
	ld de, $6220
	ld bc, $01C0
	call _LABEL_145_
+:
	ld a, (_RAM_C06C_)
	ld (_RAM_C069_), a
	ld hl, (_RAM_C06D_)
	ld (_RAM_C0FD_), hl
	xor a
	ld (_RAM_C011_), a
	ld (_RAM_C055_), a
	ld (_RAM_C056_), a
	ld a, $82
	ld (_RAM_FFFF_), a
	ld e, $26
	ld d, $80
	rst $08	; _LABEL_8_
	ei
	ld a, $09
	call _LABEL_2E6_
	call _LABEL_2F6_
	ld b, $0A
	jp _LABEL_343_

_LABEL_1D04_:
	set 7, (hl)
	call _LABEL_9DF3_
	ld hl, _RAM_C0A0_
	ld de, _RAM_C0CA_
	ld bc, $002A
	ldir
	dec hl
	ld (hl), $00
	ld d, h
	ld e, l
	dec de
	ld bc, $0029
	lddr
	call _LABEL_311_
	ld b, $05
	call _LABEL_343_
	call _LABEL_303_
	ld hl, _RAM_C800_
	ld de, _RAM_D000_
	ld bc, $0700
	ldir
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1508E_
	ld de, _RAM_C800_
	call _LABEL_E41_
	ld a, $01
	ld (_RAM_C0F8_), a
	ld hl, _RAM_CF80_
	ld de, _RAM_CF80_ + 1
	ld bc, $005F
	ld (hl), $00
	ldir
	ld a, $82
	ld (_RAM_FFFF_), a
	ld hl, _RAM_C300_
	ld de, _RAM_CFA0_
	ld bc, $0020
	ldir
	ld ix, _RAM_C300_
	ld (ix+0), $01
	ld (ix+12), $20
	ld (ix+14), $88
	call _LABEL_29C2_
	call _LABEL_2694_
	ld a, (_RAM_C056_)
	or a
	jr z, +
	ld hl, _DATA_1F62_ - 2
	rst $10	; _LABEL_10_
	set 0, (hl)
	xor a
	ld (_RAM_C056_), a
+:
	ld a, $82
	ld (_RAM_FFFF_), a
	ld de, $5800
	ld hl, _DATA_B385_
	ld bc, $0050
	ld a, $01
	call _LABEL_1D6_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_153F3_
	ld de, $4520
	call _LABEL_293_
	ld hl, _DATA_15840_
	ld de, $4E00
	call _LABEL_293_
	ld de, _RAM_CB08_
	ld hl, _DATA_15800_
	ld bc, $0808
	call _LABEL_2522_
	ld hl, _DATA_16F11_
	ld de, $5200
	ld bc, $01C0
	call _LABEL_145_
	ld hl, _DATA_17291_
	ld de, $5FE0
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_170B1_
	ld de, $5420
	ld bc, $01E0
	call _LABEL_145_
	ld hl, _DATA_1F42_
	ld de, $C000
	ld bc, $0020
	call _LABEL_145_
	ld a, $01
	ld (_RAM_C055_), a
	ld a, (_RAM_C069_)
	ld (_RAM_C06C_), a
	ld a, $28
	ld (_RAM_C069_), a
	ld hl, (_RAM_C0FD_)
	ld (_RAM_C06D_), hl
	ld hl, _RAM_CC06_
	ld (_RAM_C0FD_), hl
	ld a, $16
	ld (_RAM_C011_), a
	ld b, $03
	ld hl, _RAM_D7D0_
-:
	ld a, (hl)
	or a
	jr z, +
	ld de, $0005
	add hl, de
	djnz -
	jp _LABEL_1E77_

+:
	ld a, $01
	ld (_RAM_C011_), a
	xor a
	ld (_RAM_C057_), a
	ld de, $8006
	rst $08	; _LABEL_8_
	ld a, $86
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	ld hl, _DATA_1F89_ - 2
	rst $10	; _LABEL_10_
	ld a, $03
	ld de, _RAM_D7D1_
-:
	ldi
	ldi
	ldi
	ldi
	inc de
	dec a
	jr nz, -
	dec de
	ld a, $FF
	ld (de), a
	ld hl, _RAM_D7D0_
-:
	push hl
	ld a, (hl)
	cp $FF
	jp z, ++
	or a
	jr nz, +
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld bc, $0306
	call _LABEL_2522_
+:
	pop hl
	ld bc, $0005
	add hl, bc
	jp -

++:
	pop hl
_LABEL_1E77_:
	ld hl, _DATA_1F30_
	ld de, _RAM_CD44_
	ld bc, $0012
	ldir
	ld de, $7800
	ld hl, _RAM_C800_
	ld bc, $0600
	call _LABEL_145_
	ld hl, $C032
	ld de, $7D48
	call _LABEL_454_
	ld a, $82
	ld (_RAM_FFFF_), a
	ei
	call _LABEL_2F6_
	ld a, (_RAM_C023_)
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C110_), a
	ret

_LABEL_1EAF_:
	ld hl, _RAM_C055_
	bit 6, (hl)
	jr z, +
	ld a, (_RAM_C31A_)
	cp $03
	ret z
	res 6, (hl)
	xor a
	ld (_RAM_C056_), a
+:
	ld a, (_RAM_C056_)
	or a
	ret z
	ld c, a
	add a, a
	add a, c
	ld c, a
	ld b, $00
	ld hl, $1F6B
	add hl, bc
	ld bc, _RAM_C030_
	call _LABEL_42D_
	jp c, _LABEL_1F1E_
	dec hl
	dec hl
	dec bc
	dec bc
	call _LABEL_41C_
	ld hl, _RAM_C055_
	set 6, (hl)
	ld a, (_RAM_C056_)
	ld (_RAM_C057_), a
	cp $07
	jr nc, +
	ld hl, _DATA_1F62_ - 2
	rst $10	; _LABEL_10_
	set 0, (hl)
	xor a
	ld (_RAM_C056_), a
	jr _LABEL_1F0A_

+:
	cp $08
	jr z, +
	ld (_RAM_C054_), a
	xor a
	ld (_RAM_C05A_), a
	ld (_RAM_C056_), a
_LABEL_1F0A_:
	ld a, $03
	ld (_RAM_C011_), a
	ret

+:
	ld hl, _RAM_C025_
	ld a, (hl)
	add a, $01
	daa
	ld (hl), a
	xor a
	ld (_RAM_C056_), a
	jr _LABEL_1F0A_

_LABEL_1F1E_:
	xor a
	ld (_RAM_C056_), a
	ld (_RAM_C057_), a
	ld hl, _RAM_C055_
	set 6, (hl)
	ld a, $02
	ld (_RAM_C011_), a
	ret

; Data from 1F30 to 1F41 (18 bytes)
_DATA_1F30_:
.db $FF
.dsb 15, $00
.db $C0 $00

; Data from 1F42 to 1F61 (32 bytes)
_DATA_1F42_:
.db $30 $3F $02 $03 $0F $0B $00 $06 $25 $2A $01 $2F $3C $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; Pointer Table from 1F62 to 1F6D (6 entries, indexed by _RAM_C056_)
_DATA_1F62_:
.dw _RAM_C049_ _RAM_C04A_ _RAM_C046_ _RAM_C047_ _RAM_C048_ _RAM_C04D_

; Data from 1F6E to 1F88 (27 bytes)
.db $12 $00 $00 $10 $00 $00 $10 $00 $00 $12 $00 $00 $10 $00 $00 $10
.db $00 $00 $20 $00 $00 $50 $00 $00 $20 $00 $00

; Pointer Table from 1F89 to 1FAA (17 entries, indexed by _RAM_C023_)
_DATA_1F89_:
.dw _DATA_1BE45_ _DATA_1BE45_ _DATA_1BE51_ _DATA_1BE51_ _DATA_1BE51_ _DATA_1BE51_ _DATA_1BE5D_ _DATA_1BE5D_
.dw _DATA_1BE69_ _DATA_1BE69_ _DATA_1BE75_ _DATA_1BE75_ _DATA_1BE75_ _DATA_1BE75_ _DATA_1BE81_ _DATA_1BE81_
.dw _DATA_1BE81_

; Pointer Table from 1FAB to 1FCC (17 entries, indexed by _RAM_C023_)
_DATA_1FAB_:
.dw _DATA_1BF51_ _DATA_1BF51_ _DATA_1BF60_ _DATA_1BF60_ _DATA_1BF60_ _DATA_1BF60_ _DATA_1BF6F_ _DATA_1BF6F_
.dw _DATA_1BF7E_ _DATA_1BF7E_ _DATA_1BF8D_ _DATA_1BF8D_ _DATA_1BF8D_ _DATA_1BF8D_ _DATA_1BF9C_ _DATA_1BF9C_
.dw _DATA_1BF9C_

; 12th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_1FCD_:
	exx
	bit 7, (hl)
	jp z, _LABEL_2198_
	call _LABEL_2694_
	ld a, $09
	call _LABEL_2E6_
	ld a, (_RAM_C093_)
	or a
	ret z
	xor a
	ld (_RAM_C093_), a
	jr _LABEL_1FE9_

; 12th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_1FE6_:
	jp _LABEL_263D_

_LABEL_1FE9_:
	call _LABEL_9DF3_
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_311_
	ld de, _RAM_C800_
	ld hl, _RAM_D000_
	ld bc, $0700
	ldir
	ld hl, _RAM_C800_
	ld de, $7800
	ld bc, $0700
	call _LABEL_145_
	call _LABEL_69AE_
	ld hl, _RAM_C300_
	ld (_RAM_C0F9_), hl
	ld a, $1E
	ld (_RAM_C0F8_), a
	ld hl, _RAM_C0CA_
	ld de, _RAM_C0A0_
	ld bc, $002A
	ldir
	ld a, (_RAM_C023_)
	push af
	ld a, (_RAM_C092_)
	or a
	jr z, +
	ld hl, _RAM_C023_
	inc (hl)
+:
	call _LABEL_10FF_
	ld a, $83
	ld (_RAM_FFFF_), a
	call _LABEL_E6C_
	ld hl, _DATA_C000_
	ld de, $4020
	ld bc, $0480
	call _LABEL_145_
	pop af
	ld (_RAM_C023_), a
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_172B1_
	ld de, $5600
	call _LABEL_293_
	ld a, $87
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C054_)
	cp $03
	jr nz, +
	ld hl, _DATA_1DCC9_
	ld de, $6200
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1DCC9_
	ld bc, $0080
	call _LABEL_2C5_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_16FB1_
	ld de, $6300
	ld bc, $0080
	call _LABEL_145_
	jr ++

+:
	cp $04
	jr nz, +
	ld hl, _DATA_1C4C9_
	ld de, $6280
	ld bc, $00C0
	call _LABEL_145_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_17031_
	ld de, $6200
	ld bc, $0080
	call _LABEL_145_
	jr ++

+:
	cp $05
	jr nz, ++
	ld hl, _DATA_1C3A9_
	ld de, $6200
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_1C3A9_
	ld bc, $0020
	call _LABEL_2C5_
++:
	ld a, (_RAM_C023_)
	push af
	ld a, (_RAM_C092_)
	or a
	jr z, +
	ld hl, _RAM_C023_
	inc (hl)
+:
	ld a, $87
	ld (_RAM_FFFF_), a
	call _LABEL_1134_
	pop af
	ld (_RAM_C023_), a
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C054_)
	cp $01
	jr nz, +
	ld ix, _RAM_C300_
	call _LABEL_2A6E_
+:
	ld ix, _RAM_CF80_
	call _LABEL_278A_
	ld ix, _RAM_CFA0_
	call _LABEL_278A_
	ld ix, _RAM_CFC0_
	call _LABEL_278A_
	ld ix, $C300
	call _LABEL_2694_
	call _LABEL_67BD_
	call _LABEL_6B42_
	ld ix, $C300
	ld a, (_RAM_C023_)
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C110_), a
	ld a, (_RAM_C092_)
	or a
	jr z, +
	ld a, $82
	ld (_RAM_C110_), a
	jr ++

+:
	ld a, (_RAM_C31A_)
	cp $05
	jr nz, ++
	ld a, $83
	ld (_RAM_C110_), a
	ld a, (_RAM_C023_)
	cp $10
	jp nz, ++
	ld a, $84
	ld (_RAM_C110_), a
++:
	ld a, (_RAM_C054_)
	cp $07
	jp c, ++
	jp nz, +
	ld a, $85
	ld (_RAM_C110_), a
	jp ++

+:
	cp $08
	jp z, ++
	ld a, $88
	ld (_RAM_C110_), a
++:
	ei
	ld a, $8A
	ld (_RAM_C01F_), a
	ld a, $09
	call _LABEL_2E6_
	ld a, (_RAM_C054_)
	or a
	jr z, ++
	cp $03
	jr nc, ++
	ld b, $AA
	cp $01
	jr z, +
	ld b, $AB
+:
	ld a, b
	ld (_RAM_C110_), a
++:
	call _LABEL_2F6_
	ld b, $0A
	jp _LABEL_343_

_LABEL_2198_:
	set 7, (hl)
	call _LABEL_9DF3_
	ld hl, _RAM_C0A0_
	ld de, _RAM_C0CA_
	ld bc, $002A
	ldir
	dec hl
	ld (hl), $00
	ld d, h
	ld e, l
	dec de
	ld bc, $0029
	lddr
	call _LABEL_311_
	ld b, $05
	call _LABEL_343_
	ld hl, _RAM_C800_
	ld de, _RAM_D000_
	ld bc, $0700
	ldir
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld bc, $06FF
	ld (hl), $00
	ldir
	xor a
	ld (_RAM_C03C_), a
	ld a, $85
	ld (_RAM_FFFF_), a
	ld b, $18
	ld de, _RAM_C808_
	ld (_RAM_C03A_), de
	ld hl, _DATA_11E75_
	ld (_RAM_C038_), hl
-:
	push bc
	ld de, (_RAM_C03A_)
	ld hl, (_RAM_C038_)
	ld bc, $1202
	call _LABEL_2522_
	ld de, (_RAM_C03A_)
	inc de
	inc de
	ld (_RAM_C03A_), de
	ld hl, _RAM_C03C_
	inc (hl)
	ld a, (hl)
	add a, a
	ld b, $00
	ld c, a
	ld hl, _DATA_15E45_
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C038_), hl
	pop bc
	djnz -
	xor a
	ld (_RAM_C053_), a
	ld a, $03
	ld (_RAM_C0F8_), a
	ld hl, _RAM_CF80_
	ld (_RAM_C0F9_), hl
	ld de, _RAM_CF80_ + 1
	ld bc, $005F
	ld (hl), $00
	ldir
	call _LABEL_69AE_
	ld a, $87
	ld (_RAM_FFFF_), a
	ld de, $6800
	ld bc, $0020
	ld l, $00
	call _LABEL_184_
	ld hl, _DATA_1E209_
	ld de, $6820
	ld bc, $0020
	call _LABEL_145_
	ld hl, _DATA_1C269_
	ld de, $6840
	ld bc, $0140
	call _LABEL_145_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld ix, _RAM_CF80_
	ld (ix+0), $21
	ld (ix+7), <_DATA_8A1D_
	ld (ix+8), >_DATA_8A1D_
	ld (ix+6), $08
	ld (ix+5), $08
	ld (ix+12), $74
	ld (ix+14), $8E
	set 0, (ix+1)
	ld ix, _RAM_CFA0_
	ld (ix+0), $56
	res 0, (ix+1)
	call _LABEL_2694_
	ld a, (_RAM_C023_)
	cp $10
	jr c, +
	ld ix, _RAM_CFC0_
	ld (ix+0), $58
	ld (ix+12), $98
	ld (ix+14), $38
+:
	ld a, $82
	ld (_RAM_FFFF_), a
	ld de, $5800
	ld hl, _DATA_B385_
	ld bc, $0050
	ld a, $01
	call _LABEL_1D6_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_161D5_
	ld de, $4000
	call _LABEL_293_
	ld hl, _DATA_16F11_
	ld de, $5980
	ld bc, $01C0
	call _LABEL_145_
	ld hl, _DATA_170B1_
	ld de, $5BA0
	ld bc, $01E0
	call _LABEL_145_
	ld a, $87
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1C000_
	ld de, $5F80
	call _LABEL_293_
	ld hl, _DATA_1C3C9_
	ld de, $5B20
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1E229_
	ld de, $5D80
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1C169_
	ld de, $5E00
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1C1E9_
	ld de, $5E80
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1D349_
	ld de, $5780
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_1E189_
	ld de, $5F00
	ld bc, $0080
	call _LABEL_145_
	ld hl, _DATA_23FD_
	ld de, $C000
	ld bc, $0020
	call _LABEL_145_
	call _LABEL_24EC_
	ld de, $7800
	ld hl, _RAM_C800_
	ld bc, $0600
	call _LABEL_145_
	ld hl, _DATA_2429_
	ld de, $7D42
	ld bc, $0204
	call _LABEL_193_
	ld hl, $C025
	ld de, $7D88
	ld c, $01
	call _LABEL_456_
	ld hl, _DATA_2431_
	ld de, $7CC2
	ld bc, $0204
	call _LABEL_193_
	ld a, $C0
	ld de, $7D12
	call _LABEL_13F_
	ld hl, $C032
	ld de, $7D06
	call _LABEL_454_
	ld a, $08
	ld (_RAM_C10A_), a
	ld hl, _DATA_241D_
	ld de, $7D94
	ld b, $0C
	call _LABEL_159_
	ld hl, $C022
	ld de, $7D9E
	call _LABEL_454_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C023_)
	ld c, a
	ld b, $00
	ld hl, _DATA_DC5_ - 1
	add hl, bc
	ld a, (hl)
	ld (_RAM_C110_), a
	ld a, (_RAM_C31A_)
	cp $05
	jr nz, +
	ld a, $83
	ld (_RAM_C110_), a
	ld a, (_RAM_C023_)
	cp $10
	jp nz, +
	ld a, $84
	ld (_RAM_C110_), a
+:
	ld a, (_RAM_C054_)
	cp $07
	jp c, ++
	jp nz, +
	ld a, $85
	ld (_RAM_C110_), a
	jp ++

+:
	cp $08
	jp z, ++
	ld a, $88
	ld (_RAM_C110_), a
++:
	ld a, (_RAM_C092_)
	or a
	jr z, +
	ld a, $82
	ld (_RAM_C110_), a
+:
	ei
	call _LABEL_2F6_
	ret

; Data from 23FD to 241C (32 bytes)
_DATA_23FD_:
.db $00 $2F $0B $06 $01 $0C $08 $04 $3F $3E $38 $03 $30 $00 $0F $00
.db $00 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; Data from 241D to 2428 (12 bytes)
_DATA_241D_:
.db $FC $FD $FE $FF $00 $00 $00 $00 $00 $00 $00 $C0

; Data from 2429 to 2430 (8 bytes)
_DATA_2429_:
.db $E4 $08 $E5 $08 $E6 $08 $E7 $08

; Data from 2431 to 2438 (8 bytes)
_DATA_2431_:
.db $BC $08 $BD $08 $BE $08 $BF $08

; 33rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_2439_:
	ld b, (ix+20)
	ld (ix+7), <_DATA_8A1D_
	ld (ix+8), >_DATA_8A1D_
	res 4, b
	ld a, (_RAM_C006_)
	ld c, a
	and $03
	ld hl, $0000
	call nz, _LABEL_24B6_
	ld (ix+17), l
	ld (ix+18), h
	ld hl, $0000
	call _LABEL_24CF_
	ld (ix+15), l
	ld (ix+16), h
	set 1, b
	ld (ix+20), b
	ld a, (_RAM_C31A_)
	cp $10
	ret z
	ld a, (_RAM_C054_)
	cp $07
	ret nc
	ld a, (_RAM_C051_)
	or a
	ret nz
	ld a, (_RAM_C053_)
	or a
	ret nz
	ld de, $1404
	call _LABEL_7C44_
	and $E0
	ret z
	ld d, a
	exx
	ld hl, _DATA_8A18_
	call _LABEL_280E_
	exx
	ld a, (_RAM_C006_)
	and $30
	ret z
	ld a, $8F
	ld (_RAM_C110_), a
	ld a, $81
	ld (_RAM_C053_), a
	xor a
	ld (_RAM_C05A_), a
	ld a, d
	rrca
	rrca
	rrca
	rrca
	ld c, a
	ld b, $00
	ld hl, _DATA_2544_ - 2
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

_LABEL_24B6_:
	ret

; Data from 24B7 to 24CE (24 bytes)
.db $0F $DD $7E $0E $38 $09 $FE $9C $D0 $21 $00 $02 $CB $E0 $C9 $FE
.db $88 $D8 $21 $00 $FE $CB $98 $C9

_LABEL_24CF_:
	ld a, c
	and $0C
	res 2, b
	ret z
	set 2, b
	and $04
	ld a, (ix+12)
	jr nz, +
	cp $E8
	ret nc
	ld hl, $0200
	ret

+:
	cp $70
	ret c
	ld hl, $FE00
	ret

_LABEL_24EC_:
	ld hl, _RAM_C04F_
	set 0, (hl)
	ld hl, _RAM_C046_
	ld b, $0A
-:
	ld a, (hl)
	or a
	jr z, +
	push hl
	push bc
	ld a, b
	add a, a
	ld e, a
	ld d, $00
	ld a, $86
	ld (_RAM_FFFF_), a
	ld hl, _DATA_1BDB9_ - 2
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld bc, $0204
	call _LABEL_2522_
	pop bc
	pop hl
+:
	inc hl
	djnz -
	ret

_LABEL_2522_:
	push bc
	ld b, $00
	push de
	ldir
	pop de
	ex de, hl
	ld c, $40
	add hl, bc
	ex de, hl
	pop bc
	djnz _LABEL_2522_
	ret

_LABEL_2532_:
	ld hl, $0040
	push bc
	push de
	xor a
-:
	ld (de), a
	inc de
	dec c
	jr nz, -
	pop de
	add hl, de
	ex de, hl
	pop bc
	djnz _LABEL_2532_
	ret

; Jump Table from 2544 to 2551 (7 entries, indexed by _RAM_C801_)
_DATA_2544_:
.dw _LABEL_255A_ _LABEL_2568_ _LABEL_2576_ _LABEL_2580_ _LABEL_2594_ _LABEL_25D3_ _LABEL_25A8_

; Data from 2552 to 2559 (8 bytes)
.db $E4 $08 $E5 $08 $E6 $08 $E7 $08

; 1st entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_255A_:
	xor a
	ld (_RAM_C046_), a
	ld hl, $7CF4
	ld de, _RAM_CCF4_
	ld a, $03
	jr _LABEL_25B4_

; 2nd entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2568_:
	xor a
	ld (_RAM_C047_), a
	ld hl, $7CF8
	ld de, _RAM_CCF8_
	ld a, $04
	jr _LABEL_25B4_

; 3rd entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2576_:
	ld hl, $7CE0
	ld de, _RAM_CCE0_
	ld a, $06
	jr _LABEL_25B4_

; 4th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2580_:
	xor a
	ld (_RAM_C049_), a
	ld hl, $05FF
	ld (_RAM_C05A_), hl
	ld hl, $7CF0
	ld de, _RAM_CCF0_
	ld a, $01
	jr _LABEL_25B4_

; 5th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_2594_:
	xor a
	ld (_RAM_C04A_), a
	ld hl, $05FF
	ld (_RAM_C05A_), hl
	ld hl, $7CEC
	ld de, _RAM_CCEC_
	ld a, $02
	jr _LABEL_25B4_

; 7th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_25A8_:
	xor a
	ld (_RAM_C04D_), a
	ld hl, $7CDC
	ld de, _RAM_CCDC_
	ld a, $05
_LABEL_25B4_:
	ld (_RAM_C054_), a
	ld (_RAM_C058_), hl
	ld bc, $0204
	call _LABEL_2532_
	ld hl, _RAM_C320_
	ld b, $03
-:
	call _LABEL_278D_
	inc hl
	djnz -
	ld hl, _RAM_C31C_
	ld a, (hl)
	and $F4
	ld (hl), a
	ret

; 6th entry of Jump Table from 2544 (indexed by _RAM_C801_)
_LABEL_25D3_:
	call _LABEL_9DF3_
	call _LABEL_311_
	ld hl, _RAM_C800_
	ld de, _RAM_C800_ + 1
	ld (hl), $00
	ld bc, $06FF
	ldir
	ld hl, _DATA_2674_
	ld de, $C000
	ld bc, $0020
	call _LABEL_145_
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_15924_
	ld de, $7892
	ld bc, $1218
	call _LABEL_193_
	ld hl, _DATA_15AD4_
	ld de, $4000
	call _LABEL_293_
	ld a, $82
	ld (_RAM_FFFF_), a
	ld ix, _RAM_CF80_
	ld b, $03
	ld de, $0020
-:
	call _LABEL_278A_
	add ix, de
	djnz -
	call _LABEL_2694_
	ei
	call _LABEL_2F6_
-:
	ld a, $01
	call _LABEL_2E6_
	call _LABEL_2694_
	ld a, (_RAM_C093_)
	or a
	jr z, -
	xor a
	ld (_RAM_C093_), a
	jp _LABEL_1FE9_

_LABEL_263D_:
	ld hl, _RAM_C053_
	bit 7, (hl)
	ret z
	res 7, (hl)
	ld de, (_RAM_C058_)
	ld bc, $0204
	jp _LABEL_1C5_

_LABEL_264F_:
	ld a, (_RAM_C054_)
	or a
	ret z
	cp $03
	ret nc
	ld hl, (_RAM_C05A_)
	ld a, h
	or l
	jr z, +
	dec hl
	ld (_RAM_C05A_), hl
	ret

+:
	ld a, $B2
	ld (_RAM_C110_), a
	xor a
	ld (_RAM_C054_), a
	ld a, $03
	ld de, $C014
	jp _LABEL_13F_

; Data from 2674 to 2693 (32 bytes)
_DATA_2674_:
.db $30 $00 $3F $2A $25 $0F $03 $0B $3C $02 $00 $00 $00 $00 $00 $00
.db $30 $00 $3F $2A $25 $0F $03 $0B $3C $02 $00 $00 $00 $00 $00 $00

_LABEL_2694_:
	ld hl, _RAM_C706_
	ld (_RAM_C009_), hl
	ld ix, (_RAM_C0F9_)
	ld a, (_RAM_C0F8_)
	ld b, a
-:
	ld a, (ix+0)
	and $7F
	jp z, ++
	push bc
	ld hl, _DATA_2892_ - 2
	rst $20	; _LABEL_20_
	ld a, (ix+0)
	or a
	jp z, +
	call _LABEL_27D0_
	call _LABEL_273A_
	call _LABEL_26D7_
+:
	pop bc
++:
	ld de, $0020
	add ix, de
	djnz -
	ld hl, (_RAM_C009_)
	ld a, l
	cp $40
	jr c, +
	ld l, $3F
	ld (_RAM_C009_), hl
+:
	ld (hl), $D0
	ret

_LABEL_26D7_:
	ld a, (ix+0)
	or a
	ret z
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_283B_
	ld a, (ix+14)
	cp $C0
	ret nc
	ld c, a
	ld de, (_RAM_C009_)
	push de
	ld l, (ix+7)
	ld h, (ix+8)
	ld b, (hl)
	push bc
	inc hl
	ld a, (hl)
	ld (ix+19), a
	inc hl
-:
	ld a, c
	add a, (hl)
	cp $D0
	jr nz, +
	dec a
+:
	ld (de), a
	inc e
	inc hl
	djnz -
	ld (_RAM_C009_), de
	pop bc
	pop de
	sla e
	set 7, e
	ld c, (ix+12)
-:
	ld a, c
	add a, (hl)
	bit 7, (hl)
	jp z, +
	ccf
+:
	jp nc, +
	ld a, $E0
	res 7, e
	srl e
	ld (de), a
	sla e
	set 7, e
	jp ++

+:
	ld (de), a
++:
	inc hl
	inc e
	ldi
	inc bc
	djnz -
	ret

_LABEL_273A_:
	ld de, (_RAM_C0B9_)
	ld h, (ix+18)
	ld l, (ix+17)
	or a
	sbc hl, de
	ret z
	ex de, hl
	ld l, (ix+13)
	ld h, (ix+14)
	add hl, de
	bit 7, d
	jp z, +
	jp c, ++
	bit 1, (ix+1)
	jp nz, _LABEL_278A_
	ld a, h
	sub $40
	ld (ix+13), l
	ld (ix+14), a
	dec (ix+10)
	ret

+:
	ld a, h
	sub $C0
	jp c, ++
	bit 1, (ix+1)
	jp nz, _LABEL_278A_
	ld (ix+13), l
	ld (ix+14), a
	inc (ix+10)
	ret

++:
	ld (ix+13), l
	ld (ix+14), h
	ret

_LABEL_278A_:
	push ix
	pop hl
_LABEL_278D_:
	xor a
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), $01
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	inc l
	ld (hl), a
	ld c, a
	ret

_LABEL_27D0_:
	ld hl, (_RAM_C0AB_)
	ld d, (ix+16)
	ld e, (ix+15)
	or a
	adc hl, de
	ret z
	ex de, hl
	ld l, (ix+11)
	ld h, (ix+12)
	add hl, de
	bit 7, d
	jp z, +
	jp c, ++
	bit 1, (ix+1)
	jp nz, _LABEL_278A_
	inc (ix+9)
	jp ++

+:
	jp nc, ++
	bit 1, (ix+1)
	jp nz, _LABEL_278A_
	dec (ix+9)
++:
	ld (ix+11), l
	ld (ix+12), h
	ret

_LABEL_280E_:
	ld d, (hl)
	inc hl
	ld a, (ix+4)
	dec (ix+5)
	jr nz, +
	ld e, (ix+6)
	ld (ix+5), e
	inc a
	cp d
	jr c, +
	xor a
+:
	ld (ix+4), a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld e, (hl)
	inc hl
	ld h, (hl)
	ld (ix+7), e
	ld (ix+8), h
	ret

; Data from 2835 to 283A (6 bytes)
.db $23 $DD $7E $04 $18 $EB

_LABEL_283B_:
	inc a
	or (ix+9)
	ret nz
	ld a, (ix+14)
	cp $A8
	ret c
	ld c, a
	ld de, (_RAM_C009_)
	push de
	ld l, (ix+7)
	ld h, (ix+8)
	ld b, (hl)
	push bc
	inc hl
	ld a, (hl)
	ld (ix+19), a
	inc hl
-:
	ld a, c
	add a, $40
	add a, (hl)
	ld (de), a
	inc e
	inc hl
	djnz -
	ld (_RAM_C009_), de
	pop bc
	pop de
	sla e
	set 7, e
	ld c, (ix+12)
-:
	ld a, c
	add a, (hl)
	bit 7, (hl)
	jp z, +
	ccf
+:
	jp nc, +
	ld a, $E0
	res 7, e
	srl e
	ld (de), a
	sla e
	set 7, e
	jp ++

+:
	ld (de), a
++:
	inc hl
	inc e
	ldi
	inc bc
	djnz -
	ret

; Jump Table from 2892 to 2957 (99 entries, indexed by _RAM_CF80_)
_DATA_2892_:
.dw _LABEL_2958_ _LABEL_4489_ _LABEL_443F_ _LABEL_44CD_ _LABEL_4689_ _LABEL_46C2_ _LABEL_4719_ _LABEL_4885_
.dw _LABEL_4768_ _LABEL_4863_ _LABEL_761F_ _LABEL_7982_ _LABEL_799A_ _LABEL_7A89_ _LABEL_7B2E_ _LABEL_49EB_
.dw _LABEL_4A26_ _LABEL_4A32_ _LABEL_4A3E_ _LABEL_497D_ _LABEL_4B1C_ _LABEL_4A4A_ _LABEL_4AE7_ _LABEL_966_
.dw _LABEL_74C7_ _LABEL_789E_ _LABEL_4914_ _LABEL_7143_ _LABEL_778F_ _LABEL_780F_ _LABEL_78A1_ _LABEL_4EE8_
.dw _LABEL_2439_ _LABEL_4E96_ _LABEL_4E29_ _LABEL_4C27_ _LABEL_52E0_ _LABEL_5359_ _LABEL_53C8_ _LABEL_544A_
.dw _LABEL_55EC_ _LABEL_5573_ _LABEL_567D_ _LABEL_4FEA_ _LABEL_5030_ _LABEL_5158_ _LABEL_56C5_ _LABEL_50DA_
.dw _LABEL_57C7_ _LABEL_587C_ _LABEL_5081_ _LABEL_512B_ _LABEL_51EC_ _LABEL_4F7B_ _LABEL_571C_ _LABEL_5901_
.dw _LABEL_598F_ _LABEL_59C1_ _LABEL_59F4_ _LABEL_5A2A_ _LABEL_5D8D_ _LABEL_5E0D_ _LABEL_5E74_ _LABEL_5EB3_
.dw _LABEL_5EFE_ _LABEL_5F45_ _LABEL_5622_ _LABEL_5BCA_ _LABEL_60B5_ _LABEL_5C2F_ _LABEL_5CA9_ _LABEL_5CF0_
.dw _LABEL_5D2F_ _LABEL_550E_ _LABEL_61C6_ _LABEL_6279_ _LABEL_5A8F_ _LABEL_5ADF_ _LABEL_5B30_ _LABEL_6077_
.dw _LABEL_5FAA_ _LABEL_6106_ _LABEL_616F_ _LABEL_62A8_ _LABEL_6361_ _LABEL_1B41_ _LABEL_63F4_ _LABEL_1B8E_
.dw $0000 $0000 $0000 $0000 $0000 $0000 $0000 _LABEL_3E28_
.dw _LABEL_3EBA_ _LABEL_39DB_ _LABEL_3EFC_

; 1st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_2958_:
	ld hl, $0000
	ld (_RAM_C0AB_), hl
	ld (_RAM_C0B9_), hl
	bit 7, (ix+1)
	call nz, _LABEL_2F41_
	ld a, (_RAM_C31A_)
	ld hl, _DATA_2982_
	rst $20	; _LABEL_20_
	ld a, (_RAM_C31A_)
	cp $0F
	ret z
	bit 4, (ix+28)
	ret nz
	ld a, (_RAM_C023_)
	ld hl, _DATA_3F33_ - 2
	rst $20	; _LABEL_20_
	ret

; Jump Table from 2982 to 29B9 (28 entries, indexed by _RAM_C31A_)
_DATA_2982_:
.dw _LABEL_29BA_ _LABEL_2A9E_ _LABEL_2B41_ _LABEL_2CD0_ _LABEL_2E60_ _LABEL_34B6_ _LABEL_36F1_ _LABEL_336F_
.dw _LABEL_2FA7_ _LABEL_302F_ _LABEL_3256_ _LABEL_3094_ _LABEL_3107_ _LABEL_3180_ _LABEL_31A8_ _LABEL_2F8A_
.dw _LABEL_3340_ _LABEL_31CC_ _LABEL_3223_ _LABEL_38C5_ _LABEL_3468_ _LABEL_3919_ _LABEL_3961_ _LABEL_39A5_
.dw _LABEL_3949_ _LABEL_39B4_ _LABEL_39D4_ _LABEL_38C2_

; 1st entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_29BA_:
	ld (ix+12), $80
	ld (ix+14), $60
_LABEL_29C2_:
	set 0, (ix+1)
	ld (ix+1), $00
	ld (ix+20), $03
	ld (ix+5), $01
	ld a, (_RAM_C06F_)
	or a
	jp nz, _LABEL_2A84_
	ld a, (_RAM_C051_)
	or a
	jr nz, _LABEL_2A49_
	ld a, (_RAM_C054_)
	cp $07
	jr z, +
	cp $09
	jr z, ++
	ld (ix+31), $18
	ld (ix+29), $08
	call _LABEL_2BFA_
	ret

+:
	ld a, $85
	ld (_RAM_C110_), a
	ld hl, $0040
	ld (_RAM_C30F_), hl
	ld (ix+6), $04
	ld (ix+31), $18
	ld (ix+29), $0F
	ld (ix+26), $08
	ld hl, _DATA_8F2A_
	jp _LABEL_41A3_

++:
	ld (ix+26), $06
	ld a, $88
	ld (_RAM_C110_), a
	ld a, (_RAM_C30E_)
	sub $10
	ld (_RAM_C30E_), a
	ld (ix+6), $04
	ld (ix+31), $18
	ld (ix+29), $08
	ld a, (_RAM_C023_)
	cp $0D
	ld hl, _DATA_9011_
	jp nz, _LABEL_41A3_
	ld (ix+20), $00
	ld hl, _DATA_8F7B_
	jp _LABEL_41A3_

_LABEL_2A49_:
	ld hl, $0040
	ld (_RAM_C30F_), hl
	ld (ix+14), $90
	ld (ix+6), $04
	ld (ix+31), $10
	ld (ix+29), $0F
	ld (ix+26), $0B
	ld a, $08
	ld (_RAM_C054_), a
	ld hl, _DATA_9152_
	jp _LABEL_41A3_

_LABEL_2A6E_:
	ld (ix+6), $05
	ld (ix+31), $18
	ld (ix+29), $08
	ld (ix+26), $07
	ld hl, _DATA_90BC_
	jp _LABEL_41A3_

_LABEL_2A84_:
	ld (ix+6), $05
	ld (ix+31), $18
	ld (ix+29), $08
	ld (ix+26), $14
	ld (ix+14), $98
	ld hl, _DATA_90BC_
	jp _LABEL_41A3_

; 2nd entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_2A9E_:
	call _LABEL_3B4F_
	ld (_RAM_C311_), hl
	bit 4, (ix+28)
	jp nz, _LABEL_3E04_
	call _LABEL_3C3E_
	ld a, (_RAM_C31A_)
	cp $01
	ret nz
	ld de, $1904
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	call _LABEL_3A4F_
	jp nc, _LABEL_2CA1_
	jr ++

+:
	ld a, $08
	call _LABEL_3A41_
	jp nc, _LABEL_2CA1_
	call _LABEL_3D00_
	ld a, (_RAM_C31A_)
	cp $01
	ret nz
++:
	ld a, (_RAM_C213_)
	or a
	jp nz, _LABEL_3498_
	bit 0, (ix+28)
	jr z, +
	bit 1, (ix+28)
	jr nz, +
	call _LABEL_4627_
	ret nz
	jp _LABEL_2C04_

+:
	ld a, (_RAM_C007_)
	bit 5, a
	jp nz, _LABEL_4501_
	bit 4, a
	jp nz, _LABEL_2CAE_
	ld a, (_RAM_C006_)
	bit 2, a
	jr nz, _LABEL_2B1F_
	bit 3, a
	jr nz, _LABEL_2B2C_
	bit 1, a
	ret z
_LABEL_2B0B_:
	ld (ix+26), $04
	bit 0, (ix+20)
	ld hl, _DATA_8DA7_
	jp z, _LABEL_41A3_
	ld hl, _DATA_8DBC_
	jp _LABEL_41A3_

_LABEL_2B1F_:
	res 1, (ix+20)
--:
	res 0, (ix+20)
	ld (ix+26), $02
	ret

_LABEL_2B2C_:
	set 1, (ix+20)
-:
	set 0, (ix+20)
	ld (ix+26), $02
	ret

_LABEL_2B39_:
	bit 1, (ix+20)
	jr z, --
	jr -

; 3rd entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_2B41_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	bit 4, (ix+28)
	jp nz, _LABEL_3DF4_
	call _LABEL_3C3E_
	ld a, (_RAM_C31A_)
	cp $02
	ret nz
	ld de, $1904
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	call _LABEL_3A4F_
	jp nc, _LABEL_2CA1_
	jr ++

+:
	ld a, $08
	call _LABEL_3A41_
	jp nc, _LABEL_2CA1_
	call _LABEL_3D00_
	ld a, (_RAM_C31A_)
	cp $02
	ret nz
++:
	ld a, (_RAM_C007_)
	bit 5, a
	jr z, +
	ld (ix+26), $01
	call _LABEL_3B4F_
	jp _LABEL_4501_

+:
	bit 4, a
	jp nz, _LABEL_2CAE_
	bit 1, (ix+20)
	jp nz, _LABEL_2C25_
	ld de, $0102
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	ld d, $17
	call _LABEL_3A11_
	jr c, ++
	jr +++

+:
	ld a, $0E
	ld b, $01
	call _LABEL_39ED_
	jr nc, +++
++:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 1, a
	jp nz, _LABEL_2B0B_
	bit 3, a
	jp nz, _LABEL_2B2C_
	bit 2, a
	jr nz, _LABEL_2BDC_
	jp _LABEL_2BFA_

+++:
	ld a, (_RAM_C006_)
	bit 2, a
	jr z, +
	set 2, (ix+20)
	ld de, $FFC0
	ld bc, $FE00
	call _LABEL_3B24_
_LABEL_2BDC_:
	ld hl, _DATA_8CEB_
	jp _LABEL_4182_

+:
	bit 3, a
	jp nz, +
	bit 1, a
	jp nz, _LABEL_2B0B_
	bit 2, (ix+20)
	jr z, _LABEL_2BFA_
	ld de, $0020
	call _LABEL_3B49_
	jr nc, _LABEL_2BDC_
_LABEL_2BFA_:
	ld a, $05
	ld (_RAM_C306_), a
	ld a, $01
	ld (_RAM_C31A_), a
_LABEL_2C04_:
	ld hl, _DATA_90A7_
	ld a, (_RAM_C314_)
	bit 0, a
	jp z, _LABEL_41A3_
	ld hl, _DATA_90BC_
	jp _LABEL_41A3_

+:
	set 0, (ix+20)
	ld de, $0040
	call _LABEL_3B5A_
	ld hl, _DATA_8CF4_
	jp _LABEL_4182_

_LABEL_2C25_:
	ld de, $010E
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	ld d, $17
	call _LABEL_3A11_
	jr c, ++
	jp +++

+:
	ld a, $0E
	ld b, $01
	call _LABEL_39ED_
	jr nc, +++
++:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 1, a
	jp nz, _LABEL_2B0B_
	bit 2, a
	jp nz, _LABEL_2B1F_
	bit 3, a
	jr nz, _LABEL_2C6C_
	jp _LABEL_2BFA_

+++:
	ld a, (_RAM_C006_)
	bit 3, a
	jr z, +
	set 2, (ix+20)
	ld de, $0040
	ld bc, $0200
	call _LABEL_3B77_
_LABEL_2C6C_:
	ld hl, _DATA_8CF4_
	jp _LABEL_4182_

+:
	bit 2, a
	jr nz, +
	bit 1, a
	jp nz, _LABEL_2B0B_
	bit 2, (ix+20)
	jp z, _LABEL_2BFA_
	ld de, $FFE0
	call _LABEL_3B9A_
	jr c, _LABEL_2C6C_
	jp _LABEL_2BFA_

+:
	set 2, (ix+20)
	res 0, (ix+20)
	ld de, $FFC0
	call _LABEL_3BAA_
	ld hl, _DATA_8CF4_
	jp _LABEL_4182_

_LABEL_2CA1_:
	ld a, (_RAM_C314_)
	and $BF
	or $80
	set 2, (ix+28)
	jr +

_LABEL_2CAE_:
	ld a, $91
	ld (_RAM_C110_), a
	ld (ix+27), $16
	ld a, (_RAM_C314_)
	and $3F
+:
	ld (_RAM_C314_), a
	bit 0, a
	ld (ix+26), $03
	ld hl, _DATA_8F00_
	jr z, +
	ld hl, _DATA_8F15_
+:
	call _LABEL_41A3_
; 4th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_2CD0_:
	call _LABEL_3C3E_
	ld a, (_RAM_C31A_)
	cp $03
	ret nz
	ld a, (_RAM_C213_)
	or a
	jp nz, _LABEL_3498_
	bit 0, (ix+28)
	jr z, ++
	call _LABEL_4627_
	jr nz, +++
	ld hl, _DATA_8F00_
	bit 0, (ix+20)
	jr z, +
	ld hl, _DATA_8F15_
+:
	call _LABEL_41A3_
	jr +++

++:
	ld a, (_RAM_C007_)
	and $20
	call nz, _LABEL_4501_
+++:
	bit 2, (ix+28)
	jp nz, _LABEL_2D4A_
	ld a, (_RAM_C006_)
	bit 4, a
	jr z, ++
	dec (ix+27)
	jr z, ++
	ld de, (_RAM_C30F_)
	bit 7, d
	jr nz, +
	xor a
	ld h, a
	ld l, a
	sbc hl, de
	ex de, hl
+:
	sra d
	rr e
	sra d
	rr e
	ld hl, $FE00
	add hl, de
	ld (_RAM_C311_), hl
	ld de, $0104
	call _LABEL_3A7E_
	bit 7, (ix+20)
	jr z, _LABEL_2D7F_
	set 2, (ix+28)
	jr _LABEL_2D7F_

++:
	set 2, (ix+28)
_LABEL_2D4A_:
	ld de, $0104
	call _LABEL_3A68_
	bit 6, (ix+20)
	jr z, _LABEL_2D7F_
	res 2, (ix+28)
	ld a, $B1
	ld (_RAM_C110_), a
	ld a, (_RAM_C31C_)
	bit 0, a
	jr z, +
	bit 1, a
	jr nz, +
	res 2, (ix+20)
	ld (ix+26), $01
	jp _LABEL_2BFA_

+:
	bit 2, (ix+20)
	jp z, _LABEL_2BFA_
	call _LABEL_2B39_
_LABEL_2D7F_:
	bit 1, (ix+20)
	jp nz, _LABEL_2DF3_
	ld de, $1802
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	call _LABEL_3A11_
	jr c, +++
	jr ++

+:
	ld a, (_RAM_C312_)
	add a, $07
	ld d, a
	ld a, $08
	ld e, $02
	ld b, $01
	call _LABEL_39ED_
	jr c, +++
++:
	ld a, (_RAM_C006_)
	bit 2, a
	jr nz, ++++
	bit 3, a
	jr nz, +++++
	ld de, $0008
	jp _LABEL_3B44_

+++:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 3, a
	ret z
	set 1, (ix+20)
	ret

++++:
	set 2, (ix+20)
	ld de, $FFF0
	ld bc, $FE00
	jp _LABEL_3B24_

+++++:
	ld a, (_RAM_C314_)
	set 0, a
	ld (_RAM_C314_), a
	ld hl, _DATA_8F15_
	ld a, (_RAM_C31C_)
	and $03
	cp $01
	jr nz, +
	ld hl, _DATA_8DE9_
+:
	call _LABEL_41A3_
	ld de, $0010
	jp _LABEL_3B5A_

_LABEL_2DF3_:
	ld de, $180E
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	call _LABEL_3A11_
	jr c, +++
	jr ++

+:
	ld a, (_RAM_C312_)
	add a, $07
	ld d, a
	ld a, $08
	ld b, $01
	call _LABEL_39ED_
	jr c, +++
++:
	ld a, (_RAM_C006_)
	bit 3, a
	jr nz, ++++
	bit 2, a
	jr nz, +++++
	ld de, $FFF8
	jp _LABEL_3B95_

+++:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 2, a
	ret z
	res 1, (ix+20)
	ret

++++:
	set 2, (ix+20)
	ld de, $0010
	ld bc, $0200
	jp _LABEL_3B77_

+++++:
	ld a, (_RAM_C314_)
	bit 0, a
	res 0, a
	ld (_RAM_C314_), a
	ld hl, _DATA_8F00_
	ld a, (_RAM_C31C_)
	and $03
	cp $01
	jr nz, +
	ld hl, _DATA_8DD1_
+:
	call _LABEL_41A3_
	ld de, $FFF0
	jp _LABEL_3BAA_

; 5th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_2E60_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	bit 4, (ix+28)
	jp nz, _LABEL_3E04_
	call _LABEL_3C3E_
	ld a, (_RAM_C31A_)
	cp $04
	ret nz
	ld de, $1904
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	call _LABEL_3A4F_
	jp nc, _LABEL_2CA1_
	jr ++

+:
	ld a, $08
	call _LABEL_3A41_
	jp nc, _LABEL_2CA1_
++:
	ld a, (_RAM_C006_)
	bit 1, a
	jr nz, +
	ld a, (_RAM_C30A_)
	or a
	jp nz, _LABEL_2F22_
	ld de, $0004
	ld a, $08
	call _LABEL_3A41_
	jp nc, _LABEL_2F22_
+:
	bit 2, (ix+20)
	jr z, +
	bit 1, (ix+20)
	jp nz, _LABEL_2F2C_
	ld de, $0902
	ld a, $0D
	call _LABEL_3A03_
	jp c, _LABEL_3B4F_
	ld de, $0020
	jp _LABEL_3B44_

+:
	ld a, (_RAM_C006_)
	ld c, a
	ld a, (_RAM_C314_)
	and $FB
	bit 2, c
	jr nz, ++
	bit 3, c
	ret z
	bit 1, c
	jr nz, +
	ld de, $090E
	ld a, $0D
	call _LABEL_3A03_
	jr c, +
	ld hl, $0020
	ld (_RAM_C30F_), hl
	set 2, a
+:
	or $03
	bit 0, (ix+20)
	ld (_RAM_C314_), a
	ret nz
	ld hl, _DATA_8DBC_
	jp _LABEL_41A3_

++:
	bit 1, c
	jr nz, +
	ld de, $0902
	ld a, $0D
	call _LABEL_3A03_
	jr c, +
	ld hl, $FFE0
	ld (_RAM_C30F_), hl
	set 2, a
+:
	and $FC
	bit 0, (ix+20)
	ld (_RAM_C314_), a
	ret z
	ld hl, _DATA_8DA7_
	jp _LABEL_41A3_

_LABEL_2F22_:
	bit 2, (ix+20)
	jp z, _LABEL_2BFA_
	jp _LABEL_2B39_

_LABEL_2F2C_:
	ld de, $090E
	ld a, $0D
	call _LABEL_3A03_
	jp c, _LABEL_3B4F_
	ld de, $FFE0
	call _LABEL_3B9A_
	jp nc, _LABEL_3B4F_
	ret

_LABEL_2F41_:
	res 7, (ix+1)
	ld a, (_RAM_C31A_)
	cp $06
	jp z, _LABEL_388E_
	cp $0B
	jp z, _LABEL_388E_
	cp $0C
	jp z, _LABEL_388E_
	xor a
	ld h, a
	ld l, a
	ld (_RAM_C30F_), hl
	ld (_RAM_C31C_), a
	ld (_RAM_C054_), a
	res 2, (ix+20)
	ld hl, $FF38
	ld (_RAM_C311_), hl
	ld a, (_RAM_C31A_)
	ld (_RAM_C090_), a
	ld (ix+26), $0F
	ld (ix+6), $05
	ld b, $1E
-:
	ld a, $01
	call _LABEL_2E6_
	djnz -
	ld a, $89
	ld (_RAM_C110_), a
	ret

; 16th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_2F8A_:
	ld hl, _DATA_8D23_
	call _LABEL_4182_
	ld a, (_RAM_C30E_)
	cp $A8
	ret nc
	cp $A3
	ret c
	ld a, (_RAM_C30A_)
	inc a
	ret nz
	call _LABEL_278A_
	ld a, $06
	ld (_RAM_C01F_), a
	ret

; 9th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_2FA7_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	ld de, $0C0C
	call _LABEL_3C41_
	ld de, $1805
	ld a, $0F
	call _LABEL_3A41_
	jp nc, _LABEL_3013_
	ld a, (_RAM_C007_)
	bit 4, a
	jp nz, _LABEL_301D_
	ld a, (_RAM_C310_)
	cpl
	add a, $07
	ld (_RAM_C306_), a
	ld hl, _DATA_8D19_
	call _LABEL_4182_
_LABEL_2FD5_:
	ld de, $0214
	call _LABEL_7C44_
	rlca
	jr nc, +
	rlca
	jp nc, _LABEL_43EB_
	call _LABEL_4571_
	jr ++

+:
	ld de, $1218
	call _LABEL_7C44_
	rlca
	jr nc, ++
	rlca
	jp nc, _LABEL_43EB_
	call _LABEL_4571_
++:
	ld a, (_RAM_C006_)
	bit 3, a
	jr z, +
	ld de, $0040
	ld bc, $0400
	jp _LABEL_3B77_

+:
	bit 2, a
	ret z
	ld de, $FFC0
	ld bc, $0100
	jp _LABEL_3BC8_

_LABEL_3013_:
	set 7, (ix+20)
	set 2, (ix+28)
	jr +

_LABEL_301D_:
	ld (ix+27), $10
	res 7, (ix+20)
+:
	ld (ix+26), $09
	ld hl, _DATA_8F60_
	call _LABEL_41A3_
; 10th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_302F_:
	ld de, $0C0C
	call _LABEL_3C41_
	bit 2, (ix+28)
	jr nz, ++
	ld a, (_RAM_C006_)
	bit 4, a
	jr z, +
	dec (ix+27)
	jr z, +
	ld de, (_RAM_C30F_)
	xor a
	ld h, a
	ld l, a
	sbc hl, de
	ex de, hl
	sra d
	rr e
	ld hl, $FE00
	add hl, de
	ld (_RAM_C311_), hl
	ld de, $0102
	call _LABEL_3A7E_
	bit 7, (ix+20)
	jp z, _LABEL_2FD5_
	set 2, (ix+28)
	jp _LABEL_2FD5_

+:
	set 2, (ix+28)
++:
	ld de, $0102
	call _LABEL_3A68_
	bit 6, (ix+20)
	jp z, _LABEL_2FD5_
	ld a, (_RAM_C314_)
	and $3F
	ld (_RAM_C314_), a
	res 2, (ix+28)
	ld (ix+26), $08
	jp _LABEL_2FD5_

; 12th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3094_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	ld de, $0C0C
	call _LABEL_3C41_
	bit 0, (ix+28)
	jr nz, +
	ld a, (_RAM_C007_)
	and $20
	call nz, _LABEL_444C_
+:
	ld a, (_RAM_C007_)
	bit 4, a
	jp nz, _LABEL_30F5_
	ld a, (_RAM_C310_)
	cpl
	add a, $07
	ld (_RAM_C306_), a
	ld hl, _DATA_8D1E_
	call _LABEL_4182_
_LABEL_30C5_:
	ld de, $0212
	call _LABEL_7C44_
	rlca
	jp c, _LABEL_389C_
	ld de, $1214
	call _LABEL_7C44_
	rlca
	jp c, _LABEL_389C_
	ld a, (_RAM_C006_)
	bit 3, a
	jr z, +
	ld de, $0040
	ld bc, $0280
	jp _LABEL_3B77_

+:
	bit 2, a
	ret z
	ld de, $FFC0
	ld bc, $0100
	jp _LABEL_3BC8_

_LABEL_30F5_:
	ld (ix+27), $10
	res 7, (ix+20)
	ld (ix+26), $0C
	ld hl, _DATA_9137_
	call _LABEL_41A3_
; 13th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3107_:
	ld de, $0C0C
	call _LABEL_3C41_
	bit 0, (ix+28)
	jr nz, +
	ld a, (_RAM_C007_)
	and $20
	call nz, _LABEL_444C_
+:
	bit 2, (ix+28)
	jr nz, ++
	ld a, (_RAM_C006_)
	bit 4, a
	jr z, +
	dec (ix+27)
	jr z, +
	ld de, (_RAM_C30F_)
	xor a
	ld h, a
	ld l, a
	sbc hl, de
	ex de, hl
	sra d
	rr e
	ld hl, $FE00
	add hl, de
	ld (_RAM_C311_), hl
	ld de, $0102
	call _LABEL_3A7E_
	bit 7, (ix+20)
	jp z, _LABEL_30C5_
	set 2, (ix+28)
	jp _LABEL_30C5_

+:
	set 2, (ix+28)
++:
	ld de, $0102
	call _LABEL_3AE1_
	ld a, (_RAM_C31A_)
	cp $13
	ret z
	bit 6, (ix+20)
	jp z, _LABEL_30C5_
	ld a, (_RAM_C314_)
	and $3F
	ld (_RAM_C314_), a
	res 2, (ix+28)
	ld (ix+26), $0B
	jp _LABEL_30C5_

; 14th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3180_:
	ld a, (_RAM_C069_)
	ld hl, (_RAM_C0AF_)
	add a, h
	cp (ix+12)
	jr z, +
	jr c, ++
	ld hl, $0080
	ld (_RAM_C30F_), hl
	ld hl, _DATA_8CF4_
	jp _LABEL_4182_

+:
	ld (ix+26), $0E
	ld (ix+27), $21
	ld a, $81
	ld (_RAM_C202_), a
	ret

; 15th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_31A8_:
	dec (ix+27)
	jr nz, ++
	call _LABEL_3B4F_
	ld hl, _RAM_C01F_
	ld a, (hl)
	cp $85
	jr z, +
	ld a, $05
	ld (hl), a
	ret

+:
	ld a, $C5
	ld (hl), a
	ret

++:
	ld hl, $FF80
	ld (_RAM_C30F_), hl
	ld hl, _DATA_8CEB_
	jp _LABEL_4182_

; 18th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_31CC_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	ld a, (_RAM_C069_)
	ld hl, (_RAM_C0AF_)
	add a, h
	cp (ix+12)
	jr z, ++
	jr c, +
	ld hl, $0080
	ld (_RAM_C30F_), hl
	set 1, (ix+20)
	ld hl, _DATA_8D02_
	jp _LABEL_4182_

+:
	ld hl, $FF80
	ld (_RAM_C30F_), hl
	res 1, (ix+20)
	ld hl, _DATA_8CFD_
	jp _LABEL_4182_

++:
	ld (ix+26), $12
	ld (ix+27), $40
	ld a, $82
	ld (_RAM_C202_), a
	ld hl, $00D0
	ld (_RAM_C311_), hl
	call _LABEL_3B4F_
	push ix
	call _LABEL_666A_
	pop ix
	ld hl, _RAM_C0C9_
	set 0, (hl)
	ret

; 19th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3223_:
	ld hl, $0300
	ld (_RAM_C0B9_), hl
	dec (ix+27)
	ret nz
	jp _LABEL_3498_

_LABEL_3230_:
	ld a, (_RAM_C211_)
	add a, a
	add a, a
	and $F0
	ld (_RAM_C30C_), a
	call _LABEL_3B4F_
	ld hl, _RAM_C314_
	ld a, (hl)
	and $2B
	ld (hl), a
	res 2, (ix+20)
	ld (ix+6), $04
	ld (ix+26), $0A
	ld a, $B1
	ld (_RAM_C110_), a
	ret

; 11th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3256_:
	call _LABEL_3B4F_
	ld (_RAM_C311_), hl
	ld a, (_RAM_C006_)
	rrca
	jr c, ++
	rrca
	jr c, _LABEL_32DC_
	rrca
	jr c, +
	rrca
	ret nc
	ld de, $0711
	ld a, $08
	ld e, $02
	ld b, $01
	call _LABEL_39ED_
	ret c
	ld hl, $0100
	ld (_RAM_C30F_), hl
	ld (ix+20), $07
	jp _LABEL_2CA1_

+:
	ld de, $07FF
	ld a, $08
	ld e, $02
	ld b, $01
	call _LABEL_39ED_
	ret c
	ld hl, $FF00
	ld (_RAM_C30F_), hl
	ld (ix+20), $04
	jp _LABEL_2CA1_

++:
	ld a, (_RAM_C30A_)
	or a
	ret nz
	ld de, $0008
	call _LABEL_7C44_
	rlca
	jr nc, +
	dec hl
	ld a, (hl)
	cp $3F
	ret nz
+:
	ld de, $0C08
	call _LABEL_7C44_
	dec hl
	ld a, (hl)
	cp $3F
	jr z, +
	ld de, $1908
	call _LABEL_7C44_
	rlca
	ret nc
	dec hl
	ld a, (hl)
	cp $3F
	jp nz, _LABEL_2BFA_
+:
	res 3, (ix+20)
	ld hl, $FF00
	ld (_RAM_C311_), hl
	ld hl, _DATA_9188_
	jp _LABEL_4182_

_LABEL_32DC_:
	ld de, $0C08
	call _LABEL_7C44_
	dec hl
	ld a, (hl)
	cp $3F
	jr nz, +
	ld a, (_RAM_C30E_)
	add a, $18
	cp $C0
	jr nc, _LABEL_3301_
	ld de, $1808
	call _LABEL_7C44_
	rlca
	jr nc, _LABEL_3301_
	dec hl
	ld a, (hl)
	cp $3F
	jp nz, _LABEL_2BFA_
_LABEL_3301_:
	set 3, (ix+20)
	ld hl, $0100
	ld (_RAM_C311_), hl
	ld hl, _DATA_9188_
	jp _LABEL_4182_

+:
	ld de, $1808
	call _LABEL_7C44_
	dec hl
	ld a, (hl)
	cp $3F
	jp nz, _LABEL_2CA1_
	jr _LABEL_3301_

_LABEL_3320_:
	ld hl, (_RAM_C311_)
	ld (_RAM_C20E_), hl
	ld hl, (_RAM_C30F_)
	ld (_RAM_C20C_), hl
	ld hl, $0000
	ld (_RAM_C30F_), hl
	ld (_RAM_C311_), hl
	ld a, (_RAM_C31A_)
	ld (_RAM_C210_), a
	ld (ix+26), $10
	ret

; 17th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3340_:
	ld a, (_RAM_C0C9_)
	and $0F
	ret nz
	ld hl, (_RAM_C20E_)
	ld (_RAM_C311_), hl
	ld hl, (_RAM_C20C_)
	ld (_RAM_C30F_), hl
	ld a, (_RAM_C210_)
	ld (_RAM_C31A_), a
	cp $14
	jr nz, _LABEL_335F_
	call _LABEL_2BFA_
_LABEL_335F_:
	ld hl, _RAM_C300_
	ld de, _RAM_C240_
	ld bc, $0020
	ldir
	xor a
	ld (_RAM_C25C_), a
	ret

; 8th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_336F_:
	call _LABEL_3B4F_
	ld (_RAM_C311_), hl
	res 4, (ix+20)
	res 2, (ix+20)
	call _LABEL_3C3E_
	ld a, (_RAM_C054_)
	cp $01
	jp nz, _LABEL_345E_
	bit 0, (ix+28)
	jr z, ++
	call _LABEL_4627_
	ret nz
_LABEL_3392_:
	bit 1, (ix+20)
	jr z, +
	ld hl, _DATA_90BC_
	jp _LABEL_41A3_

+:
	ld hl, _DATA_90A7_
	jp _LABEL_41A3_

++:
	ld a, (_RAM_C007_)
	bit 5, a
	jp nz, _LABEL_4501_
	ld a, (_RAM_C006_)
	ld c, a
	bit 0, c
	call nz, ++
	bit 1, c
	call nz, _LABEL_3400_
	bit 2, c
	call nz, _LABEL_3424_
	bit 3, c
	call nz, _LABEL_3442_
	inc (ix+27)
	bit 2, (ix+27)
	ld de, $0080
	jr z, +
	ld de, $FF80
+:
	ld hl, (_RAM_C311_)
	add hl, de
	ld (_RAM_C311_), hl
	jr _LABEL_3392_

++:
	push bc
	ld de, $0104
	ld a, $0E
	call _LABEL_3A41_
	pop bc
	ret c
	ld a, (_RAM_C30E_)
	cp $04
	ret c
	ld hl, $FF00
	ld (_RAM_C311_), hl
	res 3, (ix+20)
	res 7, (ix+20)
	set 4, (ix+20)
	ret

_LABEL_3400_:
	push bc
	ld de, $1904
	ld a, $08
	call _LABEL_3A41_
	pop bc
	ret c
	ld a, (_RAM_C30E_)
	cp $98
	ret nc
	ld hl, $0100
	ld (_RAM_C311_), hl
	set 3, (ix+20)
	set 7, (ix+20)
	set 4, (ix+20)
	ret

_LABEL_3424_:
	push bc
	ld de, $0102
	ld a, $0E
	ld b, $01
	call _LABEL_39ED_
	pop bc
	ret c
	ld a, (_RAM_C314_)
	and $FC
	or $04
	ld (_RAM_C314_), a
	ld hl, $FF00
	ld (_RAM_C30F_), hl
	ret

_LABEL_3442_:
	push bc
	ld de, $010E
	ld a, $0E
	ld b, $01
	call _LABEL_39ED_
	pop bc
	ret c
	ld a, (_RAM_C314_)
	or $07
	ld (_RAM_C314_), a
	ld hl, $0100
	ld (_RAM_C30F_), hl
	ret

_LABEL_345E_:
	ld hl, _RAM_C314_
	ld a, (hl)
	and $E7
	ld (hl), a
	jp _LABEL_2CA1_

; 21st entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3468_:
	ld hl, $0180
	ld (_RAM_C30F_), hl
	set 2, (ix+20)
	ld hl, _DATA_8CF4_
	jp _LABEL_4182_

_LABEL_3478_:
	ld hl, _RAM_C320_
	call _LABEL_278D_
	inc hl
	call _LABEL_278D_
	inc hl
	call _LABEL_278D_
	ld a, (_RAM_C31C_)
	and $F4
	ld (_RAM_C31C_), a
	ld hl, _RAM_C054_
	ld a, (hl)
	cp $02
	ret z
	xor a
	ld (hl), a
	ret

_LABEL_3498_:
	ld a, $92
	ld (_RAM_C110_), a
	ld (ix+26), $05
	ld (ix+6), $0A
	call _LABEL_3478_
	bit 7, (ix+18)
	set 3, (ix+20)
	jr z, _LABEL_34B6_
	res 3, (ix+20)
; 6th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_34B6_:
	bit 4, (ix+28)
	jp nz, _LABEL_3DFA_
	ld de, $080C
	call _LABEL_3C41_
	ld a, (_RAM_C31A_)
	cp $05
	ret nz
	ld a, (_RAM_C30E_)
	sub $08
	jr c, +
	ld d, a
	ld a, (_RAM_C30C_)
	add a, $0C
	ld e, a
	call _LABEL_7C73_
	and $E0
	cp $60
	jr nz, +
	ld a, (_RAM_C006_)
	and $01
	jr z, +
	dec hl
	ld a, (hl)
	cp $3F
	jr nz, +
	ld (_RAM_C211_), hl
	ld hl, $F000
	ld (_RAM_C311_), hl
	jp _LABEL_3230_

+:
	bit 0, (ix+28)
	jr z, ++
	call _LABEL_4627_
	jr nz, +++
	ld hl, _DATA_8E01_
	bit 0, (ix+20)
	jr z, +
	ld hl, _DATA_8E25_
+:
	call _LABEL_41A3_
	jr +++

++:
	ld a, (_RAM_C007_)
	and $20
	jr z, +++
	call _LABEL_44DB_
+++:
	ld de, $110C
	call _LABEL_3D03_
	call +++
	call _LABEL_363E_
	bit 0, (ix+28)
	ret nz
	ld c, $14
	ld a, (_RAM_C006_)
	bit 0, (ix+20)
	jr nz, ++
	bit 4, a
	jr z, +
	ld c, $0A
+:
	ld (ix+6), c
	ld hl, _DATA_8CFD_
	jp _LABEL_4182_

++:
	ld c, $14
	bit 4, a
	jr z, +
	ld c, $0A
+:
	ld (ix+6), c
	ld hl, _DATA_8D02_
	jp _LABEL_4182_

+++:
	bit 3, (ix+20)
	jp nz, _LABEL_35F8_
	ld a, (_RAM_C30E_)
	add a, (ix+18)
	cp $02
	jr c, _LABEL_35BE_
	ld de, $0103
	call _LABEL_7C44_
	bit 7, a
	jr nz, _LABEL_35E3_
	ld de, $010C
	call _LABEL_7C44_
	bit 7, a
	jp nz, _LABEL_35E3_
	and $E0
	cp $20
	jr nz, _LABEL_35BE_
	ld e, $09
	call _LABEL_7C8D_
	ld a, (hl)
	bit 7, a
	jp nz, _LABEL_35E3_
	ld a, (_RAM_C006_)
	bit 1, a
	jr nz, ++
	bit 0, a
	jr nz, +
	ld bc, $FF00
	ld de, $FFF0
	jp _LABEL_3BDA_

+:
	ld bc, $FE80
	ld de, $FFE0
	jp _LABEL_3BDA_

++:
	ld de, $0010
	bit 4, (ix+20)
	jp nz, _LABEL_3BF0_
	set 3, (ix+20)
	ret

_LABEL_35BE_:
	cp $60
	jr nz, +
	dec hl
	ld a, (hl)
	cp $59
	jr nz, +
	ld a, (_RAM_C006_)
	and $01
	jr z, +
	set 7, (ix+1)
	ret

+:
	ld a, (_RAM_C314_)
	or $18
	ld (_RAM_C314_), a
	ld hl, $0080
	ld (_RAM_C311_), hl
	ret

_LABEL_35E3_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	res 4, (ix+20)
	ld a, (_RAM_C006_)
	bit 1, a
	ret z
	set 3, (ix+20)
	ret

_LABEL_35F8_:
	ld de, $0F03
	ld a, $02
	call _LABEL_3A41_
	jr c, ++
	ld e, $10
	call _LABEL_7C8D_
	ld a, (hl)
	rlca
	jr c, ++
	ld a, (_RAM_C006_)
	bit 1, a
	jr z, +
	ld bc, $0100
	ld de, $0010
	jp _LABEL_3C0B_

+:
	ld de, $FFE0
	bit 0, a
	jp nz, _LABEL_3C21_
	ld de, $FFF0
	jp _LABEL_3C21_

++:
	ld hl, $0000
	ld (_RAM_C311_), hl
	res 4, (ix+20)
	ld a, (_RAM_C006_)
	bit 1, a
	ret nz
	res 3, (ix+20)
	ret

_LABEL_363E_:
	bit 1, (ix+20)
	jp nz, _LABEL_369A_
	ld de, $0301
	ld a, $0A
	call _LABEL_3A03_
	jr c, +
	ld a, (_RAM_C006_)
	bit 2, a
	jr nz, ++
	bit 3, a
	jr nz, +++
	ld de, $0008
	jp _LABEL_3B44_

+:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 3, a
	ret z
	ld a, (_RAM_C314_)
	or $03
	ld (_RAM_C314_), a
	ret

++:
	bit 4, a
	jr nz, +
	ld de, $FFF0
	ld bc, $FF00
	jp _LABEL_3B24_

+:
	ld de, $FFE0
	ld bc, $FE80
	jp _LABEL_3B24_

+++:
	set 0, (ix+20)
	ld de, $0010
	bit 4, a
	jp z, _LABEL_3B5A_
	ld de, $0020
	jp _LABEL_3B5A_

_LABEL_369A_:
	ld de, $0317
	ld a, $0A
	call _LABEL_3A03_
	jr c, +
	ld a, (_RAM_C006_)
	bit 3, a
	jr nz, ++
	bit 2, a
	jr nz, +++
	ld de, $FFF8
	jp _LABEL_3B95_

+:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 2, a
	ret z
	ld a, (_RAM_C314_)
	and $F8
	ld (_RAM_C314_), a
	ret

++:
	bit 4, a
	jr nz, +
	ld de, $0010
	ld bc, $0100
	jp _LABEL_3B77_

+:
	ld de, $0020
	ld bc, $0180
	jp _LABEL_3B77_

+++:
	res 0, (ix+20)
	bit 4, a
	jr nz, +
	ld de, $FFF0
	jp _LABEL_3BAA_

+:
	ld de, $FFE0
	jp _LABEL_3BAA_

; 7th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_36F1_:
	bit 6, (ix+28)
	jr nz, +
	ld a, (_RAM_C007_)
	and $10
	ret z
	set 6, (ix+28)
+:
	ld de, $040C
	call _LABEL_3C41_
	ld de, $140C
	call _LABEL_3C41_
	ld de, $1C0C
	call _LABEL_3C41_
	bit 0, (ix+28)
	jr nz, +
	ld a, (_RAM_C007_)
	and $20
	call nz, _LABEL_444C_
+:
	call ++
	call _LABEL_37D5_
	bit 0, (ix+20)
	ld hl, _DATA_8D07_
	jr z, +
	ld hl, _DATA_8D10_
+:
	ld a, (_RAM_C306_)
	inc a
	cp $14
	jp nc, _LABEL_4182_
	ld (_RAM_C306_), a
	jp _LABEL_4182_

++:
	bit 1, (ix+20)
	jp nz, _LABEL_378F_
	ld de, $0302
	ld a, $0C
	ld b, $02
	call _LABEL_39ED_
	jr c, +
	ld a, (_RAM_C006_)
	bit 2, a
	jr nz, ++
	bit 3, a
	jr nz, +++
	ld de, $0020
	jp _LABEL_3B44_

+:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 3, a
	ret z
	ld a, (_RAM_C314_)
	or $03
	ld (_RAM_C314_), a
	ret

++:
	set 2, (ix+20)
	ld de, $FFC0
	ld bc, $FE00
	jp _LABEL_3B24_

+++:
	set 0, (ix+20)
	ld de, $0040
	jp _LABEL_3B5A_

_LABEL_378F_:
	ld de, $0316
	ld a, $0C
	ld b, $02
	call _LABEL_39ED_
	jr c, +
	ld a, (_RAM_C006_)
	bit 3, a
	jr nz, ++
	bit 2, a
	jr nz, +++
	ld de, $FFE0
	jp _LABEL_3B95_

+:
	call _LABEL_3B4F_
	ld a, (_RAM_C006_)
	bit 2, a
	ret z
	ld a, (_RAM_C314_)
	and $F8
	ld (_RAM_C314_), a
	ret

++:
	set 2, (ix+20)
	ld de, $0040
	ld bc, $0200
	jp _LABEL_3B77_

+++:
	res 0, (ix+20)
	ld de, $FFC0
	jp _LABEL_3BAA_

_LABEL_37D5_:
	bit 3, (ix+20)
	jp nz, _LABEL_382B_
	ld de, $0204
	ld a, $10
	call _LABEL_3A41_
	jp c, _LABEL_388E_
	ld a, (_RAM_C31B_)
	or a
	jr nz, ++
	ld a, (_RAM_C007_)
	and $10
	jr nz, +
	ld a, (_RAM_C30E_)
	cp $04
	jr c, +++
	ld de, $0020
	jp _LABEL_3BF0_

+:
	ld (ix+27), $07
++:
	dec (ix+27)
	ld (ix+6), $02
	ld a, (_RAM_C30E_)
	cp $04
	jr c, +++
	ld de, $FFC0
	ld bc, $FE00
	jp _LABEL_3BDA_

+++:
	res 4, (ix+20)
	set 3, (ix+20)
	ld hl, $0000
	ld (_RAM_C311_), hl
	ret

_LABEL_382B_:
	ld de, $2004
	call _LABEL_7C44_
	bit 7, a
	jr nz, _LABEL_3875_
	ld a, (_RAM_C213_)
	or a
	jp nz, _LABEL_388E_
	ld e, $08
	call _LABEL_7C8D_
	ld a, (hl)
	rlca
	jr c, _LABEL_3875_
	ld e, $08
	call _LABEL_7C8D_
	ld a, (hl)
	rlca
	jr c, _LABEL_3875_
	ld a, (_RAM_C31B_)
	or a
	jr nz, _LABEL_3868_
	ld a, (_RAM_C007_)
	and $10
	jr nz, _LABEL_3864_
	ld de, $0020
	ld bc, $0100
	jp _LABEL_3C0B_

_LABEL_3864_:
	ld (ix+27), $07
_LABEL_3868_:
	dec (ix+27)
	ld (ix+6), $02
	ld de, $FFC0
	jp _LABEL_3C21_

_LABEL_3875_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	res 4, (ix+20)
	ld a, (_RAM_C31B_)
	or a
	jp nz, _LABEL_3868_
	ld a, (_RAM_C007_)
	and $10
	jr nz, _LABEL_3864_
	ret

_LABEL_388E_:
	ld hl, (_RAM_C023_)
	ld h, $00
	ld de, _DATA_3904_ - 1
	add hl, de
	ld a, (hl)
	or a
	jp z, _LABEL_43EB_
_LABEL_389C_:
	xor a
	ld (_RAM_C051_), a
	ld (_RAM_C054_), a
	call _LABEL_440E_
	call _LABEL_3B4F_
	ld (_RAM_C311_), hl
	res 0, (ix+28)
	ld a, (_RAM_C314_)
	or $18
	ld (_RAM_C314_), a
	ld (ix+26), $1B
	ld a, $9B
	ld (_RAM_C110_), a
	ret

; 28th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_38C2_:
	jp _LABEL_3B4F_

; 20th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_38C5_:
	call _LABEL_3B4F_
	ld hl, _DATA_9122_
	call _LABEL_41A3_
	ld de, $1904
	ld a, $08
	call _LABEL_3A41_
	ld hl, $0300
	jr nc, +
	ld a, (_RAM_C30E_)
	cp $04
	jr c, +
	ld hl, $0000
+:
	ld (_RAM_C311_), hl
	ld (ix+28), $00
	ld hl, _RAM_C20B_
	ld a, (_RAM_C0C9_)
	and $01
	or (hl)
	ret nz
	ld de, $0008
	call _LABEL_7C44_
	and $E0
	cp $20
	jp z, _LABEL_3498_
	ret

; Data from 3904 to 3918 (21 bytes)
_DATA_3904_:
.db $01 $00 $00 $00 $01 $00 $00 $00 $01 $00 $00 $00 $00 $00 $00 $00
.db $00 $DD $36 $06 $14

; 22nd entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3919_:
	call _LABEL_3928_
	ld a, (_RAM_C317_)
	ld (_RAM_C677_), a
	ld hl, _DATA_8D2A_
	jp _LABEL_4182_

_LABEL_3928_:
	ld a, (_RAM_C007_)
	bit 0, a
	jr z, +
	dec (ix+23)
	ret p
	ld (ix+23), $02
	ret

+:
	bit 1, a
	ret z
	inc (ix+23)
	ld a, (_RAM_C317_)
	cp $03
	ret c
	ld (ix+23), $00
	ret

; 25th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3949_:
	ld a, (ix+23)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_395B_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp _LABEL_41A3_

; Pointer Table from 395B to 3960 (3 entries, indexed by _RAM_CF97_)
_DATA_395B_:
.dw _DATA_8E9D_ _DATA_8EBE_ _DATA_8EDF_

; 23rd entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_3961_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	ld a, (_RAM_C30C_)
	cp $28
	jr z, ++
	jr nc, +
	ld hl, $0100
	ld (_RAM_C30F_), hl
	ld hl, _DATA_8CF4_
	jp _LABEL_4182_

+:
	ld hl, $FF00
	ld (_RAM_C30F_), hl
	ld hl, _DATA_8CEB_
	jp _LABEL_4182_

++:
	call _LABEL_3B4F_
	ld (_RAM_C311_), hl
	ld (ix+26), $17
	ld a, ($000A)
	ld (_RAM_C314_), a
	call _LABEL_335F_
	ld a, $01
	ld (_RAM_C25A_), a
	ld (ix+6), $14
	ret

; 24th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_39A5_:
	call _LABEL_3928_
	ld a, (_RAM_C317_)
	ld (_RAM_C677_), a
	ld hl, _DATA_8CE6_
	jp _LABEL_4182_

; 26th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_39B4_:
	call _LABEL_3B4F_
	bit 6, (ix+20)
	jr nz, +
	call _LABEL_3A68_
	jr ++

+:
	ld (_RAM_C311_), hl
++:
	ld hl, _DATA_90D1_
	call _LABEL_41A3_
	dec (ix+24)
	ret nz
	set 7, (ix+1)
	ret

; 27th entry of Jump Table from 2982 (indexed by _RAM_C31A_)
_LABEL_39D4_:
	call _LABEL_3B4F_
	ld (_RAM_C311_), hl
	ret

; 98th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_39DB_:
	ld (ix+6), $19
	ld (ix+12), $D8
	ld (ix+14), $80
	ld hl, _DATA_9750_
	jp _LABEL_280E_

_LABEL_39ED_:
	push bc
	call _LABEL_3A03_
	pop de
	ret c
	ld a, d
-:
	ex af, af'
	ld d, $08
	call _LABEL_7C9C_
	ld a, (hl)
	rlca
	ret c
	ex af, af'
	dec a
	jr nz, -
	or a
	ret

_LABEL_3A03_:
	ex af, af'
	call _LABEL_7C44_
	rlca
	ret c
	ex af, af'
	ld d, a
	call _LABEL_7C9C_
	ld a, (hl)
	rlca
	ret

_LABEL_3A11_:
	ld a, (_RAM_C30C_)
	add a, e
	ld e, a
	ex af, af'
	ld a, (_RAM_C30E_)
	add a, $40
	add a, d
	add a, (ix+18)
	cp $C0
	ret nc
	ld d, a
	cp $0F
	jr c, +
	call _LABEL_7C73_
	rlca
	ret c
	ld d, $0C
	ex af, af'
	ld e, a
	ex af, af'
+:
	call _LABEL_7C73_
	rlca
	ret c
	ex af, af'
	ld e, a
	ex af, af'
	ld d, $00
	call _LABEL_7C73_
	rlca
	ret

_LABEL_3A41_:
	ex af, af'
	call _LABEL_7C44_
	rlca
	ret c
	ex af, af'
	ld e, a
	call _LABEL_7C8D_
	ld a, (hl)
	rlca
	ret

_LABEL_3A4F_:
	ld a, (_RAM_C30E_)
	add a, $40
	add a, d
	ld d, a
	ld a, (_RAM_C30C_)
	add a, e
	ld e, a
	call _LABEL_7C73_
	rlca
	ret c
	ld e, $08
	call _LABEL_7C8D_
	ld a, (hl)
	rlca
	ret

_LABEL_3A68_:
	ld hl, (_RAM_C311_)
	ld bc, $0040
	add hl, bc
	ld (_RAM_C311_), hl
	jr nc, +
	set 7, (ix+20)
+:
	bit 7, (ix+20)
	jr nz, +
_LABEL_3A7E_:
	ld a, (_RAM_C30A_)
	or a
	ret nz
	ld a, (_RAM_C31D_)
	call _LABEL_3A41_
	ret nc
	set 7, (ix+20)
	ld hl, $0000
	ld (_RAM_C311_), hl
	ret

+:
	ld a, h
	cp $04
	jr c, +
	ld (ix+17), $00
+:
	ld a, (_RAM_C31F_)
	add a, h
	ld d, a
	ld a, (_RAM_C30A_)
	or a
	jr z, +
	ld a, (_RAM_C30E_)
	add a, $40
	add a, d
	ret nc
	ld d, a
	ld a, (_RAM_C30C_)
	add a, e
	ld e, a
	call _LABEL_7C73_
	rlca
	jr c, _LABEL_3ACE_
	ld e, (ix+29)
	call _LABEL_7C8D_
	ld a, (hl)
	rlca
	jr c, _LABEL_3ACE_
	ret

+:
	ld a, (_RAM_C31D_)
	call _LABEL_3A41_
	ret nc
_LABEL_3ACE_:
	ld a, b
	and $07
	neg
	add a, (ix+18)
	ld h, a
	ld l, $00
	ld (_RAM_C311_), hl
	set 6, (ix+20)
	ret

_LABEL_3AE1_:
	ld hl, (_RAM_C311_)
	ld bc, $0040
	add hl, bc
	ld (_RAM_C311_), hl
	jr nc, +
	set 7, (ix+20)
+:
	bit 7, (ix+20)
	jr z, _LABEL_3A7E_
	ld a, h
	cp $04
	jr c, +
	ld (ix+17), $00
+:
	ld a, $10
	add a, h
	ld d, a
	call _LABEL_7C44_
	bit 7, a
	jp nz, _LABEL_389C_
	and $E0
	cp $20
	jr z, _LABEL_3ACE_
	ld e, $0F
	call _LABEL_7C8D_
	ld a, (hl)
	bit 7, a
	jp nz, _LABEL_389C_
	and $E0
	cp $20
	jr z, _LABEL_3ACE_
	ret

_LABEL_3B24_:
	ld a, (_RAM_C314_)
	or $04
	and $FC
	ld (_RAM_C314_), a
	set 2, (ix+20)
	ld hl, (_RAM_C30F_)
	add hl, de
	ld e, l
	ld d, h
	or a
	sbc hl, bc
	jr nc, +
	ld e, c
	ld d, b
+:
	ld (_RAM_C30F_), de
	ret

_LABEL_3B44_:
	bit 2, (ix+20)
	ret z
_LABEL_3B49_:
	ld hl, (_RAM_C30F_)
	add hl, de
	jr nc, +
_LABEL_3B4F_:
	res 2, (ix+20)
	ld hl, $0000
+:
	ld (_RAM_C30F_), hl
	ret

_LABEL_3B5A_:
	ld a, (_RAM_C314_)
	bit 2, a
	jr z, +
	set 0, a
	ld hl, (_RAM_C30F_)
	add hl, de
	jr nc, ++
+:
	or $03
	and $FB
	ld hl, $0000
++:
	ld (_RAM_C30F_), hl
	ld (_RAM_C314_), a
	ret

_LABEL_3B77_:
	ld a, (_RAM_C314_)
	or $07
	ld (_RAM_C314_), a
	set 2, (ix+20)
	ld hl, (_RAM_C30F_)
	add hl, de
	ld e, l
	ld d, h
	or a
	sbc hl, bc
	jr c, +
	ld e, c
	ld d, b
+:
	ld (_RAM_C30F_), de
	ret

_LABEL_3B95_:
	bit 2, (ix+20)
	ret z
_LABEL_3B9A_:
	ld hl, (_RAM_C30F_)
	or a
	adc hl, de
	jp nc, _LABEL_3B4F_
	jp z, _LABEL_3B4F_
	ld (_RAM_C30F_), hl
	ret

_LABEL_3BAA_:
	ld a, (_RAM_C314_)
	bit 2, a
	jr z, +
	and $FE
	ld hl, (_RAM_C30F_)
	adc hl, de
	jr z, +
	jr c, ++
+:
	ld hl, $0000
	and $F8
++:
	ld (_RAM_C30F_), hl
	ld (_RAM_C314_), a
	ret

_LABEL_3BC8_:
	ld hl, (_RAM_C30F_)
	add hl, de
	ld e, l
	ld d, h
	or a
	sbc hl, bc
	jr nc, +
	ld e, c
	ld d, b
+:
	ld (_RAM_C30F_), de
	ret

_LABEL_3BDA_:
	set 4, (ix+20)
	ld hl, (_RAM_C311_)
	add hl, de
	ld e, l
	ld d, h
	or a
	sbc hl, bc
	jr nc, +
	ld e, c
	ld d, b
+:
	ld (_RAM_C311_), de
	ret

_LABEL_3BF0_:
	ld a, (_RAM_C314_)
	bit 4, a
	jr z, +
	ld hl, (_RAM_C311_)
	add hl, de
	jr nc, ++
+:
	or $08
	and $EF
	ld hl, $0000
++:
	ld (_RAM_C311_), hl
	ld (_RAM_C314_), a
	ret

_LABEL_3C0B_:
	set 4, (ix+20)
	ld hl, (_RAM_C311_)
	add hl, de
	ld e, l
	ld d, h
	or a
	sbc hl, bc
	jr c, +
	ld e, c
	ld d, b
+:
	ld (_RAM_C311_), de
	ret

_LABEL_3C21_:
	ld a, (_RAM_C314_)
	bit 4, a
	jr z, +
	ld hl, (_RAM_C311_)
	or a
	adc hl, de
	jr z, +
	jr c, ++
+:
	ld hl, $0000
	and $E7
++:
	ld (_RAM_C311_), hl
	ld (_RAM_C314_), a
	ret

_LABEL_3C3E_:
	ld de, $0C08
_LABEL_3C41_:
	xor a
	ld (_RAM_C213_), a
	ld a, (_RAM_C30A_)
	or a
	ret nz
	call _LABEL_7C44_
	bit 7, a
	jp nz, _LABEL_3CEC_
	bit 6, a
	jp z, +
	bit 5, a
	jr nz, _LABEL_3CC8_
	dec hl
	ld a, (hl)
	sub $90
	jr nc, ++
	ld a, l
	and $BC
	ld l, a
	ld a, (_RAM_C0B0_)
	rra
	rra
	add a, l
	and $3E
	cp $3E
	ret z
	push hl
	ld l, $00
	call _LABEL_3CF_
	ld a, $8E
	ld (_RAM_C110_), a
	pop hl
	ld a, (_RAM_C202_)
	or a
	ret nz
	ld (_RAM_C204_), hl
	jp _LABEL_45B7_

+:
	and $E0
	cp $20
	ret nz
	ld (_RAM_C213_), a
	ret

++:
	ld e, a
	ld d, $00
	ld hl, _DATA_3C9C_
	add hl, de
	ld a, (hl)
	ld (_RAM_C056_), a
	ret

; Data from 3C9C to 3CC7 (44 bytes)
_DATA_3C9C_:
.db $01 $01 $02 $02 $02 $03 $03 $03 $03 $04 $04 $04 $04 $05 $05 $05
.db $05 $06 $06 $06 $07 $07 $07 $07 $08 $08 $08 $08 $09 $09 $09 $09
.db $0A $0A $0A $0A $0B $0B $0B $0B $0C $0C $0C $0C

_LABEL_3CC8_:
	dec hl
	ld a, (hl)
	ld (_RAM_C211_), hl
	cp $70
	jr c, +
	ld a, (_RAM_C31A_)
	cp $01
	ret nz
	ld a, (_RAM_C30C_)
	cp $18
	ret c
	ld a, (_RAM_C006_)
	bit 0, a
	ret z
	ld (ix+26), $0D
	ret

+:
	cp $3F
	jr z, +
_LABEL_3CEC_:
	set 7, (ix+1)
	ret

+:
	ld a, (_RAM_C006_)
	bit 0, a
	ret z
	ld hl, $FF00
	ld (_RAM_C311_), hl
	jp _LABEL_3230_

_LABEL_3D00_:
	ld de, $1808
_LABEL_3D03_:
	ld a, (_RAM_C30A_)
	or a
	ret nz
	call _LABEL_7C44_
	and $E0
	cp $A0
	jr nz, _LABEL_3D54_
	dec hl
	ld (_RAM_C211_), hl
	ld a, (hl)
	cp $3F
	jp nc, _LABEL_3DCD_
	sub $0D
	ret c
	ld hl, _DATA_3D24_
	jp _LABEL_20_

; Jump Table from 3D24 to 3D53 (24 entries, indexed by _RAM_C802_)
_DATA_3D24_:
.dw _LABEL_3D59_ _LABEL_3D59_ _LABEL_3D59_ _LABEL_3D59_ _LABEL_3D5D_ _LABEL_3D5D_ _LABEL_3D5D_ _LABEL_3D5D_
.dw _LABEL_3D61_ _LABEL_3D61_ _LABEL_3D61_ _LABEL_3D61_ _LABEL_3D65_ _LABEL_3D65_ _LABEL_3D65_ _LABEL_3D65_
.dw _LABEL_3DB8_ _LABEL_3DB8_ _LABEL_3DB8_ _LABEL_3DB8_ _LABEL_3D69_ _LABEL_3D69_ _LABEL_3D69_ _LABEL_3D69_

_LABEL_3D54_:
	xor a
	ld (_RAM_C214_), a
	ret

; 1st entry of Jump Table from 3D24 (indexed by _RAM_C802_)
_LABEL_3D59_:
	ld c, $03
	jr +

; 5th entry of Jump Table from 3D24 (indexed by _RAM_C802_)
_LABEL_3D5D_:
	ld c, $01
	jr +

; 9th entry of Jump Table from 3D24 (indexed by _RAM_C802_)
_LABEL_3D61_:
	ld c, $04
	jr +

; 13th entry of Jump Table from 3D24 (indexed by _RAM_C802_)
_LABEL_3D65_:
	ld c, $02
	jr +

; 21st entry of Jump Table from 3D24 (indexed by _RAM_C802_)
_LABEL_3D69_:
	ld c, $05
+:
	ld a, (_RAM_C023_)
	cp $11
	ret nz
	ld hl, _RAM_C22A_
	ld a, (hl)
	ld (hl), c
	cp c
	ret z
	dec hl
	ld a, (hl)
	ld hl, _DATA_3DE9_
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	cp c
	jr nz, +
	ld hl, _RAM_C229_
	inc (hl)
	ld a, $8E
	ld (_RAM_C110_), a
	ld a, (hl)
	cp $0A
	ret c
	ld iy, _RAM_C3A0_
	ld (iy+0), $52
	ld (iy+3), $00
	ld (iy+12), $20
	ld (iy+14), $1F
	ret

+:
	xor a
	ld (_RAM_C229_), a
	ld d, $30
	ld a, (_RAM_C0AF_)
	add a, $30
	ld e, a
	ld c, $4F
	jp _LABEL_5B89_

; 17th entry of Jump Table from 3D24 (indexed by _RAM_C802_)
_LABEL_3DB8_:
	ld hl, _RAM_C214_
	dec (hl)
	ret p
	ld (hl), $7F
	ld e, (ix+12)
	ld a, (_RAM_C30E_)
	add a, $18
	ld d, a
	ld c, $4F
	jp _LABEL_5B89_

_LABEL_3DCD_:
	jr z, +
	ld a, (_RAM_C007_)
	bit 1, a
	ret z
	ld (ix+26), $11
	ret

+:
	ld a, (_RAM_C006_)
	bit 1, a
	ret z
	ld hl, $0100
	ld (_RAM_C311_), hl
	jp _LABEL_3230_

; Data from 3DE9 to 3DF3 (11 bytes)
_DATA_3DE9_:
.db $05 $01 $02 $03 $05 $02 $01 $04 $03 $04 $FF

_LABEL_3DF4_:
	ld (ix+26), $01
	jr _LABEL_3E04_

_LABEL_3DFA_:
	ld hl, $0000
	ld (_RAM_C311_), hl
	res 4, (ix+20)
_LABEL_3E04_:
	dec (ix+24)
	jr z, ++
	ld hl, $FF80
	bit 1, (ix+24)
	jr z, +
	ld hl, $0080
+:
	ld (_RAM_C30F_), hl
	ret

++:
	res 2, (ix+20)
	ld hl, $0000
	ld (_RAM_C30F_), hl
	res 4, (ix+28)
	ret

; 96th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_3E28_:
	ld a, (ix+26)
	ld hl, _DATA_3E31_
	jp _LABEL_20_

; Jump Table from 3E31 to 3E38 (4 entries, indexed by _RAM_CF9A_)
_DATA_3E31_:
.dw _LABEL_3E39_ _LABEL_3E49_ _LABEL_3E89_ _LABEL_3E9F_

; 1st entry of Jump Table from 3E31 (indexed by _RAM_CF9A_)
_LABEL_3E39_:
	ld (ix+9), $00
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	inc (ix+26)
	ret

; 2nd entry of Jump Table from 3E31 (indexed by _RAM_CF9A_)
_LABEL_3E49_:
	ld a, (_RAM_C31A_)
	cp $01
	ret nz
	ld a, (ix+10)
	or (ix+9)
	ret nz
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	ret c
	ld a, $1A
	ld (_RAM_C31A_), a
	inc (ix+26)
	ld (ix+5), $1E
	ld iy, _RAM_C640_
	ld hl, $8000
	ld c, $77
-:
	ld (iy+0), $18
	ld a, (ix+12)
	add a, $18
	ld (iy+12), a
	ld (iy+14), c
	ld (iy+7), l
	ld (iy+8), h
	ret

; 3rd entry of Jump Table from 3E31 (indexed by _RAM_CF9A_)
_LABEL_3E89_:
	dec (ix+5)
	ret nz
	ld (ix+5), $3C
	inc (ix+26)
	ld iy, _RAM_C660_
	ld hl, $8A27
	ld c, $87
	jr -

; 4th entry of Jump Table from 3E31 (indexed by _RAM_CF9A_)
_LABEL_3E9F_:
	dec (ix+5)
	ret nz
	ld a, $01
	ld (_RAM_C31A_), a
	ld a, $89
	ld (_RAM_C202_), a
	ld hl, _RAM_C640_
	call _LABEL_278D_
	inc hl
	call _LABEL_278D_
	jp _LABEL_278A_

; 97th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_3EBA_:
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (ix+10)
	or (ix+9)
	ret nz
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	ret c
	ld a, (_RAM_C640_)
	ld c, a
	ld a, (_RAM_C640_)
	or c
	ret z
	ld hl, _DATA_3EF9_
	ld bc, _RAM_C030_
	call _LABEL_42D_
	ret c
	ld hl, _DATA_3EF9_
	ld bc, _RAM_C030_
	call _LABEL_41C_
	ld hl, _RAM_C640_
	call _LABEL_278D_
	ld hl, _RAM_C660_
	jp _LABEL_278D_

; Data from 3EF9 to 3EFB (3 bytes)
_DATA_3EF9_:
.db $50 $00 $00

; 99th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_3EFC_:
	bit 0, (ix+1)
	jr z, +
	call _LABEL_7D04_
	ret c
	ld hl, _RAM_C202_
	ld a, (hl)
	or a
	ret nz
	ld (hl), $80
	ld hl, _DATA_14503_
	ld (_RAM_C206_), hl
	ld hl, _RAM_CC08_
	ld (_RAM_C204_), hl
	jp _LABEL_278A_

+:
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (ix+9)
	or a
	ret nz
	ld a, (ix+1)
	or $03
	ld (ix+1), a
	ret

; Jump Table from 3F33 to 3F54 (17 entries, indexed by _RAM_C023_)
_DATA_3F33_:
.dw _LABEL_3F55_ _LABEL_3F6E_ _LABEL_3F6E_ _LABEL_3F6E_ _LABEL_3FCA_ _LABEL_3F6E_ _LABEL_3F6E_ _LABEL_3F6E_
.dw _LABEL_3FCA_ _LABEL_3F6E_ _LABEL_401E_ _LABEL_3F6E_ _LABEL_3F66_ _LABEL_3F6E_ _LABEL_3F6E_ _LABEL_401E_
.dw _LABEL_3F55_

; 1st entry of Jump Table from 3F33 (indexed by _RAM_C023_)
_LABEL_3F55_:
	call _LABEL_40E0_
	ld hl, (_RAM_C30F_)
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, $60
	add a, h
	ld b, a
	jp _LABEL_411D_

; 13th entry of Jump Table from 3F33 (indexed by _RAM_C023_)
_LABEL_3F66_:
	call _LABEL_4157_
	ld b, $80
	jp _LABEL_411D_

; 2nd entry of Jump Table from 3F33 (indexed by _RAM_C023_)
_LABEL_3F6E_:
	call _LABEL_4157_
	ld e, (ix+26)
	ld hl, _DATA_3FAA_
	ld d, $00
	add hl, de
	ld a, (hl)
	or a
	jr nz, +
	ld hl, (_RAM_C30F_)
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld a, $60
	add a, h
	ld b, a
	jp _LABEL_411D_

+:
	ld a, (_RAM_C30C_)
	ld b, $40
	cp $44
	jp c, _LABEL_411D_
	ld a, (_RAM_C0C9_)
	and $08
	ret z
	ld de, (_RAM_C30F_)
	xor a
	ld hl, $FF00
	sbc hl, de
	ld (_RAM_C0AB_), hl
	ret

; Data from 3FAA to 3FC9 (32 bytes)
_DATA_3FAA_:
.db $00 $00 $00 $00 $00 $00 $00 $00 $01 $01 $00 $01 $01
.dsb 19, $00

; 5th entry of Jump Table from 3F33 (indexed by _RAM_C023_)
_LABEL_3FCA_:
	ld a, (_RAM_C31A_)
	cp $1B
	jr z, +
	cp $13
	jp nz, _LABEL_3F6E_
	jp +++

+:
	ld a, (_RAM_C0B7_)
	and $02
	jr z, ++
	ld a, (_RAM_C30E_)
	cp $90
	jr c, +
	ld hl, $0000
	ld (_RAM_C311_), hl
+:
	ld hl, $FF00
	ld (_RAM_C0AB_), hl
	ld hl, $0100
	ld (_RAM_C30F_), hl
	ret

++:
	ld (ix+26), $13
	push ix
	call _LABEL_666A_
	pop ix
	ld hl, _RAM_C0C9_
	set 0, (hl)
+++:
	ld a, (_RAM_C30E_)
	cp $08
	jr nc, +
	ld hl, $0300
	ld (_RAM_C311_), hl
+:
	ld hl, $0300
	ld (_RAM_C0B9_), hl
	ret

; 11th entry of Jump Table from 3F33 (indexed by _RAM_C023_)
_LABEL_401E_:
	ld hl, _RAM_C0C9_
	ld a, (hl)
	and $0F
	jp z, +
	rrca
	jp c, _LABEL_40C4_
	rrca
	jp c, _LABEL_40D9_
	rrca
	jp c, _LABEL_4089_
	jp _LABEL_40A8_

+:
	ld a, (_RAM_C30E_)
	cp $A8
	jr c, +
	ld a, (_RAM_C314_)
	bit 3, a
	jp nz, _LABEL_40AF_
	bit 7, a
	jp z, _LABEL_40CB_
	bit 6, a
	jp nz, _LABEL_40AF_
	ld hl, (_RAM_C311_)
	ld a, l
	or h
	jp z, _LABEL_40CB_
	jp _LABEL_40AF_

+:
	ld a, (_RAM_C31A_)
	ld b, $F0
	cp $05
	jr nz, +
	ld b, $E8
+:
	ld a, (_RAM_C30C_)
	cp b
	ret c
	bit 1, (ix+20)
	jp nz, ++
	call _LABEL_3320_
	ld hl, _RAM_C0C9_
	set 2, (hl)
	ld a, (_RAM_C210_)
	cp $05
	ld hl, $FFC0
	jr nz, +
	ld hl, $FFA0
+:
	ld (_RAM_C30F_), hl
_LABEL_4089_:
	ld hl, $0400
	ld (_RAM_C0AB_), hl
	ret

++:
	call _LABEL_3320_
	ld hl, _RAM_C0C9_
	set 3, (hl)
	ld a, (_RAM_C210_)
	cp $05
	ld hl, $0040
	jr nz, +
	ld hl, $0060
+:
	ld (_RAM_C30F_), hl
_LABEL_40A8_:
	ld hl, $FC00
	ld (_RAM_C0AB_), hl
	ret

_LABEL_40AF_:
	call _LABEL_3320_
	push ix
	call _LABEL_666A_
	pop ix
	ld hl, _RAM_C0C9_
	set 0, (hl)
	ld hl, $0080
	ld (_RAM_C311_), hl
_LABEL_40C4_:
	ld hl, $0400
	ld (_RAM_C0B9_), hl
	ret

_LABEL_40CB_:
	call _LABEL_3320_
	ld hl, _RAM_C0C9_
	set 1, (hl)
	ld hl, $FF80
	ld (_RAM_C311_), hl
_LABEL_40D9_:
	ld hl, $FC00
	ld (_RAM_C0B9_), hl
	ret

_LABEL_40E0_:
	ld hl, _RAM_C0C9_
	ld a, (hl)
	and $03
	jp z, _LABEL_4157_
	ld a, (_RAM_C30E_)
	bit 7, (ix+18)
	jr nz, ++
	bit 0, (hl)
	jr z, +
	cp $50
	ret c
	ld a, (_RAM_C30A_)
	or a
	ret nz
	ld hl, (_RAM_C311_)
	ld (_RAM_C0B9_), hl
	ret

+:
	cp $A8
	ret c
	ld hl, $0000
	ld (_RAM_C311_), hl
	res 4, (ix+20)
	ret

++:
	ret

; Data from 4114 to 411C (9 bytes)
.db $FE $04 $D0 $DD $CB $14 $FE $18 $EB

_LABEL_411D_:
	ld a, (_RAM_C0C9_)
	ld c, a
	ld a, (_RAM_C30C_)
	ld de, (_RAM_C30F_)
	bit 7, d
	jr z, ++
	bit 2, c
	jr nz, +
	cp $04
	ret nc
	call _LABEL_3B4F_
	ld (_RAM_C0AB_), hl
	ret

+:
	cp b
	ret nc
-:
	xor a
	ld h, a
	ld l, a
	sbc hl, de
	ld (_RAM_C0AB_), hl
	ret

++:
	bit 3, c
	jr nz, +
	cp $F4
	ret c
	call _LABEL_3B4F_
	ld (_RAM_C0AB_), hl
	ret

+:
	cp b
	ret c
	jr -

_LABEL_4157_:
	ld a, (_RAM_C31A_)
	cp $07
	ret c
	ld a, (_RAM_C30E_)
	bit 7, (ix+18)
	jr nz, +
	ld a, (_RAM_C30A_)
	or a
	ret nz
	cp $A8
	ret c
-:
	ld hl, $0000
	ld (_RAM_C311_), hl
	res 4, (ix+20)
	ret

+:
	cp $04
	ret nc
	set 7, (ix+20)
	jr -

_LABEL_4182_:
	ld d, (hl)
	inc hl
	ld a, (_RAM_C304_)
	dec (ix+5)
	jr nz, +
	ld e, (ix+6)
	ld (ix+5), e
	inc a
+:
	cp d
	jr c, +
	xor a
+:
	ld (_RAM_C304_), a
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
_LABEL_41A3_:
	ld a, (hl)
	inc hl
	ld (_RAM_C200_), a
	ld (_RAM_C307_), hl
	ret

_LABEL_41AC_:
	ld hl, _RAM_C200_
	ld a, (hl)
	inc hl
	cp (hl)
	ret z
	ld (hl), a
	ld hl, _RAM_C225_
	ld (hl), $01
_LABEL_41B9_:
	add a, a
	ld c, a
	ld b, $00
	ld de, $6000
	rst $08	; _LABEL_8_
_LABEL_41C1_:
	ld a, $84
	ld (_RAM_FFFF_), a
	ld hl, _DATA_10000_
	add hl, bc
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ld c, Port_VDPData
	ld a, (hl)
	inc hl
	ex af, af'
	xor a
	ex af, af'
_LABEL_41D5_:
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc hl
	ex de, hl
	ex af, af'
	outi
	outi
	outi
	out (Port_VDPData), a
	outi
	outi
	outi
	out (Port_VDPData), a
	outi
	outi
	outi
	out (Port_VDPData), a
	outi
	outi
	outi
	out (Port_VDPData), a
	outi
	outi
	outi
	out (Port_VDPData), a
	outi
	outi
	outi
	out (Port_VDPData), a
	outi
	outi
	outi
	out (Port_VDPData), a
	outi
	outi
	outi
	out (Port_VDPData), a
	ex af, af'
	ex de, hl
	dec a
	jp nz, _LABEL_41D5_
	ret

_LABEL_4222_:
	ld hl, _RAM_C202_
	ld a, (hl)
	ld (hl), $00
	add a, a
	ret nc
	ld hl, _DATA_4230_
	jp _LABEL_21_

; Jump Table from 4230 to 4243 (10 entries, indexed by _RAM_C202_)
_DATA_4230_:
.dw _LABEL_4244_ _LABEL_4339_ _LABEL_4348_ _LABEL_42BC_ _LABEL_42AF_ _LABEL_4B97_ _LABEL_4BEC_ _LABEL_4BC6_
.dw _LABEL_4376_ _LABEL_43C3_

; 1st entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_4244_:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C08E_)
	or a
	jr z, ++
	ld a, (_RAM_C0BE_)
	and $F0
	ld c, a
	ld hl, (_RAM_C204_)
	ld a, l
	rra
	rra
	and $0F
	ld d, a
	ld a, h
	rl l
	rla
	add a, a
	add a, a
	add a, a
	add a, a
	add a, d
	sub c
	jr nc, +
	sub $20
+:
	ld hl, (_RAM_C078_)
	ld b, (hl)
	inc b
	dec b
	jr z, ++
-:
	inc l
	inc l
	cp (hl)
	jr z, +
	djnz -
	jr ++

+:
	dec l
	ld (hl), $01
++:
	ld de, (_RAM_C204_)
	ld hl, (_RAM_C206_)
	ldi
	ldi
	ldi
	ldi
	ld bc, $003C
	ex de, hl
	add hl, bc
	ex de, hl
	ldi
	ldi
	ldi
	ldi
	ld de, (_RAM_C204_)
	ld hl, (_RAM_C206_)
	ld a, d
	sub $50
	ld d, a
	ld bc, $0204
	call _LABEL_193_
	ret

; 5th entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_42AF_:
	ld de, (_RAM_C0FD_)
	call ++
	ld hl, _DATA_14410_
	jp +

; 4th entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_42BC_:
	ld de, (_RAM_C0FD_)
	call ++
	ld hl, _DATA_14400_
+:
	ld de, (_RAM_C204_)
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ld bc, $0038
	ex de, hl
	add hl, bc
	ex de, hl
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ret

++:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld a, $03
-:
	ld hl, _DATA_1450B_
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ld hl, $0038
	add hl, de
	ex de, hl
	dec a
	jr nz, -
	ld (_RAM_C204_), de
	ld de, (_RAM_C0FD_)
	ld a, d
	sub $50
	ld d, a
	ld b, $03
-:
	push bc
	ld hl, _DATA_1450B_
	ld b, $08
	rst $30	; _LABEL_30_
	ld hl, $0040
	add hl, de
	ex de, hl
	pop bc
	djnz -
	ld hl, _DATA_14400_
	ld bc, $0208
	jp _LABEL_193_

; 2nd entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_4339_:
	ld hl, (_RAM_C0FD_)
	inc hl
	ld e, l
	ld a, h
	sub $50
	ld d, a
	ld bc, $0204
	jp _LABEL_4358_

; 3rd entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_4348_:
	ld hl, (_RAM_C0FD_)
	inc hl
	ld de, $00C0
	add hl, de
	ld e, l
	ld a, h
	sub $50
	ld d, a
	ld bc, $0404
_LABEL_4358_:
	rst $08	; _LABEL_8_
	push bc
	push hl
	push de
-:
	ld a, (hl)
	or $10
	out (Port_VDPData), a
	inc hl
	push af
	pop af
	in a, (Port_VDPData)
	inc hl
	djnz -
	pop hl
	ld bc, $0040
	add hl, bc
	ex de, hl
	pop hl
	add hl, bc
	pop bc
	dec c
	jr nz, _LABEL_4358_
	ret

; 9th entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_4376_:
	ld a, $84
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C218_)
	ld b, a
	and $07
	add a, a
	add a, a
	ld l, a
	ld a, b
	and $F8
	rra
	rra
	ld e, a
	ld d, $00
	ld h, d
	ld (_RAM_C219_), hl
	ld hl, _DATA_12AC2_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (hl)
	ld de, (_RAM_C21B_)
-:
	ex af, af'
	inc hl
	ld c, (hl)
	inc hl
	push hl
	ld b, (hl)
	ld hl, (_RAM_C219_)
	add hl, bc
	ex de, hl
	ld b, $04
	rst $30	; _LABEL_30_
	ex de, hl
	pop hl
	ex af, af'
	dec a
	jr nz, -
	ld (_RAM_C21B_), de
	ld hl, _RAM_C218_
	inc (hl)
	ld a, (hl)
	cp $30
	ret z
	ld a, $88
	ld (_RAM_C202_), a
	ret

; 10th entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_43C3_:
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_14420_
	ld de, $7BB4
	ld bc, $0608
	call _LABEL_193_
	ld hl, _DATA_14420_
	ld de, _RAM_CBB4_
	ld a, $06
-:
	ld bc, $0008
	ldir
	ex de, hl
	ld bc, $0038
	add hl, bc
	ex de, hl
	dec a
	jr nz, -
	ret

_LABEL_43EB_:
	ld a, $82
	ld (_RAM_C110_), a
	ld (ix+28), $04
	ld (ix+26), $03
	ld (ix+20), $03
	ld hl, $FE00
	ld (_RAM_C311_), hl
	ld hl, $0000
	ld (_RAM_C30F_), hl
	ld hl, _DATA_90BC_
	call _LABEL_41A3_
_LABEL_440E_:
	ld (ix+31), $18
	ld (ix+29), $08
	xor a
	ld (_RAM_C054_), a
	ld iy, _RAM_C360_
	ld a, (_RAM_C30C_)
	add a, $08
	ld (_RAM_C36C_), a
	ld a, (_RAM_C30E_)
	add a, $10
	ld (_RAM_C36E_), a
	ld (iy+0), $03
	ld (iy+25), $14
	ld (iy+5), $04
	ld (iy+6), $04
	ret

; 3rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_443F_:
	ld hl, _DATA_8372_
	call _LABEL_280E_
	dec (ix+25)
	jp z, _LABEL_278A_
	ret

; 9th entry of Jump Table from 451C (indexed by _RAM_C054_)
_LABEL_444C_:
	ld a, $A8
	ld (_RAM_C110_), a
	ld hl, _RAM_C31C_
	ld a, (hl)
	or $09
	ld (hl), a
	ld a, (_RAM_C30E_)
	add a, $10
	ld (_RAM_C32E_), a
	ld a, (_RAM_C30C_)
	bit 0, (ix+20)
	ld hl, $FC00
	jr z, +
	add a, $10
	ret c
	ld hl, $0400
+:
	ld (_RAM_C32C_), a
	ld (_RAM_C32F_), hl
	ld a, $02
	ld (_RAM_C320_), a
	ld hl, $84E8
	ld (_RAM_C327_), hl
	ld a, $14
	ld (_RAM_C339_), a
	ret

; 2nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4489_:
	bit 7, (ix+1)
	jr nz, ++
	ld a, (_RAM_C329_)
	or (ix+10)
	jr nz, +
	ld a, (_RAM_C32C_)
	ld de, $0404
	call _LABEL_7C44_
	rlca
	jr nc, +
	rlca
	jr nc, ++
	call _LABEL_4571_
	ld a, (_RAM_C202_)
	or a
	jr nz, ++
+:
	dec (ix+25)
	ret nz
++:
	ld (ix+25), $05
	ld (ix+0), $04
	ld a, $A9
	ld (_RAM_C110_), a
	ld hl, $0000
	ld (_RAM_C32F_), hl
	ld hl, $8380
	ld (_RAM_C327_), hl
	ret

; 4th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_44CD_:
	dec (ix+25)
	ret nz
	ld hl, _RAM_C31C_
	ld a, (hl)
	and $F6
	ld (hl), a
	jp _LABEL_278A_

_LABEL_44DB_:
	bit 0, (ix+28)
	ret nz
	ld hl, _RAM_C31C_
	ld a, (hl)
	or $09
	ld (hl), a
	ld (ix+25), $0A
	bit 0, (ix+20)
	jr nz, +
	ld hl, _DATA_8E49_
	ld de, $0AF9
	jr _LABEL_4557_

+:
	ld hl, _DATA_8E5E_
	ld de, $0A1F
	jr _LABEL_4557_

_LABEL_4501_:
	bit 0, (ix+28)
	ret nz
	ld a, (_RAM_C30A_)
	or a
	ret nz
	ld a, (_RAM_C01F_)
	and $0F
	cp $05
	ret z
	ld a, (_RAM_C054_)
	ld hl, _DATA_451C_
	jp _LABEL_20_

; Jump Table from 451C to 4537 (14 entries, indexed by _RAM_C054_)
_DATA_451C_:
.dw _LABEL_4538_ _LABEL_4538_ _LABEL_4538_ _LABEL_463A_ _LABEL_4647_ _LABEL_48BE_ _LABEL_4538_ _LABEL_4688_
.dw _LABEL_444C_ _LABEL_444C_ _LABEL_4538_ _LABEL_4538_ _LABEL_4538_ _LABEL_4538_

; 1st entry of Jump Table from 451C (indexed by _RAM_C054_)
_LABEL_4538_:
	ld hl, _RAM_C31C_
	ld a, (hl)
	or $09
	ld (hl), a
	ld (ix+25), $0A
	bit 0, (ix+20)
	jr nz, +
	ld hl, _DATA_8DD1_
	ld de, $0CF9
	jr _LABEL_4557_

+:
	ld hl, _DATA_8DE9_
	ld de, $0C17
_LABEL_4557_:
	ld a, $8A
	ld (_RAM_C110_), a
	call _LABEL_41A3_
	ld a, (_RAM_C30C_)
	add a, e
	cp $F8
	ret nc
	cp $0A
	ret c
	call _LABEL_7C48_
	and $C0
	cp $C0
	ret nz
_LABEL_4571_:
	ld a, l
	and $BC
	ld l, a
	ld (_RAM_C204_), hl
	ld a, (hl)
	exx
	ld d, a
	exx
	ld e, c
	ld d, b
	inc hl
	ld b, (hl)
	ld c, $01
	cp $0D
	jr c, +
	inc c
	cp $7C
	jr c, +
	inc c
+:
	ld a, e
	ld hl, (_RAM_C0AF_)
	and $F0
	add a, h
	ld e, a
	ld a, d
	ld hl, (_RAM_C0BD_)
	and $F0
	sub h
	jr nc, +
	sub $20
+:
	cp $E0
	jr c, +
	sub $20
+:
	ld d, a
	ld a, c
	call _LABEL_5BFA_
	bit 5, b
	jr z, _LABEL_45B7_
	exx
	ld a, d
	exx
	ld c, e
	ld b, d
	ld hl, _DATA_45D2_ - 2
	rst $20	; _LABEL_20_
_LABEL_45B7_:
	ld a, (_RAM_C31A_)
	cp $05
	ld hl, _DATA_14503_
	jr nz, +
	ld hl, _DATA_1450B_
+:
	ld a, $85
	ld (_RAM_C203_), a
	ld (_RAM_C206_), hl
	ld a, $80
	ld (_RAM_C202_), a
	ret

; Jump Table from 45D2 to 45E9 (12 entries, indexed by _RAM_C804_)
_DATA_45D2_:
.dw _LABEL_45EA_ _LABEL_45EA_ _LABEL_45EA_ _LABEL_45EA_ _LABEL_460E_ _LABEL_460E_ _LABEL_460E_ _LABEL_460E_
.dw _LABEL_4620_ _LABEL_4620_ _LABEL_4620_ _LABEL_4620_

; 1st entry of Jump Table from 45D2 (indexed by _RAM_C804_)
_LABEL_45EA_:
	ld a, (_RAM_C054_)
	ld e, a
	ld d, $00
	ld hl, _DATA_4600_
	add hl, de
	ld a, (hl)
	or a
	ret nz
	set 4, (ix+28)
	ld (ix+24), $3C
	ret

; Data from 4600 to 460D (14 bytes)
_DATA_4600_:
.db $00 $00 $00 $01 $01 $01 $00 $01 $01 $01 $00 $00 $00 $00

; 5th entry of Jump Table from 45D2 (indexed by _RAM_C804_)
_LABEL_460E_:
	ld e, c
	ld d, b
	ld hl, _RAM_C07C_
	ld a, (hl)
	inc (hl)
	ld hl, _DATA_DD7_
	ld c, a
	ld b, $00
	add hl, bc
	ld c, (hl)
	jp _LABEL_5B89_

; 9th entry of Jump Table from 45D2 (indexed by _RAM_C804_)
_LABEL_4620_:
	ld e, c
	ld d, b
	ld c, $3C
	jp _LABEL_5B89_

_LABEL_4627_:
	ld hl, _RAM_C31C_
	ld a, (hl)
	and $02
	xor $02
	ret z
	dec (ix+25)
	ret nz
	ld a, (hl)
	and $F6
	ld (hl), a
	cp a
	ret

; 4th entry of Jump Table from 451C (indexed by _RAM_C054_)
_LABEL_463A_:
	ld iy, _RAM_C360_
	ld (iy+0), $05
	ld hl, $80E6
	jr +

; 5th entry of Jump Table from 451C (indexed by _RAM_C054_)
_LABEL_4647_:
	ld iy, _RAM_C360_
	ld (iy+0), $07
	ld hl, $80F4
+:
	ld a, $90
	ld (_RAM_C110_), a
	ld (_RAM_C367_), hl
	ld hl, _RAM_C31C_
	ld a, (hl)
	or $0B
	ld (hl), a
	ld a, (_RAM_C30C_)
	ld (_RAM_C36C_), a
	ld a, (_RAM_C30E_)
	add a, $04
	ld (_RAM_C36E_), a
	ld a, (_RAM_C314_)
	and $02
	ld (_RAM_C374_), a
	ld hl, $FF00
	jr z, +
	ld hl, $0100
+:
	ld (_RAM_C36F_), hl
	ld hl, $FE00
	ld (_RAM_C371_), hl
; 8th entry of Jump Table from 451C (indexed by _RAM_C054_)
_LABEL_4688_:
	ret

; 5th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4689_:
	ld a, (_RAM_C369_)
	or (ix+10)
	jp nz, _LABEL_4853_
	ld de, $1004
	call _LABEL_493D_
	bit 6, (ix+20)
	jr nz, ++
	ld de, $0642
	bit 1, (ix+20)
	jr z, +
	ld e, $0E
+:
	call _LABEL_7C44_
	rlca
	ret nc
	ld hl, $0000
	ld (_RAM_C36F_), hl
	ret

++:
	ld (ix+0), $06
	ld (ix+30), $08
	ld (ix+31), $0A
	ret

; 6th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_46C2_:
	ld a, (_RAM_C369_)
	or (ix+10)
	jp nz, _LABEL_4853_
	ld hl, $0000
	ld (_RAM_C36F_), hl
	ld (_RAM_C371_), hl
	dec (ix+31)
	ret nz
	ld iy, _RAM_C320_
	ld a, (iy+0)
	or a
	jr z, +
	ld iy, _RAM_C340_
	ld a, (iy+0)
	or a
	jr z, +
	ld (ix+31), $01
	ret

+:
	ld a, $A5
	ld (_RAM_C110_), a
	ld (ix+31), $1E
	ld (iy+0), $09
	ld a, (_RAM_C36C_)
	ld (iy+12), a
	ld a, (_RAM_C36E_)
	ld (iy+14), a
	ld a, (_RAM_C374_)
	and $02
	ld (iy+20), a
	dec (ix+30)
	jp z, _LABEL_278A_
	ret

; 7th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4719_:
	ld a, (_RAM_C369_)
	or (ix+10)
	jp nz, _LABEL_4853_
	ld de, $1004
	call _LABEL_493D_
	bit 6, (ix+20)
	jr nz, ++
	ld de, $0642
	bit 1, (ix+20)
	jr z, +
	ld e, $0E
+:
	call _LABEL_7C44_
	rlca
	ret nc
	ld hl, $0000
	ld (_RAM_C36F_), hl
	ret

++:
	res 1, (ix+1)
	ld a, $AB
	ld (_RAM_C110_), a
	ld (ix+0), $08
	ld hl, $8CD2
	ld (_RAM_C367_), hl
	ld hl, $04B0
	ld (_RAM_C37B_), hl
	ld hl, $0000
	ld (_RAM_C36F_), hl
	ld (_RAM_C371_), hl
	ret

; 9th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4768_:
	bit 0, (ix+1)
	jp z, _LABEL_47EA_
	bit 7, (ix+1)
	jp nz, _LABEL_484D_
	ld (ix+17), $00
	ld (ix+18), $00
	call _LABEL_483F_
	ret nc
	bit 0, (ix+29)
	jr z, +++
	ld l, (ix+27)
	ld h, (ix+28)
	ld a, (hl)
	or a
	jr z, ++
	push hl
	pop iy
	ld a, (iy+12)
	bit 1, (ix+20)
	jr nz, +
	sub (ix+12)
	cp $D0
	jr nc, ++++
	jr +++

+:
	sub (ix+12)
	cp $10
	jr c, ++++
	jr +++

++:
	res 0, (ix+29)
+++:
	ld de, $1004
	call _LABEL_7C44_
	rlca
	jr nc, +
	bit 1, (ix+20)
	jr nz, _LABEL_47C9_
_LABEL_47C3_:
	ld hl, _DATA_8522_
	jp _LABEL_280E_

_LABEL_47C9_:
	ld hl, _DATA_8537_
	jp _LABEL_280E_

+:
	ld (ix+0), $0A
	set 7, (ix+20)
	ret

++++:
	ld a, $A7
	ld (_RAM_C110_), a
	res 0, (ix+29)
	ld (ix+0), $0A
	ld (ix+18), $FD
	ret

_LABEL_47EA_:
	set 0, (ix+1)
	ld (ix+6), $05
	call +++
	jr z, ++
	push hl
	pop iy
	set 0, (ix+29)
	ld (ix+27), l
	ld (ix+28), h
	ld a, (iy+12)
	sub (ix+12)
	jr c, +
	set 1, (ix+20)
	ld (ix+16), $02
	jr _LABEL_47C3_

+:
	res 1, (ix+20)
	ld (ix+16), $FE
	jr _LABEL_47C9_

++:
	bit 1, (ix+20)
	ld (ix+16), $02
	jr nz, _LABEL_47C9_
	ld (ix+16), $FE
	jr _LABEL_47C3_

+++:
	ld hl, _RAM_C3C0_
	ld de, $0020
	ld b, $0A
-:
	ld a, (hl)
	or a
	ret nz
	add hl, de
	djnz -
	ret

_LABEL_483F_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_484D_
	ld a, (ix+14)
	cp $AC
	ret c
_LABEL_484D_:
	ld a, (_RAM_C360_)
	or a
	jr nz, +
_LABEL_4853_:
	ld hl, _RAM_C31C_
	ld a, (hl)
	and $F4
	ld (hl), a
	xor a
	ld (_RAM_C054_), a
+:
	call _LABEL_278A_
	or a
	ret

; 10th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4863_:
	bit 7, (ix+1)
	jr nz, _LABEL_484D_
	call _LABEL_483F_
	ret nc
	ld de, $1004
	call _LABEL_493D_
	bit 6, (ix+20)
	ret z
	ld a, (ix+20)
	and $3F
	ld (ix+20), a
	ld (ix+0), $09
	ret

; 8th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4885_:
	ld hl, (_RAM_C37B_)
	dec hl
	ld a, l
	or h
	ld (_RAM_C37B_), hl
	jr z, +
	ld a, (_RAM_C30C_)
	sub $04
	ld (_RAM_C36C_), a
	ld a, (_RAM_C309_)
	ld (_RAM_C369_), a
	ld a, (_RAM_C30E_)
	sub $03
	ld (_RAM_C36E_), a
	ld a, (_RAM_C30A_)
	ld (_RAM_C36A_), a
	ret

+:
	call _LABEL_99D3_
	ld hl, _RAM_C31C_
	ld a, (hl)
	and $F4
	ld (hl), a
	xor a
	ld (_RAM_C054_), a
	jp _LABEL_278A_

; 6th entry of Jump Table from 451C (indexed by _RAM_C054_)
_LABEL_48BE_:
	bit 0, (ix+20)
	ld a, (_RAM_C30C_)
	jr nz, +
	sub $08
	call nc, +++
	ld hl, _DATA_8DD1_
	jr ++

+:
	add a, $10
	call nc, ++++
	ld hl, _DATA_8DE9_
++:
	ld a, $A4
	ld (_RAM_C110_), a
	jp _LABEL_41A3_

+++:
	ld hl, $8093
	ld de, $FC00
	jr +++++

++++:
	ld hl, $8098
	ld de, $0400
+++++:
	ld (_RAM_C32C_), a
	ld a, (_RAM_C30E_)
	add a, $08
	ld (_RAM_C32E_), a
	ld (_RAM_C327_), hl
	ld (_RAM_C32F_), de
	ld hl, $0000
	ld (_RAM_C331_), hl
	ld a, $1B
	ld (_RAM_C320_), a
	ld hl, _RAM_C31C_
	ld a, (hl)
	or $0B
	ld (hl), a
	ret

; 27th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4914_:
	ld a, (_RAM_C329_)
	or (ix+10)
	jr nz, +
	ld a, (_RAM_C32C_)
	cp $0C
	jr c, +
	cp $F4
	jr nc, +
	ld de, $0404
	call _LABEL_7C44_
	rlca
	ret nc
	rlca
	jp c, _LABEL_4571_
+:
	ld hl, _RAM_C31C_
	ld a, (hl)
	and $F4
	ld (hl), a
	jp _LABEL_278A_

_LABEL_493D_:
	ld l, (ix+17)
	ld h, (ix+18)
	ld bc, $0040
	add hl, bc
	ld (ix+17), l
	ld (ix+18), h
	jr nc, +
	set 7, (ix+20)
+:
	bit 7, (ix+20)
	ret z
	ld a, h
	cp $04
	jr c, +
	ld (ix+17), $00
+:
	ld a, d
	add a, h
	ld d, a
	call _LABEL_7C44_
	rlca
	ret nc
	ld a, b
	and $07
	neg
	add a, (ix+18)
	ld (ix+18), a
	ld (ix+17), $00
	set 6, (ix+20)
	ret

; 20th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_497D_:
	set 1, (ix+1)
	ld a, (_RAM_C0C9_)
	and $0F
	ret nz
	dec (ix+3)
	ret nz
	ld a, (_RAM_C202_)
	or a
	jr z, +
	inc (ix+3)
	ret

+:
	ld a, (ix+25)
	ld (ix+3), a
	ld a, $A2
	ld (_RAM_C110_), a
	ld h, $00
	ld l, (ix+30)
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	add hl, hl
	ld e, (ix+28)
	ld d, (ix+29)
	add hl, de
	ld a, (ix+31)
	rrca
	dec a
	ld b, a
	ld a, (hl)
-:
	inc hl
	inc hl
	or (hl)
	djnz -
	jp nz, _LABEL_278A_
	ld l, (ix+28)
	ld h, (ix+29)
	call _LABEL_4C1C_
	ld (ix+28), l
	ld (ix+29), h
	ld (_RAM_C204_), hl
	ld l, (ix+26)
	ld h, (ix+27)
	ld (_RAM_C206_), hl
	ld l, (ix+30)
	ld h, (ix+31)
	ld (_RAM_C208_), hl
	ld a, $85
	ld (_RAM_C202_), a
	ret

; 16th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_49EB_:
	ld hl, $BE9E
	ld bc, $0403
	ld (ix+25), $0F
_LABEL_49F5_:
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (_RAM_C0C9_)
	and $0F
	ret nz
	ld (ix+26), l
	ld (ix+27), h
	ld (ix+31), b
	ld (ix+30), c
	ld e, (ix+12)
	ld d, (ix+14)
	call _LABEL_7C82_
	ld a, l
	and $FC
	ld (ix+28), a
	ld (ix+29), h
	ld (ix+0), $14
	ret

; 17th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A26_:
	ld hl, $BEAA
	ld bc, $0809
	ld (ix+25), $19
	jr _LABEL_49F5_

; 18th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A32_:
	ld hl, $BEF2
	ld bc, $040B
	ld (ix+25), $0A
	jr _LABEL_49F5_

; 19th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A3E_:
	ld hl, $BF26
	ld bc, $2003
	ld (ix+25), $1E
	jr _LABEL_49F5_

; 22nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4A4A_:
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (_RAM_C0C9_)
	and $0F
	ret nz
	bit 0, (ix+1)
	jr z, _LABEL_4ABB_
	set 1, (ix+1)
	bit 4, (ix+1)
	jr nz, _LABEL_4A7F_
	ld a, (_RAM_C30C_)
	sub (ix+12)
	ret c
	cp $10
	ret nc
_LABEL_4A72_:
	ld a, $A0
	ld (_RAM_C110_), a
	set 4, (ix+1)
	ld (ix+5), $01
_LABEL_4A7F_:
	dec (ix+5)
	ret nz
	ld a, (_RAM_C202_)
	or a
	jr z, +
	inc (ix+5)
	ret

+:
	ld a, (ix+25)
	ld (ix+5), a
	ld a, (ix+31)
	add a, $04
	ld (ix+31), a
	ld h, a
	ld l, $02
	ld (_RAM_C208_), hl
	ld l, (ix+28)
	ld h, (ix+29)
	ld (_RAM_C204_), hl
	dec l
	dec l
	ld (ix+28), l
	ld a, $87
	ld (_RAM_C202_), a
	dec (ix+24)
	jp z, _LABEL_278A_
	ret

_LABEL_4ABB_:
	ld e, (ix+12)
	ld a, (ix+14)
	add a, $10
	ld d, a
	call _LABEL_7C82_
	ld a, l
	and $FE
	ld (ix+28), a
	ld (ix+29), h
_LABEL_4AD0_:
	set 0, (ix+1)
	ld (ix+25), $03
	ld a, (ix+3)
	ld (ix+24), a
	ld (ix+31), $00
	ld (ix+30), $02
	ret

; 23rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4AE7_:
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (_RAM_C0C9_)
	and $0F
	ret nz
	bit 0, (ix+1)
	jr z, +
	set 1, (ix+1)
	bit 4, (ix+1)
	jp nz, _LABEL_4A7F_
	call _LABEL_7D04_
	ret c
	jp _LABEL_4A72_

+:
	ld de, $A074
	call _LABEL_7C82_
	dec hl
	ld (ix+28), l
	ld (ix+29), h
	jr _LABEL_4AD0_

; 21st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4B1C_:
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (_RAM_C0C9_)
	and $0F
	ret nz
	bit 0, (ix+1)
	jr z, _LABEL_4B73_
	ld a, (ix+10)
	or (ix+9)
	jr nz, ++
	dec (ix+5)
	ret nz
	ld a, (_RAM_C202_)
	or a
	jr z, +
	inc (ix+5)
	ret

+:
	ld (ix+5), $0F
	ld a, $86
	ld (_RAM_C202_), a
	ld a, (ix+3)
	ld (_RAM_C209_), a
	ld l, (ix+28)
	ld h, (ix+29)
	ld (_RAM_C204_), hl
	dec (ix+24)
	jr z, ++
	call _LABEL_4C1C_
	ld (ix+28), l
	ld (ix+29), h
	ret

++:
	call _LABEL_99D3_
	jp _LABEL_278A_

_LABEL_4B73_:
	set 0, (ix+1)
	ld (ix+25), $01
	ld (ix+24), $12
	ld e, (ix+12)
	ld d, (ix+14)
	call _LABEL_7C82_
	ld a, l
	and $FE
	ld (ix+28), a
	ld (ix+29), h
	ld a, $9F
	ld (_RAM_C110_), a
	ret

; 6th entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_4B97_:
	ld a, $87
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C206_)
	ld de, (_RAM_C204_)
	ld bc, (_RAM_C208_)
-:
	push bc
	push bc
	push de
	ld c, b
	ld b, $00
	push hl
	ldir
	pop hl
	pop de
	ld a, d
	sub $50
	ld d, a
	pop bc
	rst $30	; _LABEL_30_
	ex de, hl
	call _LABEL_4C1C_
	ex de, hl
	ld a, d
	add a, $50
	ld d, a
	pop bc
	dec c
	jr nz, -
	ret

; 8th entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_4BC6_:
	ld hl, (_RAM_C204_)
	ld bc, (_RAM_C208_)
--:
	push bc
	push bc
	push hl
	ld e, l
	ld a, h
	sub $50
	ld d, a
-:
	ld (hl), $00
	inc hl
	djnz -
	pop hl
	pop bc
	call _LABEL_8_
-:
	xor a
	out (Port_VDPData), a
	djnz -
	call _LABEL_4C1C_
	pop bc
	dec c
	jr nz, --
	ret

; 7th entry of Jump Table from 4230 (indexed by _RAM_C202_)
_LABEL_4BEC_:
	ld hl, (_RAM_C204_)
	ld a, (_RAM_C209_)
	ld b, a
	ld c, $43
	call +
	ld a, (_RAM_C209_)
	ld b, a
	ld c, $44
+:
	push bc
	ld e, l
	ld a, h
	sub $50
	ld d, a
-:
	ld a, (hl)
	or a
	jr z, +
	cp $44
	jr z, +
	inc hl
	jr ++

+:
	ld (hl), c
	inc hl
	ld (hl), $70
++:
	inc hl
	djnz -
	ld l, e
	pop af
	add a, a
	ld b, a
	rst $30	; _LABEL_30_
	ld l, e
_LABEL_4C1C_:
	ld bc, $0040
	add hl, bc
	ld a, h
	cp $CF
	ret c
	ld h, $C8
	ret

; 36th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4C27_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+3), $00
	ld (ix+27), $C0
	ld (ix+28), $00
	ld (ix+29), $08
	ld (ix+16), $00
	ld (ix+15), $00
	ld (ix+18), $00
	ld (ix+17), $00
	ld (ix+7), <_DATA_84E3_
	ld (ix+8), >_DATA_84E3_
	ld a, (ix+9)
	ld (ix+26), a
	ld a, (ix+10)
	ld (ix+25), a
+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_4CD7_
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp c, _LABEL_4CD7_
	ld a, (ix+21)
	or a
	jp nz, _LABEL_4D8B_
	ld a, (_RAM_C31C_)
	bit 3, a
	jp z, _LABEL_4CD7_
	res 3, a
	ld (_RAM_C31C_), a
	inc (ix+3)
	ld a, (ix+3)
	cp $03
	jp c, _LABEL_4CD7_
	ld b, $08
	ld de, $0020
-:
	ld a, (ix+0)
	cp $24
	jr nz, +
	ld (ix+0), $2B
	res 0, (ix+1)
+:
	add ix, de
	djnz -
	ld a, $95
	ld (_RAM_C110_), a
	ld ix, $C3C0
	ld a, $83
	ld (_RAM_C202_), a
	ld a, (_RAM_C023_)
	cp $05
	jr c, +
	ld a, $84
	ld (_RAM_C202_), a
	ret

+:
	ld a, (_RAM_C08D_)
	and $7F
	cp $03
	ret c
	ld a, $84
	ld (_RAM_C202_), a
	ret

_LABEL_4CD7_:
	ld bc, $0000
	ld a, (ix+22)
	or a
	jr z, +
	dec (ix+22)
	jr ++

+:
	ld bc, $0002
	ld a, (ix+24)
	ld d, a
	or a
	jr z, +
	ld bc, $FFFE
+:
	inc (ix+23)
	ld a, (ix+23)
	cp $60
	jr c, ++
	ld a, d
	cpl
	ld (ix+24), a
	ld (ix+23), $00
++:
	ld a, (ix+21)
	or a
	jr z, +
	ld hl, (_RAM_C0F4_)
	ld (ix+31), h
	ld (ix+30), l
	ld a, (_RAM_C0FF_)
	ld (ix+25), a
	ld a, (_RAM_C0FB_)
	ld (ix+26), a
	jp _LABEL_4D60_

+:
	ld hl, (_RAM_C0AB_)
	ld a, h
	or l
	jr z, +
	ld d, (ix+31)
	ld e, (ix+6)
	add hl, de
	ld (ix+31), h
	ld (ix+6), l
	jr c, _LABEL_4D60_
	inc (ix+26)
	jr _LABEL_4D60_

+:
	ld hl, (_RAM_C0B9_)
	ld a, h
	or l
	jr z, _LABEL_4D60_
	ld d, (ix+30)
	ld e, (ix+2)
	ex de, hl
	or a
	sbc hl, de
	ld (ix+30), h
	ld (ix+2), l
	jr nc, _LABEL_4D60_
	ld a, h
	sub $40
	ld (ix+30), a
	dec (ix+25)
_LABEL_4D60_:
	ld l, (ix+27)
	ld h, (ix+28)
	add hl, bc
	ld (ix+27), l
	ld (ix+28), h
	call _LABEL_4CE_
	ld h, (ix+12)
	ld l, (ix+14)
	ld (_RAM_C0F4_), hl
	ld a, (ix+10)
	ld (_RAM_C0FF_), a
	ld a, (ix+9)
	ld (_RAM_C0FB_), a
	cp $01
	jp z, _LABEL_278A_
	ret

_LABEL_4D8B_:
	ld a, (_RAM_C31C_)
	bit 3, a
	jp z, _LABEL_4CD7_
	res 3, a
	ld (_RAM_C31C_), a
	inc (ix+3)
	ld a, (ix+3)
	cp $03
	jp c, _LABEL_4CD7_
	jp _LABEL_559E_

_LABEL_4DA6_:
	ld c, $00
	ld a, (_RAM_C30E_)
	sub (ix+14)
	jr nz, +
	inc a
+:
	jr nc, +
	ld c, $01
	neg
+:
	ld l, a
	ld a, (_RAM_C30C_)
	sub (ix+12)
	jr nz, +
	inc a
+:
	jr nc, +
	set 1, c
	neg
+:
	ld h, a
	ld a, l
	cp h
	jr nc, +
	set 2, c
	ld l, h
	ld h, a
+:
	ld e, l
	ld l, $00
	call ++
	ld h, $00
	ld a, (ix+0)
	cp $29
	jp z, +
	ld e, l
	ld d, h
	srl d
	rr e
	srl d
	rr e
	ld l, e
	ld h, d
	jp +

+:
	ld de, $0100
	bit 2, c
	jr z, +
	ex de, hl
+:
	bit 0, c
	jr z, +
	ld a, e
	cpl
	ld e, a
	ld a, d
	cpl
	ld d, a
	inc de
+:
	bit 1, c
	ret z
	ld a, l
	cpl
	ld l, a
	ld a, h
	cpl
	ld h, a
	inc hl
	ret

++:
	ld b, $08
	xor a
-:
	adc hl, hl
	ld a, h
	jp c, +
	cp e
	jp c, ++
+:
	sub e
	ld h, a
	xor a
++:
	ccf
	djnz -
	rl l
	sla h
	ld a, h
	sub e
	ret c
	inc l
	ret

; 35th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4E29_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+5), $0A
	ld (ix+6), $0A
	ld a, (ix+9)
	or (ix+10)
	jr nz, ++
	set 0, (ix+1)
	ld (ix+18), $FF
	ld (ix+17), $C0
	set 1, (ix+1)
+:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jr nc, +++
-:
	inc (ix+23)
	ld a, (ix+23)
	cp $C0
	jr nz, ++
	ld (ix+23), $00
	ld a, (ix+18)
	cpl
	ld (ix+18), a
	ld a, (ix+17)
	cpl
	inc a
	ld (ix+17), a
	call _LABEL_4FA6_
++:
	ld hl, _DATA_8211_
	jp _LABEL_280E_

+++:
	ld a, (_RAM_C31C_)
	bit 3, a
	jr z, -
	res 3, a
	ld (_RAM_C31C_), a
	inc (ix+3)
	ld a, (ix+3)
	cp $03
	jp nc, _LABEL_559E_
	jr -

; 34th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4E96_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+20), $12
	ld (ix+5), $08
	ld (ix+6), $08
	ld (ix+18), $FF
	ld a, (ix+23)
	ld c, a
	add a, a
	add a, c
	ld c, a
	ld b, $00
	ld hl, _DATA_52C8_
	add hl, bc
	ld a, (hl)
	ld (ix+17), a
	inc hl
	ld a, (hl)
	ld (ix+16), a
	inc hl
	ld a, (hl)
	ld (ix+15), a
	set 1, (ix+1)
+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	call _LABEL_7D92_
	ld a, (ix+14)
	cp $18
	jp c, _LABEL_278A_
+:
	ld hl, _DATA_825C_
	jp _LABEL_280E_

; 32nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4EE8_:
	bit 0, (ix+1)
	jr nz, +
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_4F75_
	set 0, (ix+1)
	ld a, (ix+14)
	ld (ix+22), a
	ld (ix+5), $08
	ld (ix+6), $08
+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	set 1, (ix+1)
	ld (ix+16), $FF
	ld (ix+15), $80
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0100
	call _LABEL_7C44_
	rlca
	jr nc, _LABEL_4F3C_
	ld (ix+0), $36
	ld (ix+16), $00
	ld (ix+15), $80
_LABEL_4F3C_:
	inc (ix+24)
	ld a, (ix+24)
	cp $40
	jr nz, +
	xor a
	ld (ix+24), a
+:
	ld hl, _DATA_5248_
	ld c, a
	ld b, $00
	add hl, bc
	ld h, (hl)
	ld de, (_RAM_C0B9_)
	ld a, d
	cpl
	inc a
	ld d, a
	ld a, e
	cpl
	inc a
	ld e, a
	ld a, h
	ld h, (ix+22)
	ld l, (ix+23)
	add hl, de
	ld (ix+22), h
	ld (ix+23), l
	add a, h
	cp $C0
	jp nc, _LABEL_278A_
	ld (ix+14), a
_LABEL_4F75_:
	ld hl, _DATA_8BBD_
	jp _LABEL_280E_

; 54th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4F7B_:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0110
	call _LABEL_7C44_
	rlca
	jp nc, _LABEL_4F3C_
	ld (ix+0), $20
	ld (ix+16), $FF
	ld (ix+15), $80
	jp _LABEL_4F3C_

_LABEL_4FA6_:
	ld a, (ix+18)
	cp $FF
	ret nz
	ld b, $05
	ld de, $0020
	ld iy, _RAM_C500_
-:
	ld a, (iy+0)
	or a
	jr nz, +
	ld a, $97
	ld (_RAM_C110_), a
	ld (iy+0), $22
	ld a, (ix+14)
	ld (iy+14), a
	ld a, (ix+12)
	ld (iy+12), a
	ld a, (ix+9)
	ld (iy+9), a
	set 1, (iy+1)
	inc (ix+24)
	ld a, (ix+24)
	and $07
	ld (iy+23), a
+:
	add iy, de
	djnz -
	ret

; 44th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_4FEA_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+7), <_DATA_856E_
	ld (ix+8), >_DATA_856E_
	ld a, (ix+9)
	or (ix+10)
	ret nz
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+18), $FF
	ld (ix+17), $80
	ret

+:
	call _LABEL_7D92_
	inc (ix+23)
	ld a, (ix+23)
	cp $40
	ret c
	ld a, (ix+18)
	cpl
	ld (ix+18), a
	ld a, (ix+17)
	cpl
	inc a
	ld (ix+17), a
	ld (ix+23), $00
	ret

; 45th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5030_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+20), $04
	ld (ix+5), $10
	ld (ix+6), $10
	jr ++

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, ++
	ld (ix+16), $FF
	ld (ix+15), $80
	set 1, (ix+1)
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0100
	ld a, $08
	call _LABEL_3A03_
	jr nc, ++
	ld (ix+0), $33
	ld (ix+16), $00
	ld (ix+15), $80
++:
	ld hl, _DATA_81B7_
	jp _LABEL_280E_

; 51st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5081_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+20), $04
	ld (ix+5), $10
	ld (ix+6), $10
	jr ++

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, ++
	ld (ix+16), $00
	ld (ix+15), $80
	set 1, (ix+1)
	ld a, (ix+9)
	or (ix+10)
	jr nz, ++
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0118
	ld a, $08
	call _LABEL_3A03_
	jr nc, ++
	ld (ix+0), $2D
	ld (ix+16), $FF
	ld (ix+15), $80
++:
	ld hl, _DATA_81E4_
	jp _LABEL_280E_

; 48th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_50DA_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+20), $04
	ld (ix+5), $10
	ld (ix+6), $10
	jr ++

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, ++
	ld (ix+16), $FF
	ld (ix+15), $A0
	set 1, (ix+1)
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0100
	ld a, $08
	call _LABEL_3A03_
	jr nc, ++
	ld (ix+0), $34
	ld (ix+16), $00
	ld (ix+15), $60
++:
	ld hl, _DATA_8BD2_
	jp _LABEL_280E_

; 52nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_512B_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0110
	ld a, $08
	call _LABEL_3A03_
	jr nc, +
	ld (ix+0), $30
	ld (ix+16), $FF
	ld (ix+15), $A0
+:
	ld hl, _DATA_8C4B_
	jp _LABEL_280E_

; 46th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5158_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+5), $10
	ld (ix+6), $10
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_51E6_
	set 0, (ix+1)
	ld a, (ix+14)
	ld (ix+22), a
	jp _LABEL_51E6_

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_51E6_
	ld (ix+16), $FF
	ld (ix+15), $A0
	set 1, (ix+1)
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0100
	ld a, $08
	call _LABEL_3A03_
	jr nc, +
	ld (ix+16), $00
	ld (ix+15), $60
	ld (ix+0), $35
	jr _LABEL_51E6_

+:
	inc (ix+24)
	ld a, (ix+24)
	cp $40
	jp nz, +
	xor a
	ld (ix+24), a
+:
	ld hl, _DATA_5288_
	ld c, a
	ld b, $00
	add hl, bc
	ld h, (hl)
	ld de, (_RAM_C0B9_)
	ld a, d
	cpl
	inc a
	ld d, a
	ld a, e
	cpl
	inc a
	ld e, a
	ld a, h
	add a, d
	ld h, (ix+22)
	ld l, (ix+23)
	add hl, de
	ld (ix+22), h
	ld (ix+23), l
	add a, h
	ld (ix+14), a
_LABEL_51E6_:
	ld hl, _DATA_83AB_
	jp _LABEL_280E_

; 53rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_51EC_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_5242_
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld de, $0118
	ld a, $08
	call _LABEL_3A03_
	jr nc, +
	ld (ix+0), $2E
	jr _LABEL_5242_

+:
	inc (ix+24)
	ld a, (ix+24)
	cp $40
	jr nz, +
	xor a
	ld (ix+24), a
+:
	ld hl, _DATA_5288_
	ld c, a
	ld b, $00
	add hl, bc
	ld h, (hl)
	ld de, (_RAM_C0B9_)
	ld a, d
	cpl
	inc a
	ld d, a
	ld a, e
	cpl
	inc a
	ld e, a
	ld a, h
	add a, d
	ld h, (ix+22)
	ld l, (ix+23)
	add hl, de
	ld (ix+22), h
	ld (ix+23), l
	add a, h
	ld (ix+14), a
_LABEL_5242_:
	ld hl, _DATA_83D8_
	jp _LABEL_280E_

; Data from 5248 to 5287 (64 bytes)
_DATA_5248_:
.db $00 $01 $02 $02 $03 $04 $04 $05 $06 $06 $07 $07 $07 $08 $08 $08
.db $08 $08 $08 $08 $07 $07 $07 $06 $06 $05 $04 $04 $03 $02 $02 $01
.db $00 $FF $FE $FE $FD $FC $FC $FB $FA $FA $F9 $F9 $F9 $F8 $F8 $F8
.db $F8 $F8 $F8 $F8 $F9 $F9 $F9 $FA $FA $FB $FC $FC $FD $FE $FE $FF

; Data from 5288 to 52C7 (64 bytes)
_DATA_5288_:
.db $00 $02 $05 $07 $09 $0B $0D $0F $11 $13 $14 $15 $16 $17 $18 $18
.db $18 $18 $18 $17 $16 $15 $14 $13 $11 $0F $0D $0B $09 $07 $05 $02
.db $00 $FE $FB $F9 $F7 $F5 $F3 $F1 $EF $ED $EC $EB $EA $E9 $E8 $E8
.db $E8 $E8 $E8 $E9 $EA $EB $EC $ED $EF $F1 $F3 $F5 $F7 $F9 $FB $FE

; Data from 52C8 to 52DF (24 bytes)
_DATA_52C8_:
.db $80 $FF $80 $80 $00 $80 $00 $FF $80 $00 $00 $80 $80 $01 $00 $80
.db $FF $00 $80 $00 $40 $80 $FF $C0

; 37th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_52E0_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	ld a, (_RAM_C31A_)
	cp $0F
	jp z, _LABEL_556A_
+:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+5), $12
	ld (ix+6), $12
	ld (ix+4), $00
	ld a, (ix+9)
	or (ix+10)
	jr nz, ++
	set 0, (ix+1)
	ld (ix+2), $81
	ld (ix+15), $A0
	ld (ix+16), $FF
+:
	call _LABEL_7D92_
	ld a, (ix+19)
	ld (ix+24), a
	ld (ix+19), $A8
	call _LABEL_7D04_
	jp nc, _LABEL_54D8_
	ld a, (ix+24)
	ld (ix+19), a
	ld a, (_RAM_C30C_)
	sub (ix+12)
	jr nc, _LABEL_5350_
	neg
	cp $20
	jr c, +++
++:
	ld hl, _DATA_8A35_
	jp _LABEL_280E_

+++:
	ld (ix+0), $27
	res 0, (ix+1)
	ret

_LABEL_5350_:
	res 0, (ix+1)
	ld (ix+0), $26
	ret

; 38th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5359_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	ld a, (_RAM_C31A_)
	cp $0F
	jp z, _LABEL_556A_
+:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+5), $12
	ld (ix+6), $12
	ld (ix+4), $00
	ld (ix+15), $60
	ld (ix+16), $00
+:
	call _LABEL_7D92_
	ld a, (ix+19)
	ld (ix+24), a
	ld (ix+19), $A8
	call _LABEL_7D04_
	jp nc, _LABEL_54D8_
	ld a, (ix+24)
	ld (ix+19), a
	ld a, $38
	add a, (ix+12)
	ld c, a
	ld a, (_RAM_C30C_)
	sub c
	jr c, _LABEL_53BF_
	cp $20
	jr c, +
	ld hl, _DATA_8A3F_
	jp _LABEL_280E_

+:
	ld (ix+0), $28
	res 0, (ix+1)
	ret

_LABEL_53BF_:
	ld (ix+0), $25
	res 0, (ix+1)
	ret

; 39th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_53C8_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	ld a, (_RAM_C31A_)
	cp $0F
	jp z, _LABEL_556A_
+:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+5), $20
	ld (ix+6), $20
	ld (ix+4), $00
	ld (ix+16), $FF
	ld (ix+15), $C0
	jr _LABEL_5436_

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_5436_
	call _LABEL_7D92_
	ld a, (ix+19)
	ld (ix+24), a
	ld (ix+19), $A8
	call _LABEL_7D04_
	jp nc, _LABEL_54D8_
	ld a, (ix+24)
	ld (ix+19), a
	ld a, (ix+4)
	or a
	jr nz, +
	ld a, (ix+5)
	cp $20
	jr nz, _LABEL_5436_
	ld a, (_RAM_C30C_)
	sub (ix+12)
	jp nc, _LABEL_5350_
	neg
	cp $20
	jp nc, _LABEL_53BF_
_LABEL_5436_:
	ld hl, _DATA_8A3A_
	jp _LABEL_280E_

+:
	ld a, (ix+5)
	cp $20
	jr nz, _LABEL_5436_
	ld a, $99
	ld (_RAM_C110_), a
	jr _LABEL_5436_

; 40th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_544A_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	ld a, (_RAM_C31A_)
	cp $0F
	jp z, _LABEL_556A_
+:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+5), $20
	ld (ix+6), $20
	ld (ix+4), $00
	ld (ix+16), $00
	ld (ix+15), $40
	jp _LABEL_54C2_

+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_54C2_
	call _LABEL_7D92_
	ld a, (ix+19)
	ld (ix+24), a
	ld (ix+19), $A8
	call _LABEL_7D04_
	jp nc, _LABEL_54D8_
	ld a, (ix+24)
	ld (ix+19), a
	ld a, (ix+4)
	or a
	jp nz, +
	ld a, (ix+5)
	cp $20
	jr nz, _LABEL_54C2_
	ld a, $99
	ld (_RAM_C110_), a
	ld a, $38
	add a, (ix+12)
	ld c, a
	ld a, (_RAM_C30C_)
	sub c
	jp c, _LABEL_53BF_
	cp $20
	jp nc, _LABEL_5350_
_LABEL_54C2_:
	ld hl, _DATA_8A44_
	jp _LABEL_280E_

+:
	ld a, (ix+5)
	cp $20
	jp nz, _LABEL_54C2_
	ld a, $99
	ld (_RAM_C110_), a
	jp _LABEL_54C2_

_LABEL_54D8_:
	ld a, (ix+0)
	ld (ix+29), a
	ld a, (ix+15)
	ld (ix+30), a
	ld a, (ix+16)
	ld (ix+31), a
	ld (ix+16), $01
	ld (ix+15), $00
	bit 7, a
	jr nz, +
	ld (ix+16), $FF
	ld (ix+15), $00
+:
	ld (ix+0), $4A
	ld (ix+23), $08
	inc (ix+22)
	ld a, $8B
	ld (_RAM_C110_), a
; 74th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_550E_:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	ld a, (_RAM_C31A_)
	cp $0F
	jp z, _LABEL_556A_
+:
	ld a, (ix+22)
	cp $08
	jr nc, _LABEL_5540_
	dec (ix+23)
	ret nz
	res 0, (ix+1)
	ld a, (ix+29)
	ld (ix+0), a
	ld a, (ix+30)
	ld (ix+15), a
	ld a, (ix+31)
	ld (ix+16), a
	ret

_LABEL_5540_:
	ld a, $95
	ld (_RAM_C110_), a
	call _LABEL_5761_
	ld (ix+2), $01
	res 0, (ix+1)
	ld (ix+0), $43
	ret

_LABEL_5555_:
	call _LABEL_5761_
	ld a, $95
	ld (_RAM_C110_), a
	ld (ix+2), $00
	res 0, (ix+1)
	ld (ix+0), $43
	ret

_LABEL_556A_:
	ld (ix+16), $00
	ld (ix+15), $00
	ret

; 42nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5573_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+5), $40
	ld (ix+6), $40
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_55E6_
	set 0, (ix+1)
	set 1, (ix+1)
	jp _LABEL_55E6_

+:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jr nc, _LABEL_559E_
	jr +

_LABEL_559E_:
	call _LABEL_5761_
	ld a, $8B
	ld (_RAM_C110_), a
	ld (ix+0), $2B
	res 0, (ix+1)
	ret

+:
	ld a, (ix+4)
	or a
	jr nz, _LABEL_55E6_
	ld a, (ix+5)
	cp $40
	jr nz, _LABEL_55E6_
	ld iy, _RAM_C500_
	ld de, $0020
	ld b, $05
-:
	ld a, (iy+0)
	or a
	jr nz, +
	ld a, $98
	ld (_RAM_C110_), a
	ld (iy+0), $29
	ld a, (ix+12)
	ld (iy+12), a
	ld a, (ix+14)
	ld (iy+14), a
	jr _LABEL_55E6_

+:
	add iy, de
	djnz -
_LABEL_55E6_:
	ld hl, _DATA_84ED_
	jp _LABEL_280E_

; 41st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_55EC_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+20), $12
	call _LABEL_4DA6_
	ld (ix+15), l
	ld (ix+16), h
	ld (ix+17), e
	ld (ix+18), d
	set 1, (ix+1)
	ld (ix+7), <_DATA_851D_
	ld (ix+8), >_DATA_851D_
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	jp _LABEL_7D92_

; 67th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5622_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+4), $00
	ld (ix+5), $10
	ld (ix+6), $10
	ld (ix+16), $00
	ld (ix+15), $00
	ld (ix+18), $00
	ld (ix+17), $00
+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	ld a, (ix+4)
	cp $03
	jr nz, +
	ld a, (ix+5)
	cp $01
	jr z, ++
+:
	ld hl, _DATA_8175_
	jp _LABEL_280E_

++:
	xor a
	ld (_RAM_C07F_), a
	ld a, (ix+2)
	or a
	jp z, _LABEL_278A_
	res 0, (ix+1)
	ld (ix+0), $44
	ret

; 43rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_567D_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+4), $00
	ld (ix+5), $10
	ld (ix+6), $10
	ld (ix+16), $00
	ld (ix+15), $00
	ld (ix+18), $00
	ld (ix+17), $00
+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	ld a, (ix+4)
	cp $01
	jr nz, +
	ld a, (ix+5)
	cp $01
	jp z, _LABEL_278A_
+:
	ld hl, _DATA_8170_
	jp _LABEL_280E_

; 47th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_56C5_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+7), <_DATA_854C_
	ld (ix+8), >_DATA_854C_
	ld a, (ix+9)
	or (ix+10)
	ret nz
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+23), $10
+:
	ld a, (ix+9)
	or (ix+10)
	ret nz
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	dec (ix+23)
	ret nz
	ld a, $01
	ld (ix+23), a
	ld de, $1108
	call _LABEL_7C44_
	rlca
	ret nc
	ld (ix+0), $37
	ld (ix+18), $FE
	ld (ix+17), $80
	ld (ix+7), <_DATA_855A_
	ld (ix+8), >_DATA_855A_
	ret

; 55th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_571C_:
	ld a, (ix+9)
	or (ix+10)
	ret nz
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld h, (ix+18)
	ld l, (ix+17)
	ld de, $0008
	add hl, de
	ld (ix+18), h
	ld (ix+17), l
	ld a, h
	cp $FF
	ret z
	ld de, $1108
	call _LABEL_7C44_
	rlca
	ret nc
	ld (ix+18), $00
	ld (ix+17), $00
	ld (ix+0), $2F
	ld (ix+7), <_DATA_854C_
	ld (ix+8), >_DATA_854C_
	ld (ix+23), $10
	ret

_LABEL_5761_:
	ld a, (ix+0)
	ld c, a
	ld b, $00
	ld hl, _DATA_576F_ - 1
	add hl, bc
	ld l, (hl)
	jp _LABEL_3ED_

; Data from 576F to 57C6 (88 bytes)
_DATA_576F_:
.dsb 28, $00
.db $12 $12 $12 $03 $00 $00 $06 $06 $09 $09 $09 $09 $00 $03 $00 $00
.db $00 $03 $00 $00 $03 $03 $00 $00 $03
.dsb 16, $00
.db $06 $06 $06 $06 $09 $00 $00 $00 $09 $00 $00 $00 $00 $00 $00 $03
.db $00 $00 $00

; 49th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_57C7_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+5), $10
	ld (ix+6), $10
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_583E_
	set 0, (ix+1)
	set 1, (ix+1)
+:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld a, (ix+24)
	or a
	jr nz, +
	ld (ix+18), $00
	ld (ix+17), $80
	inc (ix+23)
	ld a, (ix+23)
	cp $30
	jr c, _LABEL_583E_
	inc (ix+22)
	ld a, (ix+22)
	cp $02
	jr z, _LABEL_585E_
	ld a, (ix+14)
	ld (ix+3), a
	ld (ix+18), $00
	ld (ix+17), $00
	ld (ix+16), $FF
	ld (ix+15), $80
+:
	inc (ix+24)
	ld a, (ix+24)
	cp $40
	jr z, +
	ld c, a
	ld b, $00
	ld hl, _DATA_5248_
	add hl, bc
	ld a, (hl)
	add a, (ix+3)
	ld (ix+14), a
_LABEL_583E_:
	ld hl, _DATA_8BF3_
	jp _LABEL_280E_

+:
	ld (ix+16), $00
	ld (ix+15), $00
	ld (ix+18), $00
	ld (ix+17), $80
	ld (ix+23), $00
	ld (ix+24), $00
	jr _LABEL_583E_

_LABEL_585E_:
	ld (ix+0), $32
	ld (ix+18), $FF
	ld (ix+17), $80
	ld (ix+22), $00
	ld (ix+23), $00
	ld (ix+24), $FF
	ld hl, _DATA_8BF3_
	jp _LABEL_280E_

; 50th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_587C_:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld a, (ix+24)
	cp $FF
	jr nz, +
	inc (ix+23)
	ld a, (ix+23)
	cp $30
	jr c, _LABEL_58CB_
	inc (ix+22)
	ld a, (ix+22)
	cp $02
	jr z, _LABEL_58EB_
	ld (ix+24), $40
	ld (ix+18), $00
	ld (ix+17), $00
	ld (ix+16), $00
	ld (ix+15), $80
+:
	dec (ix+24)
	ld a, (ix+24)
	or a
	jr z, +
	ld c, a
	ld b, $00
	ld hl, _DATA_5248_
	add hl, bc
	ld a, (hl)
	add a, (ix+3)
	ld (ix+14), a
_LABEL_58CB_:
	ld hl, _DATA_8BF3_
	jp _LABEL_280E_

+:
	ld (ix+16), $00
	ld (ix+15), $00
	ld (ix+18), $FF
	ld (ix+17), $80
	ld (ix+23), $00
	ld (ix+24), $FF
	jr _LABEL_58CB_

_LABEL_58EB_:
	ld (ix+0), $31
	ld (ix+22), $00
	ld (ix+23), $00
	ld (ix+24), $00
	ld hl, _DATA_8BF3_
	jp _LABEL_280E_

; 56th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5901_:
	bit 0, (ix+1)
	jr nz, _LABEL_5964_
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+16), $FF
	ld (ix+15), $80
	ld (ix+18), $FF
	ld (ix+17), $80
	ld (ix+5), $08
	ld (ix+6), $08
	ld a, (ix+24)
	ld de, $0020
	ld iy, _RAM_C5E0_
	ld (iy+0), $39
	ld (iy+24), a
	res 0, (iy+1)
	set 1, (iy+1)
	add iy, de
	ld (iy+0), $3A
	ld (iy+24), a
	res 0, (iy+1)
	set 1, (iy+1)
	add iy, de
	ld (iy+0), $3B
	ld (iy+24), a
	res 0, (iy+1)
	set 1, (iy+1)
	jr +

_LABEL_5964_:
	ld a, (ix+12)
	cp $F8
	jp nc, _LABEL_278A_
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	ld h, (ix+18)
	ld l, (ix+17)
	ld de, $0030
	add hl, de
	ld (ix+18), h
	ld (ix+17), l
+:
	ld a, (ix+24)
	ld hl, _DATA_5D85_
	rst $10	; _LABEL_10_
	jp _LABEL_280E_

; 57th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_598F_:
	bit 0, (ix+1)
	jr nz, _LABEL_5964_
	set 0, (ix+1)
	ld a, (_RAM_C5CC_)
	ld (ix+12), a
	ld a, (_RAM_C5CE_)
	add a, $08
	ld (ix+14), a
	ld (ix+16), $FF
	ld (ix+15), $80
	ld (ix+18), $FF
	ld (ix+17), $80
	ld (ix+5), $08
	ld (ix+6), $08
	jr _LABEL_5964_

; 58th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_59C1_:
	bit 0, (ix+1)
	jr nz, _LABEL_5964_
	set 0, (ix+1)
	ld a, (_RAM_C5CC_)
	add a, $08
	ld (ix+12), a
	ld a, (_RAM_C5CE_)
	ld (ix+14), a
	ld (ix+16), $00
	ld (ix+15), $80
	ld (ix+18), $FF
	ld (ix+17), $80
	ld (ix+5), $08
	ld (ix+6), $08
	jp _LABEL_5964_

; 59th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_59F4_:
	bit 0, (ix+1)
	jp nz, _LABEL_5964_
	set 0, (ix+1)
	ld a, (_RAM_C5CC_)
	add a, $08
	ld (ix+12), a
	ld a, (_RAM_C5CE_)
	add a, $08
	ld (ix+14), a
	ld (ix+16), $00
	ld (ix+15), $80
	ld (ix+18), $FF
	ld (ix+17), $80
	ld (ix+5), $08
	ld (ix+6), $08
	jp _LABEL_5964_

; 60th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5A2A_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+15), $00
	ld (ix+16), $00
	ld (ix+17), $00
	ld (ix+18), $00
	ld (ix+23), $F0
	ld (ix+7), <_DATA_8359_
	ld (ix+8), >_DATA_8359_
	ld (ix+22), $03
	ld a, (ix+24)
	cp $04
	ret c
	ld (ix+7), <_DATA_8367_
	ld (ix+8), >_DATA_8367_
	ld (ix+22), $00
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	jp c, +
	ld l, (ix+22)
	call _LABEL_3CF_
	ld a, $8E
	ld (_RAM_C110_), a
	jp _LABEL_278A_

+:
	dec (ix+23)
	jp z, _LABEL_278A_
	ret

; 77th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5A8F_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+23), $F0
	ld (ix+7), <_DATA_8C0E_
	ld (ix+8), >_DATA_8C0E_
	ld (ix+15), $00
	ld (ix+16), $00
	ld (ix+17), $00
	ld (ix+18), $00
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	jr c, +
	ld a, $8F
	ld (_RAM_C110_), a
	ld hl, _RAM_C025_
	ld a, (hl)
	add a, $01
	daa
	ld (hl), a
	jp _LABEL_278A_

+:
	dec (ix+23)
	jp z, _LABEL_278A_
	ret

; 78th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5ADF_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+23), $F0
	ld (ix+7), <_DATA_8C1C_
	ld (ix+8), >_DATA_8C1C_
	ld (ix+15), $00
	ld (ix+16), $00
	ld (ix+17), $00
	ld (ix+18), $00
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	jr c, +
	ld a, $8F
	ld (_RAM_C110_), a
	ld a, $01
	ld (_RAM_C04D_), a
	ld hl, _RAM_C08F_
	inc (hl)
	jp _LABEL_278A_

+:
	dec (ix+23)
	jp z, _LABEL_278A_
	ret

; 79th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5B30_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+24), $80
	ld (ix+5), $18
	ld (ix+6), $18
+:
	ld a, (ix+9)
	or (ix+10)
	jp nz, _LABEL_278A_
	bit 1, (ix+1)
	jp nz, +
	dec (ix+24)
	jr nz, ++
	set 1, (ix+1)
+:
	ld a, (_RAM_C31A_)
	cp $0F
	ret z
	call _LABEL_7D92_
	call _LABEL_4DA6_
	ld (ix+16), h
	ld (ix+15), l
	ld (ix+18), d
	ld (ix+17), e
	ld hl, _DATA_8C6C_
	ld a, (_RAM_C30C_)
	cp (ix+12)
	jp nc, _LABEL_280E_
++:
	ld hl, _DATA_8C2A_
	jp _LABEL_280E_

_LABEL_5B89_:
	ld iy, _RAM_C640_
	ld a, (iy+0)
	or a
	jr z, +
	ld iy, _RAM_C660_
	ld a, (iy+0)
	or a
	jr z, +
	ld a, (_RAM_C657_)
	cp (iy+23)
	jr nc, +
	ld iy, _RAM_C640_
+:
	ld a, r
	and $07
	ld (iy+24), a
	ld (iy+14), d
	ld (iy+12), e
	ld (iy+0), c
	res 0, (iy+1)
	ld a, (_RAM_C0AF_)
	ld (iy+11), a
	ld a, (_RAM_C0BD_)
	ld (iy+13), a
	ret

; 68th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5BCA_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+7), <_DATA_8CC7_
	ld (ix+8), >_DATA_8CC7_
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	ret nz
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	ret c
	ld l, $0C
	call _LABEL_3ED_
	call _LABEL_278A_
	ld a, $04
	ld (_RAM_C01F_), a
	ret

_LABEL_5BFA_:
	ex af, af'
	ld a, $8C
	ld (_RAM_C110_), a
	ex af, af'
	ld iy, _RAM_C5C0_
	ld (iy+0), $38
	ld (iy+24), a
	cp $01
	jr nz, +
	ld a, $A3
	ld (_RAM_C110_), a
+:
	ld (iy+14), d
	ld (iy+12), e
	res 0, (iy+1)
	ret

; Data from 5C20 to 5C2E (15 bytes)
.db $FD $21 $40 $C6 $FD $36 $00 $44 $FD $72 $0E $FD $73 $0C $C9

; 70th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5C2F_:
	bit 0, (ix+1)
	jr nz, +
	ld a, $01
	ld (_RAM_C07F_), a
	ld (ix+5), $01
	ld (ix+6), $10
	ld (ix+23), $00
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_5C8F_
	set 0, (ix+1)
	ld (ix+2), $82
	ld (ix+16), $FF
	ld (ix+15), $80
+:
	ld a, (ix+12)
	cp $18
	jr c, +
	call _LABEL_7D92_
	call _LABEL_7D04_
	jr c, _LABEL_5C8F_
	inc (ix+23)
	ld a, (ix+23)
	cp $08
	jp nc, _LABEL_5D74_
	ld a, $8B
	ld (_RAM_C110_), a
	ld (ix+0), $47
	res 0, (ix+1)
	ld (ix+7), <_DATA_8458_
	ld (ix+8), >_DATA_8458_
	jr _LABEL_5C99_

_LABEL_5C8F_:
	ld hl, _DATA_8453_
	jp _LABEL_280E_

+:
	ld (ix+0), $48
_LABEL_5C99_:
	ld a, (ix+16)
	cpl
	ld (ix+16), a
	ld a, (ix+15)
	cpl
	inc a
	ld (ix+15), a
	ret

; 71st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5CA9_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld a, (ix+23)
	add a, a
	ld c, a
	ld b, $00
	ld hl, _DATA_5D77_ - 2
	add hl, bc
	ld a, (hl)
	ld (ix+24), a
	inc hl
	ld a, (hl)
	ld (ix+22), a
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	dec (ix+24)
	ret nz
+:
	ld (ix+0), $46
	call _LABEL_5C99_
	ld h, (ix+16)
	ld l, (ix+15)
	ld c, (ix+22)
	ld b, $00
	or a
	sbc hl, bc
	ld (ix+16), h
	ld (ix+15), l
	ret

; 72nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5CF0_:
	ld a, (ix+12)
	cp $D8
	jr nc, ++
	call _LABEL_7D92_
	call _LABEL_7D04_
	jr c, +
	inc (ix+23)
	ld a, (ix+23)
	cp $08
	jp nc, _LABEL_5D74_
	ld a, $8B
	ld (_RAM_C110_), a
	ld (ix+0), $49
	res 0, (ix+1)
	ld (ix+7), <_DATA_840A_
	ld (ix+8), >_DATA_840A_
	jp _LABEL_5C99_

+:
	ld hl, _DATA_8405_
	jp _LABEL_280E_

++:
	ld (ix+0), $46
	jp _LABEL_5C99_

; 73rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5D2F_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld a, (ix+23)
	add a, a
	ld c, a
	ld b, $00
	ld hl, _DATA_5D77_ - 2
	add hl, bc
	ld a, (hl)
	ld (ix+24), a
	inc hl
	ld a, (hl)
	ld (ix+22), a
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	dec (ix+24)
	ret nz
+:
	ld (ix+0), $48
	call _LABEL_5C99_
	ld h, (ix+16)
	ld l, (ix+15)
	ld c, (ix+22)
	ld b, $00
	add hl, bc
	ld (ix+16), h
	ld (ix+15), l
	ret

_LABEL_5D74_:
	jp _LABEL_5555_

; Data from 5D77 to 5D84 (14 bytes)
_DATA_5D77_:
.db $40 $10 $38 $20 $33 $30 $2E $40 $2A $50 $27 $60 $24 $70

; Pointer Table from 5D85 to 5D8C (4 entries, indexed by _RAM_CF98_)
_DATA_5D85_:
.dw _DATA_8022_ _DATA_8111_ _DATA_8120_ _DATA_8102_

; 61st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5D8D_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+5), $10
	ld (ix+6), $10
	ld a, (ix+12)
	ld (ix+31), a
	ld a, (ix+14)
	ld (ix+30), a
	ld (ix+29), $20
	ld (ix+27), $00
	ld (ix+28), $00
	ld a, (ix+9)
	ld (ix+26), a
	ld a, (ix+10)
	ld (ix+25), a
	jr _LABEL_5E07_

+:
	ld a, (ix+9)
	or (ix+10)
	jr nz, +
	call _LABEL_7D92_
+:
	ld hl, (_RAM_C0AB_)
	ld a, h
	or l
	jr z, +
	ld d, (ix+31)
	ld e, (ix+3)
	add hl, de
	ld (ix+31), h
	ld (ix+3), l
	jr c, +
	inc (ix+26)
+:
	ld bc, $0002
	ld l, (ix+27)
	ld h, (ix+28)
	add hl, bc
	ld (ix+27), l
	ld (ix+28), h
	call _LABEL_4CE_
	ld a, (ix+9)
	cp $01
	jr nz, _LABEL_5E07_
	set 1, (ix+1)
_LABEL_5E07_:
	ld hl, _DATA_85A6_
	jp _LABEL_280E_

; 62nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5E0D_:
	bit 0, (ix+1)
	jr nz, +
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_5E59_
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+5), $10
	ld (ix+6), $10
	ld (ix+15), $80
	ld (ix+16), $FF
	jr _LABEL_5E59_

+:
	call _LABEL_7D92_
	ld a, (ix+3)
	or a
	jr nz, +
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
+:
	ld de, $0900
	call _LABEL_7C44_
	rlca
	jr nc, +
-:
	ld (ix+0), $3F
	ld (ix+15), $80
	ld (ix+16), $00
_LABEL_5E59_:
	ld hl, _DATA_85A6_
	ld a, (ix+3)
	or a
	jp nz, _LABEL_280E_
	ld hl, _DATA_826B_
	jp _LABEL_280E_

+:
	ld d, $08
	call _LABEL_7C9C_
	ld a, (hl)
	rlca
	jr c, _LABEL_5E59_
	jr -

; 63rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5E74_:
	call _LABEL_7D92_
	ld a, (ix+3)
	or a
	jr nz, +
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
+:
	ld de, $0910
	call _LABEL_7C44_
	rlca
	jr nc, +
--:
	ld (ix+0), $3E
	ld (ix+15), $80
	ld (ix+16), $FF
-:
	ld hl, _DATA_85A6_
	ld a, (ix+3)
	or a
	jp nz, _LABEL_280E_
	ld hl, _DATA_8286_
	jp _LABEL_280E_

+:
	ld d, $08
	call _LABEL_7C9C_
	ld a, (hl)
	rlca
	jr c, -
	jr --

; 64th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5EB3_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+7), <_DATA_85D5_
	ld (ix+8), >_DATA_85D5_
	ld a, (ix+9)
	or (ix+10)
	ret nz
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+24), $00
	ld (ix+16), $FF
	ld (ix+15), $00
	ld (ix+5), $01
	ld (ix+6), $01
	ld (ix+4), $00
	ret

+:
	call _LABEL_7D92_
	inc (ix+24)
	ld a, (ix+24)
	cp $10
	ret c
	ld (ix+0), $41
	ld (ix+24), $00
	ret

; 65th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5EFE_:
	call _LABEL_7D92_
	ld h, (ix+16)
	ld l, (ix+15)
	ld de, $0008
	add hl, de
	ld (ix+16), h
	ld (ix+15), l
	ld a, h
	cp $FF
	ret z
	ld a, (ix+24)
	or a
	jr nz, +
	ld (ix+24), $01
	ld a, $9E
	ld (_RAM_C110_), a
+:
	ld a, (ix+4)
	cp $13
	jr nz, +
	ld a, (ix+5)
	cp $01
	jr nz, +
	ld (ix+0), $40
	res 0, (ix+1)
	ld (ix+24), $00
	ret

+:
	ld hl, _DATA_85E9_
	jp _LABEL_280E_

; 66th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5F45_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+7), <_DATA_82BD_
	ld (ix+8), >_DATA_82BD_
	ld a, (ix+9)
	or (ix+10)
	ret nz
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+16), $FF
	ld (ix+15), $80
	ld (ix+18), $FF
	ld (ix+17), $00
	ld (ix+24), $02
	ld a, r
	and $07
	cp $04
	ret c
	ld (ix+24), $04
	ret

+:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld h, (ix+18)
	ld l, (ix+17)
	ld d, $00
	ld e, (ix+24)
	add hl, de
	ld (ix+18), h
	ld (ix+17), l
	ld a, h
	bit 7, a
	ret nz
	ld (ix+7), <_DATA_82CB_
	ld (ix+8), >_DATA_82CB_
	ret

; 81st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_5FAA_:
	bit 0, (ix+1)
	jp nz, _LABEL_6037_
	ld a, (_RAM_D800_)
	or a
	jp nz, _LABEL_278A_
	bit 1, (ix+1)
	jr nz, ++
	ld (ix+7), <_DATA_830B_
	ld (ix+8), >_DATA_830B_
	ld a, (ix+3)
	or a
	jr nz, +
	ld (ix+7), <_DATA_815C_
	ld (ix+8), >_DATA_815C_
+:
	ld a, (ix+9)
	or (ix+10)
	ret nz
	set 1, (ix+1)
	ld (ix+24), $40
++:
	ld a, (ix+3)
	or a
	jr z, _LABEL_604D_
	ld a, (_RAM_C07F_)
	cp $02
	ret nz
	bit 0, (ix+1)
	jr nz, _LABEL_6037_
	dec (ix+24)
	jr nz, _LABEL_6037_
_LABEL_5FFA_:
	set 0, (ix+1)
	ld l, $0C
	call _LABEL_3ED_
	xor a
	ld (_RAM_C07F_), a
	ld hl, _RAM_D800_
	set 0, (hl)
	ld a, (ix+3)
	or a
	jr nz, +
	ld a, $14
	ld hl, _DATA_812F_
	ld iy, _RAM_C5C0_
	ld (iy+0), $44
	ld (iy+12), $80
	ld (iy+14), $80
	jp _LABEL_60CD_

+:
	ld hl, _RAM_D802_
	res 0, (hl)
	ld a, $0F
	ld hl, _DATA_8306_
	jp _LABEL_60CD_

_LABEL_6037_:
	ld (ix+7), <_DATA_8331_
	ld (ix+8), >_DATA_8331_
	ld a, (ix+3)
	or a
	ret nz
	ld (ix+7), <_DATA_8134_
	ld (ix+8), >_DATA_8134_
	ret

_LABEL_604D_:
	ld a, (_RAM_C0C9_)
	and $7F
	or a
	ret nz
	ld a, (_RAM_C31A_)
	cp $02
	ret nz
	ld a, $80
	ld (_RAM_C202_), a
	ld hl, _RAM_CE84_
	ld (_RAM_C204_), hl
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, _DATA_14B5D_
	ld (_RAM_C206_), hl
	ld a, $82
	ld (_RAM_FFFF_), a
	jr _LABEL_5FFA_

; 80th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_6077_:
	ld (ix+7), <_DATA_802F_
	ld (ix+8), >_DATA_802F_
	ld a, (_RAM_C07F_)
	or a
	ret nz
	bit 0, (ix+1)
	jr nz, +
	ld (ix+14), $88
	ld iy, _RAM_C3A0_
	ld (iy+0), $44
	ld (iy+12), $98
	ld (iy+14), $60
	ld a, $0E
	ld hl, _DATA_802A_
	jp _LABEL_60CD_

+:
	bit 1, (ix+1)
	ret nz
	set 1, (ix+1)
	ld a, $A3
	ld (_RAM_C110_), a
	ret

; 69th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_60B5_:
	ld (ix+7), <_DATA_82DE_
	ld (ix+8), >_DATA_82DE_
	bit 0, (ix+1)
	jr nz, +
	ld a, (_RAM_C0C9_)
	or a
	ret nz
	ld a, $0D
	ld hl, _DATA_82D9_
_LABEL_60CD_:
	set 0, (ix+1)
	ld (_RAM_C011_), a
	ld a, $01
	ld (_RAM_C076_), a
	ld a, $07
	ld (_RAM_C01F_), a
	ld (_RAM_C072_), hl
	push ix
	pop hl
	ld (_RAM_C070_), hl
	ret

+:
	bit 1, (ix+1)
	ret nz
	set 1, (ix+1)
	ld iy, _RAM_C640_
	ld (iy+0), $52
	ld (iy+12), $72
	ld (iy+14), $70
	ld (iy+3), $08
	ret

; 82nd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_6106_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld a, (ix+3)
	ld hl, _DATA_6443_
	rst $10	; _LABEL_10_
	ld a, (hl)
	or a
	jp nz, _LABEL_278A_
	ld a, (ix+3)
	ld hl, _DATA_641B_
	rst $10	; _LABEL_10_
	ld (ix+7), l
	ld (ix+8), h
	ret

+:
	ld a, (ix+9)
	or (ix+10)
	ret nz
	set 1, (ix+1)
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	ret c
	ld a, $8F
	ld (_RAM_C110_), a
	ld a, (ix+3)
	ld hl, _DATA_6443_
	rst $10	; _LABEL_10_
	set 0, (hl)
	ld a, (ix+3)
	or a
	jr z, ++
	cp $05
	jr z, +
	ld hl, _DATA_642F_
	rst $10	; _LABEL_10_
	set 0, (hl)
	jp _LABEL_278A_

+:
	ld hl, _RAM_C025_
	ld a, (hl)
	add a, $01
	daa
	ld (hl), a
	jp _LABEL_278A_

++:
	ld a, $08
	ld (_RAM_C01F_), a
	ret

; 83rd entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_616F_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (_RAM_C0C9_)
	or a
	ret nz
	set 0, (ix+1)
	ld a, $07
	ld (_RAM_C01F_), a
	ld a, $11
	ld (_RAM_C011_), a
	ld a, (_RAM_C04C_)
	or a
	ret z
	ld a, $10
	ld (_RAM_C011_), a
	ret

+:
	bit 1, (ix+1)
	ret nz
	set 1, (ix+1)
	ld iy, _RAM_C640_
	ld b, $4F
	ld de, $30D8
	ld a, (_RAM_C04C_)
	or a
	jr z, +
	ld b, $52
	ld de, $8858
	ld (iy+3), $03
+:
	ld (iy+0), b
	ld (iy+12), e
	ld (iy+14), d
	ret

; 75th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_61C6_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (ix+9)
	or (ix+10)
	ret nz
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+24), $00
	ld (ix+22), $00
	xor a
	ld (_RAM_C07F_), a
	ld hl, $D8A0
	inc hl
	ld (_RAM_C06A_), hl
+:
	ld a, (ix+3)
	cp $01
	jr z, _LABEL_626E_
	ld a, (ix+24)
	or a
	jr nz, ++++
	ld a, (ix+3)
	cp $02
	jr z, +
	call _LABEL_7D04_
	jr ++

+:
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	ret c
	jr +++

++:
	ret c
	ld a, (_RAM_C31C_)
	bit 3, a
	ret z
+++:
	ld (ix+24), $01
++++:
	ld a, (_RAM_C202_)
	or a
	ret nz
	ld a, (_RAM_C31C_)
	res 3, a
	ld (_RAM_C31C_), a
	ld (ix+24), $00
	inc (ix+22)
	ld a, (_RAM_D8A0_)
	cp (ix+22)
	jp c, _LABEL_278A_
	ld a, $80
	ld (_RAM_C202_), a
	ld hl, (_RAM_C06A_)
	ld de, _RAM_C204_
	ldi
	ldi
	ld c, (hl)
	ld b, $00
	inc hl
	ld (_RAM_C06A_), hl
	ld a, $85
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C087_)
	add hl, bc
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld (_RAM_C206_), hl
	ld a, $82
	ld (_RAM_FFFF_), a
	ret

_LABEL_626E_:
	call _LABEL_7D04_
	ret c
	ld hl, _RAM_C07F_
	inc (hl)
	jp _LABEL_278A_

; 76th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_6279_:
	bit 0, (ix+1)
	jr nz, +
	set 0, (ix+1)
	ld (ix+7), <_DATA_80E1_
	ld (ix+8), >_DATA_80E1_
	ld a, (ix+3)
	ld (_RAM_C07F_), a
+:
	ld a, (ix+9)
	or (ix+10)
	ret nz
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	ret c
	ld a, $08
	ld (_RAM_C01F_), a
	jp _LABEL_278A_

; 84th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_62A8_:
	bit 0, (ix+1)
	jr nz, _LABEL_62EE_
	ld (ix+5), $08
	ld (ix+6), $08
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_633A_
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+23), $00
	ld (ix+22), $30
	ld (ix+24), $0E
	ld (ix+15), $60
	ld (ix+16), $00
	ld a, (_RAM_C30C_)
	cp (ix+12)
	jr nc, _LABEL_62EE_
	ld (ix+24), $02
	ld (ix+15), $A0
	ld (ix+16), $FF
_LABEL_62EE_:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld d, $01
	ld e, (ix+24)
	ld a, $08
	call _LABEL_3A03_
	jr nc, +
	ld a, (ix+16)
	cpl
	ld (ix+16), a
	ld a, (ix+15)
	cpl
	inc a
	ld (ix+15), a
	jr ++

+:
	ld a, (ix+24)
	xor $0C
	ld e, a
	ld d, $11
	call _LABEL_7C44_
	rlca
	jr c, _LABEL_633A_
	ld h, (ix+23)
	ld l, (ix+22)
	ld de, $0010
	add hl, de
	ld (ix+23), h
	ld (ix+22), l
	ld (ix+18), h
	ld (ix+17), l
	jr _LABEL_634A_

_LABEL_633A_:
	ld (ix+23), $00
	ld (ix+22), $30
	ld (ix+17), $00
	ld (ix+18), $00
_LABEL_634A_:
	ld hl, _DATA_8585_
	jp _LABEL_280E_

++:
	ld (ix+24), $02
	ld a, (ix+16)
	cp $FF
	jr z, _LABEL_634A_
	ld (ix+24), $0E
	jr _LABEL_634A_

; 85th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_6361_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+5), $08
	ld (ix+6), $08
	ld a, (ix+9)
	or (ix+10)
	jr nz, _LABEL_63E3_
	ld (ix+15), $80
	ld (ix+16), $FF
	ld (ix+17), $00
	ld (ix+18), $FF
	set 0, (ix+1)
	set 1, (ix+1)
	ld (ix+24), $0E
+:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_559E_
	ld a, (ix+24)
	xor $0C
	ld e, a
	ld d, $01
	ld a, $08
	call _LABEL_3A03_
	jr nc, +
	ld a, (ix+16)
	cpl
	ld (ix+16), a
	ld a, (ix+15)
	cpl
	inc a
	ld (ix+15), a
	ld a, (ix+24)
	xor $0C
	ld (ix+24), a
+:
	ld de, $1108
	call _LABEL_7C44_
	rlca
	jr nc, +
	ld (ix+17), $00
	ld (ix+18), $FF
+:
	ld h, (ix+18)
	ld l, (ix+17)
	ld de, $0010
	add hl, de
	ld (ix+17), l
	ld (ix+18), h
_LABEL_63E3_:
	ld hl, _DATA_84C2_
	ld a, (ix+16)
	cp $FF
	jp nz, _LABEL_280E_
	ld hl, _DATA_84A1_
	jp _LABEL_280E_

; 87th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_63F4_:
	bit 0, (ix+1)
	jr nz, +
	ld (ix+5), $10
	ld (ix+6), $10
	ld a, (ix+10)
	or (ix+9)
	jr nz, ++
	set 0, (ix+1)
	set 1, (ix+1)
+:
	call _LABEL_7D92_
++:
	ld hl, _DATA_85A6_
	jp _LABEL_280E_

; Pointer Table from 641B to 642E (10 entries, indexed by _RAM_CF83_)
_DATA_641B_:
.dw _DATA_80D3_ _DATA_80C5_ _DATA_8057_ _DATA_8065_ _DATA_8A27_ _DATA_8C0E_ _DATA_8C1C_ _DATA_801C_
.dw _DATA_800E_ _DATA_8000_

; Pointer Table from 642F to 6442 (10 entries, indexed by _RAM_CF83_)
_DATA_642F_:
.dw _RAM_C048_ _RAM_C048_ _RAM_C04C_ _RAM_C04E_ _RAM_C04B_ _RAM_C04B_ _RAM_C04D_ _RAM_C04A_
.dw _RAM_C04F_ _RAM_C04F_

; Pointer Table from 6443 to 6456 (10 entries, indexed by _RAM_CF83_)
_DATA_6443_:
.dw _RAM_D800_ _RAM_D801_ _RAM_D802_ _RAM_D803_ _RAM_D804_ _RAM_D805_ _RAM_D806_ _RAM_D807_
.dw _RAM_D800_ _RAM_D807_

_LABEL_6457_:
	ld hl, (_RAM_C085_)
	jp (hl)

; 1st entry of Jump Table from D0A (indexed by _RAM_C023_)
_LABEL_645B_:
	ld a, (_RAM_C0C9_)
	or a
	ret z
	bit 7, a
	ret z
	and $03
	ret nz
	di
	ld de, $8026
	ld a, e
	ld (_RAM_C05F_), a
	rst $08	; _LABEL_8_
	ei
	ld a, $08
	ld (_RAM_C0C9_), a
	ret

; 11th entry of Jump Table from D0A (indexed by _RAM_C023_)
_LABEL_6476_:
	ld a, (_RAM_C0C9_)
	and $7F
	ret z
	ld b, a
	and $03
	ld hl, (_RAM_C0C2_)
	ld de, (_RAM_C0BB_)
	jr nz, ++
	ld a, (_RAM_C05C_)
	or a
	jr nz, +
	ld a, $01
	ld (_RAM_C05C_), a
	di
	ld de, $8026
	ld a, e
	ld (_RAM_C05F_), a
	rst $08	; _LABEL_8_
	ei
+:
	ld hl, (_RAM_C0AF_)
	ld de, (_RAM_C0AD_)
++:
	ld a, (_RAM_C077_)
	or a
	jp nz, _LABEL_64FB_
	ld a, (_RAM_C08D_)
	bit 7, a
	jr z, _LABEL_64FB_
	ld a, $01
	ld (_RAM_C077_), a
	ld a, b
	bit 0, a
	ld a, (_RAM_C0C4_)
	jr z, +
	inc a
+:
	push af
	exx
	ld b, a
	ld c, $00
	ld hl, _RAM_D900_
	add hl, bc
	pop af
	ld b, a
	ld a, (_RAM_C08D_)
	and $7F
	sub b
	rlca
	rlca
	rlca
	rlca
	rlca
	ld b, $00
	ld c, a
	add hl, bc
	ld (_RAM_C078_), hl
	ld a, (hl)
	or a
	jr z, ++
	ld b, a
	inc hl
-:
	ld a, (hl)
	or a
	jr z, +
	inc hl
	push hl
	ld a, (hl)
	ld e, a
	ld d, $00
	ld hl, $D700
	add hl, de
	ld a, $00
	ld (hl), a
	pop hl
	dec hl
+:
	inc hl
	inc hl
	djnz -
++:
	exx
_LABEL_64FB_:
	ld a, h
	or l
	ret nz
	ex de, hl
	ld a, h
	or l
	ret nz
	ld a, (_RAM_C0C9_)
	bit 0, a
	jr z, +
	ld hl, _RAM_C08D_
	dec (hl)
	res 7, (hl)
+:
	and $80
	ld (_RAM_C0C9_), a
	xor a
	ld (_RAM_C05C_), a
	ld (_RAM_C06F_), a
	ld (_RAM_C077_), a
	ld hl, $0000
	ld (_RAM_C0AB_), hl
	ld (_RAM_C0B9_), hl
	di
	ld de, $8006
	ld a, e
	ld (_RAM_C05F_), a
	rst $08	; _LABEL_8_
	ei
	ret

; 5th entry of Jump Table from D0A (indexed by _RAM_C023_)
_LABEL_6532_:
	ld a, (_RAM_C0C9_)
	or a
	ret z
	bit 7, a
	jr nz, +
	and $03
	ret z
	ld a, (_RAM_C0C9_)
	res 3, a
	set 7, a
	ld (_RAM_C0C9_), a
	ret

+:
	and $03
	ret nz
	ld a, $01
	ld (_RAM_C0C4_), a
	ld hl, $0000
	ld (_RAM_C0B4_), hl
	ld (_RAM_C0B3_), hl
	ld (_RAM_C0B7_), hl
	ld a, (_RAM_C0B6_)
	cp $03
	jr nc, +
	ld a, $08
	ld (_RAM_C0C9_), a
	ld a, $03
	ld (_RAM_C0A0_), a
	ret

+:
	xor a
	ld (_RAM_C0C9_), a
	ret

; 3rd entry of Jump Table from D0A (indexed by _RAM_C023_)
_LABEL_6574_:
	ld a, (_RAM_C0C9_)
	or a
	ret z
	bit 7, a
	jr nz, +
	and $03
	ret z
	ld a, (_RAM_C0C9_)
	res 3, a
	set 7, a
	ld (_RAM_C0C9_), a
	ret

+:
	and $03
	ret nz
	ld hl, $0000
	ld (_RAM_C0B4_), hl
	ld (_RAM_C0B3_), hl
	ld (_RAM_C0B7_), hl
	ld a, $01
	ld (_RAM_C0C4_), a
	ld a, $01
	ld (_RAM_C0A0_), a
	ld a, $08
	ld (_RAM_C0C9_), a
	ret

_LABEL_65AA_:
	ld a, (_RAM_C023_)
	ld hl, _DATA_66CF_ - 2
	rst $10	; _LABEL_10_
	ld a, (hl)
	ld (_RAM_FFFF_), a
	ld (_RAM_C081_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_C0A3_), de
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_C0A8_), de
	inc hl
	ld a, (hl)
	ld (_RAM_C0B6_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C0C4_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C0A0_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C0A5_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C080_), a
	inc hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_C087_), de
	ld hl, $7800
	ld (_RAM_C0B7_), hl
	ld (_RAM_C0C5_), hl
-:
	ld hl, $0100
	ld (_RAM_C0AB_), hl
	call _LABEL_67BD_
	call _LABEL_6B42_
	call _LABEL_6919_
	ld hl, (_RAM_C0AF_)
	ld a, h
	or l
	jr nz, -
	ld a, (_RAM_C0C4_)
	ld (_RAM_C08D_), a
	ld hl, $0000
	ld (_RAM_C0AB_), hl
	ld a, (_RAM_C023_)
	cp $01
	jr nz, +
-:
	xor a
	ld (_RAM_C0C4_), a
	ld a, $81
	ld (_RAM_C08D_), a
	ld a, $10
	ld (_RAM_C0A6_), a
	call _LABEL_6A6C_
	call _LABEL_6B42_
	call _LABEL_6919_
	ld de, $8006
	ld a, e
	ld (_RAM_C05F_), a
	rst $08	; _LABEL_8_
	ld a, (_RAM_C080_)
	ld (_RAM_C0C9_), a
	ret

+:
	cp $11
	jp z, -
	cp $0D
	jr z, +
	ld a, (_RAM_C080_)
	ld (_RAM_C0C9_), a
	rlca
	ret nc
	ld a, $01
	ld (_RAM_C06F_), a
	ld a, (_RAM_C0A5_)
	ld (_RAM_C065_), a
	ret

+:
	ld a, $07
	ld (_RAM_C08D_), a
	ld a, (_RAM_C080_)
	ld (_RAM_C0C9_), a
	ret

_LABEL_666A_:
	ld a, $01
	ld (_RAM_C066_), a
	ld ix, _RAM_C3A0_
	ld de, $0020
	ld b, $19
-:
	ld a, (ix+0)
	or a
	jr z, +
	ld a, (ix+9)
	or (ix+10)
	jr z, +
	call _LABEL_278A_
+:
	add ix, de
	djnz -
	ld a, (_RAM_C0C9_)
	and $E0
	ret z
	rlca
	jr c, +++
	rlca
	jr c, +
	xor a
	ld (_RAM_C0B6_), a
	ld a, $86
	ld (_RAM_C08D_), a
	jr ++

+:
	ld a, (_RAM_C0B6_)
	rrca
	rrca
	and $3F
	ld (_RAM_C0B6_), a
	add a, $90
	ld (_RAM_C08D_), a
++:
	ld a, (_RAM_C0B0_)
	ld (_RAM_C091_), a
-:
	ld a, $10
	ld (_RAM_C0A6_), a
	call _LABEL_6A6C_
	ld a, $82
	ld (_RAM_FFFF_), a
	ret

+++:
	ld hl, _RAM_C08D_
	inc (hl)
	set 7, (hl)
	jr -

; Pointer Table from 66CF to 66F0 (17 entries, indexed by _RAM_C023_)
_DATA_66CF_:
.dw _DATA_66F1_ _DATA_66FD_ _DATA_6709_ _DATA_6715_ _DATA_6721_ _DATA_672D_ _DATA_6739_ _DATA_6745_
.dw _DATA_6751_ _DATA_675D_ _DATA_6769_ _DATA_6775_ _DATA_6781_ _DATA_678D_ _DATA_6799_ _DATA_67A5_
.dw _DATA_67B1_

; 1st entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 66F1 to 66F1 (1 bytes)
_DATA_66F1_:
.db $86

; Pointer Table from 66F2 to 66F5 (2 entries, indexed by unknown)
.dw _DATA_18000_ _DATA_18004_

; Data from 66F6 to 66FA (5 bytes)
.db $01 $01 $02 $09 $81

; Pointer Table from 66FB to 66FC (1 entries, indexed by unknown)
.dw _DATA_14000_

; 2nd entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 66FD to 66FD (1 bytes)
_DATA_66FD_:
.db $86

; Pointer Table from 66FE to 6701 (2 entries, indexed by unknown)
.dw _DATA_185C0_ _DATA_185C0_

; Data from 6702 to 6706 (5 bytes)
.db $01 $00 $11 $00 $08

; Pointer Table from 6707 to 6708 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 3rd entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6709 to 6709 (1 bytes)
_DATA_6709_:
.db $86

; Pointer Table from 670A to 670D (2 entries, indexed by unknown)
.dw _DATA_1871F_ _DATA_18723_

; Data from 670E to 6712 (5 bytes)
.db $01 $00 $05 $01 $28

; Pointer Table from 6713 to 6714 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 4th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6715 to 6715 (1 bytes)
_DATA_6715_:
.db $86

; Pointer Table from 6716 to 6719 (2 entries, indexed by unknown)
.dw _DATA_18AD6_ _DATA_18AD6_

; Data from 671A to 671E (5 bytes)
.db $01 $00 $04 $00 $08

; Pointer Table from 671F to 6720 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 5th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6721 to 6721 (1 bytes)
_DATA_6721_:
.db $86

; Pointer Table from 6722 to 6725 (2 entries, indexed by unknown)
.dw _DATA_18DCE_ _DATA_18DD2_

; Data from 6726 to 672A (5 bytes)
.db $01 $00 $0F $01 $48

; Pointer Table from 672B to 672C (1 entries, indexed by unknown)
.dw _DATA_14000_

; 6th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 672D to 672D (1 bytes)
_DATA_672D_:
.db $86

; Pointer Table from 672E to 6731 (2 entries, indexed by unknown)
.dw _DATA_1904A_ _DATA_1904A_

; Data from 6732 to 6736 (5 bytes)
.db $01 $00 $08 $00 $08

; Pointer Table from 6737 to 6738 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 7th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6739 to 6739 (1 bytes)
_DATA_6739_:
.db $86

; Pointer Table from 673A to 673D (2 entries, indexed by unknown)
.dw _DATA_1937B_ _DATA_1937B_

; Data from 673E to 6742 (5 bytes)
.db $01 $00 $08 $00 $08

; Pointer Table from 6743 to 6744 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 8th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6745 to 6745 (1 bytes)
_DATA_6745_:
.db $86

; Pointer Table from 6746 to 6749 (2 entries, indexed by unknown)
.dw _DATA_197EE_ _DATA_197EE_

; Data from 674A to 674E (5 bytes)
.db $01 $00 $0B $00 $08

; Pointer Table from 674F to 6750 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 9th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6751 to 6751 (1 bytes)
_DATA_6751_:
.db $86

; Pointer Table from 6752 to 6755 (2 entries, indexed by unknown)
.dw _DATA_19D66_ _DATA_19D6A_

; Data from 6756 to 675A (5 bytes)
.db $01 $00 $0F $01 $48

; Pointer Table from 675B to 675C (1 entries, indexed by unknown)
.dw _DATA_14000_

; 10th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 675D to 675D (1 bytes)
_DATA_675D_:
.db $86

; Pointer Table from 675E to 6761 (2 entries, indexed by unknown)
.dw _DATA_1A06A_ _DATA_1A06A_

; Data from 6762 to 6766 (5 bytes)
.db $01 $00 $0E $00 $08

; Pointer Table from 6767 to 6768 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 11th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6769 to 6769 (1 bytes)
_DATA_6769_:
.db $86

; Pointer Table from 676A to 676D (2 entries, indexed by unknown)
.dw _DATA_1A2C6_ _DATA_1A2CE_

; Data from 676E to 6772 (5 bytes)
.db $01 $02 $05 $0A $80

; Pointer Table from 6773 to 6774 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 12th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6775 to 6775 (1 bytes)
_DATA_6775_:
.db $86

; Pointer Table from 6776 to 6779 (2 entries, indexed by unknown)
.dw _DATA_1A9C6_ _DATA_1A9C6_

; Data from 677A to 677E (5 bytes)
.db $01 $00 $02 $00 $08

; Pointer Table from 677F to 6780 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 13th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6781 to 6781 (1 bytes)
_DATA_6781_:
.db $86

; Pointer Table from 6782 to 6785 (2 entries, indexed by unknown)
.dw _DATA_1AAB4_ _DATA_1AAB4_

; Data from 6786 to 678A (5 bytes)
.db $08 $00 $FF $00 $04

; Pointer Table from 678B to 678C (1 entries, indexed by unknown)
.dw _DATA_14000_

; 14th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 678D to 678D (1 bytes)
_DATA_678D_:
.db $86

; Pointer Table from 678E to 6791 (2 entries, indexed by unknown)
.dw _DATA_1AB52_ _DATA_1AB52_

; Data from 6792 to 6796 (5 bytes)
.db $01 $00 $01 $00 $08

; Pointer Table from 6797 to 6798 (1 entries, indexed by unknown)
.dw _DATA_14200_

; 15th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 6799 to 6799 (1 bytes)
_DATA_6799_:
.db $86

; Pointer Table from 679A to 679D (2 entries, indexed by unknown)
.dw _DATA_1AC6C_ _DATA_1AC6C_

; Data from 679E to 67A2 (5 bytes)
.db $01 $00 $0A $00 $08

; Pointer Table from 67A3 to 67A4 (1 entries, indexed by unknown)
.dw _DATA_14000_

; 16th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 67A5 to 67A5 (1 bytes)
_DATA_67A5_:
.db $86

; Pointer Table from 67A6 to 67A9 (2 entries, indexed by unknown)
.dw _DATA_1AF35_ _DATA_1AF41_

; Data from 67AA to 67AE (5 bytes)
.db $01 $01 $07 $07 $80

; Pointer Table from 67AF to 67B0 (1 entries, indexed by unknown)
.dw _DATA_14200_

; 17th entry of Pointer Table from 66CF (indexed by _RAM_C023_)
; Data from 67B1 to 67B1 (1 bytes)
_DATA_67B1_:
.db $86

; Pointer Table from 67B2 to 67B5 (2 entries, indexed by unknown)
.dw _DATA_1BC53_ _DATA_1BC53_

; Data from 67B6 to 67BA (5 bytes)
.db $01 $00 $01 $01 $01

; Pointer Table from 67BB to 67BC (1 entries, indexed by unknown)
.dw _DATA_14200_

_LABEL_67BD_:
	ld de, (_RAM_C0AB_)
	ld a, d
	or e
	jp z, _LABEL_69C4_
	ld a, $0C
	ld (_RAM_C0A1_), a
	ld bc, (_RAM_C0AD_)
	ld hl, (_RAM_C0AF_)
	add hl, de
	ld (_RAM_C0AF_), hl
	ex de, hl
	bit 7, h
	jp nz, _LABEL_68A0_
	add hl, bc
	ld a, h
	cp $08
	ld (_RAM_C0AD_), hl
	ret c
	and $07
	ld (_RAM_C0AE_), a
	ld a, (_RAM_C0B7_)
	sub $02
	jp nc, +
	ld a, $3E
+:
	ld (_RAM_C0B7_), a
	ld hl, (_RAM_C0B4_)
	ld bc, $0080
	or a
	sbc hl, bc
	jp nc, +
	ld hl, $0F80
+:
	ex af, af'
	ld (_RAM_C0B4_), hl
	ld a, (_RAM_C0B3_)
	dec a
	and $01
	ld (_RAM_C0B3_), a
	ld hl, _RAM_C0B6_
	ex af, af'
	jp nc, _LABEL_685E_
	ld a, (hl)
	sub $01
	ld (hl), a
	ld hl, _RAM_C08D_
	dec (hl)
	set 7, (hl)
	jp nc, _LABEL_683A_
	inc (hl)
	res 7, (hl)
	ld hl, _RAM_C0C9_
	res 2, (hl)
	ld hl, $0000
	ld (_RAM_C0AB_), hl
	ld a, $08
	ld (_RAM_C0B0_), a
	ret

_LABEL_683A_:
	add a, a
	ld c, a
	ld b, $00
	ld a, (_RAM_C0C4_)
	add a, a
	ld e, a
	ld d, $00
	ld a, (_RAM_C081_)
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C0A3_)
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_D700_
	call _LABEL_6BE8_
_LABEL_685E_:
	ld a, $01
	ld (_RAM_C0AA_), a
	ld hl, _RAM_D700_
	ld a, (_RAM_C0B5_)
	ld c, a
	ld b, $00
	add hl, bc
	ld de, _RAM_CF00_
	ld a, $85
	ld (_RAM_FFFF_), a
-:
	push hl
	ld c, (hl)
	ld hl, (_RAM_C087_)
	add hl, bc
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (_RAM_C0B3_)
	add a, a
	ld c, a
	add hl, bc
	ldi
	ldi
	inc hl
	inc hl
	ldi
	ldi
	ld a, (_RAM_C0A1_)
	dec a
	ld (_RAM_C0A1_), a
	pop hl
	ret z
	ld bc, $0010
	add hl, bc
	jp -

_LABEL_68A0_:
	add hl, bc
	ld (_RAM_C0AD_), hl
	ret c
	ld a, (_RAM_C0C9_)
	bit 3, a
	jp nz, +
	ld hl, $0000
	ld (_RAM_C0AB_), hl
	ret

+:
	ld a, h
	and $07
	ld (_RAM_C0AE_), a
	ld a, (_RAM_C0B7_)
	or a
	jp nz, +
	ld hl, _RAM_C08D_
	inc (hl)
	set 7, (hl)
	ld hl, _RAM_C0B6_
	ld a, (hl)
	inc a
	call _LABEL_683A_
	jp ++

+:
	call _LABEL_685E_
++:
	ld a, (_RAM_C0B7_)
	add a, $02
	cp $40
	jp c, +
	xor a
+:
	ld (_RAM_C0B7_), a
	ld hl, (_RAM_C0B4_)
	ld bc, $0080
	add hl, bc
	ld a, h
	cp $10
	jp c, +
	ld hl, $0000
+:
	ex af, af'
	ld (_RAM_C0B4_), hl
	ld a, (_RAM_C0B3_)
	inc a
	and $01
	ld (_RAM_C0B3_), a
	ld hl, _RAM_C0B6_
	ld bc, (_RAM_C0A0_)
	ex af, af'
	ret c
	inc (hl)
	ld a, (hl)
	cp c
	ret c
	ld hl, _RAM_C0C9_
	res 3, (hl)
	ld hl, _RAM_C08D_
	dec (hl)
	res 7, (hl)
	ret

_LABEL_6919_:
	ld a, (_RAM_C0AA_)
	rrca
	jp nc, _LABEL_6961_
	ld a, (_RAM_C0B0_)
	ld b, a
	ld a, (_RAM_C0AC_)
	bit 7, a
	jp nz, +
	ld a, b
	sub $08
	ld b, a
+:
	ld a, b
	cpl
	rrca
	rrca
	and $3E
	ld c, a
	ld b, $00
	ld hl, (_RAM_C0C5_)
	add hl, bc
	ex de, hl
	ld hl, _RAM_CF00_
	ld bc, $0040
	ld a, $18
-:
	ex af, af'
	call _LABEL_8_
	ld a, (hl)
	out (Port_VDPData), a
	inc hl
	ld a, (hl)
	inc hl
	out (Port_VDPData), a
	ex de, hl
	add hl, bc
	ld a, h
	cp $7F
	jp nz, +
	ld h, $78
+:
	ex de, hl
	ex af, af'
	dec a
	jr nz, -
_LABEL_6961_:
	ld a, (_RAM_C0AA_)
	rrca
	rrca
	jp nc, _LABEL_69AE_
	ld a, (_RAM_C0BA_)
	bit 7, a
	ld a, (_RAM_C0BE_)
	jp z, +
	and $F8
	jp ++

+:
	and $F8
	sub $20
	jp nc, ++
	sub $20
++:
	ld h, $00
	ld l, a
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	ld hl, (_RAM_C0B7_)
	add hl, de
	ld a, (_RAM_C0B7_)
	ld b, a
	ex af, af'
	ld a, $40
	sub b
	ex de, hl
	ld b, $00
	ld c, a
	ld hl, _RAM_CF38_
	call _LABEL_145_
	ex af, af'
	or a
	jp z, _LABEL_69AE_
	ld c, a
	ld b, $00
	ld a, e
	and $C0
	ld e, a
	call _LABEL_145_
_LABEL_69AE_:
	xor a
	ld (_RAM_C0AA_), a
	ld de, (_RAM_C0B0_)
	ld d, $88
	call _LABEL_8_
	ld de, (_RAM_C0BE_)
	ld d, $89
	jp _LABEL_8_

_LABEL_69C4_:
	ld de, (_RAM_C0B9_)
	ld a, d
	or e
	ret z
	ld a, $10
	ld (_RAM_C0A6_), a
	ld bc, (_RAM_C0BB_)
	ld hl, (_RAM_C0BD_)
	add hl, de
	ld (_RAM_C0BD_), hl
	bit 7, d
	ld a, h
	jp nz, +
	cp $E0
	jp c, ++
	sub $E0
	jp ++

+:
	cp $E0
	jp c, ++
	sub $20
++:
	ld (_RAM_C0BE_), a
	ex de, hl
	bit 7, h
	jp nz, _LABEL_6AB8_
	add hl, bc
	ld a, h
	cp $08
	ld (_RAM_C0BB_), hl
	ret c
	and $07
	ld (_RAM_C0BC_), a
	ld hl, (_RAM_C0C5_)
	ld bc, $0040
	add hl, bc
	ld a, h
	cp $7F
	jp nz, +
	ld h, $78
+:
	ld (_RAM_C0C5_), hl
	ld a, (_RAM_C0C1_)
	inc a
	and $01
	ld (_RAM_C0C1_), a
	ld hl, (_RAM_C0C2_)
	ld bc, $0080
	add hl, bc
	ld a, h
	cp $0C
	ld (_RAM_C0C2_), hl
	jp c, _LABEL_6A6F_
	ld hl, _RAM_C08D_
	inc (hl)
	set 7, (hl)
	ld hl, $0000
	ld (_RAM_C0C2_), hl
	ld bc, (_RAM_C0A5_)
	ld hl, _RAM_C0C4_
	inc (hl)
	ld a, (hl)
	cp c
	jp c, _LABEL_6A6C_
	xor a
	ld (hl), a
	ld hl, _RAM_C0C9_
	res 0, (hl)
	ld hl, $0000
	ld (_RAM_C0B9_), hl
	ld a, (_RAM_C0BE_)
	and $F0
	ld (_RAM_C0BE_), a
	xor a
	ld (_RAM_C0BC_), a
	ld hl, _RAM_C08D_
	dec (hl)
	res 7, (hl)
	ret

_LABEL_6A6C_:
	call _LABEL_6B1A_
_LABEL_6A6F_:
	ld a, $02
	ld (_RAM_C0AA_), a
	ld hl, _RAM_D700_
	ld a, (_RAM_C0C3_)
	or a
	jp z, +
	ld bc, $0010
-:
	add hl, bc
	dec a
	jp nz, -
+:
	ld de, _RAM_CF38_
	ld a, $85
	ld (_RAM_FFFF_), a
-:
	push hl
	ld a, (hl)
	ld c, a
	ld b, $00
	ld hl, (_RAM_C087_)
	add hl, bc
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (_RAM_C0C1_)
	add a, a
	add a, a
	ld c, a
	add hl, bc
	ldi
	ldi
	ldi
	ldi
	ld a, (_RAM_C0A6_)
	dec a
	ld (_RAM_C0A6_), a
	pop hl
	ret z
	inc hl
	jp -

_LABEL_6AB8_:
	add hl, bc
	ld (_RAM_C0BB_), hl
	ret c
	ld a, h
	and $07
	ld (_RAM_C0BC_), a
	ld hl, (_RAM_C0C5_)
	ld bc, $0040
	or a
	sbc hl, bc
	ld a, h
	cp $77
	jp nz, +
	ld h, $7E
+:
	ld (_RAM_C0C5_), hl
	ld hl, (_RAM_C0C2_)
	ld bc, $0080
	or a
	sbc hl, bc
	jp nc, +
	ld hl, $0B80
+:
	ex af, af'
	ld (_RAM_C0C2_), hl
	ld a, (_RAM_C0C1_)
	dec a
	and $01
	ld (_RAM_C0C1_), a
	ex af, af'
	ld a, (_RAM_C0C4_)
	jp nc, _LABEL_6A6F_
	sub $01
	jp nc, +
	ld hl, _RAM_C0C9_
	res 1, (hl)
	ld hl, $0000
	ld (_RAM_C0B9_), hl
	ret

+:
	ld hl, _RAM_C08D_
	dec (hl)
	set 7, (hl)
	ld (_RAM_C0C4_), a
	call +
	jp _LABEL_6A6F_

_LABEL_6B1A_:
	ld a, (_RAM_C0C4_)
	inc a
+:
	add a, a
	ld c, a
	ld b, $00
	ld a, (_RAM_C0B6_)
	add a, a
	ld e, a
	ld d, $00
	ld a, (_RAM_C081_)
	ld (_RAM_FFFF_), a
	ld hl, (_RAM_C0A8_)
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld de, _RAM_D700_
	jp _LABEL_6BE8_

_LABEL_6B42_:
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C0AA_)
	rrca
	jp nc, _LABEL_6B95_
	ld a, (_RAM_C0B0_)
	ld b, a
	ld a, (_RAM_C0AC_)
	bit 7, a
	jp nz, +
	ld a, b
	sub $08
	ld b, a
+:
	ld a, b
	cpl
	rrca
	rrca
	and $3E
	ld c, a
	ld b, $00
	ld hl, (_RAM_C0C5_)
	ld a, h
	and $07
	ld h, a
	add hl, bc
	ex de, hl
	ld hl, $C800
	add hl, de
	ex de, hl
	ld hl, _RAM_CF00_
	ld bc, $0040
	ld a, $18
-:
	ex af, af'
	ld a, (hl)
	ld (de), a
	inc hl
	inc de
	ld a, (hl)
	inc hl
	ld (de), a
	dec de
	ex de, hl
	add hl, bc
	ld a, h
	cp $CF
	jp nz, +
	ld h, $C8
+:
	ex de, hl
	ex af, af'
	dec a
	jr nz, -
_LABEL_6B95_:
	ld a, (_RAM_C0AA_)
	rrca
	rrca
	ret nc
	ld a, (_RAM_C0BA_)
	bit 7, a
	ld a, (_RAM_C0BE_)
	jp z, +
	and $F8
	jp ++

+:
	and $F8
	sub $20
	jp nc, ++
	sub $20
++:
	ld h, $00
	ld l, a
	add hl, hl
	add hl, hl
	add hl, hl
	ex de, hl
	ld hl, (_RAM_C0B7_)
	ld h, $00
	add hl, de
	ex de, hl
	ld hl, $C800
	add hl, de
	ex de, hl
	ld a, (_RAM_C0B7_)
	ld b, a
	ex af, af'
	ld a, $40
	sub b
	ld b, $00
	ld c, a
	ld hl, _RAM_CF38_
	ldir
	ex af, af'
	or a
	ret z
	ex de, hl
	ld bc, $0040
	or a
	sbc hl, bc
	ex de, hl
	ld c, a
	ld b, $00
	ldir
	ret

_LABEL_6BE8_:
	ld a, (hl)
	or a
	ret z
	bit 7, a
	jr nz, +
	ld b, a
	inc hl
	ld a, (hl)
-:
	ld (de), a
	inc de
	djnz -
	inc hl
	jp _LABEL_6BE8_

+:
	and $7F
	ld c, a
	ld b, $00
	inc hl
	ldir
	jp _LABEL_6BE8_

; 7th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_6C05_:
	ld a, (_RAM_C005_)
	and $20
	jp z, +
	ld a, $00
	ld (_RAM_C01F_), a
	ret

+:
	call _LABEL_2EF_
	ld b, $05
	call _LABEL_343_
	call _LABEL_9DF3_
	ld hl, _RAM_C025_
	ld a, (hl)
	sub $01
	jp z, _LABEL_6DC2_
	daa
	ld (hl), a
	ld a, $82
	ld (_RAM_FFFF_), a
	ld ix, _RAM_C300_
	ld de, $0020
	ld b, $05
-:
	call _LABEL_278A_
	add ix, de
	djnz -
	ld ix, _RAM_C500_
	ld de, $0020
	ld b, $0C
-:
	call _LABEL_278A_
	add ix, de
	djnz -
	ld ix, _RAM_C3C0_
	ld b, $0A
-:
	ld a, (ix+2)
	bit 7, a
	jp z, +
	and $7F
	ld e, b
	ld hl, _DATA_6F29_ - 2
	rst $10	; _LABEL_10_
	exx
	call _LABEL_278A_
	exx
	ld b, e
	ld a, (hl)
	ld (ix+0), a
	inc hl
	ld a, (hl)
	ld (ix+12), a
	inc hl
	ld a, (hl)
	ld (ix+14), a
+:
	ld de, $0020
	add ix, de
	djnz -
	ld a, (_RAM_C0C9_)
	bit 7, a
	jp z, +
	ld a, (_RAM_C023_)
	cp $01
	jp z, +
	ld de, _RAM_C300_
	ld hl, _RAM_C240_
	ld bc, $0020
	ldir
	ld hl, (_RAM_C307_)
	dec hl
	ld a, (hl)
	ld (_RAM_C200_), a
	ld a, $02
	ld (_RAM_C054_), a
	ld a, $FF
	ld (_RAM_C05A_), a
	jp _LABEL_6D6C_

+:
	ld ix, _RAM_C300_
	ld (ix+0), $01
	ld a, (_RAM_C023_)
	cp $0D
	jp z, _LABEL_6D1F_
	ld a, (_RAM_C051_)
	or a
	jp nz, _LABEL_6D1F_
	ld a, (_RAM_C054_)
	cp $07
	jp nc, _LABEL_6D1F_
	ld a, (_RAM_C090_)
	cp $05
	jp z, _LABEL_6D35_
	cp $06
	jp z, _LABEL_6D1F_
	ld (ix+24), $10
	ld (ix+22), $10
	ld (ix+23), $01
	ld (ix+26), $01
--:
	call _LABEL_6EA8_
-:
	ld de, $1900
	call _LABEL_7C44_
	rlca
	jp nc, +
	ld de, $1908
	call _LABEL_7C44_
	rlca
	jp c, _LABEL_6D48_
+:
	ld a, $08
	add a, (ix+14)
	ld (ix+14), a
	cp $90
	jp nc, +
	call _LABEL_6EB4_
	jp -

+:
	ld a, $08
	add a, (ix+22)
	ld (ix+22), a
	jp --

_LABEL_6D1F_:
	ld ix, _RAM_C300_
	ld de, $0020
	ld b, $1E
-:
	call _LABEL_278A_
	add ix, de
	djnz -
	ld a, $0A
	ld (_RAM_C01F_), a
	ret

_LABEL_6D35_:
	ld (ix+24), $10
	ld (ix+22), $10
	ld (ix+23), $01
	ld (ix+26), $02
	call _LABEL_6EA8_
_LABEL_6D48_:
	ld a, $02
	ld (_RAM_C054_), a
	ld a, $FF
	ld (_RAM_C05A_), a
	ld (ix+24), $00
	ld (ix+22), $00
	ld (ix+23), $00
	ld (ix+25), $00
	ld (ix+26), $00
	call _LABEL_6F1A_
	call _LABEL_29C2_
_LABEL_6D6C_:
	call _LABEL_2694_
	ld a, (_RAM_C023_)
	ld c, a
	ld a, (_RAM_C092_)
	or a
	jp z, +
	inc c
+:
	ld hl, _DATA_DC5_ - 1
	ld b, $00
	add hl, bc
	ld a, (hl)
	ld (_RAM_C110_), a
	ld a, (_RAM_C023_)
	cp $10
	jp z, +
	ld a, (_RAM_C090_)
	cp $05
	jp nz, +
	ld a, $83
	ld (_RAM_C110_), a
+:
	ld a, (_RAM_C215_)
	or a
	jp z, +
	ld a, $84
	ld (_RAM_C110_), a
+:
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, $01
	call _LABEL_2E6_
	ld b, $89
	ld a, (_RAM_C215_)
	or a
	jp nz, +
	ld b, $8A
+:
	ld a, b
	ld (_RAM_C01F_), a
	jp _LABEL_2F6_

_LABEL_6DC2_:
	call _LABEL_311_
	ld b, $05
	call _LABEL_343_
	call _LABEL_303_
	xor a
	ld de, $C000
	call _LABEL_13F_
	xor a
	ld de, $C010
	call _LABEL_13F_
	ld de, $7A94
	ld hl, _DATA_6E84_
	ld b, $09
	call _LABEL_159_
	ld de, $7B90
	ld hl, _DATA_6E8D_
	ld b, $0D
	call _LABEL_159_
	ld hl, $C022
	ld de, $7B9C
	call _LABEL_454_
	ld de, $8026
	ld a, e
	ld (_RAM_C05F_), a
	rst $08	; _LABEL_8_
	ld a, $AF
	ld (_RAM_C110_), a
	ei
	call _LABEL_2F6_
	ld a, $C0
	ld (_RAM_C07F_), a
	xor a
	ld (_RAM_C057_), a
-:
	ld a, $80
	call _LABEL_2E6_
	ld a, (_RAM_C006_)
	and $01
	jp nz, +
	xor a
	ld (_RAM_C057_), a
	jp _LABEL_6E3A_

+:
	ld a, (_RAM_C007_)
	and $20
	jp z, _LABEL_6E3A_
	ld hl, _RAM_C057_
	inc (hl)
	ld a, (hl)
	cp $08
	jp nc, +
_LABEL_6E3A_:
	ld hl, _RAM_C07F_
	dec (hl)
	jp nz, -
	ld a, $00
	ld (_RAM_C01F_), a
	ret

+:
	xor a
	ld (_RAM_C057_), a
	ld c, $03
	ld b, $00
	ld hl, $0489
	add hl, bc
	ld bc, _RAM_C030_
	call _LABEL_42D_
	jr c, _LABEL_6E3A_
	dec hl
	dec hl
	dec bc
	dec bc
	call _LABEL_41C_
	di
	ld de, $7C50
	ld hl, _DATA_6E9A_
	ld b, $0D
	call _LABEL_159_
	ei
	ld a, $8F
	ld (_RAM_C110_), a
	ld b, $1E
	call _LABEL_343_
	ld a, $03
	ld (_RAM_C025_), a
	ld a, $0A
	ld (_RAM_C01F_), a
	ret

; Data from 6E84 to 6E8C (9 bytes)
_DATA_6E84_:
.db $D7 $D1 $DD $D5 $B0 $DF $E6 $D5 $E2

; Data from 6E8D to 6E99 (13 bytes)
_DATA_6E8D_:
.db $E3 $D3 $DF $E2 $D5 $B0 $B0 $B0 $B0 $B0 $B0 $B0 $C0

; Data from 6E9A to 6EA6 (13 bytes)
_DATA_6E9A_:
.db $D3 $DF $DE $E4 $D9 $DE $E5 $D5 $B0 $DD $DF $D4 $D5

; 7th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_6EA7_:
	ret

_LABEL_6EA8_:
	ld a, (ix+24)
	ld (ix+14), a
	ld a, (ix+22)
	ld (ix+12), a
_LABEL_6EB4_:
	exx
	ld a, (ix+12)
	ld (ix+25), a
	ld de, $0100
	ld a, $08
	ld b, (ix+26)
	call _LABEL_39ED_
	exx
	jp nc, +
--:
	ld a, $08
	add a, (ix+14)
	ld (ix+14), a
	cp $90
	jp c, _LABEL_6EB4_
	ld a, $08
	add a, (ix+22)
	ld (ix+22), a
	cp $60
	jp c, _LABEL_6EA8_
	ret

+:
	ld b, (ix+26)
	ld a, $08
	add a, (ix+25)
	ld (ix+12), a
-:
	exx
	ld de, $0100
	ld a, $08
	ld b, (ix+23)
	call _LABEL_39ED_
	exx
	jp nc, +
	ld a, (ix+25)
	ld (ix+12), a
	jp --

+:
	ld a, $08
	add a, (ix+12)
	ld (ix+12), a
	djnz -
	ld a, (ix+25)
	ld (ix+12), a
	ret

_LABEL_6F1A_:
	ld a, (_RAM_C0BC_)
	cp $07
	ret nc
	ld b, a
	ld a, (ix+14)
	sub b
	ld (ix+14), a
	ret

; Pointer Table from 6F29 to 6F30 (4 entries, indexed by _RAM_C3C2_)
_DATA_6F29_:
.dw _DATA_6F31_ _DATA_6F34_ _DATA_6F37_ _DATA_6F3A_

; 1st entry of Pointer Table from 6F29 (indexed by _RAM_C3C2_)
; Data from 6F31 to 6F33 (3 bytes)
_DATA_6F31_:
.db $25 $B0 $70

; 2nd entry of Pointer Table from 6F29 (indexed by _RAM_C3C2_)
; Data from 6F34 to 6F36 (3 bytes)
_DATA_6F34_:
.db $46 $C0 $88

; 3rd entry of Pointer Table from 6F29 (indexed by _RAM_C3C2_)
; Data from 6F37 to 6F39 (3 bytes)
_DATA_6F37_:
.db $25 $B0 $90

; 4th entry of Pointer Table from 6F29 (indexed by _RAM_C3C2_)
; Data from 6F3A to 6F3C (3 bytes)
_DATA_6F3A_:
.db $25 $B0 $90

_LABEL_6F3D_:
	ld hl, (_RAM_C089_)
	jp (hl)

; 1st entry of Jump Table from D4E (indexed by _RAM_C023_)
_LABEL_6F41_:
	ld hl, _RAM_C08D_
	bit 7, (hl)
	ret z
	res 7, (hl)
	ld a, (hl)
	ld hl, (_RAM_C061_)
	rst $10	; _LABEL_10_
	xor a
	ld (_RAM_C067_), a
	ld de, $0100
	ld a, (_RAM_C066_)
	or a
	jp nz, _LABEL_6F77_
	ld de, $0100
	ld a, (_RAM_C0C9_)
	rrca
	jp c, _LABEL_6F77_
	ld de, $FF00
	rrca
	jp c, _LABEL_6F77_
	ld de, $0001
	rrca
	jp c, _LABEL_6F77_
	ld de, $00FF
_LABEL_6F77_:
	xor a
	ld (_RAM_C066_), a
	ld (_RAM_C063_), de
_LABEL_6F7F_:
	ld a, (hl)
	or a
	ret z
	bit 7, a
	jp nz, _LABEL_6FD8_
	ld b, a
_LABEL_6F88_:
	ld c, b
	ld ix, _RAM_C3C0_
	ld de, $0020
	ld b, $0A
-:
	ld a, (ix+0)
	or a
	jp z, +
	add ix, de
	djnz -
	ret

+:
	ld b, c
_LABEL_6F9F_:
	inc hl
	ld a, (hl)
	ld (ix+0), a
	inc hl
	ld a, (hl)
	ld (ix+14), a
	inc hl
	ld a, (hl)
	ld de, (_RAM_C0AF_)
	ld (ix+11), e
	add a, d
	ld d, a
	ld a, (_RAM_C091_)
	ld e, a
	ld a, d
	sub e
	ld (ix+12), a
	inc hl
	ld a, (hl)
	ld (ix+3), a
	ld de, (_RAM_C063_)
	ld (ix+10), d
	ld (ix+9), e
	ld a, (_RAM_C067_)
	add a, (ix+14)
	ld (ix+14), a
	djnz _LABEL_6F88_
	ret

_LABEL_6FD8_:
	rrca
	jp c, ++
	rrca
	jp c, _LABEL_7028_
	rrca
	jp c, +
	inc hl
	ld a, (hl)
	ld c, a
	ld b, $00
	inc hl
	ld de, _RAM_D8A0_
	ldir
	jp _LABEL_6F7F_

+:
	ld ix, _RAM_C3A0_
	res 0, (ix+1)
	res 1, (ix+1)
	ld b, $01
	call _LABEL_6F9F_
	inc hl
	jp _LABEL_6F7F_

++:
	ld ix, _RAM_C680_
	ld a, (ix+0)
	or a
	jp z, +
	ld de, $0020
	add ix, de
+:
	res 0, (ix+1)
	res 1, (ix+1)
	ld b, $01
	call _LABEL_6F9F_
	inc hl
	jp _LABEL_6F7F_

_LABEL_7028_:
	inc hl
	ld a, (hl)
	exx
	ld hl, _DATA_70FB_ - 2
	rst $10	; _LABEL_10_
	ld e, (hl)
	inc hl
	ld d, (hl)
	ld (_RAM_C0FD_), de
	inc hl
	ld ix, _RAM_C3C0_
	ld de, $0020
	ld b, $08
-:
	ld a, (hl)
	ld (ix+22), a
	inc hl
	ld a, (hl)
	ld (ix+30), a
	inc hl
	ld a, (hl)
	ld (ix+31), a
	inc hl
	ld a, (hl)
	ld (ix+21), a
	ld (ix+0), $24
	ld a, (_RAM_C063_)
	ld (ix+9), a
	ld a, (_RAM_C064_)
	ld (ix+10), a
	ld (ix+24), $00
	ld (ix+23), $00
	res 0, (ix+1)
	res 1, (ix+1)
	add ix, de
	inc hl
	djnz -
	exx
	inc hl
	jp _LABEL_6F7F_

; 11th entry of Jump Table from D4E (indexed by _RAM_C023_)
_LABEL_707D_:
	ld hl, _RAM_C08D_
	bit 7, (hl)
	ret z
	res 7, (hl)
	xor a
	ld (_RAM_C067_), a
	ld de, $0100
	ld a, (_RAM_C066_)
	or a
	jp nz, +
	ld a, (_RAM_C0C9_)
	rrca
	jp c, +
	ld de, $FF00
	rrca
	jp c, ++
	ld de, $0001
	rrca
	jp c, _LABEL_70EF_
	ld de, $00FF
	ld hl, _RAM_C065_
	inc (hl)
	ld a, (hl)
	ld hl, (_RAM_C061_)
	rst $10	; _LABEL_10_
	jp _LABEL_6F77_

+:
	ld a, (_RAM_C0BC_)
	neg
	ld (_RAM_C067_), a
	xor a
	ld (_RAM_C066_), a
	ld a, (_RAM_C0A0_)
	ld b, a
	ld a, (_RAM_C065_)
	add a, b
	ld (_RAM_C065_), a
	ld hl, (_RAM_C061_)
	rst $10	; _LABEL_10_
	jp _LABEL_6F77_

++:
	ld a, (_RAM_C0BC_)
	ld (_RAM_C067_), a
	ld a, (_RAM_C065_)
	ld c, a
	ld a, (_RAM_C0A0_)
	ld b, a
	ld a, c
	sub b
	ld (_RAM_C065_), a
	ld hl, (_RAM_C061_)
	rst $10	; _LABEL_10_
	jp _LABEL_6F77_

_LABEL_70EF_:
	ld hl, _RAM_C065_
	dec (hl)
	ld a, (hl)
	ld hl, (_RAM_C061_)
	rst $10	; _LABEL_10_
	jp _LABEL_6F77_

; Pointer Table from 70FB to 70FE (2 entries, indexed by unknown)
_DATA_70FB_:
.dw _DATA_70FF_ _DATA_7121_

; 1st entry of Pointer Table from 70FB (indexed by unknown)
; Data from 70FF to 7120 (34 bytes)
_DATA_70FF_:
.db $5C $CC $00 $98 $74 $00 $08 $98 $6C $01 $10 $98 $64 $01 $18 $98
.db $5C $01 $20 $98 $54 $01 $28 $98 $4C $01 $30 $98 $44 $01 $38 $98
.db $3C $01

; 2nd entry of Pointer Table from 70FB (indexed by unknown)
; Data from 7121 to 7142 (34 bytes)
_DATA_7121_:
.db $58 $CC $00 $98 $66 $00 $08 $98 $5E $01 $10 $98 $56 $01 $18 $98
.db $4E $01 $20 $98 $46 $01 $28 $98 $3E $01 $30 $98 $36 $01 $38 $98
.db $2E $01

; 28th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7143_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_714B_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 714B to 7174 (21 entries, indexed by _RAM_C3BA_)
_DATA_714B_:
.dw _LABEL_7175_ _LABEL_71A9_ _LABEL_71C5_ _LABEL_7209_ _LABEL_7230_ _LABEL_724A_ _LABEL_7278_ _LABEL_72AC_
.dw _LABEL_733B_ _LABEL_7350_ _LABEL_736B_ _LABEL_73A7_ _LABEL_73C4_ _LABEL_749D_ _LABEL_73D1_ _LABEL_7440_
.dw _LABEL_71A9_ _LABEL_744C_ _LABEL_7468_ _LABEL_749D_ _LABEL_74C6_

; 1st entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_7175_:
	inc (ix+26)
	xor a
	ld (_RAM_C216_), a
	ld (_RAM_C215_), a
	inc a
	ld (_RAM_C3A5_), a
	ld (_RAM_C3BF_), a
	ld a, (_RAM_C3A3_)
	and $FE
	add a, a
	add a, a
	add a, a
	ld hl, $80E1
	jr nz, +
	ld hl, $8134
+:
	ld (_RAM_C3A7_), hl
	ld l, a
	ld h, $00
	ld de, _DATA_764A_
	add hl, de
	ld de, _RAM_C230_
	ld bc, $0010
	ldir
	ret

; 2nd entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_71A9_:
	ld a, (_RAM_C3AA_)
	or (ix+9)
	ret nz
	ld a, (_RAM_C0C9_)
	and $0F
	ret nz
	ld a, (_RAM_C31A_)
	cp $03
	ret nc
	inc (ix+26)
	ld a, $16
	ld (_RAM_C31A_), a
	ret

; 3rd entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_71C5_:
	ld a, (_RAM_C31A_)
	cp $17
	ret nz
	inc (ix+26)
	call _LABEL_3478_
	ld hl, (_RAM_C230_)
	ld (_RAM_C3A7_), hl
	ld a, (_RAM_C3A3_)
	cp $01
	jr nz, +
	ld (ix+12), $B8
	ld (ix+14), $80
+:
	ld a, $01
	ld (_RAM_C215_), a
	call _LABEL_791D_
	ld hl, (_RAM_C232_)
	ld de, $6400
	call _LABEL_293_
	ei
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, $07
	ld (_RAM_C01F_), a
	ld a, (_RAM_C23E_)
	ld (_RAM_C011_), a
	ret

; 4th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_7209_:
	call _LABEL_7228_
	ret z
	ld hl, (_RAM_C234_)
	call _LABEL_75BF_
	call _LABEL_793A_
	ld a, $07
	ld (_RAM_C01F_), a
	ld a, $07
	ld (_RAM_C011_), a
	inc (ix+26)
	ld (ix+6), $10
	ret

_LABEL_7228_:
	ld a, (_RAM_C01F_)
	and $0F
	cp $07
	ret

; 5th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_7230_:
	call _LABEL_7228_
	ret z
	ld a, $17
	ld (_RAM_C31A_), a
	ld a, $87
	ld (_RAM_C110_), a
	inc (ix+26)
	ld (ix+31), $FF
	ld (ix+24), $14
	ret

; 6th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_724A_:
	call _LABEL_758A_
	ld a, (_RAM_C115_)
	cp $80
	jr z, +
	ld hl, (_RAM_C236_)
	jp _LABEL_280E_

+:
	ld a, $AD
	ld (_RAM_C110_), a
	inc (ix+26)
	ld (ix+6), $14
	ld a, $01
	ld (_RAM_C3A5_), a
	ld (_RAM_C305_), a
	ld a, $15
	ld (_RAM_C31A_), a
	ld (ix+31), $46
	ret

; 7th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_7278_:
	call _LABEL_758A_
	ld a, (_RAM_C115_)
	cp $10
	jr z, +
	ld hl, (_RAM_C238_)
	jp _LABEL_280E_

+:
	ld hl, (_RAM_C23A_)
	ld a, $AE
	ld (_RAM_C110_), a
	inc (ix+26)
	ld a, $18
	ld (_RAM_C31A_), a
	ld a, (_RAM_C3B7_)
	add a, a
	ld e, a
	ld d, $00
	add hl, de
	ld e, (hl)
	inc hl
	ld d, (hl)
	ex de, hl
	ld (_RAM_C3A7_), hl
	ld (ix+24), $1E
	ret

; 8th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_72AC_:
	dec (ix+24)
	ret nz
	ld a, (_RAM_C317_)
	ld e, (ix+23)
	add a, e
	add a, e
	add a, e
	ld hl, _DATA_72C3_
	rst $20	; _LABEL_20_
	ld a, $07
	ld (_RAM_C01F_), a
	ret

; Jump Table from 72C3 to 72D4 (9 entries, indexed by _RAM_C317_)
_DATA_72C3_:
.dw _LABEL_72D5_ _LABEL_72DF_ _LABEL_730D_ _LABEL_730D_ _LABEL_72D5_ _LABEL_72DF_ _LABEL_72DF_ _LABEL_730D_
.dw _LABEL_72D5_

; 1st entry of Jump Table from 72C3 (indexed by _RAM_C317_)
_LABEL_72D5_:
	ld a, $0A
	ld (_RAM_C011_), a
	ld (ix+26), $04
	ret

; 2nd entry of Jump Table from 72C3 (indexed by _RAM_C317_)
_LABEL_72DF_:
	ld a, $08
	ld (_RAM_C011_), a
	ld e, (ix+25)
	ld d, $00
	ld hl, $C2A6
	add hl, de
	add hl, de
	ld (hl), $A5
	dec hl
	dec hl
	ld a, (hl)
	cp $A5
	jr z, +
	inc (ix+25)
	ld a, (_RAM_C3B9_)
	cp $03
	jr nc, +
	ld (ix+26), $04
	ret

+:
	ld (ix+26), $08
	jp _LABEL_7966_

; 3rd entry of Jump Table from 72C3 (indexed by _RAM_C317_)
_LABEL_730D_:
	ld a, $09
	ld (_RAM_C011_), a
	ld e, (ix+25)
	ld d, $00
	ld hl, $C2A6
	add hl, de
	add hl, de
	ld (hl), $A4
	dec hl
	dec hl
	ld a, (hl)
	cp $A4
	jr z, +
	inc (ix+25)
	ld a, (_RAM_C3B9_)
	cp $03
	jr nc, +
	ld (ix+26), $04
	ret

+:
	ld (ix+26), $0B
	jp _LABEL_7966_

; 9th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_733B_:
	call _LABEL_7228_
	ret z
	call _LABEL_763A_
	ld a, $15
	ld (_RAM_C011_), a
	ld a, $07
	ld (_RAM_C01F_), a
	inc (ix+26)
	ret

; 10th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_7350_:
	call _LABEL_7228_
	ret z
	ld (ix+6), $14
	ld a, $93
	ld (_RAM_C110_), a
	ld a, $19
	ld (_RAM_C31A_), a
	ld a, $3C
	ld (_RAM_C318_), a
	inc (ix+26)
	ret

; 11th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_736B_:
	ld a, (_RAM_C01F_)
	cp $06
	jr z, +
	ld hl, (_RAM_C236_)
	jp _LABEL_280E_

+:
	ld b, (ix+0)
	ld c, (ix+3)
	ld e, (ix+12)
	ld d, (ix+14)
	exx
	call _LABEL_278A_
	exx
	ld hl, $80E1
	ld (_RAM_C3A7_), hl
	ld (ix+0), b
	ld (ix+3), c
	ld (ix+12), e
	ld (ix+14), d
	ld a, c
	or a
	ret nz
	ld (ix+12), $C0
	ld (ix+14), $98
	ret

; 12th entry of Jump Table from 714B (indexed by _RAM_C3BA_)
_LABEL_73A7_:
	call _LABEL_78C7_
	ld (ix+24), $60
	ld hl, _DATA_776B_
	ld (_RAM_C219_), hl
	ld a, $03
	ld (_RAM_C218_), a
	xor a
	ld (_RAM_C3A2_), a
	ld hl, $961A
	ld (_RAM_C3A7_), hl
	ret

; 13th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_73C4_:
	call _LABEL_7228_
	ret z
	ld a, $84
	ld (_RAM_C110_), a
	inc (ix+26)
	ret

; 15th entry of Jump Table from 714B (indexed by _RAM_C3BA_)
_LABEL_73D1_:
	ld a, (ix+10)
	or a
	ret nz
	ld (ix+19), $CC
	call _LABEL_7D92_
	ld hl, _RAM_C31C_
	bit 3, (hl)
	jr z, ++
	res 3, (hl)
	ld (ix+19), $D0
	call _LABEL_7D04_
	jr c, ++
	inc (ix+2)
	ld a, (_RAM_C3A2_)
	cp $03
	jr c, +
	inc (ix+26)
	ret

+:
	ld a, $8D
	ld (_RAM_C110_), a
++:
	ld a, (_RAM_C31A_)
	cp $0F
	ret nc
	dec (ix+24)
	ret nz
	inc (ix+24)
	ld iy, _RAM_C3C0_
	ld a, (_RAM_C3C0_)
	or a
	jr z, +
	ld iy, _RAM_C3E0_
	ld a, (_RAM_C3E0_)
	or a
	ret nz
+:
	ld (ix+24), $60
	ld (iy+0), $19
	ld a, (_RAM_C3AC_)
	add a, $08
	ld (iy+12), a
	ld a, (_RAM_C3AE_)
	add a, $10
	ld (iy+14), a
	ld a, $96
	ld (_RAM_C110_), a
	ret

; 16th entry of Jump Table from 714B (indexed by _RAM_C3BA_)
_LABEL_7440_:
	call _LABEL_99D3_
	ld a, $95
	ld (_RAM_C110_), a
	inc (ix+26)
	ret

; 18th entry of Jump Table from 714B (indexed by _RAM_C3BA_)
_LABEL_744C_:
	ld hl, _RAM_C31A_
	ld a, (hl)
	cp $17
	ret nz
	ld (hl), $1A
	ld hl, _DATA_12AFE_
	ld (_RAM_C21B_), hl
	ld a, $88
	ld (_RAM_C202_), a
	xor a
	ld (_RAM_C218_), a
	inc (ix+26)
	ret

; 19th entry of Jump Table from 714B (indexed by _RAM_C3BA_)
_LABEL_7468_:
	ld a, (_RAM_C202_)
	or a
	ret nz
	ld hl, _DATA_7773_
	ld (_RAM_C219_), hl
	ld a, $06
	ld (_RAM_C218_), a
	inc (ix+26)
	ld iy, _RAM_C400_
	ld (iy+0), $52
	ld (iy+3), $04
	ld (iy+12), $A8
	ld (iy+14), $A0
	ld (iy+1), $00
	ld a, $01
	ld (_RAM_C04B_), a
	ld l, $15
	jp _LABEL_3ED_

; 14th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_749D_:
	ld a, (_RAM_C202_)
	or a
	ret nz
	ld hl, _RAM_C218_
	dec (hl)
	jr z, +
	ld a, (hl)
	add a, a
	add a, a
	ld e, a
	ld d, $00
	ld hl, (_RAM_C219_)
	add hl, de
	ld de, _RAM_C204_
	ld bc, $0004
	ldir
	ld a, $80
	ld (_RAM_C202_), a
	ret

+:
	call _LABEL_2BFA_
	inc (ix+26)
; 21st entry of Jump Table from 714B (indexed by _RAM_C3BA_)
_LABEL_74C6_:
	ret

; 25th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_74C7_:
	call _LABEL_7D92_
	bit 7, (iy+1)
	jr nz, +
	ld a, (ix+26)
	ld hl, _DATA_74D8_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 74D8 to 74E3 (6 entries, indexed by _RAM_CF9A_)
_DATA_74D8_:
.dw _LABEL_7502_ _LABEL_751E_ _LABEL_752E_ _LABEL_755D_ _LABEL_7565_ _LABEL_7581_

+:
	res 7, (iy+1)
	ld (iy+26), $19
	ld (iy+24), $3C
	call _LABEL_99D3_
	ld a, $93
	ld (_RAM_C110_), a
	ld hl, _RAM_C3C0_
	call _LABEL_278D_
	inc hl
	jp _LABEL_278D_

; 1st entry of Jump Table from 74D8 (indexed by _RAM_CF9A_)
_LABEL_7502_:
	set 1, (ix+1)
	ld (ix+7), <_DATA_974B_
	ld (ix+8), >_DATA_974B_
	ld (ix+16), $FF
	ld (ix+22), $08
	ld (ix+23), $01
	inc (ix+26)
	ret

; 2nd entry of Jump Table from 74D8 (indexed by _RAM_CF9A_)
_LABEL_751E_:
	dec (ix+22)
	ret nz
	ld (ix+17), $00
	ld (ix+18), $FE
	inc (ix+26)
	ret

; 3rd entry of Jump Table from 74D8 (indexed by _RAM_CF9A_)
_LABEL_752E_:
	ld l, (ix+17)
	ld h, (ix+18)
	ld de, $0040
	add hl, de
	ld (ix+17), l
	ld (ix+18), h
	bit 7, h
	ret nz
	ld de, $0200
	or a
	sbc hl, de
	ret c
-:
	ld (ix+17), e
	ld (ix+18), d
	inc (ix+26)
	ld a, (ix+23)
	add a, $02
	ld (ix+23), a
	ld (ix+22), a
	ret

; 4th entry of Jump Table from 74D8 (indexed by _RAM_CF9A_)
_LABEL_755D_:
	dec (ix+22)
	ret nz
	inc (ix+26)
	ret

; 5th entry of Jump Table from 74D8 (indexed by _RAM_CF9A_)
_LABEL_7565_:
	ld l, (ix+17)
	ld h, (ix+18)
	ld de, $FFC0
	add hl, de
	ld (ix+17), l
	ld (ix+18), h
	bit 7, h
	ret z
	ld de, $FE00
	or a
	sbc hl, de
	jr c, -
	ret

; 6th entry of Jump Table from 74D8 (indexed by _RAM_CF9A_)
_LABEL_7581_:
	dec (ix+22)
	ret nz
	ld (ix+26), $02
	ret

_LABEL_758A_:
	ld hl, _RAM_C3BF_
	ld a, (hl)
	or a
	ret z
	dec (hl)
	ld c, (ix+3)
	ld b, $00
	ld hl, _DATA_775C_
	add hl, bc
	ld c, (hl)
	ld de, (_RAM_C23C_)
	dec (ix+24)
	ret p
	ld (ix+24), c
	ld hl, _RAM_C217_
	inc (hl)
	ld a, (hl)
	and $1F
	ld l, a
	ld h, $00
	add hl, de
	ld l, (hl)
	ld (ix+23), l
	ld a, (_RAM_C048_)
	or a
	ret z
	ld a, l
	ld (_RAM_C657_), a
	ret

_LABEL_75BF_:
	ld hl, _RAM_C640_
	call _LABEL_278D_
	inc hl
	call _LABEL_278D_
	ld hl, _RAM_CA08_
	ld de, _RAM_D000_
	ld bc, $00EC
	ldir
	ld de, _RAM_CA08_
	call +
	ld iy, _RAM_C660_
	ld (iy+0), $0B
	ld hl, (_RAM_C0AF_)
	ld a, $20
	add a, h
	ld (iy+12), a
	ld (iy+14), $3F
	ld a, (_RAM_C048_)
	or a
	ret z
	ld iy, _RAM_C640_
	ld (iy+0), $0B
	ld a, $B0
	add a, h
	ld (iy+12), a
	ld (iy+14), $3F
	ld de, _RAM_CA2C_
+:
	ld hl, _DATA_92A8_
	ld bc, $0408
-:
	push bc
	push de
	ld b, $00
	ldir
	pop de
	ex de, hl
	ld c, $40
	add hl, bc
	ex de, hl
	pop bc
	djnz -
	ret

; 11th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_761F_:
	ld a, (ix+23)
	add a, a
	ld e, a
	ld d, $00
	ld hl, _DATA_7634_
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld (ix+7), a
	ld (ix+8), h
	ret

; Pointer Table from 7634 to 7639 (3 entries, indexed by _RAM_CF97_)
_DATA_7634_:
.dw _DATA_92C8_ _DATA_92D6_ _DATA_92E4_

_LABEL_763A_:
	ld hl, _RAM_C640_
	call _LABEL_278D_
	inc hl
	call _LABEL_278D_
	ld hl, _RAM_C5C0_
	jp _LABEL_278D_

; Data from 764A to 764B (2 bytes)
_DATA_764A_:
.db $4B $95

; Pointer Table from 764C to 764F (2 entries, indexed by _RAM_C3A3_)
.dw _DATA_12357_ _DATA_76A4_

; Pointer Table from 7650 to 7651 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_9500_

; Pointer Table from 7652 to 7653 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_9505_

; Pointer Table from 7654 to 7655 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_768A_

; Pointer Table from 7656 to 7657 (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_76DC_

; Data from 7658 to 765B (4 bytes)
.db $0C $00 $16 $93

; Pointer Table from 765C to 765D (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_11BB5_

; Data from 765E to 766B (14 bytes)
.db $B2 $76 $F2 $92 $F7 $92 $90 $76 $FC $76 $04 $00 $16 $93

; Pointer Table from 766C to 766D (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_11E67_

; Data from 766E to 767B (14 bytes)
.db $C0 $76 $F2 $92 $15 $94 $96 $76 $1C $77 $05 $00 $16 $93

; Pointer Table from 767C to 767D (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_120A8_

; Data from 767E to 7689 (12 bytes)
.db $CE $76 $F2 $92 $F7 $92 $90 $76 $3C $77 $06 $00

; 1st entry of Pointer Table from 7654 (indexed by _RAM_C3A3_)
; Data from 768A to 768B (2 bytes)
_DATA_768A_:
.db $5B $96

; Pointer Table from 768C to 768D (1 entries, indexed by _RAM_C3A3_)
.dw _DATA_116AB_

; Data from 768E to 769B (14 bytes)
.db $FB $96 $A3 $93 $C9 $93 $EF $93 $8E $94 $B4 $94 $DA $94

; Data from 769C to 76A3 (8 bytes)
_DATA_769C_:
.db $D1 $00 $DC $00 $D5 $00 $E8 $00

; 2nd entry of Pointer Table from 764C (indexed by _RAM_C3A3_)
; Data from 76A4 to 76DB (56 bytes)
_DATA_76A4_:
.db $B0 $00 $D1 $00 $DE $00 $D9 $00 $DF $00 $E5 $00 $E4 $00 $B0 $00
.db $E5 $00 $DE $00 $E5 $00 $E5 $00 $D1 $00 $B0 $00 $B0 $00 $D9 $00
.db $DF $00 $E5 $00 $D9 $00 $DE $00 $D1 $00 $D1 $00 $DE $00 $DE $00
.db $E5 $00 $DE $00 $D9 $00 $DE $00

; 1st entry of Pointer Table from 7656 (indexed by _RAM_C3A3_)
; Data from 76DC to 775B (128 bytes)
_DATA_76DC_:
.db $00 $01 $02 $02 $00 $01 $00 $02 $00 $01 $02 $01 $00 $01 $00 $02
.db $02 $00 $02 $01 $00 $02 $01 $02 $01 $00 $01 $02 $00 $01 $00 $02
.db $00 $01 $02 $00 $00 $01 $00 $02 $02 $00 $02 $01 $00 $01 $00 $02
.db $02 $00 $02 $01 $00 $00 $01 $00 $01 $02 $01 $02 $00 $01 $00 $00
.db $01 $01 $02 $02 $00 $01 $00 $01 $02 $01 $02 $01 $00 $01 $00 $02
.db $02 $00 $01 $01 $00 $02 $01 $02 $01 $00 $01 $02 $00 $01 $00 $01
.db $02 $02 $01 $02 $00 $01 $00 $02 $02 $01 $02 $02 $00 $01 $00 $00
.db $02 $00 $02 $01 $00 $02 $01 $02 $01 $02 $01 $02 $00 $01 $00 $02

; Data from 775C to 7763 (8 bytes)
_DATA_775C_:
.db $23 $1E $46 $32 $3C $2D $37 $28

; Data from 7764 to 776A (7 bytes)
_DATA_7764_:
.db $03 $00 $00 $00 $00 $00 $1F

; Data from 776B to 7772 (8 bytes)
_DATA_776B_:
.db $08 $1F $10 $1F $04 $CD $5D $8B

; Data from 7773 to 7786 (20 bytes)
_DATA_7773_:
.db $84 $CC $5D $8B $04 $CB $75 $8B $84 $CA $75 $8B $04 $CA $75 $8B
.db $84 $C9 $75 $8B

; Data from 7787 to 778E (8 bytes)
_DATA_7787_:
.db $04 $C9 $75 $8B $8C $CD $65 $8A

; 29th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_778F_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_7797_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 7797 to 77B6 (16 entries, indexed by _RAM_C3BA_)
_DATA_7797_:
.dw _LABEL_7175_ _LABEL_71A9_ _LABEL_71C5_ _LABEL_7209_ _LABEL_7230_ _LABEL_724A_ _LABEL_7278_ _LABEL_72AC_
.dw _LABEL_733B_ _LABEL_7350_ _LABEL_736B_ _LABEL_77B7_ _LABEL_73C4_ _LABEL_749D_ _LABEL_77C6_ _LABEL_7804_

; 12th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_77B7_:
	call _LABEL_78C7_
	ld hl, _DATA_7787_
	ld (_RAM_C219_), hl
	ld a, $02
	ld (_RAM_C218_), a
	ret

; 15th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_77C6_:
	ld hl, $936D
	ld (_RAM_C3A7_), hl
	dec (ix+22)
	ret nz
	ld hl, $9395
	ld (_RAM_C3A7_), hl
	ld hl, _RAM_C3C0_
	call _LABEL_278D_
	ld iy, _RAM_C3C0_
	ld (iy+0), $0D
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a
	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a
	sub $20
	ld (_RAM_C3D7_), a
	ld hl, $9387
	ld (_RAM_C3C7_), hl
	inc (ix+26)
	ld a, $AC
	ld (_RAM_C110_), a
	ret

; 16th entry of Jump Table from 7797 (indexed by _RAM_C3BA_)
_LABEL_7804_:
	call _LABEL_7D92_
	ld a, (_RAM_C3C0_)
	or a
	jp z, _LABEL_5540_
	ret

; 30th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_780F_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_7817_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 7817 to 7834 (15 entries, indexed by _RAM_C3BA_)
_DATA_7817_:
.dw _LABEL_7175_ _LABEL_71A9_ _LABEL_71C5_ _LABEL_7209_ _LABEL_7230_ _LABEL_724A_ _LABEL_7278_ _LABEL_72AC_
.dw _LABEL_733B_ _LABEL_7350_ _LABEL_736B_ _LABEL_78C7_ _LABEL_73C4_ _LABEL_7835_ _LABEL_7868_

; 14th entry of Jump Table from 7817 (indexed by _RAM_C3BA_)
_LABEL_7835_:
	ld hl, $9458
	ld (_RAM_C3A7_), hl
	dec (ix+22)
	ret nz
	ld hl, $9480
	ld (_RAM_C3A7_), hl
	ld iy, _RAM_C3C0_
	ld (iy+0), $0E
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a
	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a
	ld hl, $9472
	ld (_RAM_C3C7_), hl
	inc (ix+26)
	ld a, $AC
	ld (_RAM_C110_), a
	ret

; 15th entry of Jump Table from 7817 (indexed by _RAM_C3BA_)
_LABEL_7868_:
	call _LABEL_7D92_
	ld a, (_RAM_C3C0_)
	or a
	jp z, _LABEL_5540_
	ld a, (_RAM_C3E0_)
	or a
	ret nz
	ld iy, _RAM_C3E0_
	ld (iy+0), $1A
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3EC_), a
	ld a, (_RAM_C3AE_)
	add a, $10
	ld (_RAM_C3EE_), a
	ld hl, $FF00
	ld (_RAM_C3EF_), hl
	ld hl, $974B
	ld (_RAM_C3E7_), hl
	set 1, (iy+1)
	ret

; 26th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_789E_:
	jp _LABEL_7D92_

; 31st entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_78A1_:
	ld a, (_RAM_C3BA_)
	ld hl, _DATA_78A9_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 78A9 to 78C6 (15 entries, indexed by _RAM_C3BA_)
_DATA_78A9_:
.dw _LABEL_7175_ _LABEL_71A9_ _LABEL_71C5_ _LABEL_7209_ _LABEL_7230_ _LABEL_724A_ _LABEL_7278_ _LABEL_72AC_
.dw _LABEL_733B_ _LABEL_7350_ _LABEL_736B_ _LABEL_78C7_ _LABEL_73C4_ _LABEL_78EA_ _LABEL_7804_

; 12th entry of Jump Table from 7817 (indexed by _RAM_C3BA_)
_LABEL_78C7_:
	call _LABEL_7228_
	ret z
	call _LABEL_2BFA_
	call _LABEL_763A_
	bit 0, (ix+3)
	jp z, _LABEL_5540_
	inc (ix+26)
	ld (ix+22), $28
	ld a, $0B
	ld (_RAM_C011_), a
	ld a, $07
	ld (_RAM_C01F_), a
	ret

; 14th entry of Jump Table from 78A9 (indexed by _RAM_C3BA_)
_LABEL_78EA_:
	ld hl, $936D
	ld (_RAM_C3A7_), hl
	dec (ix+22)
	ret nz
	ld hl, $9395
	ld (_RAM_C3A7_), hl
	ld iy, _RAM_C3C0_
	ld (iy+0), $0F
	ld a, (_RAM_C3AC_)
	ld (_RAM_C3CC_), a
	ld a, (_RAM_C3AE_)
	ld (_RAM_C3CE_), a
	ld hl, $9387
	ld (_RAM_C3C7_), hl
	inc (ix+26)
	ld a, $AC
	ld (_RAM_C110_), a
	ret

_LABEL_791D_:
	ld hl, _RAM_C3C0_
	ld b, $16
-:
	call _LABEL_278D_
	inc hl
	djnz -
	call _LABEL_9DF3_
	ld a, $84
	ld (_RAM_FFFF_), a
	ld hl, _DATA_118E9_
	ld de, $7000
	di
	jp _LABEL_293_

_LABEL_793A_:
	ld hl, _RAM_C908_
	ld de, _RAM_C260_
	ld bc, $002E
	ldir
	ld hl, _DATA_769C_
	ld de, _RAM_C908_
	ld bc, $0008
	ldir
	ld hl, _DATA_7764_
	ld de, _RAM_C2A0_
	ld bc, $000B
	ldir
	ld hl, _RAM_C5C0_
	push hl
	call _LABEL_278D_
	pop hl
	ld (hl), $0C
	ret

_LABEL_7966_:
	ld de, _RAM_C908_
	ld hl, _RAM_C260_
	ld bc, $002E
	ldir
	ld hl, _RAM_D000_
	ld de, _RAM_CA08_
	ld bc, $00EC
	ldir
	ld a, $01
	ld (_RAM_C216_), a
	ret

; 12th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7982_:
	bit 0, (ix+1)
	ret nz
	set 0, (ix+1)
	ld hl, $C2A0
	ld (_RAM_C5C7_), hl
	ld (ix+12), $28
	ld (ix+14), $30
	ret

; 13th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_799A_:
	ld a, (_RAM_C3DA_)
	ld hl, _DATA_79A2_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 79A2 to 79A9 (4 entries, indexed by _RAM_C3DA_)
_DATA_79A2_:
.dw _LABEL_79AA_ _LABEL_79C9_ _LABEL_79E9_ _LABEL_7A72_

; 1st entry of Jump Table from 79A2 (indexed by _RAM_C3DA_)
_LABEL_79AA_:
	ld a, (_RAM_C3CE_)
	cp (ix+23)
	jr nc, +
	inc (ix+26)
	ld hl, $FF00
	ld (_RAM_C3CF_), hl
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, $FF00
	ld (_RAM_C3D1_), hl
	ret

; 2nd entry of Jump Table from 79A2 (indexed by _RAM_C3DA_)
_LABEL_79C9_:
	call _LABEL_7A09_
	ld a, (_RAM_C3CE_)
	cp (ix+23)
	jr c, +
	inc (ix+26)
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, (_RAM_C3D1_)
	ld de, $0010
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

; 3rd entry of Jump Table from 79A2 (indexed by _RAM_C3DA_)
_LABEL_79E9_:
	call _LABEL_7A09_
	ld a, (_RAM_C3CE_)
	cp (ix+23)
	jr nc, +
	dec (ix+26)
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, (_RAM_C3D1_)
	ld de, $FFF0
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7A09_:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jr nc, _LABEL_7A39_
	bit 1, (ix+20)
	jr z, +
	ld hl, $0100
	ld (_RAM_C3CF_), hl
	ld a, (_RAM_C3CC_)
	cp $E0
	ret c
	res 1, (ix+20)
	ret

+:
	ld hl, $FF00
	ld (_RAM_C3CF_), hl
	ld a, (_RAM_C3CC_)
	cp $11
	ret nc
	set 1, (ix+20)
	ret

_LABEL_7A39_:
	pop af
_LABEL_7A3A_:
	res 7, (ix+1)
	inc (ix+2)
	ld a, (_RAM_C3C2_)
	cp $03
	jp nc, _LABEL_559E_
	ld a, $8D
	ld (_RAM_C110_), a
	ld a, (_RAM_C3DA_)
	ld (_RAM_C3D8_), a
	ld (ix+26), $03
	ld (ix+22), $3C
	ld hl, (_RAM_C3D1_)
	ld (_RAM_C3DE_), hl
	ld hl, (_RAM_C3CF_)
	ld (_RAM_C3DC_), hl
	ld hl, $0000
	ld (_RAM_C3D1_), hl
	ld (_RAM_C3CF_), hl
	ret

; 4th entry of Jump Table from 79A2 (indexed by _RAM_C3DA_)
_LABEL_7A72_:
	dec (ix+22)
	ret nz
	ld a, (_RAM_C3D8_)
	ld (_RAM_C3DA_), a
	ld hl, (_RAM_C3DE_)
	ld (_RAM_C3D1_), hl
	ld hl, (_RAM_C3DC_)
	ld (_RAM_C3CF_), hl
	ret

; 14th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7A89_:
	ld a, (_RAM_C3DA_)
	ld hl, _DATA_7A91_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 7A91 to 7A98 (4 entries, indexed by _RAM_C3DA_)
_DATA_7A91_:
.dw _LABEL_7A99_ _LABEL_7ABB_ _LABEL_7AEC_ _LABEL_7A72_

; 1st entry of Jump Table from 7A91 (indexed by _RAM_C3DA_)
_LABEL_7A99_:
	ld a, (_RAM_C3CE_)
	cp $28
	jr nc, +
	inc (ix+26)
	ld hl, $0200
	ld (_RAM_C3CF_), hl
	ld hl, $FB34
	ld (_RAM_C3D1_), hl
	set 1, (ix+20)
	ret

+:
	ld hl, $FF00
	ld (_RAM_C3D1_), hl
	ret

; 2nd entry of Jump Table from 7A91 (indexed by _RAM_C3DA_)
_LABEL_7ABB_:
	call _LABEL_7B11_
	ld a, (_RAM_C3CE_)
	cp $28
	jr c, ++
	inc (ix+26)
	ld hl, $04CC
	ld (_RAM_C3D1_), hl
	ld hl, _RAM_C3D4_
	ld a, (hl)
	xor $02
	ld (hl), a
	ld hl, $FE00
	jr z, +
	ld hl, $0200
+:
	ld (_RAM_C3CF_), hl
	ret

++:
	ld hl, (_RAM_C3D1_)
	ld de, $005E
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

; 3rd entry of Jump Table from 7A91 (indexed by _RAM_C3DA_)
_LABEL_7AEC_:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_7A3A_
	ld a, (_RAM_C3CE_)
	cp $28
	jr nc, +
	dec (ix+26)
	ld hl, $FB34
	ld (_RAM_C3D1_), hl
	ret

+:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE2
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7B11_:
	call _LABEL_7D92_
	call _LABEL_7D04_
	jp nc, _LABEL_7A39_
	bit 1, (ix+20)
	ld de, $0028
	jr z, +
	ld de, $FFD8
+:
	ld hl, (_RAM_C3CF_)
	add hl, de
	ld (_RAM_C3CF_), hl
	ret

; 15th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
_LABEL_7B2E_:
	call _LABEL_7D92_
	ld a, (_RAM_C3DB_)
	or a
	jr z, +
	dec (ix+27)
	jr ++

+:
	call _LABEL_7D04_
	jr c, ++
	inc (ix+2)
	ld a, (_RAM_C3C2_)
	cp $03
	jp nc, _LABEL_559E_
	ld a, $8D
	ld (_RAM_C110_), a
	ld (ix+27), $1E
++:
	ld a, (_RAM_C3DA_)
	ld hl, _DATA_7B5D_
	rst $20	; _LABEL_20_
	ret

; Jump Table from 7B5D to 7B70 (10 entries, indexed by _RAM_C3DA_)
_DATA_7B5D_:
.dw _LABEL_7B71_ _LABEL_7B81_ _LABEL_7B92_ _LABEL_7B81_ _LABEL_7BA3_ _LABEL_7BAD_ _LABEL_7BBE_ _LABEL_7BAD_
.dw _LABEL_7BCF_ _LABEL_7BE5_

; 1st entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7B71_:
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ld a, (_RAM_C3CE_)
	cp $70
	ret nc
	inc (ix+26)
	ret

; 2nd entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7B81_:
	call _LABEL_7C09_
	call _LABEL_7C14_
	ret nz
	ld hl, $FE00
	ld (_RAM_C3CF_), hl
	inc (ix+26)
	ret

; 3rd entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7B92_:
	call _LABEL_7C21_
	call _LABEL_7BFC_
	ret nz
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 5th entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7BA3_:
	ld a, (_RAM_C3CC_)
	cp $48
	ret nc
	inc (ix+26)
	ret

; 6th entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7BAD_:
	call _LABEL_7C39_
	call _LABEL_7BFC_
	ret nz
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 7th entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7BBE_:
	call _LABEL_7C09_
	call _LABEL_7C2C_
	ret nz
	ld hl, $0200
	ld (_RAM_C3D1_), hl
	inc (ix+26)
	ret

; 9th entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7BCF_:
	ld a, (_RAM_C3CE_)
	cp $88
	ret c
	ld hl, $0000
	ld (_RAM_C3D1_), hl
	ld hl, $0400
	ld (_RAM_C3CF_), hl
	inc (ix+26)
	ret

; 10th entry of Jump Table from 7B5D (indexed by _RAM_C3DA_)
_LABEL_7BE5_:
	ld a, (_RAM_C3CC_)
	cp $B0
	ret c
	ld hl, $0000
	ld (_RAM_C3CF_), hl
	ld hl, $FE00
	ld (_RAM_C3D1_), hl
	ld (ix+26), $00
	ret

_LABEL_7BFC_:
	ld hl, (_RAM_C3CF_)
	ld de, $0020
	or a
	adc hl, de
	ld (_RAM_C3CF_), hl
	ret

_LABEL_7C09_:
	ld hl, (_RAM_C3CF_)
	ld de, $FFE0
	add hl, de
	ld (_RAM_C3CF_), hl
	ret

_LABEL_7C14_:
	ld hl, (_RAM_C3D1_)
	ld de, $0020
	or a
	adc hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C21_:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE0
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C2C_:
	ld hl, (_RAM_C3D1_)
	ld de, $FFE0
	or a
	adc hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C39_:
	ld hl, (_RAM_C3D1_)
	ld de, $0020
	add hl, de
	ld (_RAM_C3D1_), hl
	ret

_LABEL_7C44_:
	ld a, (ix+12)
	add a, e
_LABEL_7C48_:
	ld hl, (_RAM_C0AF_)
	sub h
	ld c, a
	rra
	rra
	and $3E
	ld e, a
	ld a, (ix+14)
	add a, d
-:
	ld hl, (_RAM_C0BD_)
	add a, h
	jr nc, +
	add a, $20
+:
	cp $E0
	jr c, +
	add a, $20
+:
	ld b, a
	and $F8
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld d, $C8
	add hl, de
	inc hl
	ld a, (hl)
	ret

_LABEL_7C73_:
	ld a, e
	ld hl, (_RAM_C0AF_)
	sub h
	ld c, a
	rra
	rra
	and $3E
	ld e, a
	ld a, d
	jp -

_LABEL_7C82_:
	ld a, e
	ld c, a
	rra
	rra
	and $3E
	ld e, a
	ld a, d
	jp -

_LABEL_7C8D_:
	ld a, l
	and $C0
	ld d, a
	ld a, c
	add a, e
	ld c, a
	rra
	rra
	and $3E
	or d
	inc a
	ld l, a
	ret

_LABEL_7C9C_:
	ld a, l
	and $3F
	ld e, a
	ld a, b
	add a, d
	ld b, a
	cp $E0
	jr c, +
	sub $E0
+:
	and $F8
	ld l, a
	ld h, $00
	add hl, hl
	add hl, hl
	add hl, hl
	ld d, $C8
	add hl, de
	ret

_LABEL_7CB5_:
	ld a, (iy+0)
	or a
	scf
	ret z
_LABEL_7CBB_:
	ld a, (iy+9)
	or (iy+10)
	scf
	ret nz
	ld l, (iy+19)
	ld h, $00
	ld bc, _DATA_91D0_
	add hl, bc
	ex de, hl
	ld l, (ix+19)
	ld h, $00
	add hl, bc
	ld a, (de)
	ld b, a
	inc de
	ld a, (de)
	add a, b
	add a, (iy+12)
	jr nc, _LABEL_7CDF_
	ld a, $FF
_LABEL_7CDF_:
	sub (hl)
	sub (ix+12)
	ret c
	ld c, a
	inc hl
	ld a, (de)
	add a, (hl)
	cp c
	ret c
	inc de
	inc hl
	ld a, (de)
	ld b, a
	inc de
	ld a, (de)
	add a, b
	add a, (iy+14)
	sub (hl)
	sub (ix+14)
	ret c
	inc hl
	ld c, a
	ld a, (de)
	add a, (hl)
	cp c
	ret c
	set 7, (ix+1)
	ret

_LABEL_7D04_:
	ld a, (_RAM_C31A_)
	cp $05
	jp z, _LABEL_7D31_
	ld a, (_RAM_C054_)
	ld hl, _DATA_7D15_
	jp _LABEL_20_

; Jump Table from 7D15 to 7D30 (14 entries, indexed by _RAM_C054_)
_DATA_7D15_:
.dw _LABEL_7D31_ _LABEL_7D31_ _LABEL_7D31_ _LABEL_7D67_ _LABEL_7D7D_ _LABEL_7D8B_ _LABEL_7D31_ _LABEL_7D84_
.dw _LABEL_7D5A_ _LABEL_7D5A_ _LABEL_7D31_ _LABEL_7D31_ _LABEL_7D31_ _LABEL_7D31_

; 1st entry of Jump Table from 7D15 (indexed by _RAM_C054_)
_LABEL_7D31_:
	ld a, (_RAM_C31C_)
	bit 0, a
	scf
	ret z
	ld iy, _RAM_C300_
	ld a, (_RAM_C313_)
	add a, $04
	ld l, a
	ld h, $00
	ld bc, _DATA_91D0_
	add hl, bc
	ex de, hl
	ld l, (ix+19)
	ld h, $00
	add hl, bc
	ld a, (de)
	ld b, a
	inc de
	ld a, (de)
	add a, b
	add a, (iy+12)
	jp _LABEL_7CDF_

; 9th entry of Jump Table from 7D15 (indexed by _RAM_C054_)
_LABEL_7D5A_:
	ld iy, _RAM_C320_
	call _LABEL_7CB5_
	ret c
	set 7, (iy+1)
	ret

; 4th entry of Jump Table from 7D15 (indexed by _RAM_C054_)
_LABEL_7D67_:
	ld iy, _RAM_C340_
	call _LABEL_7CBB_
	jr nc, +
	ld iy, _RAM_C320_
	call _LABEL_7CBB_
	ret c
+:
	set 7, (iy+1)
	ret

; 5th entry of Jump Table from 7D15 (indexed by _RAM_C054_)
_LABEL_7D7D_:
	ld iy, _RAM_C360_
	jp _LABEL_7CBB_

; 8th entry of Jump Table from 7D15 (indexed by _RAM_C054_)
_LABEL_7D84_:
	ld iy, _RAM_C300_
	jp _LABEL_7CBB_

; 6th entry of Jump Table from 7D15 (indexed by _RAM_C054_)
_LABEL_7D8B_:
	ld iy, _RAM_C320_
	jp _LABEL_7CBB_

_LABEL_7D92_:
	ld a, (_RAM_C31A_)
	cp $0F
	ret nc
	ld a, (_RAM_C054_)
	ld hl, _DATA_7DA1_
	jp _LABEL_20_

; Jump Table from 7DA1 to 7DB4 (10 entries, indexed by _RAM_C054_)
_DATA_7DA1_:
.dw _LABEL_7DB5_ _LABEL_7DB5_ _LABEL_7DC1_ _LABEL_7DB5_ _LABEL_7DC1_ _LABEL_7DB5_ _LABEL_7DB5_ _LABEL_7DC1_
.dw _LABEL_7DB5_ _LABEL_7DB5_

; 1st entry of Jump Table from 7DA1 (indexed by _RAM_C054_)
_LABEL_7DB5_:
	ld iy, _RAM_C300_
	call _LABEL_7CBB_
	ret c
	set 7, (iy+1)
; 3rd entry of Jump Table from 7DA1 (indexed by _RAM_C054_)
_LABEL_7DC1_:
	ret

; 8th entry of Jump Table from 3B (indexed by _RAM_C01F_)
_LABEL_7DC2_:
	exx
	bit 7, (hl)
	jp z, _LABEL_7ECC_
	ld a, $09
	call _LABEL_2E6_
	ld a, $01
	ld (_RAM_C03E_), a
	ld hl, _RAM_C07D_
	bit 7, (hl)
	jp z, +
	res 7, (hl)
	dec (hl)
	set 7, (hl)
	jp nz, +++
	ld hl, (_RAM_C038_)
	inc hl
	jp ++

+:
	dec (hl)
	jp nz, +++
	ld hl, (_RAM_C038_)
++:
	ld a, (hl)
	ld (_RAM_C07D_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C07E_), a
	inc hl
	ld (_RAM_C038_), hl
+++:
	ld a, (_RAM_C07E_)
	and $E0
	jp z, +++
	bit 7, a
	jp nz, ++
	rlca
	rlca
	jp c, +
	ld a, $08
	add a, (ix+12)
	ld (ix+12), a
	ret

+:
	ld a, (ix+12)
	sub $08
	ld (ix+12), a
	ret

++:
	rlca
	rlca
	jp c, +
	ld a, $08
	add a, (ix+14)
	ld (ix+14), a
	ret

+:
	ld a, (ix+14)
	sub $08
	ld (ix+14), a
	ret

+++:
	ld a, $B1
	ld (_RAM_C110_), a
	ld a, $82
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C076_)
	or a
	jp z, _LABEL_7E57_
	ld hl, (_RAM_C070_)
	push hl
	pop ix
	ld (ix+5), $0A
	ld (ix+6), $0A
_LABEL_7E57_:
	ld a, $01
	call _LABEL_2E6_
	ld a, (_RAM_C006_)
	and $30
	jp nz, ++
	ld a, (_RAM_C076_)
	or a
	jp z, +
	ld hl, (_RAM_C072_)
	call _LABEL_280E_
	ld hl, _RAM_C700_
	ld (_RAM_C009_), hl
	call _LABEL_26D7_
+:
	jp _LABEL_7E57_

++:
	xor a
	ld (_RAM_C076_), a
	ld hl, _RAM_C700_
	ld (hl), $E0
	ld de, _RAM_C700_ + 1
	ld bc, $0005
	ldir
	ld ix, $C300
	ld a, $89
	ld (_RAM_C01F_), a
	ld a, (_RAM_C215_)
	or a
	jp nz, +
	ld a, $8A
	ld (_RAM_C01F_), a
	ld a, (_RAM_C055_)
	or a
	jp z, +
	ld a, $85
	ld (_RAM_C01F_), a
+:
	call _LABEL_2694_
	ld a, $01
	call _LABEL_2E6_
	di
	call _LABEL_2EF_
	ld hl, _RAM_C800_
	ld de, $7800
	ld bc, $0700
	call _LABEL_145_
	call _LABEL_2F6_
	ei
	ret

_LABEL_7ECC_:
	ld a, $82
	ld (_RAM_FFFF_), a
	call _LABEL_2694_
	ld a, $01
	call _LABEL_2E6_
	ld hl, _RAM_C01F_
	set 7, (hl)
	ld a, (_RAM_C215_)
	or a
	jp z, +
	ld a, $84
	ld (_RAM_C110_), a
+:
	ld a, $87
	ld (_RAM_FFFF_), a
	ld a, (_RAM_C011_)
	ld hl, _DATA_7F49_ - 2
	rst $10	; _LABEL_10_
	ld a, (hl)
	ld (_RAM_C07D_), a
	inc hl
	ld a, (hl)
	ld (_RAM_C07E_), a
	inc hl
	ld (_RAM_C038_), hl
	ld hl, $0100
	ld (_RAM_C074_), hl
	ld ix, _RAM_CFE0_
	ld (ix+14), $11
	ld (ix+12), $09
	xor a
	ld (_RAM_C011_), a
	ld (_RAM_C03E_), a
	ld a, $94
	ld (_RAM_C110_), a
	ret

; 8th entry of Jump Table from 127 (indexed by _RAM_C01F_)
_LABEL_7F22_:
	ld a, (_RAM_C03E_)
	or a
	ret z
	ld de, $0100
	call _LABEL_7C44_
	ld a, h
	xor $B0
	ld h, a
	dec hl
	ex de, hl
	rst $08	; _LABEL_8_
	ld hl, (_RAM_C038_)
	ld a, (hl)
	out (Port_VDPData), a
	ld a, $10
	out (Port_VDPData), a
	ld a, (_RAM_C07D_)
	bit 7, a
	ret nz
	inc hl
	ld (_RAM_C038_), hl
	ret

; Pointer Table from 7F49 to 7F74 (22 entries, indexed by _RAM_C011_)
_DATA_7F49_:
.dw _DATA_1F109_ _DATA_1F155_ _DATA_1F19D_ _DATA_1F32C_ _DATA_1F272_ _DATA_1F1B8_ _DATA_1F3E6_ _DATA_1F474_
.dw _DATA_1F497_ _DATA_1F4B8_ _DATA_1F4FA_ _DATA_1F569_ _DATA_1F664_ _DATA_1F7DC_ _DATA_1F8E5_ _DATA_1FA5D_
.dw _DATA_1FB41_ _DATA_1FB89_ _DATA_1FB89_ _DATA_1FB89_ _DATA_1FC48_ _DATA_1FC84_

; Data from 7F75 to 7FEF (123 bytes)
.dsb 123, $FF

.BANK 1 SLOT 1
.ORG $0000

; Data from 7FF0 to 7FFF (16 bytes)
.db $54 $4D $52 $20 $53 $45 $47 $41 $20 $20 $22 $12 $67 $50 $00 $4F

.BANK 2
.ORG $0000

; 10th entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 8000 to 800D (14 bytes)
_DATA_8000_:
.db $04 $88 $00 $00 $08 $08 $00 $8C $08 $8D $00 $8E $08 $8F

; 9th entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 800E to 801B (14 bytes)
_DATA_800E_:
.db $04 $88 $00 $00 $08 $08 $00 $B7 $08 $B8 $00 $B9 $08 $BA

; 8th entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 801C to 8021 (6 bytes)
_DATA_801C_:
.db $04 $88 $00 $00 $08 $08

; 1st entry of Pointer Table from 5D85 (indexed by _RAM_CF98_)
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

; 3rd entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 8057 to 8064 (14 bytes)
_DATA_8057_:
.db $04 $88 $00 $00 $08 $08 $00 $88 $08 $89 $00 $8A $08 $8B

; 4th entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 8065 to 8072 (14 bytes)
_DATA_8065_:
.db $04 $88 $00 $00 $08 $08 $00 $59 $08 $5A $00 $5B $08 $5C

; Data from 8073 to 80C4 (82 bytes)
_DATA_8073_:
.db $0A $00 $00 $00 $08 $08 $08 $08 $10 $10 $10 $10 $0D $42 $15 $43
.db $00 $44 $08 $45 $10 $46 $18 $47 $00 $48 $08 $49 $10 $4A $18 $4B
.db $01 $88 $00 $00 $10 $01 $88 $00 $00 $11 $03 $BD $80 $B2 $80 $A4
.db $80 $04 $00 $F8 $F8 $00 $00 $03 $60 $0B $61 $01 $62 $09 $63 $03
.db $00 $F8 $00 $00 $05 $64 $02 $65 $0A $66 $02 $00 $00 $00 $03 $67
.db $0B $68

; 2nd entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 80C5 to 80D2 (14 bytes)
_DATA_80C5_:
.db $04 $88 $00 $00 $08 $08 $00 $7C $08 $7D $00 $7E $08 $7F

; 1st entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 80D3 to 80E0 (14 bytes)
_DATA_80D3_:
.db $04 $88 $00 $00 $08 $08 $00 $88 $08 $89 $00 $8A $08 $8B

; Data from 80E1 to 8101 (33 bytes)
_DATA_80E1_:
.db $01 $6C $00 $00 $1F $04 $00 $00 $00 $08 $08 $00 $18 $08 $19 $00
.db $1A $08 $1B $04 $00 $00 $00 $08 $08 $00 $10 $08 $11 $00 $12 $08
.db $13

; 4th entry of Pointer Table from 5D85 (indexed by _RAM_CF98_)
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

; 2nd entry of Pointer Table from 5D85 (indexed by _RAM_CF98_)
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

; 3rd entry of Pointer Table from 5D85 (indexed by _RAM_CF98_)
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

; Data from 81B7 to 81B7 (1 bytes)
_DATA_81B7_:
.db $02

; Pointer Table from 81B8 to 81BB (2 entries, indexed by _RAM_CF84_)
.dw _DATA_81BC_ _DATA_81D0_

; 1st entry of Pointer Table from 81B8 (indexed by _RAM_CF84_)
; Data from 81BC to 81CF (20 bytes)
_DATA_81BC_:
.db $06 $54 $00 $00 $00 $08 $08 $08 $00 $7D $08 $7E $10 $7F $00 $80
.db $08 $81 $10 $82

; 2nd entry of Pointer Table from 81B8 (indexed by _RAM_CF84_)
; Data from 81D0 to 81E3 (20 bytes)
_DATA_81D0_:
.db $06 $54 $00 $00 $00 $08 $08 $08 $00 $83 $08 $84 $10 $85 $02 $86
.db $0A $87 $12 $88

; Data from 81E4 to 81E4 (1 bytes)
_DATA_81E4_:
.db $02

; Pointer Table from 81E5 to 81E8 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_81E9_ _DATA_81FD_

; 1st entry of Pointer Table from 81E5 (indexed by _RAM_CF84_)
; Data from 81E9 to 81FC (20 bytes)
_DATA_81E9_:
.db $06 $58 $00 $00 $00 $08 $08 $08 $10 $89 $08 $8A $00 $8B $10 $8C
.db $08 $8D $00 $8E

; 2nd entry of Pointer Table from 81E5 (indexed by _RAM_CF84_)
; Data from 81FD to 8210 (20 bytes)
_DATA_81FD_:
.db $06 $58 $00 $00 $00 $08 $08 $08 $10 $8F $08 $90 $00 $91 $0E $92
.db $06 $93 $FE $94

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

; Data from 8359 to 8366 (14 bytes)
_DATA_8359_:
.db $04 $6C $00 $00 $08 $08 $01 $36 $09 $37 $00 $38 $08 $39

; Data from 8367 to 8371 (11 bytes)
_DATA_8367_:
.db $03 $6C $00 $08 $08 $05 $3A $03 $3B $0B $3C

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
_DATA_8A18_:
.db $02

; Pointer Table from 8A19 to 8A1C (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8A1D_ _DATA_8A22_

; 1st entry of Pointer Table from 8A19 (indexed by _RAM_CF84_)
; Data from 8A1D to 8A21 (5 bytes)
_DATA_8A1D_:
.db $01 $00 $00 $00 $41

; 2nd entry of Pointer Table from 8A19 (indexed by _RAM_CF84_)
; Data from 8A22 to 8A26 (5 bytes)
_DATA_8A22_:
.db $01 $00 $00 $00 $40

; 5th entry of Pointer Table from 641B (indexed by _RAM_CF83_)
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
_DATA_8BD2_:
.db $02

; Pointer Table from 8BD3 to 8BD6 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8BD7_ _DATA_8BE5_

; 1st entry of Pointer Table from 8BD3 (indexed by _RAM_CF84_)
; Data from 8BD7 to 8BE4 (14 bytes)
_DATA_8BD7_:
.db $04 $94 $00 $00 $08 $08 $01 $55 $09 $56 $00 $57 $08 $58

; 2nd entry of Pointer Table from 8BD3 (indexed by _RAM_CF84_)
; Data from 8BE5 to 8BF2 (14 bytes)
_DATA_8BE5_:
.db $04 $94 $00 $00 $08 $08 $01 $59 $09 $5A $00 $5B $08 $5C

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

; 6th entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 8C0E to 8C1B (14 bytes)
_DATA_8C0E_:
.db $04 $64 $00 $00 $08 $08 $00 $2E $08 $2F $00 $30 $08 $31

; 7th entry of Pointer Table from 641B (indexed by _RAM_CF83_)
; Data from 8C1C to 8C29 (14 bytes)
_DATA_8C1C_:
.db $04 $64 $00 $00 $08 $08 $00 $32 $08 $33 $00 $34 $08 $35

; Data from 8C2A to 8C2A (1 bytes)
_DATA_8C2A_:
.db $02

; Pointer Table from 8C2B to 8C2E (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8C2F_ _DATA_8C3D_

; 1st entry of Pointer Table from 8C2B (indexed by _RAM_CF84_)
; Data from 8C2F to 8C3C (14 bytes)
_DATA_8C2F_:
.db $04 $64 $00 $00 $08 $08 $01 $20 $09 $21 $02 $22 $0A $23

; 2nd entry of Pointer Table from 8C2B (indexed by _RAM_CF84_)
; Data from 8C3D to 8C4A (14 bytes)
_DATA_8C3D_:
.db $04 $64 $00 $00 $08 $08 $00 $24 $08 $21 $01 $25 $09 $26

; Data from 8C4B to 8C4B (1 bytes)
_DATA_8C4B_:
.db $02

; Pointer Table from 8C4C to 8C4F (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8C50_ _DATA_8C5E_

; 1st entry of Pointer Table from 8C4C (indexed by _RAM_CF84_)
; Data from 8C50 to 8C5D (14 bytes)
_DATA_8C50_:
.db $04 $94 $00 $00 $08 $08 $07 $5D $FF $5E $08 $5F $00 $60

; 2nd entry of Pointer Table from 8C4C (indexed by _RAM_CF84_)
; Data from 8C5E to 8C6B (14 bytes)
_DATA_8C5E_:
.db $04 $94 $00 $00 $08 $08 $07 $61 $FF $62 $08 $63 $00 $64

; Data from 8C6C to 8C6C (1 bytes)
_DATA_8C6C_:
.db $02

; Pointer Table from 8C6D to 8C70 (2 entries, indexed by _RAM_CF84_)
.dw _DATA_8C71_ _DATA_8C7F_

; 1st entry of Pointer Table from 8C6D (indexed by _RAM_CF84_)
; Data from 8C71 to 8C7E (14 bytes)
_DATA_8C71_:
.db $04 $64 $00 $00 $08 $08 $07 $27 $FF $28 $06 $29 $FE $2A

; 2nd entry of Pointer Table from 8C6D (indexed by _RAM_CF84_)
; Data from 8C7F to 8CC6 (72 bytes)
_DATA_8C7F_:
.db $04 $64 $00 $00 $08 $08 $08 $2B $00 $28 $07 $2C $FF $2D $0A $A0
.db $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $09 $A1 $01 $A2 $0F $A3
.db $07 $A4 $FF $A5 $0E $A6 $06 $A7 $FE $A8 $0A $A9 $02 $AA $08 $A0
.db $00 $00 $08 $08 $10 $10 $18 $18 $09 $AB $01 $AC $0A $AD $02 $AE
.db $0D $AF $05 $B0 $08 $B1 $00 $B2

; Data from 8CC7 to 8CE5 (31 bytes)
_DATA_8CC7_:
.db $03 $64 $00 $08 $08 $04 $0D $02 $0E $0A $0F $06 $8C $00 $00 $08
.db $08 $10 $10 $04 $14 $0C $15 $03 $16 $14 $16 $03 $16 $14 $16

; Data from 8CE6 to 8CE6 (1 bytes)
_DATA_8CE6_:
.db $02

; Pointer Table from 8CE7 to 8CEA (2 entries, indexed by _RAM_C304_)
.dw _DATA_8E88_ _DATA_90BC_

; Data from 8CEB to 8CEB (1 bytes)
_DATA_8CEB_:
.db $04

; Pointer Table from 8CEC to 8CF3 (4 entries, indexed by _RAM_C304_)
.dw _DATA_8D2F_ _DATA_8D41_ _DATA_8D2F_ _DATA_8D56_

; Data from 8CF4 to 8CF4 (1 bytes)
_DATA_8CF4_:
.db $04

; Pointer Table from 8CF5 to 8CFC (4 entries, indexed by _RAM_C304_)
.dw _DATA_8D6B_ _DATA_8D7D_ _DATA_8D6B_ _DATA_8D92_

; Data from 8CFD to 8CFD (1 bytes)
_DATA_8CFD_:
.db $02

; Pointer Table from 8CFE to 8D01 (2 entries, indexed by _RAM_C304_)
.dw _DATA_8E01_ _DATA_8E13_

; Data from 8D02 to 8D02 (1 bytes)
_DATA_8D02_:
.db $02

; Pointer Table from 8D03 to 8D06 (2 entries, indexed by _RAM_C304_)
.dw _DATA_8E25_ _DATA_8E37_

; Data from 8D07 to 8D07 (1 bytes)
_DATA_8D07_:
.db $04

; Pointer Table from 8D08 to 8D0F (4 entries, indexed by _RAM_C304_)
.dw _DATA_8F7B_ _DATA_8F9F_ _DATA_8FC6_ _DATA_8FEA_

; Data from 8D10 to 8D10 (1 bytes)
_DATA_8D10_:
.db $04

; Pointer Table from 8D11 to 8D18 (4 entries, indexed by _RAM_C304_)
.dw _DATA_9011_ _DATA_9035_ _DATA_905C_ _DATA_9080_

; Data from 8D19 to 8D19 (1 bytes)
_DATA_8D19_:
.db $02

; Pointer Table from 8D1A to 8D1D (2 entries, indexed by _RAM_C304_)
.dw _DATA_8F2A_ _DATA_8F45_

; Data from 8D1E to 8D1E (1 bytes)
_DATA_8D1E_:
.db $02

; Pointer Table from 8D1F to 8D22 (2 entries, indexed by _RAM_C304_)
.dw _DATA_9152_ _DATA_916D_

; Data from 8D23 to 8D23 (1 bytes)
_DATA_8D23_:
.db $03

; Pointer Table from 8D24 to 8D29 (3 entries, indexed by _RAM_C304_)
.dw _DATA_90E3_ _DATA_90F8_ _DATA_910D_

; Data from 8D2A to 8D2A (1 bytes)
_DATA_8D2A_:
.db $02

; Pointer Table from 8D2B to 8D2E (2 entries, indexed by _RAM_C304_)
.dw _DATA_8E73_ _DATA_8E88_

; 1st entry of Pointer Table from 8CEC (indexed by _RAM_C304_)
; Data from 8D2F to 8D40 (18 bytes)
_DATA_8D2F_:
.db $80 $05 $04 $00 $00 $08 $08 $10 $01 $00 $09 $01 $01 $02 $09 $03
.db $05 $04

; 2nd entry of Pointer Table from 8CEC (indexed by _RAM_C304_)
; Data from 8D41 to 8D55 (21 bytes)
_DATA_8D41_:
.db $81 $06 $04 $00 $00 $08 $08 $10 $10 $01 $00 $09 $01 $01 $02 $09
.db $03 $02 $04 $0A $05

; 4th entry of Pointer Table from 8CEC (indexed by _RAM_C304_)
; Data from 8D56 to 8D6A (21 bytes)
_DATA_8D56_:
.db $82 $06 $04 $00 $00 $08 $08 $10 $10 $01 $00 $09 $01 $01 $02 $09
.db $03 $01 $04 $09 $05

; 1st entry of Pointer Table from 8CF5 (indexed by _RAM_C304_)
; Data from 8D6B to 8D7C (18 bytes)
_DATA_8D6B_:
.db $83 $05 $0C $00 $00 $08 $08 $10 $00 $00 $08 $01 $00 $02 $08 $03
.db $04 $04

; 2nd entry of Pointer Table from 8CF5 (indexed by _RAM_C304_)
; Data from 8D7D to 8D91 (21 bytes)
_DATA_8D7D_:
.db $84 $06 $0C $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 4th entry of Pointer Table from 8CF5 (indexed by _RAM_C304_)
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

; 1st entry of Pointer Table from 8CFE (indexed by _RAM_C304_)
; Data from 8E01 to 8E12 (18 bytes)
_DATA_8E01_:
.db $8A $05 $1C $00 $00 $08 $08 $08 $01 $00 $09 $01 $01 $02 $09 $03
.db $11 $04

; 2nd entry of Pointer Table from 8CFE (indexed by _RAM_C304_)
; Data from 8E13 to 8E24 (18 bytes)
_DATA_8E13_:
.db $8B $05 $1C $00 $00 $08 $08 $08 $01 $00 $09 $01 $01 $02 $09 $03
.db $11 $04

; 1st entry of Pointer Table from 8D03 (indexed by _RAM_C304_)
; Data from 8E25 to 8E36 (18 bytes)
_DATA_8E25_:
.db $8C $05 $24 $00 $00 $08 $08 $08 $08 $00 $10 $01 $00 $02 $08 $03
.db $10 $04

; 2nd entry of Pointer Table from 8D03 (indexed by _RAM_C304_)
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

; 1st entry of Pointer Table from 8D2B (indexed by _RAM_C304_)
; Data from 8E73 to 8E87 (21 bytes)
_DATA_8E73_:
.db $90 $06 $0C $01 $01 $09 $09 $11 $11 $00 $00 $08 $01 $00 $02 $08
.db $03 $02 $04 $0A $05

; 1st entry of Pointer Table from 8CE7 (indexed by _RAM_C304_)
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

; 1st entry of Pointer Table from 8D1A (indexed by _RAM_C304_)
; Data from 8F2A to 8F44 (27 bytes)
_DATA_8F2A_:
.db $97 $08 $3C $00 $00 $08 $08 $08 $10 $10 $10 $02 $00 $0A $01 $01
.db $02 $09 $03 $11 $04 $00 $05 $08 $06 $10 $07

; 2nd entry of Pointer Table from 8D1A (indexed by _RAM_C304_)
; Data from 8F45 to 8F5F (27 bytes)
_DATA_8F45_:
.db $98 $08 $3C $00 $00 $08 $08 $08 $10 $10 $10 $02 $00 $0A $01 $01
.db $02 $09 $03 $11 $04 $00 $05 $08 $06 $10 $07

; Data from 8F60 to 8F7A (27 bytes)
_DATA_8F60_:
.db $99 $08 $40 $00 $00 $08 $08 $08 $10 $10 $10 $01 $00 $09 $01 $01
.db $02 $09 $03 $11 $04 $00 $05 $08 $06 $10 $07

; 1st entry of Pointer Table from 8D08 (indexed by _RAM_C304_)
; Data from 8F7B to 8F9E (36 bytes)
_DATA_8F7B_:
.db $9D $0B $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $00 $00
.db $08 $01 $10 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $02 $09 $0A $0A

; 2nd entry of Pointer Table from 8D08 (indexed by _RAM_C304_)
; Data from 8F9F to 8FC5 (39 bytes)
_DATA_8F9F_:
.db $9E $0C $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $02 $09 $0A $0A $12 $0B

; 3rd entry of Pointer Table from 8D08 (indexed by _RAM_C304_)
; Data from 8FC6 to 8FE9 (36 bytes)
_DATA_8FC6_:
.db $9F $0B $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $02 $00
.db $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $02 $09 $0A $0A

; 4th entry of Pointer Table from 8D08 (indexed by _RAM_C304_)
; Data from 8FEA to 9010 (39 bytes)
_DATA_8FEA_:
.db $A0 $0C $4C $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $02 $09 $0A $0A $12 $0B

; 1st entry of Pointer Table from 8D11 (indexed by _RAM_C304_)
; Data from 9011 to 9034 (36 bytes)
_DATA_9011_:
.db $A1 $0B $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $00 $00
.db $08 $01 $10 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $06 $09 $0E $0A

; 2nd entry of Pointer Table from 8D11 (indexed by _RAM_C304_)
; Data from 9035 to 905B (39 bytes)
_DATA_9035_:
.db $A2 $0C $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $05 $09 $0D $0A $15 $0B

; 3rd entry of Pointer Table from 8D11 (indexed by _RAM_C304_)
; Data from 905C to 907F (36 bytes)
_DATA_905C_:
.db $A3 $0B $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $02 $00
.db $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10 $08
.db $06 $09 $0E $0A

; 4th entry of Pointer Table from 8D11 (indexed by _RAM_C304_)
; Data from 9080 to 90A6 (39 bytes)
_DATA_9080_:
.db $A4 $0C $50 $00 $00 $00 $08 $08 $08 $10 $10 $10 $18 $18 $18 $02
.db $00 $0A $01 $12 $02 $00 $03 $08 $04 $10 $05 $00 $06 $08 $07 $10
.db $08 $05 $09 $0D $0A $15 $0B

; Data from 90A7 to 90BB (21 bytes)
_DATA_90A7_:
.db $A5 $06 $04 $00 $00 $08 $08 $10 $10 $01 $00 $09 $01 $01 $02 $09
.db $03 $00 $04 $08 $05

; 2nd entry of Pointer Table from 8CE7 (indexed by _RAM_C304_)
; Data from 90BC to 90D0 (21 bytes)
_DATA_90BC_:
.db $A6 $06 $0C $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $00 $04 $08 $05

; Data from 90D1 to 90E2 (18 bytes)
_DATA_90D1_:
.db $A8 $05 $0C $00 $00 $08 $08 $10 $00 $00 $08 $01 $00 $02 $08 $03
.db $04 $04

; 1st entry of Pointer Table from 8D24 (indexed by _RAM_C304_)
; Data from 90E3 to 90F7 (21 bytes)
_DATA_90E3_:
.db $A9 $06 $00 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 2nd entry of Pointer Table from 8D24 (indexed by _RAM_C304_)
; Data from 90F8 to 910C (21 bytes)
_DATA_90F8_:
.db $AA $06 $00 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 3rd entry of Pointer Table from 8D24 (indexed by _RAM_C304_)
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

; 1st entry of Pointer Table from 8D1F (indexed by _RAM_C304_)
; Data from 9152 to 916C (27 bytes)
_DATA_9152_:
.db $9B $08 $44 $00 $00 $08 $08 $08 $10 $10 $10 $00 $00 $08 $01 $00
.db $02 $08 $03 $10 $04 $00 $05 $08 $06 $10 $07

; 2nd entry of Pointer Table from 8D1F (indexed by _RAM_C304_)
; Data from 916D to 9187 (27 bytes)
_DATA_916D_:
.db $9C $08 $44 $00 $00 $08 $08 $08 $10 $10 $10 $00 $00 $08 $01 $00
.db $02 $08 $03 $10 $04 $00 $05 $08 $06 $10 $07

; Data from 9188 to 9188 (1 bytes)
_DATA_9188_:
.db $04

; Pointer Table from 9189 to 9190 (4 entries, indexed by _RAM_C304_)
.dw _DATA_9191_ _DATA_91A6_ _DATA_9191_ _DATA_91BB_

; 1st entry of Pointer Table from 9189 (indexed by _RAM_C304_)
; Data from 9191 to 91A5 (21 bytes)
_DATA_9191_:
.db $AD $06 $04 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $02 $04 $0A $05

; 2nd entry of Pointer Table from 9189 (indexed by _RAM_C304_)
; Data from 91A6 to 91BA (21 bytes)
_DATA_91A6_:
.db $AE $06 $04 $00 $00 $08 $08 $10 $10 $00 $00 $08 $01 $00 $02 $08
.db $03 $01 $04 $09 $05

; 4th entry of Pointer Table from 9189 (indexed by _RAM_C304_)
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

; 1st entry of Pointer Table from 7634 (indexed by _RAM_CF97_)
; Data from 92C8 to 92D5 (14 bytes)
_DATA_92C8_:
.db $04 $00 $08 $08 $10 $10 $08 $8C $10 $8D $08 $8E $10 $8F

; 2nd entry of Pointer Table from 7634 (indexed by _RAM_CF97_)
; Data from 92D6 to 92E3 (14 bytes)
_DATA_92D6_:
.db $04 $00 $08 $08 $10 $10 $08 $90 $10 $91 $08 $92 $10 $93

; 3rd entry of Pointer Table from 7634 (indexed by _RAM_CF97_)
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

; 1st entry of Pointer Table from 7650 (indexed by _RAM_C3A3_)
; Data from 9500 to 9504 (5 bytes)
_DATA_9500_:
.db $02 $0A $95 $4B $95

; 1st entry of Pointer Table from 7652 (indexed by _RAM_C3A3_)
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

; Data from 97DD to 97FF (35 bytes)
_DATA_97DD_:
.db $00 $04 $58 $59 $5B $5C $00 $04 $56 $66 $5B $6B $00 $00 $02 $69
.db $6A $00 $01 $21 $03 $86 $96 $78
.dsb 10, $00
.db $FF

; Data from 9800 to 984E (79 bytes)
_DATA_9800_:
.db $00 $00 $00 $01 $1E $00 $00 $01 $6E $00 $02 $9D $9E $00 $00 $00
.db $00 $00 $00 $03 $42 $8B $A4 $01 $A1 $03 $3E $4E $5E $02 $AB $84
.db $00 $00 $00 $00 $01 $32 $08 $2D $64 $74 $84 $91 $92 $93 $94 $01
.db $53 $00 $00 $00 $02 $71 $91 $00 $02 $6D $95 $00 $02 $64 $74 $00
.db $00 $01 $26 $01 $6E $00 $00 $03 $14 $1E $2E $02 $9E $AE $FF

_LABEL_984F_:
	call _LABEL_98AE_
	call +
	ld ix, _RAM_C118_
	ld b, $07
-:
	push bc
	bit 7, (ix+0)
	call nz, _LABEL_9ACC_
	ld de, $0020
	add ix, de
	pop bc
	djnz -
	ret

+:
	ld a, (_RAM_C111_)
	or a
	jr z, ++
	ld a, (_RAM_C112_)
	dec a
	jr z, +
	ld (_RAM_C112_), a
	jr ++

+:
	ld a, $1E
	ld (_RAM_C112_), a
	ld a, (_RAM_C111_)
	dec a
	cp $03
	jr nz, +
	xor a
+:
	ld (_RAM_C111_), a
	ld (_RAM_C120_), a
	ld (_RAM_C140_), a
	ld (_RAM_C160_), a
++:
	ld hl, _RAM_C1D8_
	bit 7, (hl)
	ret z
	inc hl
	bit 5, (hl)
	jr z, +
	ld hl, _RAM_C178_
	set 2, (hl)
	ret

+:
	ld hl, _RAM_C158_
	set 2, (hl)
	ret

_LABEL_98AE_:
	ld a, (_RAM_C110_)
	bit 7, a
	jp z, _LABEL_9DF3_
	cp $B4
	jp nc, _LABEL_9DF3_
	sub $81
	ret m
	cp $30
	jr nc, +
	ld (_RAM_C116_), a
+:
	ld c, a
	ld b, $00
	ld hl, _DATA_98DD_
	add hl, bc
	add hl, bc
	ld c, (hl)
	inc hl
	ld b, (hl)
	ld de, $005F
	add hl, de
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ld a, (_RAM_C113_)
	ld e, a
	jp (hl)

; Pointer Table from 98DD to 993C (48 entries, indexed by _RAM_C110_)
_DATA_98DD_:
.dw _DATA_9ECD_ _DATA_9F81_ _DATA_A3BD_ _DATA_A57D_ _DATA_A757_ _DATA_A8E0_ _DATA_A937_ _DATA_AAD1_
.dw _DATA_AC56_ _DATA_AC81_ _DATA_AC9B_ _DATA_ACB2_ _DATA_ACC9_ _DATA_ACE1_ _DATA_AD02_ _DATA_AD1E_
.dw _DATA_AD2C_ _DATA_AD46_ _DATA_AD8D_ _DATA_ADA7_ _DATA_ADCC_ _DATA_AE59_ _DATA_AE7F_ _DATA_AEA3_
.dw _DATA_AEB3_ _DATA_AECC_ _DATA_AEE3_ _DATA_AEFA_ _DATA_AF14_ _DATA_AF36_ _DATA_AF6D_ _DATA_AF84_
.dw _DATA_AFBD_ _DATA_AFCA_ _DATA_AFE9_ _DATA_B034_ _DATA_B04D_ _DATA_B062_ _DATA_B076_ _DATA_B090_
.dw _DATA_B0AA_ _DATA_B0BE_ _DATA_B0DD_ _DATA_B0F4_ _DATA_B11D_ _DATA_B16F_ _DATA_B189_ _DATA_B1D4_

; Jump Table from 993D to 99A2 (51 entries, indexed by _RAM_C110_)
_DATA_993D_:
.dw _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_ _LABEL_99F0_
.dw _LABEL_99F0_ _LABEL_9A7A_ _LABEL_9A7A_ _LABEL_9A7A_ _LABEL_99F9_ _LABEL_99FC_ _LABEL_99FC_ _LABEL_9A7D_
.dw _LABEL_9A7A_ _LABEL_9A00_ _LABEL_9A8B_ _LABEL_9A8B_ _LABEL_9A04_ _LABEL_9A6D_ _LABEL_9A85_ _LABEL_9A85_
.dw _LABEL_9A47_ _LABEL_9A7A_ _LABEL_9A1F_ _LABEL_9A81_ _LABEL_9A60_ _LABEL_9A24_ _LABEL_9A60_ _LABEL_9A24_
.dw _LABEL_9A7A_ _LABEL_9A00_ _LABEL_99F9_ _LABEL_9A43_ _LABEL_9A7D_ _LABEL_9A89_ _LABEL_9A89_ _LABEL_9A7D_
.dw _LABEL_9A89_ _LABEL_9A68_ _LABEL_9A68_ _LABEL_9A85_ _LABEL_9A7D_ _LABEL_9A7D_ _LABEL_99F0_ _LABEL_99F0_
.dw _LABEL_99A3_ _LABEL_99D3_ _LABEL_99BE_

; 49th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_99A3_:
	ld a, (_RAM_C116_)
	cp $13
	jr z, +
	cp $10
	ret nz
+:
	xor a
	ld (_RAM_C1B8_), a
	ld a, $80
	ld (_RAM_C158_), a
	ld hl, _RAM_C1D8_
	res 2, (hl)
	jp _LABEL_9AC6_

; 51st entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_99BE_:
	ld a, $0B
	ld (_RAM_C111_), a
	ld a, $1E
	ld (_RAM_C112_), a
	xor a
	ld (_RAM_C178_), a
	ld a, $FF
	out (Port_PSG), a
	jp _LABEL_9AC6_

; 50th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_99D3_:
	xor a
	ld (_RAM_C1D8_), a
	ld (_RAM_C114_), a
	ld a, $DF
	ld a, $80
	ld (_RAM_C158_), a
	out (Port_PSG), a
	ld a, $C0
	ld (_RAM_C178_), a
	ld hl, _RAM_C1B8_
	res 2, (hl)
	jp _LABEL_9AC6_

; 1st entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_99F0_:
	call _LABEL_9DF3_
	ld de, _RAM_C118_
	jp _LABEL_9AA3_

; 13th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_99F9_:
	xor a
	jr +

; 14th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_99FC_:
	ld a, $60
	jr +

; 18th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A00_:
	ld a, $70
	jr +

; 21st entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A04_:
	ld a, $20
+:
	cp e
	jp c, _LABEL_9AC6_
	ld hl, _RAM_C138_
	set 2, (hl)
	ld hl, _RAM_C158_
	set 2, (hl)
	ld hl, _RAM_C1D8_
	set 2, (hl)
	ld de, _RAM_C198_
	jp _LABEL_9A9D_

; 27th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A1F_:
	call _LABEL_9DF3_
	jr +

; 30th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A24_:
	ld a, $70
	cp e
	jp c, _LABEL_9AC6_
	ld hl, _RAM_C138_
	set 2, (hl)
	ld hl, _RAM_C158_
	set 2, (hl)
	ld hl, _RAM_C178_
	set 2, (hl)
	ld hl, _RAM_C1D8_
	set 2, (hl)
+:
	ld de, _RAM_C198_
	jr _LABEL_9A9D_

; 36th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A43_:
	ld a, $60
	jr +

; 25th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A47_:
	ld a, $40
+:
	cp e
	jr c, _LABEL_9AC6_
	ld hl, _RAM_C178_
	set 2, (hl)
	ld hl, _RAM_C158_
	set 2, (hl)
	ld hl, _RAM_C1D8_
	set 2, (hl)
	ld de, _RAM_C1B8_
	jr _LABEL_9A9D_

; 29th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A60_:
	ld a, (_RAM_C114_)
	or a
	jr nz, _LABEL_9AC6_
	jr _LABEL_9A6D_

; 42nd entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A68_:
	ld a, $80
	ld (_RAM_C114_), a
; 22nd entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A6D_:
	ld hl, _RAM_C1B8_
	set 2, (hl)
	call _LABEL_9E0F_
	ld de, _RAM_C1D8_
	jr _LABEL_9AA3_

; 10th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A7A_:
	xor a
	jr _LABEL_9A8B_

; 16th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A7D_:
	ld a, $60
	jr _LABEL_9A8B_

; 28th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A81_:
	ld a, $70
	jr _LABEL_9A8B_

; 23rd entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A85_:
	ld a, $30
	jr _LABEL_9A8B_

; 38th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A89_:
	ld a, $20
; 19th entry of Jump Table from 993D (indexed by _RAM_C110_)
_LABEL_9A8B_:
	cp e
	jr c, _LABEL_9AC6_
	ld hl, _RAM_C158_
	set 2, (hl)
	ld hl, _RAM_C1D8_
	set 2, (hl)
	ld de, _RAM_C1B8_
	jr _LABEL_9A9D_

_LABEL_9A9D_:
	ld (_RAM_C113_), a
	call _LABEL_9E0F_
_LABEL_9AA3_:
	ld h, b
	ld l, c
	ld b, (hl)
	inc hl
-:
	push bc
	ld bc, $0009
	ldir
	ld a, $20
	ld (de), a
	inc de
	ld a, $01
	ld (de), a
	inc de
	xor a
	ld (de), a
	inc de
	ld (de), a
	inc de
	ld (de), a
	push hl
	ld hl, $0012
	add hl, de
	ex de, hl
	pop hl
	inc de
	pop bc
	djnz -
_LABEL_9AC6_:
	ld a, $80
	ld (_RAM_C110_), a
	ret

_LABEL_9ACC_:
	ld e, (ix+12)
	ld d, (ix+13)
	inc de
	ld (ix+12), e
	ld (ix+13), d
	ld l, (ix+10)
	ld h, (ix+11)
	or a
	sbc hl, de
	call z, _LABEL_9C39_
	ld e, (ix+16)
	ld d, (ix+17)
	ld a, e
	or d
	jr nz, +
	ld (ix+22), $0F
	jp _LABEL_9BA0_

+:
	bit 5, (ix+0)
	jr nz, +
	ld a, (ix+6)
	or a
	jr nz, _LABEL_9B16_
	ld (ix+18), e
	ld (ix+19), d
	jp _LABEL_9B5E_

_LABEL_9B0B_:
	dec a
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	ret

_LABEL_9B16_:
	ld hl, _DATA_B28A_
	call _LABEL_9B0B_
	call _LABEL_9BF8_
	jr _LABEL_9B5E_

+:
	push de
	ld l, (ix+20)
	ld h, (ix+21)
	or a
	sbc hl, de
	push af
	ld a, l
	jp p, +
	neg
+:
	ld h, a
	ld e, (ix+12)
	call _LABEL_9EAE_
	ld e, (ix+10)
	dec e
	call _LABEL_9EBA_
	ld e, a
	ld d, $00
	pop af
	ld a, e
	jp p, +
	neg
	jr z, +
	dec d
	ld e, a
+:
	pop hl
	add hl, de
	ex de, hl
	ld (ix+18), e
	ld (ix+19), d
	ld a, (ix+6)
	or a
	jp nz, _LABEL_9B16_
_LABEL_9B5E_:
	ld a, (ix+7)
	or a
	jr nz, +
	ld a, (ix+8)
	cpl
	and $0F
	ld (ix+22), a
	jr ++

+:
	ld hl, _DATA_B1F9_
	call _LABEL_9B0B_
	call _LABEL_9BB2_
++:
	bit 6, (ix+0)
	jr nz, _LABEL_9BA0_
	ld a, (ix+1)
	cp $E0
	jr nz, +
	ld a, $C0
+:
	ld c, a
	ld a, (ix+18)
	and $0F
	or c
	call _LABEL_9DEB_
	ld a, (ix+18)
	and $F0
	or (ix+19)
	rrca
	rrca
	rrca
	rrca
	call _LABEL_9DEB_
_LABEL_9BA0_:
	ld a, (ix+1)
	add a, $10
	or (ix+22)
	jp _LABEL_9DEB_

; Data from 9BAB to 9BAE (4 bytes)
.db $90 $B0 $D0 $F0

-:
	ld (ix+14), a
_LABEL_9BB2_:
	push hl
	ld a, (ix+14)
	srl a
	push af
	ld c, a
	ld b, $00
	add hl, bc
	pop af
	ld a, (hl)
	ex de, hl
	pop hl
	jr c, ++
	rrca
	rrca
	rrca
	rrca
	or a
	jr z, -
	cp $10
	jr nz, +
	dec (ix+14)
	jr _LABEL_9BB2_

+:
	cp $20
	jr z, +++
	cp $30
	jr nz, ++
	inc de
	ld a, (de)
	ld (ix+14), a
	jr _LABEL_9BB2_

++:
	inc (ix+14)
	or $F0
	add a, (ix+8)
	inc a
	jr c, ++++
+++:
	xor a
++++:
	cpl
	and $0F
	ld (ix+22), a
	ret

-:
	ld (ix+15), a
_LABEL_9BF8_:
	push hl
	ld a, (ix+15)
	srl a
	push af
	ld c, a
	ld b, $00
	add hl, bc
	pop af
	ld a, (hl)
	ld c, l
	ld b, h
	pop hl
	jr c, ++
	rrca
	rrca
	rrca
	rrca
	or a
	jp z, -
	cp $10
	jr nz, +
	dec (ix+15)
	jr _LABEL_9BF8_

+:
	cp $20
	ret z
	cp $30
	jr nz, ++
	inc bc
	ld a, (bc)
	ld (ix+15), a
++:
	inc (ix+15)
	cpl
	and $0F
	ld l, a
	ld h, $00
	ex de, hl
	add hl, de
	ld (ix+18), l
	ld (ix+19), h
	ret

_LABEL_9C39_:
	ld e, (ix+3)
	ld d, (ix+4)
_LABEL_9C3F_:
	ld a, (de)
	inc de
	cp $E0
	jp nc, _LABEL_9CCD_
	bit 3, (ix+0)
	jr nz, _LABEL_9CAC_
	or a
	jp p, ++
	sub $80
	jr z, +
	add a, (ix+5)
+:
	ld hl, _DATA_9E1C_
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ld a, (hl)
	ld (ix+16), a
	inc hl
	ld a, (hl)
	ld (ix+17), a
	bit 5, (ix+0)
	jr z, _LABEL_9CC6_
	ld a, (de)
	inc de
	sub $80
	add a, (ix+5)
	ld hl, _DATA_9E1C_
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ld a, (hl)
	ld (ix+20), a
	inc hl
	ld a, (hl)
	ld (ix+21), a
--:
	ld a, (de)
_LABEL_9C87_:
	inc de
++:
	push de
	ld h, a
	ld e, (ix+2)
	call _LABEL_9EAE_
	pop de
	ld (ix+10), l
	ld (ix+11), h
-:
	xor a
	ld (ix+14), a
	ld (ix+15), a
	ld (ix+3), e
	ld (ix+4), d
	xor a
	ld (ix+12), a
	ld (ix+13), a
	ret

_LABEL_9CAC_:
	ld (ix+17), a
	ld a, (de)
	inc de
	ld (ix+16), a
	bit 5, (ix+0)
	jr z, --
	ld a, (de)
	inc de
	ld (ix+21), a
	ld a, (de)
	inc de
	ld (ix+20), a
	jr --

_LABEL_9CC6_:
	ld a, (de)
	or a
	jp p, _LABEL_9C87_
	jr -

_LABEL_9CCD_:
	ld hl, +	; Overriding return address
	push hl
	and $1F
	ld hl, _DATA_9CE4_
	ld c, a
	ld b, $00
	add hl, bc
	add hl, bc
	ld a, (hl)
	inc hl
	ld h, (hl)
	ld l, a
	jp (hl)

+:
	inc de
	jp _LABEL_9C3F_

; Jump Table from 9CE4 to 9D07 (18 entries, indexed by unknown)
_DATA_9CE4_:
.dw _LABEL_9D1F_ _LABEL_9D24_ _LABEL_9D72_ _LABEL_9D29_ _LABEL_9D40_ _LABEL_9D4A_ _LABEL_9D50_ _LABEL_9D56_
.dw _LABEL_9D5C_ _LABEL_9D62_ _LABEL_9D9E_ _LABEL_9DB9_ _LABEL_9DCC_ _LABEL_9D45_ _LABEL_9D17_ _LABEL_9D68_
.dw _LABEL_9D6E_ _LABEL_9D08_

; 18th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D08_:
	ld a, (_RAM_C023_)
	cp $10
	ret z
	push de
	ld bc, _DATA_A3BD_
	call _LABEL_99F0_
	pop de
	ret

; 15th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D17_:
	ld a, (de)
	add a, (ix+5)
	ld (ix+5), a
	ret

; 1st entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D1F_:
	ld a, (de)
	ld (ix+2), a
	ret

; 2nd entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D24_:
	ld a, (de)
	ld (ix+8), a
	ret

; 4th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D29_:
	ld a, (de)
	or $E0
	push af
	call _LABEL_9DEB_
	pop af
	or $FC
	inc a
	jr nz, +
	res 6, (ix+0)
	ret

+:
	set 6, (ix+0)
	ret

; 5th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D40_:
	ld a, (de)
	ld (ix+7), a
	ret

; 14th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D45_:
	ld a, (de)
	ld (ix+6), a
	ret

; 6th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D4A_:
	ex de, hl
	ld e, (hl)
	inc hl
	ld d, (hl)
	dec de
	ret

; 7th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D50_:
	set 5, (ix+0)
	dec de
	ret

; 8th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D56_:
	res 5, (ix+0)
	dec de
	ret

; 9th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D5C_:
	set 3, (ix+0)
	dec de
	ret

; 10th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D62_:
	res 3, (ix+0)
	dec de
	ret

; 16th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D68_:
	xor a
	ld (_RAM_C114_), a
	jr +

; 17th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D6E_:
	ld a, (de)
	ld (_RAM_C115_), a
; 3rd entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D72_:
	xor a
	ld (_RAM_C113_), a
+:
	ld (ix+0), a
	ld hl, _RAM_C138_
	res 2, (hl)
	ld hl, _RAM_C158_
	res 2, (hl)
	ld hl, _RAM_C178_
	res 2, (hl)
	ld hl, _RAM_C1D8_
	res 2, (hl)
	ld a, (_RAM_C1B8_)
	bit 7, a
	jr nz, +
	ld a, $E4
	out (Port_PSG), a
+:
	call _LABEL_9DE4_
	pop hl
	pop hl
	ret

; 11th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9D9E_:
	ld a, (de)
	ld c, a
	inc de
	ld a, (de)
	ld b, a
	push bc
	push ix
	pop hl
	dec (ix+9)
	ld c, (ix+9)
	dec (ix+9)
	ld b, $00
	add hl, bc
	ld (hl), d
	dec hl
	ld (hl), e
	pop de
	dec de
	ret

; 12th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9DB9_:
	push ix
	pop hl
	ld c, (ix+9)
	ld b, $00
	add hl, bc
	ld e, (hl)
	inc hl
	ld d, (hl)
	inc (ix+9)
	inc (ix+9)
	ret

; 13th entry of Jump Table from 9CE4 (indexed by unknown)
_LABEL_9DCC_:
	ld a, (de)
	inc de
	add a, $17
	ld c, a
	ld b, $00
	push ix
	pop hl
	add hl, bc
	ld a, (hl)
	or a
	jr nz, +
	ld a, (de)
	ld (hl), a
+:
	inc de
	dec (hl)
	jp nz, _LABEL_9D4A_
	inc de
	ret

_LABEL_9DE4_:
	ld a, (ix+1)
	add a, $10
	or $0F
_LABEL_9DEB_:
	bit 2, (ix+0)
	ret nz
	out (Port_PSG), a
	ret

_LABEL_9DF3_:
	exx
	ld hl, _RAM_C111_
	ld de, _RAM_C111_ + 1
	ld bc, $00E4
	ld (hl), $00
	ldir
	exx
_LABEL_9E02_:
	exx
	ld hl, _DATA_9E18_
	ld c, Port_PSG
	ld b, $04
	otir
	xor a
	exx
	ret

_LABEL_9E0F_:
	ld a, $DF
	out (Port_PSG), a
	ld a, $FF
	out (Port_PSG), a
	ret

; Data from 9E18 to 9E1B (4 bytes)
_DATA_9E18_:
.db $9F $BF $DF $FF

; Data from 9E1C to 9E74 (89 bytes)
_DATA_9E1C_:
.db $00 $00 $FF $03 $C7 $03 $90 $03 $5D $03 $2D $03 $FF $02 $D4 $02
.db $AB $02 $85 $02 $61 $02 $3F $02 $1E $02 $00 $02 $E3 $01 $C8 $01
.db $AF $01 $96 $01 $80 $01 $6A $01 $56 $01 $43 $01 $30 $01 $1F $01
.db $0F $01 $00 $01 $F2 $00 $E4 $00 $D7 $00 $CB $00 $C0 $00 $B5 $00
.db $AB $00 $A1 $00 $98 $00 $90 $00 $88 $00 $80 $00 $79 $00 $72 $00
.db $6C $00 $66 $00 $60 $00 $5B $00 $55

; Data from 9E75 to 9E98 (36 bytes)
_DATA_9E75_:
.db $00 $51 $00 $4C $00 $48 $00 $44 $00 $40 $00 $3C $00 $39 $00 $36
.db $00 $33 $00 $30 $00 $2D $00 $2B $00 $28 $00 $26 $00 $24 $00 $22
.db $00 $20 $00 $1E

; Data from 9E99 to 9EAD (21 bytes)
_DATA_9E99_:
.db $00 $1C $00 $1B $00 $19 $00 $18 $00 $16 $00 $15 $00 $14 $00 $13
.db $00 $12 $00 $11 $00

_LABEL_9EAE_:
	ld d, $00
	ld l, d
	ld b, $08
-:
	add hl, hl
	jr nc, +
	add hl, de
+:
	djnz -
	ret

_LABEL_9EBA_:
	ld b, $08
-:
	adc hl, hl
	ld a, h
	jr c, +
	cp e
	jr c, ++
+:
	sub e
	ld h, a
	or a
++:
	djnz -
	ld a, l
	rla
	cpl
	ret

; 1st entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 2nd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 3rd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 4th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 5th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 6th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 7th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 8th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 9th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 10th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 11th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 12th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 13th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 14th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 15th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 16th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 17th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 18th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 19th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 20th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 21st entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 22nd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 23rd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 24th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 25th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 26th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 27th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 28th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 29th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 30th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 31st entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 32nd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 33rd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 34th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 35th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 36th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 37th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 38th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 39th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 40th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 41st entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 42nd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 43rd entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 44th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 45th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 46th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 47th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; 48th entry of Pointer Table from 98DD (indexed by _RAM_C110_)
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

; Pointer Table from B505 to B526 (17 entries, indexed by _RAM_C023_)
_DATA_B505_:
.dw _DATA_B527_ _DATA_B53F_ _DATA_B563_ _DATA_B579_ _DATA_B583_ _DATA_B5AB_ _DATA_B5BD_ _DATA_B5CF_
.dw _DATA_B5E7_ _DATA_B60F_ _DATA_B62D_ _DATA_B655_ _DATA_B65B_ _DATA_B66B_ _DATA_B66F_ _DATA_B685_
.dw _DATA_B6D9_

; 1st entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B527 to B53E (12 entries, indexed by _RAM_C065_)
_DATA_B527_:
.dw _DATA_B6ED_ _DATA_B6EE_ _DATA_B6F3_ _DATA_B6FC_ _DATA_B705_ _DATA_B70E_ _DATA_B713_ _DATA_B71C_
.dw _DATA_B725_ _DATA_B726_ _DATA_B733_ _DATA_B73C_

; 2nd entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B53F to B562 (18 entries, indexed by _RAM_C065_)
_DATA_B53F_:
.dw _DATA_B74E_ _DATA_B74F_ _DATA_B754_ _DATA_B75D_ _DATA_B76A_ _DATA_B777_ _DATA_B77C_ _DATA_B785_
.dw _DATA_B792_ _DATA_B79F_ _DATA_B7AC_ _DATA_B7B5_ _DATA_B7BE_ _DATA_B7C7_ _DATA_B7D0_ _DATA_B7DD_
.dw _DATA_B7E6_ _DATA_B7EB_

; 3rd entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B563 to B578 (11 entries, indexed by _RAM_C065_)
_DATA_B563_:
.dw _DATA_B7F1_ _DATA_B7F2_ _DATA_B7F5_ _DATA_B802_ _DATA_B803_ _DATA_B806_ _DATA_B814_ _DATA_B81D_
.dw _DATA_B82F_ _DATA_B830_ _DATA_B85E_

; 4th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B579 to B582 (5 entries, indexed by _RAM_C065_)
_DATA_B579_:
.dw _DATA_B874_ _DATA_B875_ _DATA_B87A_ _DATA_B87F_ _DATA_B88C_

; 5th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B583 to B5AA (20 entries, indexed by _RAM_C065_)
_DATA_B583_:
.dw _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B1_ _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B1_
.dw _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B1_ _DATA_B896_ _DATA_B89F_ _DATA_B8A8_ _DATA_B8B6_
.dw _DATA_B8BC_ _DATA_B8C5_ _DATA_B8D2_ _DATA_B8DF_

; 6th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B5AB to B5BC (9 entries, indexed by _RAM_C065_)
_DATA_B5AB_:
.dw _DATA_B8F1_ _DATA_B8F2_ _DATA_B8F7_ _DATA_B900_ _DATA_B905_ _DATA_B90E_ _DATA_B91B_ _DATA_B928_
.dw _DATA_B935_

; 7th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B5BD to B5CE (9 entries, indexed by _RAM_C065_)
_DATA_B5BD_:
.dw _DATA_B93E_ _DATA_B93F_ _DATA_B948_ _DATA_B955_ _DATA_B972_ _DATA_B97B_ _DATA_B98B_ _DATA_B990_
.dw _DATA_B99D_

; 8th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B5CF to B5E6 (12 entries, indexed by _RAM_C065_)
_DATA_B5CF_:
.dw _DATA_B9A3_ _DATA_B9A4_ _DATA_B9A9_ _DATA_B9AE_ _DATA_B9B3_ _DATA_B9B8_ _DATA_B9C1_ _DATA_B9CA_
.dw _DATA_B9CB_ _DATA_B9D0_ _DATA_B9D5_ _DATA_B9DA_

; 9th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B5E7 to B60E (20 entries, indexed by _RAM_C065_)
_DATA_B5E7_:
.dw _DATA_B9E3_ _DATA_B9E4_ _DATA_B9ED_ _DATA_B9F6_ _DATA_BA03_ _DATA_BA08_ _DATA_BA11_ _DATA_BA1A_
.dw _DATA_BA23_ _DATA_BA28_ _DATA_BA2D_ _DATA_BA36_ _DATA_BA3F_ _DATA_BA44_ _DATA_BA51_ _DATA_BA56_
.dw _DATA_BA5C_ _DATA_BA69_ _DATA_BA6E_ _DATA_BA7B_

; 10th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B60F to B62C (15 entries, indexed by _RAM_C065_)
_DATA_B60F_:
.dw _DATA_BA85_ _DATA_BA86_ _DATA_BA8F_ _DATA_BA98_ _DATA_BAA9_ _DATA_BAAE_ _DATA_BAB3_ _DATA_BAC0_
.dw _DATA_BACD_ _DATA_BADA_ _DATA_BAE3_ _DATA_BAEC_ _DATA_BAF5_ _DATA_BB06_ _DATA_BB17_

; 11th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B62D to B654 (20 entries, indexed by _RAM_C065_)
_DATA_B62D_:
.dw _DATA_BCDB_ _DATA_BC1C_ _DATA_BC21_ _DATA_BC2E_ _DATA_BC43_ _DATA_BCDB_ _DATA_BC52_ _DATA_BC5B_
.dw _DATA_BC64_ _DATA_BC71_ _DATA_BCDB_ _DATA_BC76_ _DATA_BC8B_ _DATA_BC98_ _DATA_BCA5_ _DATA_BCDB_
.dw _DATA_BCAB_ _DATA_BCBC_ _DATA_BCC1_ _DATA_BCCA_

; 12th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B655 to B65A (3 entries, indexed by _RAM_C065_)
_DATA_B655_:
.dw _DATA_BB1D_ _DATA_BB1E_ _DATA_BB2B_

; 13th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B65B to B66A (8 entries, indexed by _RAM_C065_)
_DATA_B65B_:
.dw _DATA_BB31_ _DATA_BB3F_ _DATA_BB4C_ _DATA_BB61_ _DATA_BB6E_ _DATA_BB7F_ _DATA_BB88_ _DATA_BB91_

; 14th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B66B to B66E (2 entries, indexed by _RAM_C065_)
_DATA_B66B_:
.dw _DATA_BB92_ _DATA_BB93_

; 15th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B66F to B684 (11 entries, indexed by _RAM_C065_)
_DATA_B66F_:
.dw _DATA_BB9D_ _DATA_BB9D_ _DATA_BB9E_ _DATA_BBA7_ _DATA_BBB4_ _DATA_BBC5_ _DATA_BBD2_ _DATA_BBDF_
.dw _DATA_BBE8_ _DATA_BBF1_ _DATA_BBFA_

; 16th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B685 to B6D8 (42 entries, indexed by _RAM_C065_)
_DATA_B685_:
.dw _DATA_BE87_ _DATA_BE87_ _DATA_BCDC_ _DATA_BCE9_ _DATA_BD0B_ _DATA_BD27_ _DATA_BD3C_ _DATA_BE87_
.dw _DATA_BD41_ _DATA_BD46_ _DATA_BD59_ _DATA_BD70_ _DATA_BD84_ _DATA_BD95_ _DATA_BE87_ _DATA_BE87_
.dw _DATA_BD9B_ _DATA_BDB0_ _DATA_BE87_ _DATA_BDC0_ _DATA_BDCD_ _DATA_BE87_ _DATA_BE87_ _DATA_BDDE_
.dw _DATA_BDE7_ _DATA_BDFB_ _DATA_BE0C_ _DATA_BE87_ _DATA_BE87_ _DATA_BE19_ _DATA_BE1E_ _DATA_BE87_
.dw _DATA_BE23_ _DATA_BE34_ _DATA_BE87_ _DATA_BE87_ _DATA_BE40_ _DATA_BE5A_ _DATA_BE67_ _DATA_BE74_
.dw _DATA_BE79_ _DATA_BE7E_

; 17th entry of Pointer Table from B505 (indexed by _RAM_C023_)
; Pointer Table from B6D9 to B6EC (10 entries, indexed by _RAM_C065_)
_DATA_B6D9_:
.dw _DATA_BC00_ _DATA_BC01_ _DATA_BC1B_ _DATA_BC1B_ _DATA_BC00_ _DATA_BC01_ _DATA_BC1B_ _DATA_BC1B_
.dw _DATA_BC1B_ _DATA_BC1B_

; 1st entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B6ED to B6ED (1 bytes)
_DATA_B6ED_:
.db $00

; 2nd entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B6EE to B6F2 (5 bytes)
_DATA_B6EE_:
.db $01 $2D $78 $68 $00

; 3rd entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B6F3 to B6FB (9 bytes)
_DATA_B6F3_:
.db $02 $2D $20 $88 $00 $2D $98 $40 $00

; 4th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B6FC to B704 (9 bytes)
_DATA_B6FC_:
.db $02 $2D $10 $88 $00 $2D $A0 $60 $00

; 5th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B705 to B70D (9 bytes)
_DATA_B705_:
.db $02 $2D $20 $D0 $00 $2D $70 $88 $00

; 6th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B70E to B712 (5 bytes)
_DATA_B70E_:
.db $01 $2D $40 $50 $00

; 7th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B713 to B71B (9 bytes)
_DATA_B713_:
.db $02 $2D $20 $D0 $00 $2D $90 $30 $00

; 8th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B71C to B724 (9 bytes)
_DATA_B71C_:
.db $02 $2D $70 $28 $00 $2D $98 $B0 $00

; 9th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B725 to B725 (1 bytes)
_DATA_B725_:
.db $00

; 10th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B726 to B732 (13 bytes)
_DATA_B726_:
.db $03 $30 $68 $38 $00 $30 $50 $80 $00 $30 $78 $E0 $00

; 11th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B733 to B73B (9 bytes)
_DATA_B733_:
.db $02 $30 $30 $A0 $00 $30 $80 $90 $00

; 12th entry of Pointer Table from B527 (indexed by _RAM_C065_)
; Data from B73C to B74D (18 bytes)
_DATA_B73C_:
.db $84 $44 $30 $E0 $00 $03 $2E $28 $A0 $00 $30 $68 $80 $00 $23 $80
.db $30 $00

; 1st entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B74E to B74E (1 bytes)
_DATA_B74E_:
.db $00

; 2nd entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B74F to B753 (5 bytes)
_DATA_B74F_:
.db $01 $3E $90 $B0 $00

; 3rd entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B754 to B75C (9 bytes)
_DATA_B754_:
.db $02 $3E $90 $70 $00 $3E $90 $D0 $00

; 4th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B75D to B769 (13 bytes)
_DATA_B75D_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 5th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B76A to B776 (13 bytes)
_DATA_B76A_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 6th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B777 to B77B (5 bytes)
_DATA_B777_:
.db $01 $3E $90 $60 $00

; 7th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B77C to B784 (9 bytes)
_DATA_B77C_:
.db $02 $3E $90 $40 $00 $3E $90 $80 $00

; 8th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B785 to B791 (13 bytes)
_DATA_B785_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 9th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B792 to B79E (13 bytes)
_DATA_B792_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 10th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B79F to B7AB (13 bytes)
_DATA_B79F_:
.db $03 $3E $90 $40 $00 $3E $90 $70 $00 $2F $90 $C0 $00

; 11th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7AC to B7B4 (9 bytes)
_DATA_B7AC_:
.db $02 $3E $90 $70 $00 $3E $90 $C0 $00

; 12th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7B5 to B7BD (9 bytes)
_DATA_B7B5_:
.db $02 $2F $90 $40 $00 $2F $90 $80 $00

; 13th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7BE to B7C6 (9 bytes)
_DATA_B7BE_:
.db $02 $3E $90 $50 $00 $2F $90 $A0 $00

; 14th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7C7 to B7CF (9 bytes)
_DATA_B7C7_:
.db $02 $2F $90 $88 $00 $2F $90 $B8 $00

; 15th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7D0 to B7DC (13 bytes)
_DATA_B7D0_:
.db $03 $2F $70 $40 $00 $2F $40 $78 $00 $2F $70 $B0 $00

; 16th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7DD to B7E5 (9 bytes)
_DATA_B7DD_:
.db $02 $3E $90 $50 $00 $2F $90 $80 $00

; 17th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7E6 to B7EA (5 bytes)
_DATA_B7E6_:
.db $01 $3E $90 $80 $00

; 18th entry of Pointer Table from B53F (indexed by _RAM_C065_)
; Data from B7EB to B7F0 (6 bytes)
_DATA_B7EB_:
.db $84 $1D $80 $B0 $02 $00

; 1st entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B7F1 to B7F1 (1 bytes)
_DATA_B7F1_:
.db $00

; 2nd entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B7F2 to B7F4 (3 bytes)
_DATA_B7F2_:
.db $82 $01 $00

; 3rd entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B7F5 to B801 (13 bytes)
_DATA_B7F5_:
.db $03 $31 $28 $90 $00 $31 $20 $70 $00 $30 $70 $A0 $00

; 4th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B802 to B802 (1 bytes)
_DATA_B802_:
.db $00

; 5th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B803 to B805 (3 bytes)
_DATA_B803_:
.db $82 $02 $00

; 6th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B806 to B813 (14 bytes)
_DATA_B806_:
.db $84 $44 $30 $D0 $00 $02 $30 $90 $A0 $00 $2E $30 $B0 $00

; 7th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B814 to B81C (9 bytes)
_DATA_B814_:
.db $02 $30 $10 $B0 $00 $30 $90 $80 $00

; 8th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B81D to B82E (18 bytes)
_DATA_B81D_:
.db $81 $4C $00 $F0 $00 $03 $30 $90 $80 $00 $2E $48 $80 $00 $2E $68
.db $B0 $00

; 9th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B82F to B82F (1 bytes)
_DATA_B82F_:
.db $00

; 10th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B830 to B85D (46 bytes)
_DATA_B830_:
.db $88 $16 $07 $10 $CA $03 $14 $CA $03 $18 $CA $03 $1C $CA $03 $28
.db $CA $03 $2C $CA $03 $30 $CA $03 $81 $4B $78 $C0 $00 $04 $2D $20
.db $90 $00 $2D $58 $70 $00 $3E $98 $60 $00 $3E $98 $F0 $00

; 11th entry of Pointer Table from B563 (indexed by _RAM_C065_)
; Data from B85E to B873 (22 bytes)
_DATA_B85E_:
.db $84 $44 $30 $E0 $00 $04 $3E $98 $30 $00 $3E $98 $D0 $00 $3E $20
.db $70 $00 $52 $20 $70 $05

; 1st entry of Pointer Table from B579 (indexed by _RAM_C065_)
; Data from B874 to B874 (1 bytes)
_DATA_B874_:
.db $00

; 2nd entry of Pointer Table from B579 (indexed by _RAM_C065_)
; Data from B875 to B879 (5 bytes)
_DATA_B875_:
.db $01 $2C $A8 $A8 $00

; 3rd entry of Pointer Table from B579 (indexed by _RAM_C065_)
; Data from B87A to B87E (5 bytes)
_DATA_B87A_:
.db $01 $3E $98 $E0 $00

; 4th entry of Pointer Table from B579 (indexed by _RAM_C065_)
; Data from B87F to B88B (13 bytes)
_DATA_B87F_:
.db $03 $3E $98 $30 $00 $3E $40 $B0 $00 $2D $70 $D8 $00

; 5th entry of Pointer Table from B579 (indexed by _RAM_C065_)
; Data from B88C to B895 (10 bytes)
_DATA_B88C_:
.db $84 $44 $70 $C0 $00 $01 $45 $88 $98 $00

; 1st entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B896 to B89E (9 bytes)
_DATA_B896_:
.db $02 $2D $38 $A0 $00 $42 $BF $D0 $00

; 2nd entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B89F to B8A7 (9 bytes)
_DATA_B89F_:
.db $02 $2D $60 $B0 $00 $42 $BF $70 $00

; 3rd entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B8A8 to B8B0 (9 bytes)
_DATA_B8A8_:
.db $02 $2D $18 $60 $00 $42 $BF $B0 $00

; 4th entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B8B1 to B8B5 (5 bytes)
_DATA_B8B1_:
.db $01 $42 $BF $B0 $00

; 16th entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B8B6 to B8BB (6 bytes)
_DATA_B8B6_:
.db $84 $44 $20 $70 $00 $00

; 17th entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B8BC to B8C4 (9 bytes)
_DATA_B8BC_:
.db $01 $30 $88 $50 $00 $30 $30 $80 $00

; 18th entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B8C5 to B8D1 (13 bytes)
_DATA_B8C5_:
.db $03 $30 $68 $88 $00 $30 $28 $C8 $00 $30 $18 $38 $00

; 19th entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B8D2 to B8DE (13 bytes)
_DATA_B8D2_:
.db $03 $30 $70 $A8 $00 $30 $30 $58 $00 $30 $88 $70 $00

; 20th entry of Pointer Table from B583 (indexed by _RAM_C065_)
; Data from B8DF to B8F0 (18 bytes)
_DATA_B8DF_:
.db $84 $44 $20 $C0 $00 $03 $2E $28 $C0 $00 $30 $78 $98 $00 $30 $58
.db $40 $00

; 1st entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B8F1 to B8F1 (1 bytes)
_DATA_B8F1_:
.db $00

; 2nd entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B8F2 to B8F6 (5 bytes)
_DATA_B8F2_:
.db $01 $55 $90 $90 $00

; 3rd entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B8F7 to B8FF (9 bytes)
_DATA_B8F7_:
.db $02 $55 $90 $A0 $00 $3E $60 $A0 $00

; 4th entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B900 to B904 (5 bytes)
_DATA_B900_:
.db $01 $3E $90 $D0 $00

; 5th entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B905 to B90D (9 bytes)
_DATA_B905_:
.db $02 $55 $50 $B0 $00 $3E $90 $C0 $00

; 6th entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B90E to B91A (13 bytes)
_DATA_B90E_:
.db $03 $55 $90 $70 $00 $55 $40 $A0 $00 $3D $78 $E0 $00

; 7th entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B91B to B927 (13 bytes)
_DATA_B91B_:
.db $03 $55 $40 $E0 $00 $3E $90 $A0 $00 $3D $70 $90 $00

; 8th entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B928 to B934 (13 bytes)
_DATA_B928_:
.db $03 $55 $90 $60 $00 $55 $90 $80 $00 $55 $90 $A0 $00

; 9th entry of Pointer Table from B5AB (indexed by _RAM_C065_)
; Data from B935 to B93D (9 bytes)
_DATA_B935_:
.db $02 $46 $88 $D0 $01 $50 $C0 $C1 $00

; 1st entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B93E to B93E (1 bytes)
_DATA_B93E_:
.db $00

; 2nd entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B93F to B947 (9 bytes)
_DATA_B93F_:
.db $02 $54 $40 $60 $00 $20 $68 $B8 $00

; 3rd entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B948 to B954 (13 bytes)
_DATA_B948_:
.db $03 $3E $90 $18 $00 $54 $40 $B0 $00 $63 $30 $F0 $00

; 4th entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B955 to B971 (29 bytes)
_DATA_B955_:
.db $88 $0D $04 $A0 $CC $00 $A4 $CC $00 $20 $CD $00 $24 $CD $00 $81
.db $4B $A0 $60 $02 $02 $52 $A0 $30 $01 $20 $88 $E0 $00

; 5th entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B972 to B97A (9 bytes)
_DATA_B972_:
.db $02 $3D $60 $78 $00 $3E $90 $60 $00

; 6th entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B97B to B98A (16 bytes)
_DATA_B97B_:
.db $88 $04 $01 $38 $CA $00 $81 $4B $58 $B4 $02 $01 $54 $50 $B0 $00

; 7th entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B98B to B98F (5 bytes)
_DATA_B98B_:
.db $01 $3E $50 $40 $00

; 8th entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B990 to B99C (13 bytes)
_DATA_B990_:
.db $03 $3E $90 $10 $00 $20 $60 $90 $00 $3E $90 $B0 $00

; 9th entry of Pointer Table from B5BD (indexed by _RAM_C065_)
; Data from B99D to B9A2 (6 bytes)
_DATA_B99D_:
.db $84 $1E $80 $B0 $04 $00

; 1st entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9A3 to B9A3 (1 bytes)
_DATA_B9A3_:
.db $00

; 2nd entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9A4 to B9A8 (5 bytes)
_DATA_B9A4_:
.db $01 $20 $48 $90 $00

; 3rd entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9A9 to B9AD (5 bytes)
_DATA_B9A9_:
.db $01 $20 $40 $80 $00

; 4th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9AE to B9B2 (5 bytes)
_DATA_B9AE_:
.db $01 $2A $10 $55 $00

; 5th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9B3 to B9B7 (5 bytes)
_DATA_B9B3_:
.db $01 $20 $38 $B0 $00

; 6th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9B8 to B9C0 (9 bytes)
_DATA_B9B8_:
.db $02 $20 $70 $60 $00 $20 $28 $C0 $00

; 7th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9C1 to B9C9 (9 bytes)
_DATA_B9C1_:
.db $02 $20 $80 $A0 $00 $2A $10 $5B $00

; 8th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9CA to B9CA (1 bytes)
_DATA_B9CA_:
.db $00

; 9th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9CB to B9CF (5 bytes)
_DATA_B9CB_:
.db $01 $20 $20 $B0 $00

; 10th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9D0 to B9D4 (5 bytes)
_DATA_B9D0_:
.db $01 $2A $20 $28 $00

; 11th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9D5 to B9D9 (5 bytes)
_DATA_B9D5_:
.db $01 $2A $10 $23 $00

; 12th entry of Pointer Table from B5CF (indexed by _RAM_C065_)
; Data from B9DA to B9E2 (9 bytes)
_DATA_B9DA_:
.db $02 $25 $70 $D0 $00 $2A $10 $48 $00

; 1st entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from B9E3 to B9E3 (1 bytes)
_DATA_B9E3_:
.db $00

; 2nd entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from B9E4 to B9EC (9 bytes)
_DATA_B9E4_:
.db $01 $2D $40 $B0 $00 $42 $BF $E0 $00

; 3rd entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from B9ED to B9F5 (9 bytes)
_DATA_B9ED_:
.db $02 $42 $BF $80 $00 $2D $50 $C0 $00

; 4th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from B9F6 to BA02 (13 bytes)
_DATA_B9F6_:
.db $03 $2D $60 $80 $00 $2D $40 $A0 $00 $42 $BF $D0 $00

; 5th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA03 to BA07 (5 bytes)
_DATA_BA03_:
.db $01 $2D $30 $B0 $00

; 6th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA08 to BA10 (9 bytes)
_DATA_BA08_:
.db $01 $2D $50 $90 $00 $42 $BF $A0 $00

; 7th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA11 to BA19 (9 bytes)
_DATA_BA11_:
.db $02 $42 $BF $90 $00 $2D $60 $A0 $00

; 8th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA1A to BA22 (9 bytes)
_DATA_BA1A_:
.db $02 $2D $50 $B0 $00 $42 $BF $90 $00

; 9th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA23 to BA27 (5 bytes)
_DATA_BA23_:
.db $01 $2D $50 $80 $00

; 10th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA28 to BA2C (5 bytes)
_DATA_BA28_:
.db $01 $2D $48 $70 $00

; 11th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA2D to BA35 (9 bytes)
_DATA_BA2D_:
.db $02 $42 $BF $A0 $00 $2D $40 $B0 $00

; 12th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA36 to BA3E (9 bytes)
_DATA_BA36_:
.db $01 $2D $60 $80 $00 $42 $BF $70 $00

; 13th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA3F to BA43 (5 bytes)
_DATA_BA3F_:
.db $01 $2D $40 $B0 $00

; 14th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA44 to BA50 (13 bytes)
_DATA_BA44_:
.db $02 $2D $70 $A0 $00 $42 $BF $B0 $00 $42 $BF $80 $00

; 15th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA51 to BA55 (5 bytes)
_DATA_BA51_:
.db $01 $2D $40 $B0 $00

; 16th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA56 to BA5B (6 bytes)
_DATA_BA56_:
.db $84 $44 $70 $A0 $00 $00

; 17th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA5C to BA68 (13 bytes)
_DATA_BA5C_:
.db $03 $30 $30 $B8 $00 $30 $80 $B8 $00 $30 $50 $60 $00

; 18th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA69 to BA6D (5 bytes)
_DATA_BA69_:
.db $01 $30 $A0 $70 $00

; 19th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA6E to BA7A (13 bytes)
_DATA_BA6E_:
.db $03 $30 $40 $30 $00 $30 $60 $10 $00 $23 $78 $7C $00

; 20th entry of Pointer Table from B5E7 (indexed by _RAM_C065_)
; Data from BA7B to BA84 (10 bytes)
_DATA_BA7B_:
.db $84 $44 $50 $A0 $00 $01 $23 $60 $88 $00

; 1st entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BA85 to BA85 (1 bytes)
_DATA_BA85_:
.db $00

; 2nd entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BA86 to BA8E (9 bytes)
_DATA_BA86_:
.db $02 $3E $50 $88 $00 $3E $50 $C0 $00

; 3rd entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BA8F to BA97 (9 bytes)
_DATA_BA8F_:
.db $02 $2C $A0 $30 $00 $2C $A0 $90 $00

; 4th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BA98 to BAA8 (17 bytes)
_DATA_BA98_:
.db $04 $40 $10 $C0 $00 $2C $A0 $38 $00 $2C $A0 $80 $00 $2C $A0 $C8
.db $00

; 5th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BAA9 to BAAD (5 bytes)
_DATA_BAA9_:
.db $01 $40 $10 $38 $00

; 6th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BAAE to BAB2 (5 bytes)
_DATA_BAAE_:
.db $01 $3E $90 $E0 $00

; 7th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BAB3 to BABF (13 bytes)
_DATA_BAB3_:
.db $03 $40 $20 $80 $00 $3E $90 $30 $00 $3E $90 $C0 $00

; 8th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BAC0 to BACC (13 bytes)
_DATA_BAC0_:
.db $03 $40 $20 $C0 $00 $3E $90 $60 $00 $3E $90 $C0 $00

; 9th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BACD to BAD9 (13 bytes)
_DATA_BACD_:
.db $03 $40 $10 $A0 $00 $57 $80 $30 $00 $57 $90 $C0 $00

; 10th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BADA to BAE2 (9 bytes)
_DATA_BADA_:
.db $02 $40 $20 $B0 $00 $3D $78 $70 $00

; 11th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BAE3 to BAEB (9 bytes)
_DATA_BAE3_:
.db $02 $57 $90 $40 $00 $3D $78 $A0 $00

; 12th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BAEC to BAF4 (9 bytes)
_DATA_BAEC_:
.db $02 $3D $78 $80 $00 $3D $78 $C0 $00

; 13th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BAF5 to BB05 (17 bytes)
_DATA_BAF5_:
.db $04 $40 $10 $20 $00 $57 $80 $60 $00 $3D $58 $A0 $00 $57 $60 $E0
.db $00

; 14th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BB06 to BB16 (17 bytes)
_DATA_BB06_:
.db $04 $40 $20 $C0 $00 $3D $38 $28 $00 $3D $40 $80 $00 $3D $50 $B0
.db $00

; 15th entry of Pointer Table from B60F (indexed by _RAM_C065_)
; Data from BB17 to BB1C (6 bytes)
_DATA_BB17_:
.db $84 $1F $80 $B0 $06 $00

; 1st entry of Pointer Table from B655 (indexed by _RAM_C065_)
; Data from BB1D to BB1D (1 bytes)
_DATA_BB1D_:
.db $00

; 2nd entry of Pointer Table from B655 (indexed by _RAM_C065_)
; Data from BB1E to BB2A (13 bytes)
_DATA_BB1E_:
.db $03 $3E $90 $40 $00 $3E $90 $70 $00 $3D $58 $C0 $00

; 3rd entry of Pointer Table from B655 (indexed by _RAM_C065_)
; Data from BB2B to BB30 (6 bytes)
_DATA_BB2B_:
.db $84 $1E $80 $C0 $05 $00

; 1st entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB31 to BB3E (14 bytes)
_DATA_BB31_:
.db $84 $44 $70 $10 $00 $02 $33 $20 $60 $00 $2C $A0 $B0 $00

; 2nd entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB3F to BB4B (13 bytes)
_DATA_BB3F_:
.db $03 $33 $18 $40 $00 $33 $40 $68 $00 $33 $60 $90 $00

; 3rd entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB4C to BB60 (21 bytes)
_DATA_BB4C_:
.db $05 $33 $20 $40 $00 $33 $50 $B0 $00 $2C $A0 $40 $00 $2C $A0 $78
.db $00 $2C $A0 $B0 $00

; 4th entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB61 to BB6D (13 bytes)
_DATA_BB61_:
.db $03 $33 $28 $80 $00 $2C $A0 $A0 $00 $2C $A0 $48 $00

; 5th entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB6E to BB7E (17 bytes)
_DATA_BB6E_:
.db $04 $33 $20 $D0 $00 $33 $50 $80 $00 $2C $A0 $48 $00 $2C $A0 $A8
.db $00

; 6th entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB7F to BB87 (9 bytes)
_DATA_BB7F_:
.db $02 $2C $A0 $B0 $00 $2C $A0 $60 $00

; 7th entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB88 to BB90 (9 bytes)
_DATA_BB88_:
.db $02 $2C $A0 $A0 $00 $2C $A0 $48 $00

; 8th entry of Pointer Table from B65B (indexed by _RAM_C065_)
; Data from BB91 to BB91 (1 bytes)
_DATA_BB91_:
.db $00

; 1st entry of Pointer Table from B66B (indexed by _RAM_C065_)
; Data from BB92 to BB92 (1 bytes)
_DATA_BB92_:
.db $00

; 2nd entry of Pointer Table from B66B (indexed by _RAM_C065_)
; Data from BB93 to BB9C (10 bytes)
_DATA_BB93_:
.db $84 $44 $90 $C0 $00 $01 $53 $90 $C0 $00

; 1st entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BB9D to BB9D (1 bytes)
_DATA_BB9D_:
.db $00

; 3rd entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BB9E to BBA6 (9 bytes)
_DATA_BB9E_:
.db $02 $3E $90 $50 $00 $3E $90 $A0 $00

; 4th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBA7 to BBB3 (13 bytes)
_DATA_BBA7_:
.db $03 $2F $70 $20 $00 $3E $50 $60 $00 $3E $80 $90 $00

; 5th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBB4 to BBC4 (17 bytes)
_DATA_BBB4_:
.db $04 $3E $90 $20 $00 $3E $90 $70 $00 $2F $90 $B0 $00 $2C $A0 $D0
.db $00

; 6th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBC5 to BBD1 (13 bytes)
_DATA_BBC5_:
.db $03 $3E $90 $78 $00 $2C $A0 $A0 $00 $3E $90 $E0 $00

; 7th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBD2 to BBDE (13 bytes)
_DATA_BBD2_:
.db $03 $3E $90 $60 $00 $3E $90 $A0 $00 $2F $60 $F0 $00

; 8th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBDF to BBE7 (9 bytes)
_DATA_BBDF_:
.db $02 $3E $40 $80 $00 $3E $90 $60 $00

; 9th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBE8 to BBF0 (9 bytes)
_DATA_BBE8_:
.db $02 $3E $90 $60 $00 $2C $A0 $B0 $00

; 10th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBF1 to BBF9 (9 bytes)
_DATA_BBF1_:
.db $02 $2F $50 $B0 $00 $3E $90 $20 $00

; 11th entry of Pointer Table from B66F (indexed by _RAM_C065_)
; Data from BBFA to BBFF (6 bytes)
_DATA_BBFA_:
.db $84 $1F $80 $B0 $07 $00

; 1st entry of Pointer Table from B6D9 (indexed by _RAM_C065_)
; Data from BC00 to BC00 (1 bytes)
_DATA_BC00_:
.db $00

; 2nd entry of Pointer Table from B6D9 (indexed by _RAM_C065_)
; Data from BC01 to BC1A (26 bytes)
_DATA_BC01_:
.db $81 $4C $B8 $8C $00 $05 $23 $B8 $82 $00 $30 $10 $B0 $00 $30 $38
.db $C8 $00 $30 $70 $80 $00 $30 $50 $48 $00

; 3rd entry of Pointer Table from B6D9 (indexed by _RAM_C065_)
; Data from BC1B to BC1B (1 bytes)
_DATA_BC1B_:
.db $00

; 2nd entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC1C to BC20 (5 bytes)
_DATA_BC1C_:
.db $01 $2F $40 $70 $00

; 3rd entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC21 to BC2D (13 bytes)
_DATA_BC21_:
.db $03 $3E $40 $80 $00 $20 $20 $80 $00 $20 $70 $50 $00

; 4th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC2E to BC42 (21 bytes)
_DATA_BC2E_:
.db $05 $52 $50 $E0 $05 $3E $30 $60 $01 $3E $30 $B0 $01 $20 $78 $60
.db $00 $20 $78 $B0 $00

; 5th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC43 to BC51 (15 bytes)
_DATA_BC43_:
.db $81 $4B $20 $1D $01 $81 $4B $30 $3C $01 $01 $51 $90 $48 $01

; 7th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC52 to BC5A (9 bytes)
_DATA_BC52_:
.db $02 $3E $A0 $A0 $01 $20 $18 $90 $00

; 8th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC5B to BC63 (9 bytes)
_DATA_BC5B_:
.db $02 $20 $20 $18 $00 $52 $30 $10 $02

; 9th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC64 to BC70 (13 bytes)
_DATA_BC64_:
.db $03 $16 $20 $20 $03 $3E $A0 $28 $01 $3E $A0 $80 $00

; 10th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC71 to BC75 (5 bytes)
_DATA_BC71_:
.db $01 $20 $18 $C0 $00

; 12th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC76 to BC8A (21 bytes)
_DATA_BC76_:
.db $05 $10 $38 $20 $01 $10 $58 $40 $20 $10 $78 $60 $3F $10 $58 $80
.db $22 $10 $38 $A0 $05

; 13th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC8B to BC97 (13 bytes)
_DATA_BC8B_:
.db $03 $3E $A0 $D8 $01 $3E $A0 $60 $01 $3E $A0 $A0 $01

; 14th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BC98 to BCA4 (13 bytes)
_DATA_BC98_:
.db $03 $3E $A0 $D8 $01 $3E $A0 $60 $01 $3E $A0 $A0 $01

; 15th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BCA5 to BCAA (6 bytes)
_DATA_BCA5_:
.db $84 $1D $90 $C0 $03 $00

; 17th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BCAB to BCBB (17 bytes)
_DATA_BCAB_:
.db $04 $57 $50 $50 $00 $57 $50 $A0 $00 $57 $A0 $20 $00 $52 $90 $80
.db $01

; 18th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BCBC to BCC0 (5 bytes)
_DATA_BCBC_:
.db $01 $3E $A0 $70 $00

; 19th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BCC1 to BCC9 (9 bytes)
_DATA_BCC1_:
.db $02 $11 $28 $58 $3C $11 $28 $A8 $79

; 20th entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BCCA to BCDA (17 bytes)
_DATA_BCCA_:
.db $04 $3E $80 $40 $01 $3E $50 $80 $01 $3E $20 $50 $01 $3E $80 $A0
.db $01

; 1st entry of Pointer Table from B62D (indexed by _RAM_C065_)
; Data from BCDB to BCDB (1 bytes)
_DATA_BCDB_:
.db $00

; 3rd entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BCDC to BCE8 (13 bytes)
_DATA_BCDC_:
.db $03 $2F $A0 $80 $00 $2F $A0 $60 $00 $2F $50 $A0 $00

; 4th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BCE9 to BD0A (34 bytes)
_DATA_BCE9_:
.db $88 $0A $03 $84 $CB $51 $04 $CC $52 $84 $CC $52 $81 $4B $90 $04
.db $00 $04 $12 $28 $24 $B6 $12 $28 $B4 $79 $13 $38 $34 $F0 $17 $90
.db $28 $03

; 5th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD0B to BD26 (28 bytes)
_DATA_BD0B_:
.db $88 $04 $01 $88 $CE $00 $81 $4B $14 $F4 $00 $04 $2F $A0 $48 $00
.db $3E $A0 $80 $00 $3E $60 $80 $00 $3E $20 $90 $00

; 6th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD27 to BD3B (21 bytes)
_DATA_BD27_:
.db $05 $3E $70 $D0 $01 $3E $70 $90 $01 $57 $30 $D8 $01 $2F $40 $B0
.db $00 $3E $70 $B0 $01

; 7th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD3C to BD40 (5 bytes)
_DATA_BD3C_:
.db $01 $51 $98 $A0 $00

; 9th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD41 to BD45 (5 bytes)
_DATA_BD41_:
.db $01 $16 $90 $7C $06

; 10th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD46 to BD58 (19 bytes)
_DATA_BD46_:
.db $88 $07 $02 $B0 $CC $00 $30 $CD $00 $81 $4B $74 $0C $00 $01 $15
.db $20 $14 $16

; 11th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD59 to BD6F (23 bytes)
_DATA_BD59_:
.db $88 $07 $02 $38 $CC $00 $B8 $CC $00 $81 $4B $A0 $64 $00 $02 $54
.db $40 $98 $00 $3E $90 $C0 $00

; 12th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD70 to BD83 (20 bytes)
_DATA_BD70_:
.db $88 $04 $01 $08 $C8 $50 $81 $4B $24 $24 $02 $02 $16 $90 $7C $06
.db $52 $40 $80 $07

; 13th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD84 to BD94 (17 bytes)
_DATA_BD84_:
.db $04 $3E $A0 $60 $00 $2F $50 $C0 $00 $3E $A0 $90 $01 $3E $A0 $C0
.db $01

; 14th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD95 to BD9A (6 bytes)
_DATA_BD95_:
.db $84 $1C $98 $C0 $01 $00

; 17th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BD9B to BDAF (21 bytes)
_DATA_BD9B_:
.db $05 $16 $50 $CC $04 $57 $A0 $60 $00 $57 $A0 $A0 $00 $57 $A0 $D0
.db $00 $57 $50 $A0 $00

; 18th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BDB0 to BDBF (16 bytes)
_DATA_BDB0_:
.db $88 $04 $01 $A0 $CA $10 $81 $4B $24 $F4 $00 $01 $57 $A0 $10 $00

; 20th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BDC0 to BDCC (13 bytes)
_DATA_BDC0_:
.db $03 $12 $28 $44 $3C $12 $28 $D4 $79 $13 $38 $54 $F2

; 21st entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BDCD to BDDD (17 bytes)
_DATA_BDCD_:
.db $04 $57 $A0 $90 $00 $57 $A0 $70 $00 $3E $50 $50 $01 $52 $40 $D0
.db $05

; 24th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BDDE to BDE6 (9 bytes)
_DATA_BDDE_:
.db $02 $3E $A0 $60 $01 $16 $70 $68 $04

; 25th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BDE7 to BDFA (20 bytes)
_DATA_BDE7_:
.db $88 $04 $01 $90 $C8 $00 $81 $4B $90 $A4 $00 $02 $16 $90 $28 $04
.db $57 $A0 $70 $00

; 26th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BDFB to BE0B (17 bytes)
_DATA_BDFB_:
.db $04 $2C $68 $50 $00 $2C $48 $80 $00 $2C $88 $A0 $00 $2C $58 $D0
.db $00

; 27th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE0C to BE18 (13 bytes)
_DATA_BE0C_:
.db $03 $2C $A8 $20 $00 $2C $58 $50 $00 $2C $78 $90 $00

; 30th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE19 to BE1D (5 bytes)
_DATA_BE19_:
.db $01 $57 $60 $C0 $00

; 31st entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE1E to BE22 (5 bytes)
_DATA_BE1E_:
.db $01 $3E $60 $C0 $01

; 33rd entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE23 to BE33 (17 bytes)
_DATA_BE23_:
.db $04 $2C $60 $C8 $00 $2C $60 $90 $00 $2C $60 $48 $00 $2C $60 $18
.db $00

; 34th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE34 to BE3F (12 bytes)
_DATA_BE34_:
.db $88 $04 $01 $94 $C9 $10 $81 $4B $64 $F4 $00 $00

; 37th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE40 to BE59 (26 bytes)
_DATA_BE40_:
.db $88 $07 $02 $80 $C8 $00 $00 $C9 $00 $04 $3E $A0 $80 $00 $2F $30
.db $70 $00 $2F $60 $A0 $00 $2F $80 $B0 $00

; 38th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE5A to BE66 (13 bytes)
_DATA_BE5A_:
.db $03 $3E $70 $98 $00 $16 $20 $B8 $02 $3E $60 $50 $00

; 39th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE67 to BE73 (13 bytes)
_DATA_BE67_:
.db $03 $3E $30 $78 $00 $3E $A0 $40 $01 $3E $A0 $B0 $01

; 40th entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE74 to BE78 (5 bytes)
_DATA_BE74_:
.db $01 $15 $20 $20 $18

; 41st entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE79 to BE7D (5 bytes)
_DATA_BE79_:
.db $01 $2F $80 $B0 $00

; 42nd entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE7E to BE86 (9 bytes)
_DATA_BE7E_:
.db $02 $3E $80 $68 $01 $3E $A0 $A0 $00

; 1st entry of Pointer Table from B685 (indexed by _RAM_C065_)
; Data from BE87 to BFFF (377 bytes)
_DATA_BE87_:
.db $00
.dsb 376, $FF

.BANK 3
.ORG $0000

; Data from C000 to C47F (1152 bytes)
_DATA_C000_:
.incbin "baserom_DATA_C000_.inc"

; Pointer Table from C480 to C4A1 (17 entries, indexed by _RAM_C023_)
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

; 1st entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; 2nd entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; 3rd entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; 4th entry of Pointer Table from C480 (indexed by _RAM_C023_)
; Data from D56A to DB81 (1560 bytes)
_DATA_D56A_:
.incbin "baserom_DATA_D56A_.inc"

; 6th entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; 7th entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; 8th entry of Pointer Table from C480 (indexed by _RAM_C023_)
; Data from E24C to EA04 (1977 bytes)
_DATA_E24C_:
.incbin "baserom_DATA_E24C_.inc"

; 11th entry of Pointer Table from C480 (indexed by _RAM_C023_)
; Data from EA05 to EE32 (1070 bytes)
_DATA_EA05_:
.incbin "baserom_DATA_EA05_.inc"

; 16th entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; 17th entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; 14th entry of Pointer Table from C480 (indexed by _RAM_C023_)
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

; Pointer Table from 10000 to 1005F (48 entries, indexed by _RAM_C200_)
_DATA_10000_:
.dw _DATA_10060_ _DATA_1006B_ _DATA_10078_ _DATA_10085_ _DATA_10090_ _DATA_1009D_ _DATA_100AA_ _DATA_100B7_
.dw _DATA_100C4_ _DATA_100D3_ _DATA_100E2_ _DATA_100ED_ _DATA_100F8_ _DATA_10103_ _DATA_1010E_ _DATA_1011B_
.dw _DATA_10128_ _DATA_10135_ _DATA_10142_ _DATA_10157_ _DATA_1016C_ _DATA_10181_ _DATA_1018E_ _DATA_1019B_
.dw _DATA_101AC_ _DATA_101BD_ _DATA_101CE_ _DATA_101DF_ _DATA_101F0_ _DATA_10201_ _DATA_10218_ _DATA_10231_
.dw _DATA_10248_ _DATA_10261_ _DATA_10278_ _DATA_10291_ _DATA_102A8_ _DATA_102C1_ _DATA_102CE_ _DATA_102DB_
.dw _DATA_102DB_ _DATA_102E6_ _DATA_102F3_ _DATA_10300_ _DATA_1030D_ _DATA_1031A_ _DATA_10327_ _DATA_10334_

; 1st entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10060 to 10060 (1 bytes)
_DATA_10060_:
.db $05

; Pointer Table from 10061 to 1006A (5 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10371_ _DATA_10389_ _DATA_103A1_

; 2nd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1006B to 1006B (1 bytes)
_DATA_1006B_:
.db $06

; Pointer Table from 1006C to 10077 (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_103B9_ _DATA_103D1_ _DATA_103E9_ _DATA_10401_

; 3rd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10078 to 10078 (1 bytes)
_DATA_10078_:
.db $06

; Pointer Table from 10079 to 10084 (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10419_ _DATA_10431_ _DATA_10449_ _DATA_10461_

; 4th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10085 to 10085 (1 bytes)
_DATA_10085_:
.db $05

; Pointer Table from 10086 to 1008F (5 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_104A9_ _DATA_104C1_ _DATA_104D9_

; 5th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10090 to 10090 (1 bytes)
_DATA_10090_:
.db $06

; Pointer Table from 10091 to 1009C (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_104F1_ _DATA_10509_ _DATA_10521_ _DATA_10539_

; 6th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1009D to 1009D (1 bytes)
_DATA_1009D_:
.db $06

; Pointer Table from 1009E to 100A9 (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10551_ _DATA_10569_ _DATA_10581_ _DATA_10599_

; 7th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 100AA to 100AA (1 bytes)
_DATA_100AA_:
.db $06

; Pointer Table from 100AB to 100B6 (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_105B1_ _DATA_105C9_ _DATA_105E1_ _DATA_105F9_

; 8th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 100B7 to 100B7 (1 bytes)
_DATA_100B7_:
.db $06

; Pointer Table from 100B8 to 100C3 (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10611_ _DATA_10629_ _DATA_10641_ _DATA_10659_

; 9th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 100C4 to 100C4 (1 bytes)
_DATA_100C4_:
.db $07

; Pointer Table from 100C5 to 100D2 (7 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10671_ _DATA_10689_ _DATA_106A1_ _DATA_106B9_ _DATA_106D1_

; 10th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 100D3 to 100D3 (1 bytes)
_DATA_100D3_:
.db $07

; Pointer Table from 100D4 to 100E1 (7 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10719_ _DATA_10731_ _DATA_10749_

; 11th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 100E2 to 100E2 (1 bytes)
_DATA_100E2_:
.db $05

; Pointer Table from 100E3 to 100EC (5 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10761_ _DATA_10779_ _DATA_10791_

; 12th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 100ED to 100ED (1 bytes)
_DATA_100ED_:
.db $05

; Pointer Table from 100EE to 100F7 (5 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10761_ _DATA_107A9_ _DATA_107C1_

; 13th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 100F8 to 100F8 (1 bytes)
_DATA_100F8_:
.db $05

; Pointer Table from 100F9 to 10102 (5 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_107D9_ _DATA_107F1_ _DATA_10809_

; 14th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10103 to 10103 (1 bytes)
_DATA_10103_:
.db $05

; Pointer Table from 10104 to 1010D (5 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10821_ _DATA_10839_ _DATA_10809_

; 15th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1010E to 1010E (1 bytes)
_DATA_1010E_:
.db $06

; Pointer Table from 1010F to 1011A (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10671_ _DATA_10851_ _DATA_10869_ _DATA_10791_

; 16th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1011B to 1011B (1 bytes)
_DATA_1011B_:
.db $06

; Pointer Table from 1011C to 10127 (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_107D9_ _DATA_10881_ _DATA_10899_ _DATA_10719_

; 17th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10128 to 10128 (1 bytes)
_DATA_10128_:
.db $06

; Pointer Table from 10129 to 10134 (6 entries, indexed by unknown)
.dw _DATA_109A1_ _DATA_109B9_ _DATA_109D1_ _DATA_109E9_ _DATA_10731_ _DATA_10A01_

; 18th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10135 to 10135 (1 bytes)
_DATA_10135_:
.db $06

; Pointer Table from 10136 to 10141 (6 entries, indexed by unknown)
.dw _DATA_109A1_ _DATA_10A19_ _DATA_10A31_ _DATA_10A49_ _DATA_10A61_ _DATA_10A79_

; 19th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10142 to 10142 (1 bytes)
_DATA_10142_:
.db $0A

; Pointer Table from 10143 to 10156 (10 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10731_ _DATA_10749_ _DATA_10A91_ _DATA_10AA9_
.dw _DATA_10AC1_ _DATA_10AD9_

; 20th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10157 to 10157 (1 bytes)
_DATA_10157_:
.db $0A

; Pointer Table from 10158 to 1016B (10 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10731_ _DATA_10749_ _DATA_10AF1_ _DATA_10B09_
.dw _DATA_10B21_ _DATA_10B39_

; 21st entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1016C to 1016C (1 bytes)
_DATA_1016C_:
.db $0A

; Pointer Table from 1016D to 10180 (10 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_106E9_ _DATA_10701_ _DATA_10731_ _DATA_10749_ _DATA_10B51_ _DATA_10B69_
.dw _DATA_10B81_ _DATA_10B99_

; 22nd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10181 to 10181 (1 bytes)
_DATA_10181_:
.db $06

; Pointer Table from 10182 to 1018D (6 entries, indexed by unknown)
.dw _DATA_10341_ _DATA_10359_ _DATA_10BB1_ _DATA_10BC9_ _DATA_10BE1_ _DATA_10BF9_

; 23rd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1018E to 1018E (1 bytes)
_DATA_1018E_:
.db $06

; Pointer Table from 1018F to 1019A (6 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10C11_ _DATA_10C29_ _DATA_10C41_ _DATA_10C59_

; 24th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1019B to 1019B (1 bytes)
_DATA_1019B_:
.db $08

; Pointer Table from 1019C to 101AB (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10C71_ _DATA_10C89_ _DATA_10CA1_ _DATA_10CB9_ _DATA_10CD1_ _DATA_10CE9_

; 25th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 101AC to 101AC (1 bytes)
_DATA_101AC_:
.db $08

; Pointer Table from 101AD to 101BC (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_10C71_ _DATA_10C89_ _DATA_10CA1_ _DATA_10D01_ _DATA_10CD1_ _DATA_10D19_

; 26th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 101BD to 101BD (1 bytes)
_DATA_101BD_:
.db $08

; Pointer Table from 101BE to 101CD (8 entries, indexed by unknown)
.dw _DATA_10D31_ _DATA_10D49_ _DATA_10D61_ _DATA_10D79_ _DATA_10D91_ _DATA_10DA9_ _DATA_10DC1_ _DATA_10DD9_

; 27th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 101CE to 101CE (1 bytes)
_DATA_101CE_:
.db $08

; Pointer Table from 101CF to 101DE (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_11679_ _DATA_11691_ _DATA_116A9_ _DATA_116C1_ _DATA_116D9_ _DATA_116F1_

; 28th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 101DF to 101DF (1 bytes)
_DATA_101DF_:
.db $08

; Pointer Table from 101E0 to 101EF (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_11679_ _DATA_11691_ _DATA_116A9_ _DATA_11709_ _DATA_11721_ _DATA_11739_

; 29th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 101F0 to 101F0 (1 bytes)
_DATA_101F0_:
.db $08

; Pointer Table from 101F1 to 10200 (8 entries, indexed by unknown)
.dw _DATA_10479_ _DATA_10491_ _DATA_11679_ _DATA_11691_ _DATA_116A9_ _DATA_11751_ _DATA_11769_ _DATA_11781_

; 30th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10201 to 10201 (1 bytes)
_DATA_10201_:
.db $0B

; Pointer Table from 10202 to 10217 (11 entries, indexed by unknown)
.dw _DATA_11079_ _DATA_11091_ _DATA_110A9_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_11121_
.dw _DATA_11139_ _DATA_11151_ _DATA_11169_

; 31st entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10218 to 10218 (1 bytes)
_DATA_10218_:
.db $0C

; Pointer Table from 10219 to 10230 (12 entries, indexed by unknown)
.dw _DATA_11181_ _DATA_11199_ _DATA_111B1_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_111C9_
.dw _DATA_11139_ _DATA_111E1_ _DATA_111F9_ _DATA_11211_

; 32nd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10231 to 10231 (1 bytes)
_DATA_10231_:
.db $0B

; Pointer Table from 10232 to 10247 (11 entries, indexed by unknown)
.dw _DATA_11229_ _DATA_11241_ _DATA_111B1_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_11259_
.dw _DATA_11139_ _DATA_111E1_ _DATA_11271_

; 33rd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10248 to 10248 (1 bytes)
_DATA_10248_:
.db $0C

; Pointer Table from 10249 to 10260 (12 entries, indexed by unknown)
.dw _DATA_11181_ _DATA_11199_ _DATA_111B1_ _DATA_110C1_ _DATA_110D9_ _DATA_110F1_ _DATA_11109_ _DATA_11289_
.dw _DATA_112A1_ _DATA_111E1_ _DATA_112B9_ _DATA_112D1_

; 34th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10261 to 10261 (1 bytes)
_DATA_10261_:
.db $0B

; Pointer Table from 10262 to 10277 (11 entries, indexed by unknown)
.dw _DATA_112E9_ _DATA_11301_ _DATA_11319_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_11379_ _DATA_11391_
.dw _DATA_113A9_ _DATA_113C1_ _DATA_113D9_

; 35th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10278 to 10278 (1 bytes)
_DATA_10278_:
.db $0C

; Pointer Table from 10279 to 10290 (12 entries, indexed by unknown)
.dw _DATA_113F1_ _DATA_11409_ _DATA_11421_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_11379_ _DATA_11439_
.dw _DATA_113A9_ _DATA_11451_ _DATA_11469_ _DATA_112D1_

; 36th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10291 to 10291 (1 bytes)
_DATA_10291_:
.db $0B

; Pointer Table from 10292 to 102A7 (11 entries, indexed by unknown)
.dw _DATA_11481_ _DATA_11499_ _DATA_11421_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_11379_ _DATA_114B1_
.dw _DATA_113A9_ _DATA_114C9_ _DATA_114E1_

; 37th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 102A8 to 102A8 (1 bytes)
_DATA_102A8_:
.db $0C

; Pointer Table from 102A9 to 102C0 (12 entries, indexed by unknown)
.dw _DATA_113F1_ _DATA_11409_ _DATA_11421_ _DATA_11331_ _DATA_11349_ _DATA_11361_ _DATA_114F9_ _DATA_11511_
.dw _DATA_113A9_ _DATA_11529_ _DATA_11541_ _DATA_112D1_

; 38th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 102C1 to 102C1 (1 bytes)
_DATA_102C1_:
.db $06

; Pointer Table from 102C2 to 102CD (6 entries, indexed by unknown)
.dw _DATA_108B1_ _DATA_108C9_ _DATA_10DF1_ _DATA_10E09_ _DATA_10E21_ _DATA_10E39_

; 39th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 102CE to 102CE (1 bytes)
_DATA_102CE_:
.db $06

; Pointer Table from 102CF to 102DA (6 entries, indexed by unknown)
.dw _DATA_109A1_ _DATA_109B9_ _DATA_10E51_ _DATA_10E69_ _DATA_10E81_ _DATA_10E99_

; 40th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 102DB to 102DB (1 bytes)
_DATA_102DB_:
.db $05

; Pointer Table from 102DC to 102E5 (5 entries, indexed by unknown)
.dw _DATA_10EB1_ _DATA_10EC9_ _DATA_10EE1_ _DATA_10EF9_ _DATA_10F11_

; 42nd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 102E6 to 102E6 (1 bytes)
_DATA_102E6_:
.db $06

; Pointer Table from 102E7 to 102F2 (6 entries, indexed by unknown)
.dw _DATA_10F29_ _DATA_10F41_ _DATA_10F59_ _DATA_10F71_ _DATA_10F89_ _DATA_10FA1_

; 43rd entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 102F3 to 102F3 (1 bytes)
_DATA_102F3_:
.db $06

; Pointer Table from 102F4 to 102FF (6 entries, indexed by unknown)
.dw _DATA_10F29_ _DATA_10F41_ _DATA_10FB9_ _DATA_10FD1_ _DATA_10FE9_ _DATA_11001_

; 44th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10300 to 10300 (1 bytes)
_DATA_10300_:
.db $06

; Pointer Table from 10301 to 1030C (6 entries, indexed by unknown)
.dw _DATA_10F29_ _DATA_10F41_ _DATA_11019_ _DATA_11031_ _DATA_11049_ _DATA_11061_

; 45th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1030D to 1030D (1 bytes)
_DATA_1030D_:
.db $06

; Pointer Table from 1030E to 10319 (6 entries, indexed by unknown)
.dw _DATA_11559_ _DATA_11571_ _DATA_11589_ _DATA_115A1_ _DATA_115B9_ _DATA_115D1_

; 46th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 1031A to 1031A (1 bytes)
_DATA_1031A_:
.db $06

; Pointer Table from 1031B to 10326 (6 entries, indexed by unknown)
.dw _DATA_11799_ _DATA_117B1_ _DATA_117C9_ _DATA_117E1_ _DATA_117F9_ _DATA_11811_

; 47th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
; Data from 10327 to 10327 (1 bytes)
_DATA_10327_:
.db $06

; Pointer Table from 10328 to 10333 (6 entries, indexed by unknown)
.dw _DATA_11799_ _DATA_117B1_ _DATA_11829_ _DATA_11841_ _DATA_11859_ _DATA_11871_

; 48th entry of Pointer Table from 10000 (indexed by _RAM_C200_)
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

; 1st entry of Pointer Table from 768C (indexed by _RAM_C3A3_)
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

; 1st entry of Pointer Table from 765C (indexed by _RAM_C3A3_)
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

; 1st entry of Pointer Table from 766C (indexed by _RAM_C3A3_)
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

; 1st entry of Pointer Table from 767C (indexed by _RAM_C3A3_)
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

; 1st entry of Pointer Table from 764C (indexed by _RAM_C3A3_)
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

; 1st entry of Pointer Table from 66FB (indexed by unknown)
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

; 1st entry of Pointer Table from 6797 (indexed by unknown)
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

; 1st entry of Pointer Table from A80 (indexed by _RAM_C016_)
; Data from 14D35 to 14D5A (38 bytes)
_DATA_14D35_:
.db $11 $00 $B4 $08 $0B $18 $82 $08 $0C $18 $34 $08 $13 $18 $2B $08
.db $0A $18 $7B $08 $13 $18 $AD $08 $0F $18 $31 $08 $0C $18 $77 $08
.db $0C $18 $17 $10 $00 $00

; 2nd entry of Pointer Table from A80 (indexed by _RAM_C016_)
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

; 3rd entry of Pointer Table from A80 (indexed by _RAM_C016_)
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

; 4th entry of Pointer Table from A80 (indexed by _RAM_C016_)
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

; 1st entry of Pointer Table from 66F2 (indexed by unknown)
; Pointer Table from 18000 to 18003 (2 entries, indexed by unknown)
_DATA_18000_:
.dw _DATA_18006_ _DATA_1800C_

; 2nd entry of Pointer Table from 66F2 (indexed by unknown)
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

; 1st entry of Pointer Table from 66FE (indexed by unknown)
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

; 1st entry of Pointer Table from 670A (indexed by unknown)
; Pointer Table from 1871F to 18722 (2 entries, indexed by unknown)
_DATA_1871F_:
.dw _DATA_18725_ _DATA_18731_

; 2nd entry of Pointer Table from 670A (indexed by unknown)
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

; 1st entry of Pointer Table from 6716 (indexed by unknown)
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

; 1st entry of Pointer Table from 6722 (indexed by unknown)
; Pointer Table from 18DCE to 18DD1 (2 entries, indexed by unknown)
_DATA_18DCE_:
.dw _DATA_18DDA_ _DATA_18DFA_

; 2nd entry of Pointer Table from 6722 (indexed by unknown)
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

; 1st entry of Pointer Table from 672E (indexed by unknown)
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

; 1st entry of Pointer Table from 673A (indexed by unknown)
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

; 1st entry of Pointer Table from 6746 (indexed by unknown)
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

; 1st entry of Pointer Table from 6752 (indexed by unknown)
; Pointer Table from 19D66 to 19D69 (2 entries, indexed by unknown)
_DATA_19D66_:
.dw _DATA_19D72_ _DATA_19D92_

; 2nd entry of Pointer Table from 6752 (indexed by unknown)
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

; 1st entry of Pointer Table from 675E (indexed by unknown)
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

; 1st entry of Pointer Table from 676A (indexed by unknown)
; Pointer Table from 1A2C6 to 1A2CD (4 entries, indexed by unknown)
_DATA_1A2C6_:
.dw _DATA_1A2D8_ _DATA_1A2E2_ _DATA_1A2EC_ _DATA_1A2F6_

; 2nd entry of Pointer Table from 676A (indexed by unknown)
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

; 1st entry of Pointer Table from 6776 (indexed by unknown)
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

; 1st entry of Pointer Table from 6782 (indexed by unknown)
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

; 1st entry of Pointer Table from 678E (indexed by unknown)
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

; 1st entry of Pointer Table from 679A (indexed by unknown)
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

; 1st entry of Pointer Table from 67A6 (indexed by unknown)
; Pointer Table from 1AF35 to 1AF40 (6 entries, indexed by unknown)
_DATA_1AF35_:
.dw _DATA_1AF4F_ _DATA_1AF5D_ _DATA_1AF6B_ _DATA_1AF79_ _DATA_1AF87_ _DATA_1AF95_

; 2nd entry of Pointer Table from 67A6 (indexed by unknown)
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

; 1st entry of Pointer Table from 67B2 (indexed by unknown)
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

; 1st entry of Pointer Table from 1F89 (indexed by _RAM_C023_)
; Data from 1BE45 to 1BE46 (2 bytes)
_DATA_1BE45_:
.db $94 $CA

; Pointer Table from 1BE47 to 1BE4A (2 entries, indexed by unknown)
.dw _DATA_1BEF9_ _RAM_CA9C_

; Pointer Table from 1BE4B to 1BE50 (3 entries, indexed by unknown)
.dw _DATA_1BED5_ _RAM_CAA4_ _DATA_1BE9F_

; 3rd entry of Pointer Table from 1F89 (indexed by _RAM_C023_)
; Data from 1BE51 to 1BE52 (2 bytes)
_DATA_1BE51_:
.db $94 $CA

; Pointer Table from 1BE53 to 1BE56 (2 entries, indexed by unknown)
.dw _DATA_1BF1D_ _RAM_CA9C_

; Pointer Table from 1BE57 to 1BE5C (3 entries, indexed by unknown)
.dw _DATA_1BEB1_ _RAM_CAA4_ _DATA_1BF0B_

; 7th entry of Pointer Table from 1F89 (indexed by _RAM_C023_)
; Data from 1BE5D to 1BE5E (2 bytes)
_DATA_1BE5D_:
.db $94 $CA

; Pointer Table from 1BE5F to 1BE62 (2 entries, indexed by unknown)
.dw _DATA_1BEF9_ _RAM_CA9C_

; Pointer Table from 1BE63 to 1BE68 (3 entries, indexed by unknown)
.dw _DATA_1BEB1_ _RAM_CAA4_ _DATA_1BE8D_

; 9th entry of Pointer Table from 1F89 (indexed by _RAM_C023_)
; Data from 1BE69 to 1BE6A (2 bytes)
_DATA_1BE69_:
.db $94 $CA

; Pointer Table from 1BE6B to 1BE6E (2 entries, indexed by unknown)
.dw _DATA_1BF1D_ _RAM_CA9C_

; Pointer Table from 1BE6F to 1BE74 (3 entries, indexed by unknown)
.dw _DATA_1BEC3_ _RAM_CAA4_ _DATA_1BE9F_

; 11th entry of Pointer Table from 1F89 (indexed by _RAM_C023_)
; Data from 1BE75 to 1BE76 (2 bytes)
_DATA_1BE75_:
.db $94 $CA

; Pointer Table from 1BE77 to 1BE7A (2 entries, indexed by unknown)
.dw _DATA_1BEB1_ _RAM_CA9C_

; Pointer Table from 1BE7B to 1BE80 (3 entries, indexed by unknown)
.dw _DATA_1BEC3_ _RAM_CAA4_ _DATA_1BF0B_

; 15th entry of Pointer Table from 1F89 (indexed by _RAM_C023_)
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

; 1st entry of Pointer Table from 1FAB (indexed by _RAM_C023_)
; Data from 1BF51 to 1BF51 (1 bytes)
_DATA_1BF51_:
.db $07

; Pointer Table from 1BF52 to 1BF59 (4 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D506_ _DATA_19CD7_

; Data from 1BF5A to 1BF5F (6 bytes)
.db $CA $02 $DA $D7 $A4 $CA

; 3rd entry of Pointer Table from 1FAB (indexed by _RAM_C023_)
; Data from 1BF60 to 1BF60 (1 bytes)
_DATA_1BF60_:
.db $09

; Pointer Table from 1BF61 to 1BF6E (7 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D503_ _DATA_19CD7_ _DATA_8CA_ _RAM_D7DA_ _RAM_CAA4_

; 7th entry of Pointer Table from 1FAB (indexed by _RAM_C023_)
; Data from 1BF6F to 1BF6F (1 bytes)
_DATA_1BF6F_:
.db $07

; Pointer Table from 1BF70 to 1BF77 (4 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D503_ _DATA_19CD7_

; Data from 1BF78 to 1BF7D (6 bytes)
.db $CA $01 $DA $D7 $A4 $CA

; 9th entry of Pointer Table from 1FAB (indexed by _RAM_C023_)
; Data from 1BF7E to 1BF7E (1 bytes)
_DATA_1BF7E_:
.db $09

; Pointer Table from 1BF7F to 1BF86 (4 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D504_ _DATA_19CD7_

; Data from 1BF87 to 1BF8C (6 bytes)
.db $CA $02 $DA $D7 $A4 $CA

; 11th entry of Pointer Table from 1FAB (indexed by _RAM_C023_)
; Data from 1BF8D to 1BF8D (1 bytes)
_DATA_1BF8D_:
.db $03

; Pointer Table from 1BF8E to 1BF9B (7 entries, indexed by unknown)
.dw _RAM_D7D0_ _RAM_CA94_ _RAM_D504_ _DATA_19CD7_ _DATA_8CA_ _RAM_D7DA_ _RAM_CAA4_

; 15th entry of Pointer Table from 1FAB (indexed by _RAM_C023_)
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

; 1st entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1F109 to 1F154 (76 bytes)
_DATA_1F109_:
.db $9C $20 $B0 $84 $80 $B0 $9A $60 $B0 $83 $C0 $B0 $19 $20 $E7 $D5
.db $DC $D3 $DF $DD $D5 $B1 $B0 $E0 $DC $D5 $D1 $E3 $D5 $B0 $D2 $E5
.db $E9 $B0 $B0 $B0 $B0 $B0 $B0 $01 $80 $B0 $98 $60 $B0 $01 $80 $E4
.db $18 $20 $D8 $D5 $B0 $E4 $D8 $D9 $DE $D7 $E3 $B0 $E4 $D8 $D1 $E4
.db $B0 $E9 $DF $E5 $B0 $DC $D9 $DB $D5 $BE $00 $00

; 2nd entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1F155 to 1F19C (72 bytes)
_DATA_1F155_:
.db $9A $20 $B0 $84 $80 $B0 $98 $60 $B0 $83 $C0 $B0 $17 $20 $E9 $DF
.db $E5 $B0 $D1 $E2 $D5 $B0 $E3 $D8 $DF $E2 $E4 $B0 $DF $D6 $B0 $DD
.db $DF $DE $D5 $E9 $BC $01 $80 $B0 $96 $60 $B0 $01 $80 $D1 $16 $20
.db $E2 $D5 $DE $B7 $E4 $B0 $E9 $DF $E5 $CF
.dsb 12, $B0
.db $00 $00

; 3rd entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1F19D to 1F1B7 (27 bytes)
_DATA_1F19D_:
.db $8D $20 $B0 $02 $80 $B0 $B0 $8B $60 $B0 $01 $C0 $B0 $0A $20 $E4
.db $D8 $D1 $DE $DB $B0 $E9 $DF $E5 $BE $00 $00

; 6th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 5th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 4th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 7th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 8th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1F474 to 1F496 (35 bytes)
_DATA_1F474_:
.db $95 $20 $B0 $02 $80 $B0 $B0 $93 $60 $B0 $01 $C0 $B0 $12 $20 $D9
.db $B0 $E7 $D9 $DE $BE $B0 $E9 $DF $E5 $B0 $D7 $DF $E4 $B0 $D9 $E4
.db $BE $00 $00

; 9th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1F497 to 1F4B7 (33 bytes)
_DATA_1F497_:
.db $93 $20 $B0 $02 $80 $B0 $B0 $91 $60 $B0 $01 $C0 $B0 $10 $20 $D4
.db $D1 $E2 $DE $B0 $D9 $E4 $BE $B0 $D9 $B0 $DC $DF $E3 $D5 $BE $00
.db $00

; 10th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1F4B8 to 1F4F9 (66 bytes)
_DATA_1F4B8_:
.db $97 $20 $B0 $84 $80 $B0 $95 $60 $B0 $83 $C0 $B0 $14 $20 $D9 $E4
.db $B7 $E3 $B0 $D1 $B0 $D4 $E2 $D1 $E7 $BE $B0 $B0 $B0 $B0 $B0 $B0
.db $B0 $B0 $01 $80 $B0 $93 $60 $B0 $01 $80 $E9 $13 $20 $DF $E5 $B0
.db $E3 $E5 $E2 $D5 $B0 $DC $E5 $D3 $DB $D5 $D4 $B0 $DF $E5 $E4 $BE
.db $00 $00

; 11th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 12th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 13th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 14th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 15th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 16th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 17th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1FB41 to 1FB88 (72 bytes)
_DATA_1FB41_:
.db $9A $20 $B0 $84 $80 $B0 $98 $60 $B0 $83 $C0 $B0 $17 $20 $D9 $B0
.db $D8 $D1 $E6 $D5 $B0 $DE $DF $B0 $D2 $E5 $E3 $D9 $DE $D5 $E3 $E3
.db $B0 $E7 $D9 $E4 $D8 $01 $80 $B0 $96 $60 $B0 $01 $80 $E9 $16 $20
.db $DF $E5 $BC $B0 $E3 $DF $B0 $E0 $DC $D5 $D1 $E3 $D5 $B0 $DC $D5
.db $D1 $E6 $D5 $BE $B0 $B0 $00 $00

; 18th entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
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

; 21st entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1FC48 to 1FC83 (60 bytes)
_DATA_1FC48_:
.db $94 $20 $B0 $84 $80 $B0 $92 $60 $B0 $83 $C0 $B0 $11 $20 $E9 $DF
.db $E5 $B0 $D2 $D5 $E4 $E4 $D5 $E2 $B0 $D1 $D3 $D3 $D5 $E0 $E4 $01
.db $80 $B0 $90 $60 $B0 $01 $80 $E4 $10 $20 $D8 $D5 $B0 $D9 $DE $D5
.db $E6 $D9 $E4 $D1 $D2 $DC $D5 $B1 $B0 $B0 $00 $00

; 22nd entry of Pointer Table from 7F49 (indexed by _RAM_C011_)
; Data from 1FC84 to 1FC9D (26 bytes)
_DATA_1FC84_:
.db $8C $20 $B0 $02 $80 $B0 $B0 $8A $60 $B0 $01 $C0 $B0 $09 $20 $E3
.db $DF $DC $D4 $B0 $DF $E5 $E4 $BE $00 $00

; 1st entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FC9E to 1FCBD (32 bytes)
_DATA_1FC9E_:
.db $30 $3F $37 $3B $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 15th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FCBE to 1FCDD (32 bytes)
_DATA_1FCBE_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 3rd entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FCDE to 1FCFD (32 bytes)
_DATA_1FCDE_:
.db $30 $3F $37 $3B $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $38 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 4th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FCFE to 1FD1D (32 bytes)
_DATA_1FCFE_:
.db $30 $3F $06 $01 $0F $0B $00 $2A $25 $3C $02 $03 $38 $0C $08 $00
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 5th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FD1E to 1FD3D (32 bytes)
_DATA_1FD1E_:
.db $30 $3F $03 $03 $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $38 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 6th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FD3E to 1FD5D (32 bytes)
_DATA_1FD3E_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 7th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FD5E to 1FD7D (32 bytes)
_DATA_1FD5E_:
.db $01 $3F $37 $3B $0F $0B $00 $2F $06 $0B $30 $3E $38 $03 $02 $01
.db $01 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 8th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FD7E to 1FD9D (32 bytes)
_DATA_1FD7E_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $04 $01 $2F $38 $0C $08 $04
.db $04 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 11th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FD9E to 1FDBD (32 bytes)
_DATA_1FD9E_:
.db $25 $3F $37 $3B $0F $0B $00 $2F $30 $3E $20 $34 $38 $06 $01 $05
.db $25 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 9th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FDBE to 1FDDD (32 bytes)
_DATA_1FDBE_:
.db $30 $3F $37 $03 $0F $0B $00 $2F $06 $0B $01 $3E $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $06 $0C $0F $08 $3A $36 $03 $0A

; 10th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FDDE to 1FDFD (32 bytes)
_DATA_1FDDE_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 12th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FDFE to 1FE1D (32 bytes)
_DATA_1FDFE_:
.db $30 $3F $37 $3B $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 2nd entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FE1E to 1FE3D (32 bytes)
_DATA_1FE1E_:
.db $30 $3F $03 $03 $0F $0B $00 $06 $25 $2A $01 $2F $38 $0C $08 $3C
.db $30 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 14th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FE3E to 1FE5D (32 bytes)
_DATA_1FE3E_:
.db $25 $3F $37 $3B $0F $0B $00 $2F $30 $0F $02 $07 $0B $06 $01 $3C
.db $25 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 16th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
; Data from 1FE5E to 1FE7D (32 bytes)
_DATA_1FE5E_:
.db $20 $3F $37 $3B $0F $0B $00 $2F $30 $3E $3C $3E $38 $06 $01 $05
.db $20 $3F $05 $0B $03 $02 $00 $30 $3C $0C $0F $08 $3A $36 $03 $0A

; 17th entry of Pointer Table from 1112 (indexed by _RAM_C023_)
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

