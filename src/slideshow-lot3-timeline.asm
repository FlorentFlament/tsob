;; Les 16, le A en x2, les B & C en x4 deux fois, et le tout qui repasse 2 fois

slideshow_lot3_l
	dc.b <slideshow_12_b_ptr

	;; Cochon
	dc.b <slideshow_13_a_ptr
	dc.b <slideshow_13_b_ptr
	dc.b <slideshow_13_a_ptr
	dc.b <slideshow_13_b_ptr
	dc.b <slideshow_13_a_ptr
	dc.b <slideshow_13_b_ptr
	dc.b <slideshow_13_a_ptr
	dc.b <slideshow_13_b_ptr

	dc.b <slideshow_14_a_ptr
	dc.b <slideshow_14_b_ptr

	;; Gaston
	dc.b <slideshow_15_a_ptr
	dc.b <slideshow_15_b_ptr
	dc.b <slideshow_15_a_ptr
	dc.b <slideshow_15_b_ptr

	dc.b <slideshow_16_ptr

	;; Chicon
	dc.b <slideshow_16_a_ptr
	dc.b <slideshow_16_b_ptr
	dc.b <slideshow_16_c_ptr
	dc.b <slideshow_16_b_ptr
	dc.b <slideshow_16_c_ptr
	dc.b <slideshow_16_a_ptr
	dc.b <slideshow_16_b_ptr
	dc.b <slideshow_16_c_ptr
	dc.b <slideshow_16_b_ptr
	dc.b <slideshow_16_c_ptr

slideshow_lot3_h:
	dc.b >slideshow_12_b_ptr

	;; Cochon
	dc.b >slideshow_13_a_ptr
	dc.b >slideshow_13_b_ptr
	dc.b >slideshow_13_a_ptr
	dc.b >slideshow_13_b_ptr
	dc.b >slideshow_13_a_ptr
	dc.b >slideshow_13_b_ptr
	dc.b >slideshow_13_a_ptr
	dc.b >slideshow_13_b_ptr

	dc.b >slideshow_14_a_ptr
	dc.b >slideshow_14_b_ptr

	;; Gaston
	dc.b >slideshow_15_a_ptr
	dc.b >slideshow_15_b_ptr
	dc.b >slideshow_15_a_ptr
	dc.b >slideshow_15_b_ptr

	dc.b >slideshow_16_ptr

	;; Chicon
	dc.b >slideshow_16_a_ptr
	dc.b >slideshow_16_b_ptr
	dc.b >slideshow_16_c_ptr
	dc.b >slideshow_16_b_ptr
	dc.b >slideshow_16_c_ptr
	dc.b >slideshow_16_a_ptr
	dc.b >slideshow_16_b_ptr
	dc.b >slideshow_16_c_ptr
	dc.b >slideshow_16_b_ptr
	dc.b >slideshow_16_c_ptr

slideshow_lot3_t:
	dc.b 112

	;; Cochon
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

	;; Gaston
	dc.b 56
	dc.b 56
	dc.b 56
	dc.b 56

	dc.b 112

	;; Chicon
	dc.b 56
	dc.b 28
	dc.b 28
	dc.b 28
	dc.b 28
	dc.b 56
	dc.b 28
	dc.b 28
	dc.b 28
	dc.b 28
	dc.b 0			; end
