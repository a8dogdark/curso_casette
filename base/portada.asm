;DATA CURSO 01
portada
	lda #<dlsportada
	sta $230
	lda #>dlsportada
	sta $231
	rts
dlsportada
:3	.by $70
	.by $46
	.wo PORTADATIT01
	.by $06,$70,$70
	.by $4d
	.wo PORTADABIB01
:20	.by $0d
:3	.by $70
	.by $42
	.wo PORTADATEXTO
:4	.by $02
	.by $41
	.wo dlsportada
PORTADATIT01
	.sb "  curso  assembler  "
	.sb " CREADO POR DOGDARK "
PORTADABIB01
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$57,$F5,$55,$7F,$55,$FD,$55,$7D,$7F
	.BYTE $55,$57,$F7,$FF,$FF,$7D,$55,$55,$7D,$FF
	.BYTE $FF,$D5,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$5F,$F5,$55,$FD,$57,$F5,$55,$FD,$7F
	.BYTE $D5,$5F,$F7,$FF,$FD,$7D,$55,$55,$FD,$FF
	.BYTE $FF,$55,$55,$55,$55,$55,$55,$55,$55,$55			
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$7F,$F5,$57,$F5,$5F,$D5,$57,$FD,$7F
	.BYTE $F5,$7F,$F7,$D5,$F5,$7D,$55,$57,$FD,$F5
	.BYTE $7D,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$FD,$F5,$5F,$D5,$7F,$55,$5F,$D5,$7F
	.BYTE $FD,$FF,$F7,$D7,$D5,$7D,$55,$5F,$D5,$F5
	.BYTE $F5,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $57,$F5,$F5,$7F,$55,$FD,$55,$7F,$55,$7D
	.BYTE $FF,$FD,$F7,$FF,$55,$7D,$55,$7F,$55,$FF
	.BYTE $D5,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $5F,$D5,$F5,$7F,$FD,$FF,$F5,$FD,$55,$7D
	.BYTE $7F,$F5,$F7,$FF,$55,$7D,$55,$FD,$55,$FF
	.BYTE $D5,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $7F,$55,$F5,$7F,$FD,$FF,$F7,$FF,$D5,$7D
	.BYTE $5F,$D5,$F7,$DF,$D5,$7D,$57,$FF,$D5,$FF
	.BYTE $D5,$55,$55,$55,$55,$55,$55,$55,$55,$55
 	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $FF,$FF,$F5,$55,$FD,$57,$F5,$FD,$55,$7D
	.BYTE $57,$55,$F7,$D7,$F5,$7F,$55,$FD,$55,$F7
	.BYTE $F5,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$57
	.BYTE $FF,$FF,$F5,$57,$F5,$5F,$D5,$7F,$55,$7D
	.BYTE $55,$55,$F7,$D5,$FD,$7F,$D5,$7F,$55,$F5
	.BYTE $FD,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$5F
	.BYTE $D5,$55,$F5,$5F,$D5,$7F,$55,$5F,$D5,$7D
	.BYTE $55,$55,$F7,$D5,$FD,$7F,$F5,$5F,$D5,$F5
	.BYTE $7F,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$7F
	.BYTE $55,$55,$F5,$7F,$55,$FD,$55,$57,$FD,$7D
	.BYTE $55,$55,$F7,$D7,$F5,$7F,$FD,$57,$FD,$F5
	.BYTE $7F,$D5,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$FD
	.BYTE $55,$55,$F5,$FD,$57,$F5,$55,$55,$FD,$7D
	.BYTE $55,$55,$F7,$DF,$D5,$7F,$FF,$55,$FD,$F5
	.BYTE $7F,$D5,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$F5
	.BYTE $55,$55,$F7,$F5,$5F,$D5,$55,$55,$7D,$7D
	.BYTE $55,$55,$F7,$FF,$55,$7F,$FF,$55,$7D,$F5
	.BYTE $7F,$D5,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
	.BYTE $55,$55,$55,$55,$55,$55,$55,$55,$55,$55
PORTADATEXTO
	.sb "Curso de programacion en assembler, para"
	.sb "computadores Atari, lineas XE-XL -  2018"
	.sb "              Nivel basico.             "
	.sb "Agradecimiento a WILLYSOFT  por  codigos"
	.sb "y ense�anza prestada.                   "