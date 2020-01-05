vertscroll_init:	SUBROUTINE
	lda #240
	sta vertscroll_lines_cnt
	lda #3
	sta vertscroll_first_cnt
	
	;; Copy 8 pointers i.e 16 bytes to slideshow_colbg memory address
	ldy 15
.loop:
	lda slideshow_intro_01_ptr,Y
	sta vertscroll_p0,Y
	dey
	bpl .loop

	jmp RTSBank

vertscroll_vblank:	SUBROUTINE
	jmp RTSBank

;;; vertscroll_lines_cnt: total count of lines to display
;;; vertscroll_first_cnt: count of lines of the first row to display
;;; vertscroll_p0: pointer towards the playfield values
;;; vertscroll_p1
;;; ...
vertscroll_kernel:	SUBROUTINE
	lda #$00
	sta COLUBK
	lda #$ff
	sta COLUPF

	lda vertscroll_lines_cnt
	sta tmp
	ldx vertscroll_first_cnt
	dex
	ldy #0
	jmp .inner
.outer:
	ldx #5
.inner:
	sta WSYNC
	lda (vertscroll_p0),Y
	sta PF0
	lda (vertscroll_p1),Y
	sta PF1
	lda (vertscroll_p2),Y
	sta PF2
	lda (vertscroll_p3),Y
	sta PF0
	lda (vertscroll_p4),Y
	sta PF1
	lda (vertscroll_p5),Y
	sta PF2
	dec tmp
	beq .end
	dex
	bpl .inner
	iny
	jmp .outer

.end
	sta WSYNC
	lda #$00
	sta COLUBK
	sta COLUPF
	sta PF0
	sta PF1
	sta PF2
	jmp RTSBank
