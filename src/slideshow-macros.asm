;;; Macro to use to build the slideshow_prepare_pic_{1} subroutines
;;; slideshow_cur_pic is the index of the picture to display
;;; Arguments should be:
;;; 1. the lot to be used (e.g: lot1a)
;;; 2. the 'generic' lot of the bank (e.g: lot1)
	MAC m_slideshow_prepare_pic
	;; Should we stay ?
	ldy slideshow_cur_pic
	lda slideshow_{1}_t,Y
	bne .cont
	dec slideshow_cur_pic

.cont:
	ldy slideshow_cur_pic
	lda slideshow_{1}_t,Y
	sta slideshow_pic_cnt
	lda slideshow_{1}_l,Y
	sta ptr
	lda slideshow_{1}_h,Y
	sta ptr+1
	jsr slideshow_prepare_common_{2}
	rts
	ENDM

;;; Macro to use to build the slideshow_prepare_common_{1} subroutines
;;; Arguments should be:
;;; 1. the 'generic' lot of the bank (e.g: lot1)
	MAC m_slideshow_prepare_common
	;; Copy 8 pointers i.e 16 bytes to slideshow_colbg memory address
	ldy 15
.loop:
	lda (ptr),Y
	sta slideshow_colbg,Y
	dey
	bpl .loop
	rts
	ENDM

;;; Macro to build the slideshow_init_{1} subroutines
	MAC m_slideshow_init
	ldy #$00
	sty slideshow_cur_pic
	jsr slideshow_prepare_pic_{1}
	jmp RTSBank
	ENDM

;;; Macro to build the slideshow_vblank_{1} subroutines
	MAC m_slideshow_vblank
	;; Are we moving to the next slide ?
	dec slideshow_pic_cnt
	bne .end
	inc slideshow_cur_pic
	jsr slideshow_prepare_pic_{1}
.end:
	jmp RTSBank
	ENDM

;;; Macro to build the slideshow_kernel_{1} subroutines
;;; We need 7 pointers, one per playfield column:
;;; slideshow_p0, slideshow_p1, ...
;;; slideshow_colpf, slideshow_colbg
	MAC m_slideshow_kernel
	sta WSYNC
	SLEEP 62
	ldy 39			;3
	jmp .outer		;3

	;; echo "slideshow loop start: bock", (*/256)d
.outer:
	ldx 5			;3
.inner:
	lda (slideshow_colbg),Y	;5
	sta COLUBK		;3
	lda (slideshow_colpf),Y	;5
	sta COLUPF		;3
	lda (slideshow_p0),Y	;5
	sta PF0			;3
	lda (slideshow_p1),Y	;5
	sta PF1			;3
	lda (slideshow_p2),Y	;5
	sta PF2			;3
	lda (slideshow_p3),Y	;5
	sta PF0			;3
	lda (slideshow_p4),Y	;5
	sta PF1			;3
	lda (slideshow_p5),Y	;5
	sta PF2			;3
	dex			;2
	bpl .inner_proxy	;2/3
	dey			;2
	bpl .outer		;2/3
	;; outer loop 8*8 + 3*2 + 2*3 = 76 vs 76 cycles per line
	;; inner loop 8*8 + 2 + 3 = 69 machine cycles + 7 proxy
	;; echo "slideshow loop stop: block", (*/256)d

	sta WSYNC
	lda #$00
	sta COLUBK
	sta COLUPF
	sta PF0
	sta PF1
	sta PF2
	jmp RTSBank

.inner_proxy:			;7
	nop			;2
	nop			;2
	jmp .inner		;3
	ENDM
