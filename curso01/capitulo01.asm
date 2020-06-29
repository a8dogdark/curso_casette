	icl '../base/sys_equates.m65'
	icl '../base/sys_macros.m65'
	org $2000
dlsportada
:3	.by $70
	.by $46
	.wo showportada
:10	.by $70
	.by $06,$70,$06
	.by $41
	.wo dlsportada
dlscontenido
:3	.by $70
	.by $42
	.wo showcontenido
:22	.by $02
	.by $41
	.wo dlscontenido
showportada
:3	.sb "********************"
showcontenido
:23	.sb "****************************************"
inicioportada
	lda #<dlsportada
	sta $230
	lda #>dlsportada
	sta $231
	rts
iniciocontenido
	lda #<dlscontenido
	sta $230
	lda #>dlscontenido
	sta $231
	rts
inicio
	
	;jsr inicioportada
	jsr iniciocontenido
	lda #$03
	sta 710
	sta 712
	jmp *
	run inicio