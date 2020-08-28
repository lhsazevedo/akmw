.DSTRUCT MtEthernalDescriptor INSTANCEOF LevelDescriptor VALUES
	bank: .db $86
	layoutDataPointer: .dw _DATA_18000_
	layoutDataPointer2: .dw _DATA_18004_
	startScreenX: .db $01
	startScreenY: .db $01
	xScreenCount: .db $02
	yScreenCount: .db $09
	scrollability: .db $81
	metatileNameTablePointer: .dw _DATA_14000_
.ENDST
