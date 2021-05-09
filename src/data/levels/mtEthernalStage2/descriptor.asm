.DSTRUCT mtEthernalStage2Descriptor INSTANCEOF LevelDescriptor VALUES
	bank: .db $86
	layoutDataPointer: .dw _DATA_185C0_
	layoutDataPointer2: .dw _DATA_185C0_
	startScreenX: .db $01
	startScreenY: .db $00
	xScreenCount: .db $11
	yScreenCount: .db $00
	scrollability: .db $08
	metatileNameTablePointer: .dw metatilesTableA
.ENDST
