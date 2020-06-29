	org $2000
p1		= $cb
pausa	= $cd
dlstitulos
:3	.by $70
	.by $46
	.wo showtitulos
:10	.by $70
	.by $06,$70,$06
	.by $41
	.wo dlstitulos
showtitulos
:3	.sb "********************"
dlscontenido
:3 	.by $70
	.by $42
	.wo showcontenido
:22	.by $02
	.by $41
	.wo dlscontenido
showcontenido
:23	.sb "****************************************"
;***************************************
; portadas
;***************************************
titulos
	lda #<dlstitulos
	sta $230
	lda #>dlstitulos
	sta $231
	rts
contenido
	lda #<dlscontenido
	sta $230
	lda #>dlscontenido
	sta $231
	rts
;***************************************
; funciones
;***************************************
PAUSITA
	ldx pausa
	STX $021C
?PAUSITA
	LDX $021C
	BNE ?PAUSITA
	RTS
reseter
	lda #$a0
	sta pausa
	rts
inicio
	jsr reseter
	jsr titulos
	jsr pausita
	
	lda #4
	sta 710
	sta 712
	jsr contenido
	jsr pausita
	jmp *
	run inicio