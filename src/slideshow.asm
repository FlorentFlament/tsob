;;; 40x40 pixels slideshow

slideshow_init:	SUBROUTINE
	;; Copy 8 pointers i.e 16 bytes to slideshow_colbg memory address
	ldy 15
.loop:
	lda slideshow_cinema_nova_ptr,Y
	sta slideshow_colbg,Y
	dey
	bpl .loop
	jmp RTSBank

slideshow_vblank:	SUBROUTINE
	jmp RTSBank

slideshow_overscan:	SUBROUTINE
	jmp RTSBank
	
;;; We need 7 pointers, one per playfield column:
;;; slideshow_p0, slideshow_p1, ...
;;; slideshow_colpf, slideshow_colbg
slideshow_kernel:	SUBROUTINE
	sta WSYNC
	SLEEP 62
	ldy 39			;3
	jmp .outer		;3
SS_BEFORE_ALIGN equ *
	ALIGN 256		; Avoid cross page branch
	echo "ROM lost due to alignment:", (* - SS_BEFORE_ALIGN)d, "bytes"

SS_OUTER_ADDR equ *
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
	echo "Outer loop size:", (* - SS_OUTER_ADDR)d, "bytes"

	sta WSYNC
	lda #$00
	sta COLUPF
	sta PF0
	sta PF1
	sta PF2
	jmp RTSBank

.inner_proxy:			;7
	nop			;2
	nop			;2
	jmp .inner		;3
