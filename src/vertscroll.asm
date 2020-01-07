VERTSCROLL_COLOR_PERIOD	equ	#27

vertscroll_colors:
	dc.b $64, $2a, $04

vertscroll_init_common:	 SUBROUTINE
	lda #$00
	sta COLUBK
	lda #240
	sta vertscroll_lines_cnt ; 240 lines to display on screen
	sta vertscroll_head_cnt ; Skip head count at the beginning of the kernel
	lda #49
	sta vertscroll_rows_cnt	; Start displaying black after this
	lda #6
	sta vertscroll_first_cnt ; 6 lines per picture row
	lda #6
	sta vertscroll_fine_cnt	; Scroll the picture once more every 6 steps
	lda VERTSCROLL_COLOR_PERIOD
	sta vertscroll_col_switch ; Counter to switch text color
	rts

;;; Use to build the vertscroll init subroutines
	MAC m_vertscroll_init
	jsr vertscroll_init_common
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
	ldy #2
	sty vertscroll_cur_color ; index to the color in the table
	lda vertscroll_colors,Y
	sta COLUPF
	m_vertscroll_init intro

vertscroll_init_outro:	SUBROUTINE
	lda #$fe
	sta COLUPF
	sta vertscroll_cur_color ; current PF color
	m_vertscroll_init outro

vertscroll_update_pos:	SUBROUTINE
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
	rts

vertscroll_vblank_common:	SUBROUTINE
	jsr vertscroll_update_pos

	;; Do we have to move the picture faster this iteration ?
	dec vertscroll_fine_cnt
	bne .not_faster
	jsr vertscroll_update_pos
	lda #6			; Moving one step further every 6 frames
	sta vertscroll_fine_cnt
.not_faster:
	rts

vertscroll_vblank_intro:	SUBROUTINE
	jsr vertscroll_vblank_common

	;; Do we need to change PF color ?
	dec vertscroll_col_switch
	bpl .no_switch
	lda VERTSCROLL_COLOR_PERIOD
	sta vertscroll_col_switch

	;; changing color
	ldy vertscroll_cur_color
	dey
	bpl .no_loop
	ldy #2
.no_loop:
	sty vertscroll_cur_color
	lda vertscroll_colors,Y
	sta COLUPF
.no_switch:

	jmp RTSBank

vertscroll_vblank_outro:	SUBROUTINE
	jsr vertscroll_vblank_common

	;; Do we need to change PF color ?
	dec vertscroll_col_switch
	bpl .no_switch
	lda VERTSCROLL_COLOR_PERIOD
	sta vertscroll_col_switch

	;; Changing color
	lda vertscroll_cur_color
	eor #$08
	sta vertscroll_cur_color
	sta COLUPF
.no_switch:

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
	sta PF0
	sta PF1
	sta PF2
	jmp RTSBank
