	ALIGN 256 ; In case, but file should be included at the begining of a bank
slideshow_23_b_p0:
	dc.b $00, $00, $00, $60, $80, $40, $20, $c0
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $d0, $d0, $50, $f0, $10
	dc.b $00, $00, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $00, $00, $00
slideshow_23_b_p1:
	dc.b $00, $00, $00, $44, $45, $55, $6d, $44
	dc.b $00, $00, $c3, $c3, $f3, $fb, $db, $f8
	dc.b $f3, $00, $00, $a2, $ae, $a6, $ff, $22
	dc.b $00, $00, $07, $fb, $0d, $f5, $cd, $bb
	dc.b $67, $5f, $61, $bf, $c1, $00, $00, $00
slideshow_23_b_p2:
	dc.b $00, $00, $00, $a9, $aa, $9a, $aa, $a9
	dc.b $00, $00, $b6, $b6, $b6, $b6, $be, $9e
	dc.b $8e, $00, $00, $68, $6b, $29, $7f, $08
	dc.b $00, $00, $83, $fd, $86, $fa, $82, $fe
	dc.b $82, $fa, $86, $fd, $83, $00, $00, $00
slideshow_23_b_p3:
	dc.b $00, $00, $00, $a0, $a0, $90, $a0, $a0
	dc.b $00, $00, $10, $10, $70, $f0, $d0, $f0
	dc.b $70, $00, $00, $10, $d0, $d0, $f0, $10
	dc.b $00, $00, $30, $d0, $60, $a0, $a0, $a0
	dc.b $a0, $a0, $60, $d0, $30, $00, $00, $00
slideshow_23_b_p4:
	dc.b $00, $00, $00, $bb, $22, $a3, $22, $a3
	dc.b $00, $00, $39, $7d, $6d, $6d, $6d, $7d
	dc.b $39, $00, $00, $d5, $55, $4d, $ff, $c5
	dc.b $00, $00, $15, $d5, $55, $5a, $5a, $5a
	dc.b $fd, $fd, $1d, $fe, $1e, $00, $00, $00
slideshow_23_b_p5:
	dc.b $00, $00, $00, $56, $52, $36, $52, $36
	dc.b $00, $00, $0d, $0d, $0d, $0d, $0f, $07
	dc.b $03, $00, $00, $8c, $ea, $ca, $ff, $8a
	dc.b $00, $00, $e0, $ee, $e8, $f5, $f5, $f5
	dc.b $fa, $fa, $fb, $fd, $fc, $00, $00, $00
slideshow_23_b_ptr:
	dc.w slideshow_23_b_colbg
	dc.w slideshow_23_b_colfg
	dc.w slideshow_23_b_p0
	dc.w slideshow_23_b_p1
	dc.w slideshow_23_b_p2
	dc.w slideshow_23_b_p3
	dc.w slideshow_23_b_p4
	dc.w slideshow_23_b_p5

slideshow_22_a_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00
slideshow_22_a_p1:
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ef, $2f, $00, $c1, $0f
	dc.b $1f, $fe, $fc, $fc, $f8, $f0, $f0, $f0
	dc.b $f1, $f1, $f0, $f0, $f8, $fc, $fe, $ff
	dc.b $ff, $fc, $f8, $fe, $ff, $ff, $ff, $00
slideshow_22_a_p2:
	dc.b $00, $fb, $73, $27, $81, $83, $9f, $bf
	dc.b $3f, $7f, $7f, $3f, $10, $00, $01, $03
	dc.b $00, $00, $78, $80, $00, $04, $02, $01
	dc.b $00, $80, $c1, $e1, $e2, $e2, $e0, $f0
	dc.b $f0, $e0, $c4, $80, $81, $83, $c7, $00
slideshow_22_a_p3:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $e0, $80, $00, $00, $20, $40
	dc.b $80, $00, $00, $00, $10, $10, $00, $00
	dc.b $00, $10, $10, $30, $30, $70, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00
slideshow_22_a_p4:
	dc.b $00, $ff, $ff, $ff, $ff, $ed, $ed, $ea
	dc.b $ea, $b2, $c0, $c0, $00, $00, $04, $02
	dc.b $02, $81, $48, $48, $44, $44, $48, $10
	dc.b $00, $61, $1e, $00, $01, $22, $1c, $c0
	dc.b $e0, $f9, $fe, $ff, $ff, $ff, $ff, $00
slideshow_22_a_p5:
	dc.b $00, $ff, $ff, $ff, $fd, $fd, $fd, $fd
	dc.b $fc, $f8, $f8, $f8, $f0, $f0, $f0, $f0
	dc.b $e0, $e0, $e1, $e1, $e2, $e2, $e2, $e1
	dc.b $e1, $e0, $d0, $f0, $f1, $e8, $f8, $f4
	dc.b $ff, $fc, $ff, $fe, $ff, $ff, $ff, $00
slideshow_22_a_ptr:
	dc.w slideshow_22_a_colbg
	dc.w slideshow_22_a_colfg
	dc.w slideshow_22_a_p0
	dc.w slideshow_22_a_p1
	dc.w slideshow_22_a_p2
	dc.w slideshow_22_a_p3
	dc.w slideshow_22_a_p4
	dc.w slideshow_22_a_p5

slideshow_22_b_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_b_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $03, $03, $03, $03
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_b_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $c0, $c0, $c0, $c0
	dc.b $c0, $c0, $c0, $c0, $ff, $ff, $ff, $ff
	dc.b $c0, $c0, $c0, $c0, $c0, $c0, $c0, $c0
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_b_p3:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $30, $30, $30, $30
	dc.b $30, $30, $30, $30, $f0, $f0, $f0, $f0
	dc.b $30, $30, $30, $30, $30, $30, $30, $30
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_b_p4:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $fc, $fc, $fc, $fc
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_b_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_b_ptr:
	dc.w slideshow_22_b_colbg
	dc.w slideshow_22_b_colfg
	dc.w slideshow_22_b_p0
	dc.w slideshow_22_b_p1
	dc.w slideshow_22_b_p2
	dc.w slideshow_22_b_p3
	dc.w slideshow_22_b_p4
	dc.w slideshow_22_b_p5

slideshow_22_c_p0:
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $70
	dc.b $70, $f0, $f0, $f0, $f0, $f0, $f0, $f0
slideshow_22_c_p1:
	dc.b $fe, $fc, $fc, $f6, $e2, $f0, $e8, $f0
	dc.b $f9, $ff, $fd, $fc, $fe, $ff, $df, $cf
	dc.b $61, $20, $80, $c0, $8c, $0e, $cf, $ff
	dc.b $f8, $f4, $fe, $fc, $2e, $94, $c0, $c0
	dc.b $00, $01, $c3, $e1, $c0, $99, $f3, $ff
slideshow_22_c_p2:
	dc.b $ff, $f7, $f3, $b0, $40, $80, $00, $03
	dc.b $07, $07, $03, $02, $80, $00, $03, $0e
	dc.b $3e, $76, $d0, $d8, $60, $00, $00, $01
	dc.b $01, $00, $00, $00, $00, $00, $60, $be
	dc.b $0f, $e7, $cf, $7f, $3f, $7f, $ff, $ff
slideshow_22_c_p3:
	dc.b $f0, $f0, $f0, $70, $f0, $f0, $b0, $a0
	dc.b $30, $20, $60, $40, $40, $70, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $10
	dc.b $00, $30, $00, $00, $40, $00, $10, $30
slideshow_22_c_p4:
	dc.b $ff, $de, $cd, $c4, $00, $80, $18, $f8
	dc.b $f8, $70, $00, $00, $00, $00, $08, $0e
	dc.b $03, $01, $19, $38, $38, $70, $60, $22
	dc.b $22, $20, $38, $29, $08, $0c, $02, $06
	dc.b $0c, $0c, $04, $06, $0c, $1d, $3f, $7f
slideshow_22_c_p5:
	dc.b $ff, $ff, $ff, $ff, $fe, $fc, $fc, $f4
	dc.b $f8, $fc, $fe, $fe, $f8, $fe, $fe, $fe
	dc.b $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fe
	dc.b $fe, $fe, $fc, $fc, $fe, $ff, $fe, $e6
	dc.b $f0, $f0, $f8, $fa, $f9, $fd, $ff, $ff
slideshow_22_c_ptr:
	dc.w slideshow_22_c_colbg
	dc.w slideshow_22_c_colfg
	dc.w slideshow_22_c_p0
	dc.w slideshow_22_c_p1
	dc.w slideshow_22_c_p2
	dc.w slideshow_22_c_p3
	dc.w slideshow_22_c_p4
	dc.w slideshow_22_c_p5

slideshow_22_d_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_d_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $0f, $0f
	dc.b $0f, $0f, $00, $00, $00, $00, $00, $00
	dc.b $0f, $0f, $0f, $0f, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_d_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $ff, $ff
	dc.b $ff, $ff, $00, $00, $00, $00, $00, $00
	dc.b $ff, $ff, $ff, $ff, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_d_p3:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $f0, $f0
	dc.b $f0, $f0, $00, $00, $00, $00, $00, $00
	dc.b $f0, $f0, $f0, $f0, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_d_p4:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $ff, $ff
	dc.b $ff, $ff, $00, $00, $00, $00, $00, $00
	dc.b $ff, $ff, $ff, $ff, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_d_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_d_ptr:
	dc.w slideshow_22_d_colbg
	dc.w slideshow_22_d_colfg
	dc.w slideshow_22_d_p0
	dc.w slideshow_22_d_p1
	dc.w slideshow_22_d_p2
	dc.w slideshow_22_d_p3
	dc.w slideshow_22_d_p4
	dc.w slideshow_22_d_p5

slideshow_22_e_p0:
	dc.b $00, $00, $f0, $f0, $f0, $f0, $f0, $00
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $00, $00
slideshow_22_e_p1:
	dc.b $00, $00, $fc, $fb, $fb, $fb, $fb, $00
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $fe, $fc, $f8, $f0, $e0, $c0, $c0, $80
	dc.b $80, $c0, $c0, $e0, $f0, $f8, $fe, $00
	dc.b $00, $fc, $fa, $fc, $fe, $f9, $00, $00
slideshow_22_e_p2:
	dc.b $00, $00, $4d, $75, $65, $57, $ed, $00
	dc.b $7f, $3f, $1f, $0f, $07, $03, $01, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $80, $c0, $c0, $e0, $f0, $fc, $00
	dc.b $00, $dd, $5d, $5d, $55, $6b, $00, $00
slideshow_22_e_p3:
	dc.b $00, $00, $70, $b0, $60, $f0, $c0, $00
	dc.b $f0, $e0, $c0, $80, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $10, $10, $30, $70, $f0, $00
	dc.b $00, $c0, $50, $50, $50, $60, $00, $00
slideshow_22_e_p4:
	dc.b $00, $00, $67, $5f, $4f, $57, $6f, $00
	dc.b $ff, $ff, $ff, $ff, $ff, $7f, $3f, $1f
	dc.b $0f, $07, $03, $01, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $01, $03, $8f, $00
	dc.b $00, $2f, $af, $af, $af, $b3, $00, $00
slideshow_22_e_p5:
	dc.b $00, $00, $ff, $ff, $ff, $ff, $ff, $00
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $fe, $fe, $fc
	dc.b $fc, $fe, $fe, $ff, $ff, $ff, $ff, $00
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $00, $00
slideshow_22_e_ptr:
	dc.w slideshow_22_e_colbg
	dc.w slideshow_22_e_colfg
	dc.w slideshow_22_e_p0
	dc.w slideshow_22_e_p1
	dc.w slideshow_22_e_p2
	dc.w slideshow_22_e_p3
	dc.w slideshow_22_e_p4
	dc.w slideshow_22_e_p5

slideshow_22_f_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_f_p1:
	dc.b $00, $00, $03, $04, $04, $04, $04, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $01, $03, $07, $0f, $1f, $3f, $3f, $7f
	dc.b $7f, $3f, $3f, $1f, $0f, $07, $01, $00
	dc.b $00, $03, $05, $03, $01, $06, $00, $00
slideshow_22_f_p2:
	dc.b $00, $00, $b2, $8a, $9a, $a8, $12, $00
	dc.b $80, $c0, $e0, $f0, $f8, $fc, $fe, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $7f, $3f, $3f, $1f, $0f, $03, $00
	dc.b $00, $22, $a2, $a2, $aa, $94, $00, $00
slideshow_22_f_p3:
	dc.b $00, $00, $80, $40, $90, $00, $30, $00
	dc.b $00, $10, $30, $70, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $e0, $e0, $c0, $80, $00, $00
	dc.b $00, $30, $a0, $a0, $a0, $90, $00, $00
slideshow_22_f_p4:
	dc.b $00, $00, $98, $a0, $b0, $a8, $90, $00
	dc.b $00, $00, $00, $00, $00, $80, $c0, $e0
	dc.b $f0, $f8, $fc, $fe, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $fe, $fc, $70, $00
	dc.b $00, $d0, $50, $50, $50, $4c, $00, $00
slideshow_22_f_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $01, $01, $03
	dc.b $03, $01, $01, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_f_ptr:
	dc.w slideshow_22_f_colbg
	dc.w slideshow_22_f_colfg
	dc.w slideshow_22_f_p0
	dc.w slideshow_22_f_p1
	dc.w slideshow_22_f_p2
	dc.w slideshow_22_f_p3
	dc.w slideshow_22_f_p4
	dc.w slideshow_22_f_p5

slideshow_24_a_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_24_a_p1:
	dc.b $00, $1f, $3f, $5d, $5d, $55, $49, $5d
	dc.b $7f, $40, $5f, $5f, $6f, $6f, $6f, $7f
	dc.b $7f, $7c, $7b, $76, $45, $7b, $7b, $7b
	dc.b $66, $67, $47, $4f, $4c, $4b, $40, $47
	dc.b $47, $63, $60, $70, $7c, $3f, $1f, $00
slideshow_24_a_p2:
	dc.b $00, $ff, $ff, $aa, $aa, $88, $aa, $dd
	dc.b $ff, $00, $7d, $7f, $7d, $bf, $bd, $fd
	dc.b $fd, $e0, $df, $b0, $2f, $df, $d9, $d0
	dc.b $bf, $bd, $bb, $bb, $4f, $36, $00, $3f
	dc.b $3f, $1f, $80, $c0, $e0, $ff, $ff, $00
slideshow_24_a_p3:
	dc.b $00, $f0, $f0, $a0, $a0, $c0, $a0, $c0
	dc.b $f0, $00, $30, $b0, $30, $b0, $30, $70
	dc.b $b0, $b0, $d0, $e0, $f0, $f0, $70, $b0
	dc.b $b0, $b0, $b0, $70, $f0, $f0, $f0, $70
	dc.b $70, $b0, $b0, $b0, $d0, $d0, $f0, $00
slideshow_24_a_p4:
	dc.b $00, $ff, $ff, $b2, $b6, $b2, $b6, $12
	dc.b $ff, $00, $54, $01, $6c, $45, $44, $bb
	dc.b $c7, $bb, $c7, $bb, $ab, $65, $ce, $ef
	dc.b $d7, $d7, $ef, $fe, $7d, $83, $ff, $ee
	dc.b $ee, $ef, $ab, $bb, $bb, $7d, $ff, $00
slideshow_24_a_p5:
	dc.b $70, $71, $03, $75, $75, $75, $05, $76
	dc.b $77, $74, $06, $76, $76, $76, $06, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $76
	dc.b $76, $76, $06, $77, $77, $77, $07, $77
	dc.b $77, $76, $06, $76, $75, $71, $01, $70
slideshow_24_a_ptr:
	dc.w slideshow_24_a_colbg
	dc.w slideshow_24_a_colfg
	dc.w slideshow_24_a_p0
	dc.w slideshow_24_a_p1
	dc.w slideshow_24_a_p2
	dc.w slideshow_24_a_p3
	dc.w slideshow_24_a_p4
	dc.w slideshow_24_a_p5

slideshow_24_b_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_24_b_p1:
	dc.b $00, $1f, $3d, $7e, $7e, $7e, $7c, $7f
	dc.b $40, $77, $77, $77, $77, $77, $77, $77
	dc.b $77, $77, $77, $77, $75, $74, $77, $70
	dc.b $7f, $7f, $5d, $55, $6b, $7f, $6d, $6c
	dc.b $45, $7f, $7a, $7a, $7a, $3f, $1f, $00
slideshow_24_b_p2:
	dc.b $00, $ff, $eb, $eb, $ab, $4b, $ea, $ff
	dc.b $00, $ff, $2c, $6a, $ff, $e7, $c3, $81
	dc.b $81, $c3, $e7, $ff, $93, $9d, $ff, $00
	dc.b $ff, $ff, $ea, $76, $6a, $7f, $62, $72
	dc.b $62, $ff, $fd, $7d, $3e, $5f, $ff, $00
slideshow_24_b_p3:
	dc.b $00, $f0, $a0, $a0, $a0, $20, $a0, $f0
	dc.b $00, $d0, $30, $d0, $30, $d0, $30, $70
	dc.b $70, $70, $70, $70, $60, $50, $70, $00
	dc.b $e0, $60, $60, $f0, $f0, $b0, $50, $90
	dc.b $f0, $e0, $00, $00, $00, $50, $f0, $00
slideshow_24_b_p4:
	dc.b $00, $ff, $db, $db, $5b, $95, $d5, $ff
	dc.b $00, $f7, $77, $f7, $73, $ed, $1e, $ff
	dc.b $ff, $1f, $ef, $f7, $3b, $dc, $ed, $e9
	dc.b $78, $fc, $fc, $7a, $7d, $da, $aa, $9b
	dc.b $f8, $f0, $00, $00, $00, $ab, $ff, $00
slideshow_24_b_p5:
	dc.b $70, $71, $03, $77, $77, $77, $07, $77
	dc.b $74, $77, $07, $77, $77, $77, $07, $76
	dc.b $76, $76, $07, $77, $71, $76, $07, $77
	dc.b $77, $77, $06, $76, $75, $75, $05, $74
	dc.b $74, $74, $04, $76, $77, $77, $01, $70
slideshow_24_b_ptr:
	dc.w slideshow_24_b_colbg
	dc.w slideshow_24_b_colfg
	dc.w slideshow_24_b_p0
	dc.w slideshow_24_b_p1
	dc.w slideshow_24_b_p2
	dc.w slideshow_24_b_p3
	dc.w slideshow_24_b_p4
	dc.w slideshow_24_b_p5

slideshow_24_c_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_24_c_p1:
	dc.b $00, $1f, $3a, $75, $77, $77, $77, $7f
	dc.b $00, $10, $10, $00, $00, $00, $40, $63
	dc.b $73, $7b, $7a, $78, $74, $69, $68, $6c
	dc.b $5f, $5f, $59, $54, $50, $5f, $51, $5e
	dc.b $4f, $47, $48, $50, $6c, $30, $1f, $00
slideshow_24_c_p2:
	dc.b $00, $ff, $6b, $aa, $a2, $aa, $b6, $ff
	dc.b $00, $80, $82, $00, $02, $00, $87, $8f
	dc.b $cf, $ef, $e8, $e0, $d0, $a7, $a0, $b0
	dc.b $7c, $7f, $67, $4b, $43, $7f, $63, $5f
	dc.b $3f, $1f, $00, $80, $c0, $fc, $ff, $00
slideshow_24_c_p3:
	dc.b $00, $f0, $70, $60, $60, $60, $20, $f0
	dc.b $00, $10, $00, $80, $60, $90, $e0, $e0
	dc.b $20, $e0, $e0, $e0, $60, $20, $50, $d0
	dc.b $d0, $d0, $b0, $b0, $a0, $a0, $60, $60
	dc.b $60, $70, $f0, $f0, $f0, $f0, $f0, $00
slideshow_24_c_p4:
	dc.b $00, $ff, $ca, $da, $c9, $da, $49, $ff
	dc.b $00, $0f, $1b, $c7, $34, $f9, $fb, $3a
	dc.b $fd, $fc, $e5, $c5, $ce, $7e, $fe, $e2
	dc.b $9b, $25, $45, $45, $45, $b9, $87, $ff
	dc.b $fc, $e3, $1c, $e3, $ff, $ff, $ff, $00
slideshow_24_c_p5:
	dc.b $70, $71, $03, $77, $77, $77, $07, $77
	dc.b $70, $77, $07, $76, $77, $75, $06, $77
	dc.b $73, $74, $05, $76, $75, $73, $03, $73
	dc.b $76, $76, $06, $76, $75, $75, $05, $75
	dc.b $76, $71, $06, $77, $77, $73, $01, $70
slideshow_24_c_ptr:
	dc.w slideshow_24_c_colbg
	dc.w slideshow_24_c_colfg
	dc.w slideshow_24_c_p0
	dc.w slideshow_24_c_p1
	dc.w slideshow_24_c_p2
	dc.w slideshow_24_c_p3
	dc.w slideshow_24_c_p4
	dc.w slideshow_24_c_p5

slideshow_24_d_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $d0, $50, $d0, $10, $10, $00, $00, $00
	dc.b $00, $f0, $00, $f0, $00, $f0, $00, $00
	dc.b $50, $50, $50, $f0, $00, $00, $00, $00
slideshow_24_d_p1:
	dc.b $00, $00, $02, $02, $03, $02, $03, $00
	dc.b $00, $20, $f0, $a0, $80, $80, $00, $00
	dc.b $82, $b2, $87, $00, $00, $00, $00, $00
	dc.b $00, $f3, $02, $f3, $02, $f2, $00, $00
	dc.b $ae, $a8, $a8, $26, $00, $20, $00, $00
slideshow_24_d_p2:
	dc.b $00, $00, $ec, $a4, $ed, $05, $0d, $00
	dc.b $00, $15, $d5, $17, $01, $11, $00, $00
	dc.b $76, $12, $76, $02, $06, $00, $00, $00
	dc.b $00, $54, $49, $54, $40, $40, $00, $00
	dc.b $71, $91, $91, $e6, $00, $00, $00, $00
slideshow_24_d_p3:
	dc.b $00, $00, $20, $20, $e0, $a0, $e0, $00
	dc.b $00, $40, $40, $e0, $00, $00, $00, $00
	dc.b $50, $50, $70, $10, $10, $00, $00, $00
	dc.b $00, $80, $80, $80, $80, $80, $00, $00
	dc.b $a0, $a0, $a0, $e0, $00, $00, $00, $00
slideshow_24_d_p4:
	dc.b $00, $00, $6c, $48, $4c, $48, $4c, $00
	dc.b $00, $6e, $48, $6e, $40, $60, $00, $00
	dc.b $11, $10, $1c, $12, $12, $00, $00, $04
	dc.b $04, $5c, $54, $dc, $00, $00, $00, $00
	dc.b $4d, $54, $54, $94, $00, $00, $00, $00
slideshow_24_d_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $05, $05, $07, $01, $01, $00, $00
	dc.b $e9, $29, $eb, $00, $08, $00, $00, $00
	dc.b $00, $ff, $00, $ff, $00, $ff, $00, $00
	dc.b $e9, $29, $29, $cb, $00, $08, $00, $00
slideshow_24_d_ptr:
	dc.w slideshow_24_d_colbg
	dc.w slideshow_24_d_colfg
	dc.w slideshow_24_d_p0
	dc.w slideshow_24_d_p1
	dc.w slideshow_24_d_p2
	dc.w slideshow_24_d_p3
	dc.w slideshow_24_d_p4
	dc.w slideshow_24_d_p5

	ALIGN 256
slideshow_23_b_colbg:
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $0e, $00, $00, $00, $00, $00
	dc.b $0e, $0e, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $0e, $0e, $0e
slideshow_23_b_colfg:
	dc.b $00, $00, $00, $0e, $0e, $0e, $0e, $0e
	dc.b $00, $00, $5c, $5c, $5c, $5c, $5c, $5c
	dc.b $5c, $00, $00, $0e, $0e, $0e, $0e, $0e
	dc.b $00, $00, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $00, $00, $00

slideshow_22_a_colbg:
	dc.b $2c, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $2c
slideshow_22_a_colfg:
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $00

slideshow_22_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_b_colfg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $00, $00, $00, $00, $00, $00, $00, $00

	ALIGN 256
slideshow_22_c_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_c_colfg:
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a

slideshow_22_d_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_d_colfg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $64, $64
	dc.b $64, $64, $00, $00, $00, $00, $00, $00
	dc.b $64, $64, $64, $64, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00

slideshow_22_e_colbg:
	dc.b $2c, $2c, $00, $00, $00, $00, $00, $2c
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $2c
	dc.b $2c, $00, $00, $00, $00, $00, $2c, $2c
slideshow_22_e_colfg:
	dc.b $00, $00, $2c, $2c, $2c, $2c, $2c, $00
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $00
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $00, $00

	ALIGN 256
slideshow_22_f_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_22_f_colfg:
	dc.b $00, $00, $6c, $6c, $6c, $6c, $6c, $00
	dc.b $c6, $c6, $c6, $c6, $98, $98, $98, $98
	dc.b $56, $56, $56, $56, $2c, $2c, $2c, $2c
	dc.b $24, $24, $24, $24, $64, $64, $64, $00
	dc.b $00, $6c, $6c, $6c, $6c, $6c, $00, $00

slideshow_24_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_24_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_24_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_24_b_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

	ALIGN 256
slideshow_24_c_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_24_c_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_24_d_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_24_d_colfg:
	dc.b $00, $00, $58, $0e, $58, $58, $58, $00
	dc.b $00, $58, $0e, $58, $58, $58, $00, $00
	dc.b $58, $0e, $58, $58, $58, $00, $00, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $58, $58, $58, $58, $00, $58, $00, $00

