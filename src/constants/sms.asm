; Ports
Port_PSG = $7F
Port_VDPData = $BE
Port_VDPAddress = $BF
_PORT_DE_ = $DE
_PORT_DF_ = $DF

; Input Ports
Port_VDPStatus = $BF
Port_IOPort1 = $DC
Port_IOPort2 = $DD

; Mapper
Mapper_Slot2 = $FFFF

JOY_UP_BIT = 0
JOY_DOWN_BIT = 1
JOY_LEFT_BIT = 2
JOY_RIGHT_BIT = 3
JOY_BTN1_BIT = 4
JOY_BTN2_BIT = 5

; Input pins
JOY_UP    = 1 << JOY_UP_BIT
JOY_DOWN  = 1 << JOY_DOWN_BIT
JOY_LEFT  = 1 << JOY_LEFT_BIT
JOY_RIGHT = 1 << JOY_RIGHT_BIT
JOY_FIREA = 1 << JOY_BTN1_BIT
JOY_FIREB = 1 << JOY_BTN2_BIT

; VDP Register constants
VDP_R0_DISABLE_VSCROLL_COLS_24_TO_32    = 1 << 7
VDP_R0_DISABLE_HSCROLL_ROWS_0_AND_1     = 1 << 6
VDP_R0_ENABLE_LINE_INTERRUPT            = 1 << 4
VDP_R0_MASK_COL_0                       = 1 << 5
VDP_R0_SHIFT_SPRITES_LEFT               = 1 << 3
VDP_R0_USE_MODE_4                       = 1 << 2
VDP_R0_CHANGE_HEIGHT_IN_MODE_4          = 1 << 1
VDP_R0_NOSYNC_MONO                      = 1

VDP_R1_DISPLAY_VISIBLE          = 1 << 6
VDP_R1_ENABLE_FRAME_INTERRUPT   = 1 << 5
VDP_R1_224_LINE_MODE4           = 1 << 4
VDP_R1_240_LINE_MODE4           = 1 << 3
VDP_R1_SPRITES_8_x_16           = 1 << 1
VDP_R1_DOUBLE_SPRITE_PIXELS     = 1

; PSG
PSG_CONTROL_DATA  = 0
PSG_CONTROL_LATCH = 1 << 7

PSG_CHANNEL_0 = 0
PSG_CHANNEL_1 = 1 << 5
PSG_CHANNEL_2 = 2 << 5
PSG_CHANNEL_3 = 3 << 5

PSG_LATCH_DATA   = 0
PSG_LATCH_VOLUME = 1 << 4
