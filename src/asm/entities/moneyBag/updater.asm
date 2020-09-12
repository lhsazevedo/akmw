; 60th entry of Jump Table from 2892 (indexed by _RAM_CF80_)
updateMoneyBag:
	bit 0, (ix + Entity.flags)
	jr nz, +
	set 0, (ix + Entity.flags)
	ld (ix + Entity.xSpeed.low), $00
	ld (ix + Entity.xSpeed.high), $00
	ld (ix + Entity.ySpeed.low), $00
	ld (ix + Entity.ySpeed.high), $00
	ld (ix + Entity.jankenMatchDecision), $F0
	ld (ix + Entity.spriteDescriptorPointer.low), <bigMoneyBagSpriteDescriptor
	ld (ix + Entity.spriteDescriptorPointer.high), >bigMoneyBagSpriteDescriptor
	ld (ix + Entity.unknown5), $03
	ld a, (ix + Entity.unknown6)
	cp $04
	ret c
	ld (ix + Entity.spriteDescriptorPointer.low), <smallMoneyBagSpriteDescriptor
	ld (ix + Entity.spriteDescriptorPointer.high), >smallMoneyBagSpriteDescriptor
	ld (ix + Entity.unknown5), $00
	ret

+:
	ld a, (ix + Entity.isOffScreenFlags.low)
	or (ix + Entity.isOffScreenFlags.high)
	jp nz, clearCurrentEntity
	ld iy, v_entity1
	call _LABEL_7CC2_
	jp c, +
	ld l, (ix + Entity.unknown5)
	call takeMoney
	ld a, $8E
	ld (v_soundControl), a
	jp clearCurrentEntity

+:
	dec (ix + Entity.jankenMatchDecision)
	jp z, clearCurrentEntity
	ret
