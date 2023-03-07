songIntro:
.db $04

.db $80
.db PSG_CONTROL_LATCH | PSG_CHANNEL_0
.db $04
.dw songIntroCh0
.db $EC
.db $01
.db $04
.db $0B

.db $80
.db PSG_CONTROL_LATCH | PSG_CHANNEL_1
.db $04
.dw songIntroCh1
.db $F8
.db $01
.db $03
.db $0A

.db $80
.db PSG_CONTROL_LATCH | PSG_CHANNEL_2
.db $04
.dw songIntroCh2
.db $EC
.db $01
.db $04
.db $0B

.db $80
.db PSG_CONTROL_LATCH | PSG_CHANNEL_3
.db $04
.dw songIntroCh3
.db $00
.db $00
.db $00
.db $00

songIntroCh0:
.db noteB5      $02 $04
.db noteDSharp6 $02
.db $E4 $05
.db noteFSharp6 $06
.db noteSilence $02
.db $E4 $04
.db noteCSharp6 $02 $04
.db noteE6      $02
.db $E4 $05
.db noteGSharp6 $06
.db noteSilence $02
.db noteFSharp6 $04 $04
.db noteASharp6
.db noteFSharp6
.db $E4 $05
.db noteB6      $0C
.db noteSilence $04
.db $E4 $04
.db $E2

songIntroCh1:
.db noteB3      $04
.db noteSilence $02
.db noteB3      $04
.db noteFSharp3 $02
.db noteB3     
.db noteFSharp3
.db noteCSharp4 $04
.db noteSilence $02
.db noteCSharp4 $04
.db noteGSharp3 $02
.db noteCSharp4
.db noteGSharp3
.db noteSilence $04
.db noteFSharp4 $02
.db noteSilence $02
.db noteASharp4
.db noteSilence
.db noteFSharp4
.db noteSilence
.db noteSilence
.db noteB4      $02 $02 $02 $02
.db noteSilence $06
.db $E2

songIntroCh2:
.db $E4 $04
.db noteFSharp5 $02 $04
.db noteB5      $02
.db $E4 $05
.db noteDSharp6 $06
.db noteSilence $02
.db $E4 $04
.db noteGSharp5 $02 $04
.db noteCSharp6 $02
.db $E4 $05
.db noteE6      $06
.db noteSilence $02
.db $E4 $04
.db noteDSharp6 $04 $04
.db noteE6     
.db noteDSharp6
.db $E4 $05
.db noteGSharp6 $0C
.db noteSilence $04
.db $E2

songIntroCh3:
.db $E3 $04
.db $EA $91
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db noteSilence $02
.db $E1 $0B
.db $E4 $02 $01
.db noteSilence
.db noteA3     
.db noteSilence
.db noteA3     
.db noteSilence
.db noteA3      $08
.db $E2
