; Alex states
ALEX_SPAWNING                   = $00
ALEX_IDLE                       = $01
ALEX_WALKING                    = $02
ALEX_IN_AIR                     = $03
ALEX_CROUCHED                   = $04
ALEX_SWIMING                    = $05
ALEX_FLYING_PETICOPTER          = $06
ALEX_RIDING_MOTORCYCLE          = $08
ALEX_RIDING_MOTORCYCLE_IN_AIR   = $09
ALEX_RIDING_BOAT                = $0B
ALEX_RIDING_BOAT_IN_AIR         = $0C 
ALEX_DEAD                       = $0F
ALEX_DIVING                     = $13
ALEX_AUTO_WALKING_RIGHT         = $14
ALEX_BATTLE_COUNTING            = $15
ALEX_BATTLE_GO_TO_POSITION      = $16
ALEX_BATTLE_DANCING             = $17
ALEX_BATTLE_THROW               = $18
ALEX_BATTLE_STATUE              = $19

ALEX_GRAVITY = $0040


; Alex unkown3 bits
ALEX_UKNW3_FACING_RIGHT_BIT = 0
ALEX_UKNW3_MOVING_RIGHT_BIT = 1

ALEX_UKNW3_FACING_RIGHT = 1 << ALEX_UKNW3_FACING_RIGHT_BIT
ALEX_UKNW3_MOVING_RIGHT = 1 << ALEX_UKNW3_MOVING_RIGHT_BIT