;;; 40x40 pixels slideshow
slideshow_lot1_l:
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr
	dc.b <slideshow_01_b_ptr
	dc.b <slideshow_01_a_ptr

	dc.b <slideshow_02_ptr
	dc.b <slideshow_03_a_ptr

	;; Bonhomme new beat
	dc.b <slideshow_03_b_ptr
	dc.b <slideshow_03_c_ptr
	dc.b <slideshow_03_b_ptr
	dc.b <slideshow_03_c_ptr

	dc.b <slideshow_04_a_ptr
	dc.b <slideshow_04_b_ptr
	dc.b <slideshow_04_a_ptr
	dc.b <slideshow_04_b_ptr
	dc.b <slideshow_04_a_ptr
	dc.b <slideshow_04_b_ptr
	dc.b <slideshow_04_a_ptr
	dc.b <slideshow_04_b_ptr

	dc.b <slideshow_05_ptr

	;; Drapeau
	dc.b <slideshow_06_a_ptr
	dc.b <slideshow_06_b_ptr
	dc.b <slideshow_06_a_ptr
	dc.b <slideshow_06_b_ptr
	
slideshow_lot1_h:
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr
	dc.b >slideshow_01_b_ptr
	dc.b >slideshow_01_a_ptr

	dc.b >slideshow_02_ptr
	dc.b >slideshow_03_a_ptr

	;; Bonhomme new beat
	dc.b >slideshow_03_b_ptr
	dc.b >slideshow_03_c_ptr
	dc.b >slideshow_03_b_ptr
	dc.b >slideshow_03_c_ptr

	dc.b >slideshow_04_a_ptr
	dc.b >slideshow_04_b_ptr
	dc.b >slideshow_04_a_ptr
	dc.b >slideshow_04_b_ptr
	dc.b >slideshow_04_a_ptr
	dc.b >slideshow_04_b_ptr
	dc.b >slideshow_04_a_ptr
	dc.b >slideshow_04_b_ptr

	dc.b >slideshow_05_ptr

	;; Drapeau
	dc.b >slideshow_06_a_ptr
	dc.b >slideshow_06_b_ptr
	dc.b >slideshow_06_a_ptr
	dc.b >slideshow_06_b_ptr
	
slideshow_lot1_t:		; timing
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14

	dc.b 112
	dc.b 112

	;; Bonhomme new beat
	dc.b 28
	dc.b 28
	dc.b 28
	dc.b 28

	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14

	dc.b 112

	;; Drapeau
	dc.b 56
	dc.b 56
	dc.b 56
	dc.b 56

	;; Loop
	dc.b 0
