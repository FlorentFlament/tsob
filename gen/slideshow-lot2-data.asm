	ALIGN 256 ; In case, but file should be included at the begining of a bank
slideshow_07_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $80, $c0, $80, $00, $00, $00, $00, $00
	dc.b $e0, $f0, $90, $50, $90, $50, $90, $f0
	dc.b $e0, $00, $00, $00, $00, $00, $c0, $c0
	dc.b $00, $c0, $c0, $80, $30, $b0, $e0, $00
slideshow_07_p1:
	dc.b $00, $00, $00, $00, $00, $3f, $7f, $db
	dc.b $d5, $db, $95, $db, $7f, $3f, $00, $00
	dc.b $ff, $ff, $bb, $b5, $b5, $b5, $d5, $ff
	dc.b $ff, $00, $00, $00, $00, $00, $18, $18
	dc.b $00, $18, $18, $98, $db, $9b, $19, $00
slideshow_07_p2:
	dc.b $e0, $e0, $e0, $e0, $20, $ff, $ff, $d9
	dc.b $d5, $d9, $d5, $b9, $ff, $ff, $e0, $00
	dc.b $ff, $ff, $5a, $6a, $4d, $6a, $5a, $ff
	dc.b $ff, $e0, $e0, $e0, $c0, $00, $83, $83
	dc.b $00, $83, $83, $06, $6c, $66, $c3, $00
slideshow_07_p3:
	dc.b $70, $70, $70, $70, $00, $f0, $f0, $d0
	dc.b $a0, $a0, $a0, $a0, $f0, $f0, $70, $40
	dc.b $f0, $f0, $d0, $50, $50, $50, $d0, $f0
	dc.b $f0, $70, $70, $70, $30, $00, $10, $10
	dc.b $00, $10, $10, $30, $60, $30, $10, $00
slideshow_07_p4:
	dc.b $00, $00, $00, $00, $00, $ff, $ff, $6e
	dc.b $b5, $24, $6d, $b6, $ff, $ff, $00, $00
	dc.b $ff, $ff, $5c, $ed, $4e, $dd, $6e, $ff
	dc.b $ff, $00, $00, $00, $00, $00, $31, $31
	dc.b $00, $31, $31, $19, $cd, $d9, $71, $00
slideshow_07_p5:
	dc.b $00, $00, $00, $00, $00, $03, $07, $05
	dc.b $05, $05, $05, $05, $07, $03, $00, $00
	dc.b $0f, $1f, $22, $7b, $f7, $6a, $37, $1f
	dc.b $0f, $00, $00, $00, $00, $00, $31, $31
	dc.b $00, $31, $31, $61, $cd, $6d, $39, $00
slideshow_07_ptr:
	dc.w slideshow_07_colbg
	dc.w slideshow_07_colfg
	dc.w slideshow_07_p0
	dc.w slideshow_07_p1
	dc.w slideshow_07_p2
	dc.w slideshow_07_p3
	dc.w slideshow_07_p4
	dc.w slideshow_07_p5

slideshow_08_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $80, $80, $80, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $80, $80, $80, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_08_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $01, $76, $d8, $ec, $fc, $ff, $f8
	dc.b $70, $20, $20, $20, $20, $20, $20, $20
	dc.b $20, $23, $74, $d8, $ec, $fc, $fc, $f8
	dc.b $74, $03, $00, $00, $00, $00, $00, $00
slideshow_08_p2:
	dc.b $f0, $f0, $70, $60, $60, $60, $70, $6c
	dc.b $62, $61, $40, $40, $40, $40, $c0, $83
	dc.b $8c, $d0, $60, $f0, $f0, $f8, $e4, $c2
	dc.b $81, $80, $80, $80, $80, $80, $80, $80
	dc.b $80, $c0, $63, $fc, $f0, $f0, $e0, $c0
slideshow_08_p3:
	dc.b $70, $70, $70, $30, $30, $30, $70, $b0
	dc.b $30, $30, $10, $10, $10, $10, $10, $00
	dc.b $80, $d0, $30, $60, $70, $f0, $30, $10
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $10, $30, $e0, $70, $70, $30, $10
slideshow_08_p4:
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $40, $30, $0d, $03, $07, $07, $1f, $63
	dc.b $81, $00, $00, $00, $00, $00, $80, $40
	dc.b $20, $18, $05, $03, $07, $07, $07, $03
	dc.b $05, $18, $60, $80, $00, $00, $00, $00
slideshow_08_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $03, $06, $0d, $0f, $0f, $07
	dc.b $03, $01, $01, $01, $01, $01, $01, $01
	dc.b $01, $01, $03, $06, $0d, $0f, $0f, $07
	dc.b $03, $00, $00, $00, $00, $00, $00, $00
slideshow_08_ptr:
	dc.w slideshow_08_colbg
	dc.w slideshow_08_colfg
	dc.w slideshow_08_p0
	dc.w slideshow_08_p1
	dc.w slideshow_08_p2
	dc.w slideshow_08_p3
	dc.w slideshow_08_p4
	dc.w slideshow_08_p5

slideshow_09_a_p0:
	dc.b $20, $20, $20, $20, $20, $a0, $60, $c0
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $80, $80, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_09_a_p1:
	dc.b $20, $20, $3f, $40, $86, $0e, $1c, $cd
	dc.b $0c, $06, $06, $07, $03, $03, $07, $0f
	dc.b $0f, $0f, $0a, $04, $0d, $1d, $3b, $77
	dc.b $e7, $c7, $c6, $e3, $77, $3f, $0f, $03
	dc.b $03, $07, $03, $05, $05, $06, $03, $01
slideshow_09_a_p2:
	dc.b $00, $00, $ff, $00, $0c, $8e, $43, $36
	dc.b $06, $0c, $0c, $1c, $39, $39, $1c, $9c
	dc.b $06, $08, $0f, $15, $3b, $73, $67, $cf
	dc.b $cf, $ef, $6b, $6f, $7f, $3f, $03, $05
	dc.b $0e, $17, $1d, $1f, $07, $1b, $3c, $07
slideshow_09_a_p3:
	dc.b $40, $40, $70, $20, $10, $00, $00, $00
	dc.b $00, $00, $00, $40, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_09_a_p4:
	dc.b $00, $00, $03, $44, $07, $04, $03, $80
	dc.b $01, $02, $04, $04, $04, $00, $03, $04
	dc.b $04, $04, $03, $00, $03, $04, $04, $04
	dc.b $04, $00, $00, $0d, $15, $0d, $00, $00
	dc.b $00, $22, $22, $32, $2a, $32, $00, $00
slideshow_09_a_p5:
	dc.b $00, $00, $0f, $00, $07, $08, $07, $00
	dc.b $03, $04, $08, $08, $08, $00, $07, $08
	dc.b $08, $08, $07, $00, $0f, $00, $00, $00
	dc.b $00, $00, $00, $32, $2a, $31, $20, $00
	dc.b $00, $36, $41, $21, $11, $61, $00, $00
slideshow_09_a_ptr:
	dc.w slideshow_09_a_colbg
	dc.w slideshow_09_a_colfg
	dc.w slideshow_09_a_p0
	dc.w slideshow_09_a_p1
	dc.w slideshow_09_a_p2
	dc.w slideshow_09_a_p3
	dc.w slideshow_09_a_p4
	dc.w slideshow_09_a_p5

slideshow_09_b_p0:
	dc.b $20, $20, $20, $20, $20, $a0, $60, $c0
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $80, $80, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_09_b_p1:
	dc.b $20, $20, $3f, $40, $86, $0e, $1c, $cd
	dc.b $0c, $06, $06, $07, $03, $03, $07, $0f
	dc.b $0f, $0f, $0a, $04, $0d, $1d, $3b, $77
	dc.b $e7, $c7, $c6, $e3, $77, $3f, $0f, $03
	dc.b $03, $07, $03, $05, $05, $06, $03, $01
slideshow_09_b_p2:
	dc.b $00, $00, $ff, $00, $0c, $8e, $43, $36
	dc.b $06, $0c, $0c, $1c, $39, $39, $1c, $1c
	dc.b $46, $08, $0f, $15, $3b, $73, $67, $cf
	dc.b $cf, $ef, $6b, $6f, $7f, $3f, $03, $05
	dc.b $0e, $17, $1d, $1f, $07, $1b, $3c, $07
slideshow_09_b_p3:
	dc.b $40, $40, $70, $20, $10, $00, $00, $00
	dc.b $00, $80, $00, $00, $00, $20, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_09_b_p4:
	dc.b $00, $00, $03, $04, $47, $04, $03, $00
	dc.b $01, $02, $04, $04, $04, $00, $03, $04
	dc.b $04, $04, $03, $00, $03, $04, $04, $04
	dc.b $04, $00, $00, $0d, $15, $0d, $00, $00
	dc.b $00, $22, $22, $32, $2a, $32, $00, $00
slideshow_09_b_p5:
	dc.b $00, $00, $0f, $00, $07, $08, $07, $00
	dc.b $03, $04, $08, $08, $08, $00, $07, $08
	dc.b $08, $08, $07, $00, $0f, $00, $00, $00
	dc.b $00, $00, $00, $32, $2a, $31, $20, $00
	dc.b $00, $36, $41, $21, $11, $61, $00, $00
slideshow_09_b_ptr:
	dc.w slideshow_09_b_colbg
	dc.w slideshow_09_b_colfg
	dc.w slideshow_09_b_p0
	dc.w slideshow_09_b_p1
	dc.w slideshow_09_b_p2
	dc.w slideshow_09_b_p3
	dc.w slideshow_09_b_p4
	dc.w slideshow_09_b_p5

slideshow_10_a_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $c0, $80, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $c0, $e0, $60, $a0, $a0
	dc.b $a0, $60, $e0, $c0, $00, $00, $00, $00
slideshow_10_a_p1:
	dc.b $00, $00, $00, $00, $3f, $7f, $e6, $d5
	dc.b $e4, $f5, $f6, $7f, $3f, $00, $00, $3f
	dc.b $7f, $dd, $dd, $dd, $c3, $dd, $c3, $7f
	dc.b $3f, $00, $00, $ff, $ff, $d5, $55, $49
	dc.b $5d, $ff, $ff, $ff, $00, $00, $00, $00
slideshow_10_a_p2:
	dc.b $c0, $c0, $c0, $00, $ff, $ff, $b6, $b7
	dc.b $ab, $ea, $bf, $ff, $ff, $c0, $40, $ff
	dc.b $ff, $f0, $ef, $ef, $71, $be, $a1, $ff
	dc.b $ff, $c0, $00, $ff, $3f, $e6, $7a, $b2
	dc.b $6a, $f6, $fe, $ff, $c0, $c0, $80, $00
slideshow_10_a_p3:
	dc.b $f0, $f0, $f0, $80, $f0, $f0, $d0, $a0
	dc.b $90, $b0, $c0, $f0, $f0, $f0, $00, $f0
	dc.b $f0, $e0, $e0, $e0, $d0, $b0, $b0, $f0
	dc.b $f0, $f0, $80, $f0, $30, $e0, $60, $a0
	dc.b $60, $f0, $f0, $f0, $f0, $f0, $70, $00
slideshow_10_a_p4:
	dc.b $00, $00, $00, $00, $ff, $ff, $96, $75
	dc.b $75, $3d, $76, $ff, $ff, $00, $00, $ff
	dc.b $ff, $76, $65, $55, $55, $35, $76, $ff
	dc.b $ff, $00, $00, $ff, $ff, $55, $55, $55
	dc.b $73, $df, $ff, $ff, $00, $00, $00, $00
slideshow_10_a_p5:
	dc.b $00, $00, $00, $00, $1f, $3f, $2b, $2a
	dc.b $2a, $32, $3f, $3f, $1f, $00, $00, $03
	dc.b $07, $0c, $0f, $0f, $0f, $0f, $0c, $07
	dc.b $03, $00, $00, $0f, $1c, $3b, $79, $fa
	dc.b $79, $3f, $1f, $0f, $00, $00, $00, $00
slideshow_10_a_ptr:
	dc.w slideshow_10_a_colbg
	dc.w slideshow_10_a_colfg
	dc.w slideshow_10_a_p0
	dc.w slideshow_10_a_p1
	dc.w slideshow_10_a_p2
	dc.w slideshow_10_a_p3
	dc.w slideshow_10_a_p4
	dc.w slideshow_10_a_p5

slideshow_10_b_p0:
	dc.b $f0, $50, $50, $90, $50, $90, $00, $00
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $70, $70, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $30, $f0, $00, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $70, $f0, $f0, $f0
slideshow_10_b_p1:
	dc.b $ff, $da, $aa, $aa, $aa, $d9, $00, $00
	dc.b $c7, $c6, $e2, $e2, $f1, $f1, $f8, $80
	dc.b $00, $55, $00, $ff, $ff, $ff, $ff, $c7
	dc.b $ff, $01, $ff, $00, $ff, $c1, $ff, $ff
	dc.b $ff, $ff, $f3, $ff, $00, $ff, $9f, $ff
slideshow_10_b_p2:
	dc.b $df, $63, $a5, $ad, $ad, $b3, $00, $00
	dc.b $f0, $e0, $60, $20, $3f, $3f, $3f, $00
	dc.b $80, $8a, $00, $1f, $1f, $1f, $1f, $1f
	dc.b $1f, $1f, $3f, $38, $3f, $3f, $3f, $3f
	dc.b $3f, $3f, $3f, $3f, $bf, $3f, $7f, $7f
slideshow_10_b_p3:
	dc.b $f0, $b0, $a0, $a0, $e0, $a0, $00, $00
	dc.b $f0, $70, $f0, $e0, $e0, $e0, $e0, $00
	dc.b $00, $80, $00, $c0, $c0, $c0, $c0, $c0
	dc.b $c0, $c0, $e0, $e0, $e0, $e0, $e0, $e0
	dc.b $e0, $e0, $e0, $e0, $e0, $e0, $f0, $f0
slideshow_10_b_p4:
	dc.b $ff, $15, $75, $33, $75, $13, $00, $00
	dc.b $7c, $bc, $f8, $f8, $f1, $f1, $e3, $00
	dc.b $00, $55, $00, $ff, $ff, $ff, $ff, $fc
	dc.b $ff, $f0, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $f0, $ff, $80, $ff, $f0, $ff, $ff
slideshow_10_b_p5:
	dc.b $ff, $c8, $be, $dc, $ee, $98, $00, $00
	dc.b $fe, $fe, $ff, $ff, $ff, $ff, $ff, $fc
	dc.b $f8, $f2, $f0, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $f0, $ff, $f9, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $e0, $ff, $00, $ff, $ff
slideshow_10_b_ptr:
	dc.w slideshow_10_b_colbg
	dc.w slideshow_10_b_colfg
	dc.w slideshow_10_b_p0
	dc.w slideshow_10_b_p1
	dc.w slideshow_10_b_p2
	dc.w slideshow_10_b_p3
	dc.w slideshow_10_b_p4
	dc.w slideshow_10_b_p5

slideshow_10_c_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $c0, $40, $40, $40, $c0, $00, $00, $00
	dc.b $00, $00, $00, $80, $80, $80, $80, $80
	dc.b $80, $80, $80, $80, $80, $80, $80, $80
	dc.b $80, $80, $80, $80, $00, $00, $00, $00
slideshow_10_c_p1:
	dc.b $00, $00, $0c, $0a, $0c, $0a, $0c, $00
	dc.b $13, $aa, $ab, $aa, $13, $00, $00, $00
	dc.b $00, $00, $00, $11, $bb, $ff, $ff, $ff
	dc.b $ff, $f3, $f1, $ff, $ff, $ff, $ce, $b5
	dc.b $a5, $84, $c6, $ce, $ff, $ff, $7f, $1f
slideshow_10_c_p2:
	dc.b $00, $00, $57, $91, $91, $81, $d1, $00
	dc.b $1d, $04, $04, $04, $05, $00, $00, $00
	dc.b $22, $76, $fe, $fe, $fe, $fe, $fe, $3e
	dc.b $de, $fe, $fe, $ce, $b6, $96, $86, $8e
	dc.b $ce, $fc, $fc, $f8, $e3, $c7, $03, $00
slideshow_10_c_p3:
	dc.b $00, $00, $80, $c0, $40, $40, $50, $00
	dc.b $20, $20, $a0, $60, $20, $00, $00, $00
	dc.b $20, $70, $f0, $f0, $f0, $f0, $d0, $e0
	dc.b $f0, $f0, $f0, $90, $60, $20, $00, $10
	dc.b $90, $f0, $f0, $f0, $30, $10, $00, $00
slideshow_10_c_p4:
	dc.b $00, $00, $3a, $a2, $b2, $a2, $bb, $00
	dc.b $49, $55, $55, $d5, $49, $00, $00, $00
	dc.b $40, $c0, $c0, $c0, $c8, $dd, $df, $df
	dc.b $df, $d8, $d5, $d5, $d0, $df, $df, $c7
	dc.b $da, $92, $a2, $23, $67, $ff, $7f, $3f
slideshow_10_c_p5:
	dc.b $00, $00, $01, $01, $01, $01, $00, $00
	dc.b $13, $10, $11, $10, $3b, $00, $00, $00
	dc.b $00, $00, $00, $00, $11, $1b, $1f, $1f
	dc.b $1f, $1c, $1a, $1a, $18, $1f, $1f, $1c
	dc.b $1b, $19, $18, $18, $1c, $0f, $0f, $07
slideshow_10_c_ptr:
	dc.w slideshow_10_c_colbg
	dc.w slideshow_10_c_colfg
	dc.w slideshow_10_c_p0
	dc.w slideshow_10_c_p1
	dc.w slideshow_10_c_p2
	dc.w slideshow_10_c_p3
	dc.w slideshow_10_c_p4
	dc.w slideshow_10_c_p5

slideshow_11_a_p0:
	dc.b $00, $00, $20, $20, $60, $20, $40, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_11_a_p1:
	dc.b $00, $00, $a5, $a9, $cd, $a9, $c4, $00
	dc.b $09, $09, $0d, $09, $05, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $01
	dc.b $01, $00, $00, $00, $00, $00, $00, $00
slideshow_11_a_p2:
	dc.b $00, $00, $aa, $2a, $1b, $aa, $29, $00
	dc.b $4a, $4a, $49, $42, $e9, $00, $00, $80
	dc.b $c0, $c0, $e0, $f0, $f0, $f8, $b8, $bc
	dc.b $3c, $bc, $3e, $fe, $fe, $6f, $5b, $db
	dc.b $2d, $6d, $6f, $76, $70, $b0, $a0, $00
slideshow_11_a_p3:
	dc.b $00, $00, $00, $10, $10, $00, $10, $00
	dc.b $a0, $a0, $60, $a0, $a0, $00, $00, $10
	dc.b $30, $30, $70, $70, $70, $f0, $f0, $f0
	dc.b $e0, $f0, $e0, $f0, $f0, $b0, $70, $60
	dc.b $50, $b0, $b0, $b0, $d0, $d0, $00, $00
slideshow_11_a_p4:
	dc.b $00, $00, $4a, $2a, $2e, $4a, $2a, $00
	dc.b $22, $52, $52, $52, $27, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $80, $c0, $c0, $e0, $e0, $e0, $e0, $d0
	dc.b $20, $70, $70, $00, $80, $00, $00, $00
slideshow_11_a_p5:
	dc.b $00, $00, $26, $25, $25, $25, $73, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_11_a_ptr:
	dc.w slideshow_11_a_colbg
	dc.w slideshow_11_a_colfg
	dc.w slideshow_11_a_p0
	dc.w slideshow_11_a_p1
	dc.w slideshow_11_a_p2
	dc.w slideshow_11_a_p3
	dc.w slideshow_11_a_p4
	dc.w slideshow_11_a_p5

slideshow_11_b_p0:
	dc.b $00, $00, $20, $20, $60, $20, $40, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $e0
	dc.b $40, $e0, $00, $00, $00, $00, $00, $00
	dc.b $c0, $e0, $e0, $c0, $00, $00, $80, $80
	dc.b $80, $00, $00, $00, $00, $e0, $a0, $e0
slideshow_11_b_p1:
	dc.b $00, $00, $a5, $a9, $cd, $a9, $c4, $00
	dc.b $09, $09, $0d, $09, $05, $00, $00, $ff
	dc.b $aa, $ff, $00, $00, $00, $00, $00, $00
	dc.b $1e, $bf, $ef, $c3, $43, $27, $97, $9f
	dc.b $91, $d9, $7f, $0e, $00, $ff, $55, $ff
slideshow_11_b_p2:
	dc.b $00, $00, $aa, $2a, $1b, $aa, $29, $00
	dc.b $4a, $4a, $49, $42, $e9, $00, $00, $ff
	dc.b $55, $ff, $00, $00, $00, $00, $00, $00
	dc.b $c6, $ee, $6d, $cd, $99, $00, $6c, $38
	dc.b $7d, $11, $00, $00, $00, $ff, $aa, $ff
slideshow_11_b_p3:
	dc.b $00, $00, $00, $10, $10, $00, $10, $00
	dc.b $a0, $a0, $60, $a0, $a0, $00, $00, $f0
	dc.b $50, $f0, $00, $00, $00, $00, $00, $00
	dc.b $b0, $30, $00, $40, $30, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $f0, $a0, $f0
slideshow_11_b_p4:
	dc.b $00, $00, $4a, $2a, $2e, $4a, $2a, $00
	dc.b $22, $52, $52, $52, $27, $00, $00, $ff
	dc.b $aa, $ff, $00, $00, $01, $01, $00, $00
	dc.b $c7, $de, $f8, $f8, $cc, $78, $70, $60
	dc.b $60, $e0, $60, $00, $00, $ff, $55, $ff
slideshow_11_b_p5:
	dc.b $00, $00, $26, $25, $25, $25, $73, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $7f
	dc.b $55, $7f, $00, $0e, $1f, $39, $30, $30
	dc.b $3c, $3e, $76, $73, $63, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $7f, $2a, $7f
slideshow_11_b_ptr:
	dc.w slideshow_11_b_colbg
	dc.w slideshow_11_b_colfg
	dc.w slideshow_11_b_p0
	dc.w slideshow_11_b_p1
	dc.w slideshow_11_b_p2
	dc.w slideshow_11_b_p3
	dc.w slideshow_11_b_p4
	dc.w slideshow_11_b_p5

slideshow_11_c_p0:
	dc.b $00, $00, $20, $20, $60, $20, $40, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $80, $c0, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $40, $40, $c0, $40, $80, $00
slideshow_11_c_p1:
	dc.b $00, $00, $a5, $a9, $cd, $a9, $c4, $00
	dc.b $09, $09, $0d, $09, $05, $00, $00, $7f
	dc.b $ff, $00, $1f, $2f, $47, $2f, $1f, $00
	dc.b $02, $02, $01, $00, $00, $01, $02, $02
	dc.b $00, $00, $2a, $2a, $32, $28, $b2, $00
slideshow_11_c_p2:
	dc.b $00, $00, $aa, $2a, $1b, $aa, $29, $00
	dc.b $4a, $4a, $49, $42, $e9, $00, $00, $ff
	dc.b $ff, $00, $ff, $ff, $f7, $fb, $ff, $00
	dc.b $10, $10, $20, $41, $41, $20, $10, $10
	dc.b $00, $00, $56, $51, $71, $51, $26, $00
slideshow_11_c_p3:
	dc.b $00, $00, $00, $10, $10, $00, $10, $00
	dc.b $a0, $a0, $60, $a0, $a0, $00, $00, $f0
	dc.b $f0, $00, $f0, $d0, $e0, $f0, $f0, $00
	dc.b $40, $40, $80, $00, $00, $80, $40, $40
	dc.b $00, $00, $30, $50, $50, $50, $30, $00
slideshow_11_c_p4:
	dc.b $00, $00, $4a, $2a, $2e, $4a, $2a, $00
	dc.b $22, $52, $52, $52, $27, $00, $00, $ff
	dc.b $ff, $00, $ff, $ff, $be, $7d, $ff, $00
	dc.b $08, $04, $02, $82, $84, $08, $10, $10
	dc.b $00, $00, $66, $88, $48, $88, $68, $00
slideshow_11_c_p5:
	dc.b $00, $00, $26, $25, $25, $25, $73, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $0f
	dc.b $1f, $30, $03, $07, $0f, $07, $01, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $19, $05, $05, $04, $19, $00
slideshow_11_c_ptr:
	dc.w slideshow_11_c_colbg
	dc.w slideshow_11_c_colfg
	dc.w slideshow_11_c_p0
	dc.w slideshow_11_c_p1
	dc.w slideshow_11_c_p2
	dc.w slideshow_11_c_p3
	dc.w slideshow_11_c_p4
	dc.w slideshow_11_c_p5

slideshow_12_a_p0:
	dc.b $80, $80, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_12_a_p1:
	dc.b $ff, $ff, $ff, $ff, $7f, $1f, $03, $00
	dc.b $00, $00, $00, $00, $00, $01, $02, $02
	dc.b $04, $04, $04, $04, $04, $04, $04, $04
	dc.b $04, $04, $02, $03, $01, $00, $00, $00
	dc.b $00, $00, $00, $01, $00, $00, $00, $00
slideshow_12_a_p2:
	dc.b $ff, $fb, $f3, $e3, $c3, $03, $83, $47
	dc.b $28, $f8, $04, $02, $01, $00, $f0, $00
	dc.b $00, $30, $08, $08, $30, $01, $01, $00
	dc.b $00, $00, $42, $81, $00, $71, $7a, $fc
	dc.b $fe, $ff, $1f, $3f, $7f, $7e, $3c, $00
slideshow_12_a_p3:
	dc.b $f0, $f0, $30, $10, $00, $00, $f0, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $10
	dc.b $10, $00, $00, $00, $00, $20, $20, $00
	dc.b $00, $40, $40, $30, $00, $80, $e0, $f0
	dc.b $f0, $f0, $f0, $00, $00, $00, $00, $00
slideshow_12_a_p4:
	dc.b $ff, $7f, $3f, $1f, $07, $03, $03, $84
	dc.b $48, $50, $20, $20, $10, $10, $10, $28
	dc.b $44, $14, $0a, $c2, $e2, $64, $78, $78
	dc.b $3c, $3c, $3c, $7c, $7c, $f8, $f8, $f0
	dc.b $e0, $c0, $00, $00, $00, $00, $00, $00
slideshow_12_a_p5:
	dc.b $ff, $ff, $ff, $7f, $3f, $1f, $07, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_12_a_ptr:
	dc.w slideshow_12_a_colbg
	dc.w slideshow_12_a_colfg
	dc.w slideshow_12_a_p0
	dc.w slideshow_12_a_p1
	dc.w slideshow_12_a_p2
	dc.w slideshow_12_a_p3
	dc.w slideshow_12_a_p4
	dc.w slideshow_12_a_p5

	ALIGN 256
slideshow_07_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_07_colfg:
	dc.b $04, $04, $04, $04, $04, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $04, $04
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $04, $04, $04, $04, $00, $62, $62
	dc.b $00, $64, $62, $64, $64, $68, $64, $00

slideshow_08_colbg:
	dc.b $b8, $b8, $b8, $b8, $b8, $b8, $b8, $b8
	dc.b $b8, $b8, $b8, $b8, $b8, $b8, $b8, $b8
	dc.b $b8, $b8, $b8, $b8, $b8, $b8, $b8, $b8
	dc.b $b8, $b8, $b8, $b8, $b8, $b8, $b8, $b8
	dc.b $b8, $b8, $b8, $b8, $b8, $b8, $b8, $b8
slideshow_08_colfg:
	dc.b $06, $08, $08, $08, $0a, $0a, $0a, $0a
	dc.b $0c, $0c, $0c, $0c, $0a, $06, $08, $0a
	dc.b $0c, $0c, $0c, $0a, $06, $08, $0a, $0c
	dc.b $0c, $0c, $0c, $0c, $0a, $06, $08, $0a
	dc.b $0c, $0c, $0c, $0a, $06, $08, $0a, $0c

slideshow_09_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_09_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

	ALIGN 256
slideshow_09_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_09_b_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_10_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_10_a_colfg:
	dc.b $04, $04, $04, $04, $66, $66, $66, $66
	dc.b $66, $66, $66, $66, $66, $04, $04, $92
	dc.b $92, $92, $92, $92, $92, $92, $92, $92
	dc.b $92, $04, $04, $66, $66, $66, $66, $66
	dc.b $66, $66, $66, $66, $04, $04, $04, $00

slideshow_10_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $0e, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_10_b_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $9c, $9c, $9c, $9c, $9c, $9c, $9c, $9c
	dc.b $9c, $9c, $9c, $9c, $9c, $9c, $9c, $9c
	dc.b $9c, $9c, $9c, $9c, $9c, $9c, $9c, $9c
	dc.b $9c, $9c, $9c, $9c, $9c, $9c, $9c, $9c

	ALIGN 256
slideshow_10_c_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_10_c_colfg:
	dc.b $00, $00, $66, $66, $66, $66, $66, $00
	dc.b $6c, $6c, $6c, $6c, $6c, $00, $00, $00
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_11_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_11_a_colfg:
	dc.b $00, $00, $0e, $0e, $0e, $0e, $0e, $00
	dc.b $7c, $7c, $7c, $7c, $7c, $00, $00, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $28, $28, $28
	dc.b $28, $28, $28, $28, $28, $28, $28, $00

slideshow_11_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_11_b_colfg:
	dc.b $00, $00, $6c, $6c, $6c, $6c, $6c, $00
	dc.b $0e, $0e, $0e, $0e, $0e, $00, $00, $0e
	dc.b $0e, $0e, $00, $52, $52, $52, $52, $56
	dc.b $56, $56, $2c, $2c, $26, $26, $64, $64
	dc.b $64, $64, $64, $64, $00, $0e, $0e, $0e

	ALIGN 256
slideshow_11_c_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_11_c_colfg:
	dc.b $00, $00, $7c, $7c, $7c, $7c, $7c, $00
	dc.b $6c, $6c, $6c, $6c, $6c, $00, $00, $0e
	dc.b $0e, $0e, $46, $46, $46, $46, $46, $00
	dc.b $08, $08, $08, $08, $08, $08, $08, $08
	dc.b $00, $00, $2c, $2c, $2c, $2c, $2c, $00

slideshow_12_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_12_a_colfg:
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $04, $04, $04, $04, $04, $04, $04, $04
	dc.b $04, $04, $04, $04, $04, $04, $04, $00

