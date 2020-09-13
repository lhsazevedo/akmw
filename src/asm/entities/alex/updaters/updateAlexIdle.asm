; 2nd entry of Jump Table from 2982 (indexed by v_entities.1.state)
updateAlexIdle:
	call _LABEL_3B56_
	ld (v_entities.1.ySpeed), hl
	bit 4, (ix+28)
	jp nz, _LABEL_3E0B_
	call _LABEL_3C45_
	ld a, (v_entities.1.state)
	cp ALEX_IDLE
	ret nz
	ld de, $1904
	ld a, (v_entities.1.isOffScreenFlags.high)
	or a
	jr z, +
	call _LABEL_3A4F_
	jp nc, _LABEL_2CA1_
	jr ++

+:
	ld a, $08
	call _LABEL_3A41_
	jp nc, _LABEL_2CA1_
	call _LABEL_3D07_
	ld a, (v_entities.1.state)
	cp ALEX_IDLE
	ret nz
++:
	ld a, (_RAM_C213_)
	or a
	jp nz, _LABEL_3498_
	bit 0, (ix+28)
	jr z, +
	bit 1, (ix+28)
	jr nz, +
	call _LABEL_462E_
	ret nz
	jp _LABEL_2C04_

+:
	ld a, (_RAM_C007_)
	bit 5, a
	jp nz, _LABEL_4508_
	bit 4, a
	jp nz, _LABEL_2CAE_
	ld a, (v_inputData)
	bit 2, a
	jr nz, walkLeft
	bit 3, a
	jr nz, walkRight
	bit 1, a
	ret z
