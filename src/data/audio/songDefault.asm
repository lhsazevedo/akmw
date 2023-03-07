; 2nd entry of Pointer Table from 98DD (indexed by v_soundControl)
; Data from 9F81 to 9F84 (4 bytes)
songDefault:
.db $04

.db $80
.db $80
.db $04
.dw songDefaultCh0
.db $EC
.db $01
.db $04
.db $0B

.db $80
.db $A0
.db $04
.dw songDefaultCh1
.db $F8
.db $01
.db $03
.db $0A

.db $80
.db $C0
.db $04
.dw songDefaultCh2
.db $EC
.db $01
.db $04
.db $0B

.db $80
.db $E0
.db $04
.dw songDefaultCh3
.db $00
.db $00
.db $00
.db $00

songDefaultCh0:
.db noteB5      $02 $02
.db noteFSharp5
.db noteFSharp5
.db $EC $00 $03
.db noteASharp5
.db noteDSharp5
.db noteB5     
.db noteSilence
.db noteB5     
.db noteSilence
.db $EC $01 $02
.db noteASharp5
.db noteDSharp5
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
.db $E4 $04
.db noteFSharp6 $02 $04
.db noteGSharp6 $02
.db noteASharp6 $04
.db noteGSharp6
.db noteFSharp6
.db noteE6     
.db $E4 $05
.db noteDSharp6 $08
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
.db $E4 $04
.db noteFSharp6 $04 $04
.db noteASharp6
.db noteFSharp6
.db $E4 $05
.db noteB6      $0C
.db noteSilence $04
.db $E4 $04
.db noteGSharp6 $04 $03 $01
.db noteASharp6 $02 $04
.db noteGSharp6 $02
.db $E4 $05
.db noteFSharp6 $0C
.db noteSilence $04
.db $E4 $04
.db noteE6      $04 $03 $01
.db noteFSharp6 $02 $04
.db noteE6      $02
.db $E4 $05
.db noteDSharp6 $0C
.db noteSilence $04
.db $E4 $04
.db noteGSharp6 $04 $03 $01
.db noteASharp6 $02 $04
.db noteGSharp6 $02
.db noteFSharp6 $04
.db noteB6     
.db $E4 $05
.db noteFSharp6 $06
.db noteSilence $02
.db $E4 $04
.db noteGSharp6 $04
.db noteFSharp6
.db noteE6     
.db noteFSharp6
.db noteB6      $08
.db noteASharp6
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
.db $E5
.dw $9FA6

songDefaultCh1:
.db noteB3      $02 $02
.db noteSilence $04
.db noteFSharp3 $02
.db noteSilence
.db noteFSharp4
.db noteSilence
.db noteB3      $02 $02
.db noteSilence $04
.db noteFSharp4 $02
.db noteSilence
.db noteFSharp3
.db noteSilence
.db $EC $00 $02 $6E
.db noteE5     
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
.db noteFSharp4 $04
.db noteSilence $02
.db noteFSharp4 $04
.db noteE4      $02
.db noteFSharp4 $04
.db noteGSharp4 $02
.db noteSilence
.db noteFSharp4
.db noteSilence
.db noteB4     
.db noteSilence
.db noteFSharp4
.db noteSilence
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
.db noteFSharp4 $04
.db noteSilence $02
.db noteFSharp4 $06
.db noteE4      $04
.db $E4 $06
.db noteB4      $0C
.db noteASharp4 $04
.db $E4 $03
.db noteGSharp4 $04
.db noteSilence $02
.db noteGSharp4 $06
.db noteASharp4 $04
.db noteFSharp4 $04
.db noteSilence $02
.db $E4 $06
.db noteFSharp4 $08
.db noteSilence $02
.db $E4 $03
.db noteE4      $04
.db noteSilence $02
.db $E4 $06
.db noteE4      $08
.db noteSilence $02
.db $E4 $03
.db noteDSharp4 $02
.db noteSilence
.db noteE4     
.db noteSilence
.db noteFSharp4
.db noteSilence
.db noteE4     
.db noteSilence
.db noteGSharp4 $04
.db noteSilence $02
.db $E4 $06
.db noteGSharp4 $08
.db noteSilence $02
.db $E4 $03
.db noteFSharp4 $02
.db noteSilence
.db noteB4     
.db noteSilence
.db $E4 $06
.db noteFSharp4 $06
.db noteSilence $02
.db $E4 $03
.db noteSilence $04
.db noteE4     
.db noteSilence
.db noteDSharp4
.db noteSilence
.db noteB4     
.db noteSilence
.db noteASharp4
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
.db $E5
.dw $A06E

songDefaultCh2:
.db noteB5      $02 $02
.db noteSilence $04
.db noteB5      $02
.db noteSilence
.db noteFSharp6
.db noteSilence
.db noteB5      $02 $02
.db noteSilence $04
.db noteB5      $02
.db noteSilence
.db noteFSharp5
.db noteSilence
.db $EC $00 $02 $46
.db noteF5     
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
.db noteDSharp6 $02 $04
.db noteE6      $02
.db noteFSharp6
.db noteSilence
.db noteE6     
.db noteSilence
.db noteDSharp6 $02
.db noteSilence
.db noteCSharp6
.db noteSilence
.db noteB5      $08
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
.db noteDSharp6 $04 $04
.db noteE6      $02
.db noteSilence
.db noteCSharp6
.db noteSilence
.db $E4 $05
.db noteDSharp6 $0C
.db noteSilence $04
.db $E4 $04
.db noteB5      $04 $03 $01
.db noteCSharp6 $02 $04
.db noteB5      $02
.db $E4 $05
.db noteASharp5 $0C
.db noteSilence $04
.db $E4 $04
.db noteGSharp5 $04 $03 $01
.db noteASharp5 $02 $04
.db noteGSharp5 $02
.db noteFSharp5 $04
.db noteGSharp5
.db $E4 $05
.db noteASharp5 $06
.db noteSilence $02
.db $E4 $04
.db noteB5      $04 $03 $01
.db noteCSharp6 $02 $04
.db noteB5      $02
.db noteASharp5 $04
.db noteDSharp6
.db $E4 $05
.db noteB5      $06
.db noteSilence $02
.db $E4 $04
.db noteCSharp6 $04
.db noteDSharp6
.db noteCSharp6
.db noteDSharp6
.db noteE6     
.db noteE6     
.db noteDSharp6 $08
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
.db $E5
.dw $A146

songDefaultCh3:
.db $E3 $04
.db $EA $79
.db noteFSharp5
.db $EA $B5
.db noteFSharp5
.db $EA $79
.db noteFSharp5
.db $EA $B5
.db noteFSharp5
.db $E3 $04
.db $EA $91
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $A8
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $A8
.db noteFSharp5
.db $EA $C3
.db noteFSharp5
.db $EA $C3
.db noteFSharp5
.db $EA $C3
.db noteFSharp5
.db $EA $A8
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $91
.db noteFSharp5
.db $EA $D9
.db noteFSharp5
.db $EA $91
.db noteFSharp5
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
.db $E5
.dw $A221

.db $E1 $09 $E4 $01 $8D $02 $02 $E1 $0B $E4 $02 $04 $E1 $09 $E4 $01
.db $02 $02 $E1 $0B $E4 $02 $04 $EB

.db $E1 $09 $E4 $01 $8D $04 $E1 $0B
.db $E4 $02 $04 $E1 $09 $E4 $01 $02 $02 $E1 $0B $E4 $02 $04 $EB

.db $E1
.db $09 $E4 $01 $04 $E1 $0B $E4 $02 $04 $04 $04 $EB

.db $E1 $09 $E4 $01
.db $02 $02 $E1 $0B $E4 $02 $04 $04 $04 $EB

.db $E1 $09 $E4 $01 $04 $E1
.db $0B $E4 $02 $02 $E1 $09 $E4 $01 $04 $02 $E1 $0B $E4 $02 $04 $EB

.db $E1 $09 $E4 $01 $04 $E1 $0B $E4 $02 $04 $E1 $09 $E4 $01 $04 $E1
.db $0B $E4 $02 $04 $EB

.db $E1 $09 $E4 $01 $8D $03 $01 $E1 $0B $E4 $02
.db $04 $E1 $09 $E4 $01 $02 $02 $E1 $0B $E4 $02 $04 $EB

.db $E1 $09 $E4
.db $01 $04 $E1 $0B $E4 $02 $04 $E1 $09 $E4 $01 $02 $E1 $0B $E4 $02
.db $01 $80 $8D $80 $8D $80 $EB

.db $E1 $09 $E4 $01 $8D $02 $02 $E1 $0B
.db $E4 $02 $02 $E1 $09 $E4 $01 $02 $02 $02 $E1 $0B $E4 $02 $02 $E1
.db $09 $E4 $01 $02 $EB

.db $E1 $09 $E4 $01 $8D $03 $01 $E1 $0B $E4 $02
.db $04 $E1 $09 $E4 $01 $03 $01 $E1 $0B $E4 $02 $03 $01 $E1 $09 $E4
.db $01 $8D $03 $01 $E1 $0B $E4 $02 $04 $04 $04 $EB

.db $E1 $09 $E4 $01
.db $8D $02 $02 $E1 $0B $E4 $02 $02 $E1 $09 $E4 $01 $02 $04 $E1 $0B
.db $E4 $02 $02 $E1 $09 $E4 $01 $02 $EB

.db $E1 $09 $E4 $01 $8D $04 $E1
.db $0B $E4 $02 $02 $E1 $09 $E4 $01 $02 $04 $E1 $0B $E4 $02 $02 $E1
.db $09 $E4 $01 $02 $EB

.db $E1 $09 $E4 $01 $8D $04 $06 $E1 $0B $E4 $02
.db $02 $02 $02 $EB

.db $E1 $09 $E4 $01 $8D $02 $02 $02 $E1 $0B $E4 $02
.db $02 $04 $04 $EB
