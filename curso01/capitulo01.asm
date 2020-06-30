	icl '../base/sys_equates.m65'
	icl '../base/sys_macros.m65'
p1		= $cb
temp	= $80
	org $2000
dlstitulo
:3	.by $70
	.by $46
	.wo showtitulo
:10	.by $70
	.by $06,$70,$06
	.by $41
	.wo dlstitulo
showtitulo
:3	.sb "********************"
limpiotitulo
	lda #$00
	ldx #19
limpiotitulo1
	sta showtitulo,x
	sta showtitulo+20,x
	sta showtitulo+40,x
	dex
	bpl limpiotitulo1 
	rts
iniciotitulo
	lda #<dlstitulo
	sta $230
	lda #>dlstitulo
	sta $231
	rts
dlscontenido
:3	.by $70
	.by $42
	.wo showcontenido
:22	.by $02
	.by $41
	.wo dlscontenido
showcontenido
:23	.sb "****************************************"
limpiocontenido
	lda #<showcontenido
	sta p1
	lda #>showcontenido
	sta p1+1
	ldy #0
	sty temp
	sty temp+1
limpiocontenido1
	lda #$00
	sta (p1),y
	suma p1,p1,1,0
	suma temp,temp,1,0
	
	lda temp+1
	cmp #$03
	bne limpiocontenido1
	
	lda temp
	cmp #$98
	bne limpiocontenido1
	
	rts
iniciocontenido
	lda #<dlscontenido
	sta $230
	lda #>dlscontenido
	sta $231
	rts
reseter
	lda #$00
	sta p1
	sta p1+1
	sta temp
	lda #$a0
	sta temp
	rts
;*************************************
; funciones
;*************************************
pausa
	ldx temp
	stx $021c
pausa1
	ldx $021c
	bne pausa1
	rts
inicio
	jsr reseter
	jsr limpiotitulo
	jsr iniciotitulo
	ldx #19
tit1
	lda datatitulo01,x
	sta showtitulo,x
	lda datatitulo01+20,x
	sta showtitulo+20,x
	lda datatitulo01+40,x
	sta showtitulo+40,x
	dex
	bpl tit1
	jsr pausa
;primer contenido
	jsr limpiocontenido
	jsr iniciocontenido
	lda #$02
	sta 710
	sta 712
	
	jmp *
datatitulo01
	.sb "  curso  assembler  "
	.sb "    CAPITULO  01    "
	.sb +128,"    introduccion    "
	run inicio