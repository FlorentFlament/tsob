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
	;; 01
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

	;; 02
	dc.b 224

	;; 03-A
	dc.b 112

	;; Bonhomme new beat
	;; 03-B/C
	dc.b 28
	dc.b 28
	dc.b 28
	dc.b 28

	;; 04-A/B
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14
	dc.b 14

	;; 05
	dc.b 112

	;; Drapeau
	dc.b 56
	dc.b 56
	dc.b 56
	dc.b 56

	;; End
	dc.b 0
