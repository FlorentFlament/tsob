;;; 40x40 pixels slideshow

slideshow_init:
	SET_POINTER slideshow_col, slideshow_test_data
	SET_POINTER slideshow_p0, slideshow_test_data
	SET_POINTER slideshow_p1, slideshow_test_data
	SET_POINTER slideshow_p2, slideshow_test_data
	SET_POINTER slideshow_p3, slideshow_test_data
	SET_POINTER slideshow_p4, slideshow_test_data
	SET_POINTER slideshow_p5, slideshow_test_data
	jmp RTSBank

slideshow_vblank:
	jmp RTSBank

slideshow_overscan:
	jmp RTSBank
	
;;; We need 7 pointers, one per playfield column:
;;; slideshow_p0, slideshow_p1, ...
;;; slideshow_cl
slideshow_kernel:
	ldy 39
.outer:
	ldx 5
.inner:
	sta WSYNC
	lda (slideshow_col),Y
	sta COLUPF
	lda (slideshow_p0),Y
	sta PF0
	lda (slideshow_p1),Y
	sta PF1
	lda (slideshow_p2),Y
	sta PF2
	lda (slideshow_p3),Y
	sta PF0
	lda (slideshow_p4),Y
	sta PF1
	lda (slideshow_p5),Y
	sta PF2
	dex
	bpl .inner
	dey
	bpl .outer

	sta WSYNC
	lda #$00
	sta COLUPF
	sta PF0
	sta PF1
	sta PF2
	jmp RTSBank


slideshow_test_data:	
	dc.b $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
	dc.b $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
	dc.b $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
	dc.b $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
	dc.b $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa
