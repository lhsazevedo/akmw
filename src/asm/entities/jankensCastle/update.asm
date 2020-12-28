updateJankensCastle:
	ld (ix + Entity.spriteDescriptorPointer.low), <jankensCastleSpriteDescriptor
	ld (ix + Entity.spriteDescriptorPointer.high), >jankensCastleSpriteDescriptor
	ret
