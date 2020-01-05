;;; Use to build the vertscroll init subroutines
	MAC m_vertscroll_init
	lda #240
	sta vertscroll_lines_cnt ; 240 lines to display on screen
	lda #6
	sta vertscroll_first_cnt ; 6 lines per picture row
	lda #49
	sta vertscroll_rows_cnt	; Start displaying black after this
	lda #240
	sta vertscroll_head_cnt ; Skip head count at the beginning of the kernel

	;; Copy 8 pointers i.e 16 bytes to slideshow_colbg memory address
	ldy 15
.loop:
	lda slideshow_{1}_01_ptr,Y
	sta vertscroll_p0,Y
	dey
	bpl .loop

	jmp RTSBank
	ENDM

vertscroll_init_intro:	SUBROUTINE
	m_vertscroll_init intro

vertscroll_init_outro:	SUBROUTINE
	m_vertscroll_init outro

vertscroll_vblank:	SUBROUTINE
	;; No lines to display anymore
	lda vertscroll_lines_cnt
	beq .end

	;; Scroller starts at the top of screen ?
	lda vertscroll_head_cnt
	beq .top_of_screen
	
	dec vertscroll_head_cnt
	jmp .end

	;; Main loop
.top_of_screen:
	;; Did we display all the GFX rows ?
	lda vertscroll_rows_cnt
	bpl .continue
	dec vertscroll_lines_cnt
	
.continue:
	;; Did we consume a whole row ?
	dec vertscroll_first_cnt
	bne .end
	lda #6
	sta vertscroll_first_cnt
	dec vertscroll_rows_cnt

	m_add_to_pointer vertscroll_p0, #1
	m_add_to_pointer vertscroll_p1, #1
	m_add_to_pointer vertscroll_p2, #1
	m_add_to_pointer vertscroll_p3, #1
	m_add_to_pointer vertscroll_p4, #1
	m_add_to_pointer vertscroll_p5, #1
.end:
	jmp RTSBank

;;; vertscroll_lines_cnt: total count of lines to display
;;; vertscroll_first_cnt: count of lines of the first row to display
;;; vertscroll_p0: pointer towards the playfield values
;;; vertscroll_p1
;;; ...
vertscroll_kernel:	SUBROUTINE
	;; Do we have any line to display ?
	lda vertscroll_lines_cnt
	beq .end

	;; Do we have any header to skip ?
	ldy vertscroll_head_cnt
	beq .display
.head:
	sta WSYNC
	dey
	bne .head
	
.display:
	lda #$00
	sta COLUBK
	lda #$ff
	sta COLUPF

	sec
	lda vertscroll_lines_cnt
	sbc vertscroll_head_cnt
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
