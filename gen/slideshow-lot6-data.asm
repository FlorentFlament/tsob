	ALIGN 256 ; In case, but file should be included at the begining of a bank
slideshow_26_a_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $00, $f0
	dc.b $f0, $f0, $f0, $f0, $00, $00, $f0, $f0
	dc.b $00, $c0, $e0, $60, $60, $60, $e0, $c0
	dc.b $00, $00, $00, $f0, $f0, $00, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
slideshow_26_a_p1:
	dc.b $00, $ab, $ab, $ab, $eb, $a7, $00, $59
	dc.b $57, $39, $77, $79, $00, $ff, $1f, $e1
	dc.b $fe, $1f, $81, $bc, $3e, $16, $1e, $86
	dc.b $9e, $1c, $00, $00, $e0, $fe, $1f, $e1
	dc.b $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff
slideshow_26_a_p2:
	dc.b $00, $b3, $5d, $3d, $7d, $93, $00, $9d
	dc.b $aa, $99, $bb, $bc, $00, $ff, $ff, $ff
	dc.b $f8, $c7, $3f, $f8, $c3, $03, $e3, $e3
	dc.b $47, $cf, $1b, $d8, $c0, $00, $07, $3f
	dc.b $f8, $c7, $3f, $ff, $ff, $ff, $ff, $ff
slideshow_26_a_p3:
	dc.b $00, $50, $50, $50, $50, $90, $00, $d0
	dc.b $a0, $90, $b0, $c0, $00, $f0, $f0, $f0
	dc.b $f0, $f0, $c0, $30, $f0, $c0, $10, $b0
	dc.b $b0, $b0, $b0, $b0, $90, $80, $80, $80
	dc.b $30, $f0, $c0, $30, $f0, $f0, $f0, $f0
slideshow_26_a_p4:
	dc.b $00, $9a, $ef, $df, $bf, $cf, $00, $95
	dc.b $75, $71, $75, $95, $00, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $7f, $87, $f8, $7f, $87
	dc.b $80, $86, $86, $86, $e6, $f0, $b6, $f6
	dc.b $60, $80, $f8, $7f, $87, $f8, $ff, $ff
slideshow_26_a_p5:
	dc.b $00, $fd, $ff, $ff, $ff, $ff, $00, $f9
	dc.b $fe, $f9, $fe, $f9, $00, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $fe, $f1, $0f
	dc.b $fe, $f1, $0b, $3b, $73, $63, $3b, $1b
	dc.b $73, $73, $02, $01, $0f, $fe, $f1, $0f
slideshow_26_a_ptr:
	dc.w slideshow_26_a_colbg
	dc.w slideshow_26_a_colfg
	dc.w slideshow_26_a_p0
	dc.w slideshow_26_a_p1
	dc.w slideshow_26_a_p2
	dc.w slideshow_26_a_p3
	dc.w slideshow_26_a_p4
	dc.w slideshow_26_a_p5

slideshow_26_b_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $00, $f0
	dc.b $f0, $f0, $f0, $f0, $00, $00, $f0, $f0
	dc.b $00, $c0, $e0, $60, $60, $60, $e0, $c0
	dc.b $00, $00, $00, $f0, $f0, $00, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
slideshow_26_b_p1:
	dc.b $00, $db, $ab, $a9, $ab, $dc, $00, $f3
	dc.b $f5, $f5, $f5, $f3, $00, $ff, $1f, $e1
	dc.b $fe, $1f, $81, $bc, $3e, $16, $1e, $86
	dc.b $9e, $1c, $00, $00, $e0, $fe, $1f, $e1
	dc.b $fe, $ff, $ff, $ff, $ff, $ff, $ff, $ff
slideshow_26_b_p2:
	dc.b $00, $e7, $57, $d7, $57, $e7, $00, $ad
	dc.b $aa, $a9, $ab, $cc, $00, $ff, $ff, $ff
	dc.b $f8, $c7, $3f, $f8, $c3, $03, $e3, $e3
	dc.b $47, $cf, $1b, $d8, $c0, $00, $07, $3f
	dc.b $f8, $c7, $3f, $ff, $ff, $ff, $ff, $ff
slideshow_26_b_p3:
	dc.b $00, $c0, $70, $e0, $f0, $40, $00, $90
	dc.b $a0, $a0, $e0, $90, $00, $f0, $f0, $f0
	dc.b $f0, $f0, $c0, $30, $f0, $c0, $10, $b0
	dc.b $b0, $b0, $b0, $b0, $90, $80, $80, $80
	dc.b $30, $f0, $c0, $30, $f0, $f0, $f0, $f0
slideshow_26_b_p4:
	dc.b $00, $76, $b6, $36, $b6, $62, $00, $95
	dc.b $75, $b3, $75, $93, $00, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $7f, $87, $f8, $7f, $87
	dc.b $80, $86, $86, $86, $e6, $f0, $b6, $f6
	dc.b $60, $80, $f8, $7f, $87, $f8, $ff, $ff
slideshow_26_b_p5:
	dc.b $00, $fd, $fd, $fc, $fd, $fd, $00, $ff
	dc.b $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $fe, $f1, $0f
	dc.b $fe, $f1, $0b, $3b, $73, $63, $3b, $1b
	dc.b $73, $73, $02, $01, $0f, $fe, $f1, $0f
slideshow_26_b_ptr:
	dc.w slideshow_26_b_colbg
	dc.w slideshow_26_b_colfg
	dc.w slideshow_26_b_p0
	dc.w slideshow_26_b_p1
	dc.w slideshow_26_b_p2
	dc.w slideshow_26_b_p3
	dc.w slideshow_26_b_p4
	dc.w slideshow_26_b_p5

slideshow_27_a_p0:
	dc.b $70, $70, $70, $80, $80, $80, $00, $00
	dc.b $70, $70, $70, $70, $70, $00, $f0, $f0
	dc.b $f0, $f0, $f0, $70, $70, $70, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $00, $80, $80, $80, $70, $70, $70
slideshow_27_a_p1:
	dc.b $38, $38, $38, $c7, $c7, $c7, $00, $00
	dc.b $f7, $eb, $6b, $ab, $76, $00, $f1, $ce
	dc.b $bf, $7f, $7f, $ff, $fb, $fd, $7d, $7d
	dc.b $bd, $cc, $f0, $fd, $fc, $f8, $f7, $f5
	dc.b $f9, $00, $c7, $c7, $c7, $38, $38, $38
slideshow_27_a_p2:
	dc.b $c7, $c7, $c7, $38, $38, $38, $00, $00
	dc.b $3e, $be, $3e, $be, $3c, $00, $ff, $fe
	dc.b $fd, $fb, $fb, $f7, $77, $77, $bb, $db
	dc.b $ed, $f6, $fb, $fd, $00, $ff, $fe, $ff
	dc.b $ff, $00, $38, $38, $38, $c7, $c7, $c7
slideshow_27_a_p3:
	dc.b $10, $10, $10, $e0, $e0, $e0, $00, $00
	dc.b $70, $a0, $30, $a0, $70, $00, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $00, $c0, $d0, $d0
	dc.b $b0, $b0, $70, $70, $00, $f0, $30, $f0
	dc.b $f0, $00, $e0, $e0, $e0, $10, $10, $10
slideshow_27_a_p4:
	dc.b $e3, $e3, $e3, $1c, $1c, $1c, $00, $00
	dc.b $66, $dd, $dd, $dd, $5e, $00, $f8, $e7
	dc.b $df, $bf, $bf, $7f, $00, $7d, $bb, $b7
	dc.b $cf, $cf, $b0, $7f, $7f, $1f, $1f, $ff
	dc.b $ff, $00, $1c, $1c, $1c, $e3, $e3, $e3
slideshow_27_a_p5:
	dc.b $71, $71, $71, $8e, $8e, $8e, $00, $00
	dc.b $e6, $fa, $f2, $fb, $e6, $00, $ff, $fc
	dc.b $fb, $f7, $f7, $ef, $ef, $ef, $f7, $f7
	dc.b $fb, $fc, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $00, $8e, $8e, $8e, $71, $71, $71
slideshow_27_a_ptr:
	dc.w slideshow_27_a_colbg
	dc.w slideshow_27_a_colfg
	dc.w slideshow_27_a_p0
	dc.w slideshow_27_a_p1
	dc.w slideshow_27_a_p2
	dc.w slideshow_27_a_p3
	dc.w slideshow_27_a_p4
	dc.w slideshow_27_a_p5

slideshow_27_b_p0:
	dc.b $e0, $e0, $e0, $10, $10, $10, $00, $00
	dc.b $80, $80, $80, $80, $80, $00, $f0, $f0
	dc.b $f0, $f0, $00, $00, $00, $30, $f0, $70
	dc.b $b0, $70, $00, $00, $00, $f0, $f0, $f0
	dc.b $f0, $00, $e0, $e0, $e0, $10, $10, $10
slideshow_27_b_p1:
	dc.b $1c, $1c, $1c, $e3, $e3, $e3, $00, $00
	dc.b $08, $14, $94, $54, $89, $00, $f1, $ce
	dc.b $bf, $7f, $00, $00, $00, $dc, $5d, $cc
	dc.b $d5, $4c, $00, $00, $00, $f8, $f7, $f5
	dc.b $f9, $00, $1c, $1c, $1c, $e3, $e3, $e3
slideshow_27_b_p2:
	dc.b $8e, $8e, $8e, $71, $71, $71, $00, $00
	dc.b $c1, $41, $c1, $41, $c3, $00, $ff, $fe
	dc.b $fd, $fb, $00, $00, $00, $c9, $ad, $a9
	dc.b $ad, $c9, $00, $00, $00, $ff, $fe, $ff
	dc.b $ff, $00, $8e, $8e, $8e, $71, $71, $71
slideshow_27_b_p3:
	dc.b $30, $30, $30, $c0, $c0, $c0, $00, $00
	dc.b $80, $50, $c0, $50, $80, $00, $f0, $f0
	dc.b $f0, $f0, $00, $00, $00, $f0, $d0, $80
	dc.b $d0, $f0, $00, $00, $00, $f0, $30, $f0
	dc.b $f0, $00, $30, $30, $30, $c0, $c0, $c0
slideshow_27_b_p4:
	dc.b $71, $71, $71, $8e, $8e, $8e, $00, $00
	dc.b $99, $22, $22, $22, $a1, $00, $f8, $e7
	dc.b $df, $bf, $00, $00, $00, $32, $56, $32
	dc.b $56, $32, $00, $00, $00, $1f, $1f, $ff
	dc.b $ff, $00, $71, $71, $71, $8e, $8e, $8e
slideshow_27_b_p5:
	dc.b $e3, $e3, $e3, $1c, $1c, $1c, $00, $00
	dc.b $19, $05, $0d, $04, $19, $00, $ff, $fc
	dc.b $fb, $f7, $00, $00, $00, $ea, $eb, $f2
	dc.b $eb, $f2, $00, $00, $00, $ff, $ff, $ff
	dc.b $ff, $00, $e3, $e3, $e3, $1c, $1c, $1c
slideshow_27_b_ptr:
	dc.w slideshow_27_b_colbg
	dc.w slideshow_27_b_colfg
	dc.w slideshow_27_b_p0
	dc.w slideshow_27_b_p1
	dc.w slideshow_27_b_p2
	dc.w slideshow_27_b_p3
	dc.w slideshow_27_b_p4
	dc.w slideshow_27_b_p5

slideshow_28_a_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $80, $c0, $60, $60, $60, $c0, $80, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_28_a_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $01, $00
	dc.b $c6, $e6, $37, $37, $36, $e7, $c7, $00
	dc.b $01, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_28_a_p2:
	dc.b $00, $00, $80, $40, $40, $a0, $10, $d0
	dc.b $08, $04, $84, $da, $79, $31, $60, $00
	dc.b $86, $c6, $c3, $63, $66, $37, $33, $80
	dc.b $f8, $f1, $61, $c2, $c4, $84, $08, $d0
	dc.b $10, $a0, $40, $40, $80, $00, $00, $00
slideshow_28_a_p3:
	dc.b $00, $00, $10, $20, $20, $50, $80, $b0
	dc.b $00, $00, $30, $70, $f0, $e0, $e0, $40
	dc.b $90, $30, $30, $60, $60, $c0, $c0, $00
	dc.b $90, $30, $30, $50, $a0, $40, $00, $b0
	dc.b $80, $50, $20, $20, $10, $00, $00, $00
slideshow_28_a_p4:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $80, $40, $40, $20, $10, $90, $c8, $20
	dc.b $83, $c6, $fe, $7c, $6c, $38, $38, $00
	dc.b $08, $10, $10, $20, $40, $40, $80, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_28_a_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $7e, $7e, $06, $06, $06, $06, $06, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_28_a_ptr:
	dc.w slideshow_28_a_colbg
	dc.w slideshow_28_a_colfg
	dc.w slideshow_28_a_p0
	dc.w slideshow_28_a_p1
	dc.w slideshow_28_a_p2
	dc.w slideshow_28_a_p3
	dc.w slideshow_28_a_p4
	dc.w slideshow_28_a_p5

slideshow_28_b_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $f0
	dc.b $70, $10, $d0, $f0, $00, $40, $40, $40
	dc.b $40, $e0, $00, $f0, $f0, $f0, $00, $00
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $00, $00, $00, $00
slideshow_28_b_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $ff
	dc.b $b7, $c3, $b7, $ff, $00, $55, $55, $65
	dc.b $55, $65, $00, $ff, $ff, $ff, $00, $00
	dc.b $03, $01, $38, $3c, $3c, $3c, $3c, $3c
	dc.b $b8, $f1, $03, $87, $00, $00, $00, $00
slideshow_28_b_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $69
	dc.b $6e, $6e, $6e, $29, $00, $d8, $48, $59
	dc.b $4a, $59, $00, $ff, $ff, $ff, $00, $00
	dc.b $27, $03, $93, $93, $81, $c9, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $00, $00, $00, $00
slideshow_28_b_p3:
	dc.b $00, $00, $00, $00, $00, $00, $00, $b0
	dc.b $b0, $30, $b0, $20, $00, $40, $c0, $30
	dc.b $a0, $50, $20, $d0, $30, $70, $00, $00
	dc.b $30, $10, $90, $90, $80, $c0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $00, $00, $00, $00
slideshow_28_b_p4:
	dc.b $00, $00, $00, $00, $00, $00, $00, $57
	dc.b $57, $c6, $56, $ef, $00, $8a, $4a, $ae
	dc.b $aa, $6a, $20, $4f, $9f, $3f, $00, $00
	dc.b $f1, $26, $23, $21, $24, $31, $fb, $ff
	dc.b $ff, $ff, $ff, $ff, $00, $00, $00, $00
slideshow_28_b_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $ff
	dc.b $da, $89, $d5, $ff, $00, $12, $15, $35
	dc.b $55, $32, $00, $ff, $ff, $ff, $00, $00
	dc.b $f3, $f1, $f9, $f9, $f9, $f9, $f9, $f9
	dc.b $f9, $f8, $fc, $ff, $00, $00, $00, $00
slideshow_28_b_ptr:
	dc.w slideshow_28_b_colbg
	dc.w slideshow_28_b_colfg
	dc.w slideshow_28_b_p0
	dc.w slideshow_28_b_p1
	dc.w slideshow_28_b_p2
	dc.w slideshow_28_b_p3
	dc.w slideshow_28_b_p4
	dc.w slideshow_28_b_p5

slideshow_28_c_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $30, $10
	dc.b $10, $10, $10, $10, $10, $90, $d0, $d0
	dc.b $d0, $d0, $d0, $90, $10, $10, $10, $10
	dc.b $10, $10, $10, $10, $10, $10, $10, $10
	dc.b $10, $10, $10, $30, $f0, $f0, $f0, $00
slideshow_28_c_p1:
	dc.b $00, $ff, $ff, $fe, $f0, $80, $25, $25
	dc.b $26, $25, $76, $00, $00, $c6, $ec, $6c
	dc.b $0f, $6c, $ec, $c6, $00, $00, $03, $03
	dc.b $00, $03, $00, $03, $0e, $4c, $5e, $7a
	dc.b $72, $22, $02, $03, $81, $c0, $e0, $00
slideshow_28_c_p2:
	dc.b $00, $3f, $07, $00, $00, $00, $2a, $2a
	dc.b $6e, $aa, $64, $00, $00, $bd, $db, $9b
	dc.b $9b, $9b, $9b, $bd, $00, $00, $01, $01
	dc.b $00, $01, $00, $01, $07, $26, $37, $3d
	dc.b $39, $11, $01, $01, $00, $00, $00, $00
slideshow_28_c_p3:
	dc.b $00, $c0, $00, $00, $00, $00, $20, $20
	dc.b $60, $a0, $60, $00, $00, $00, $10, $50
	dc.b $f0, $b0, $10, $10, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $40, $40, $c0
	dc.b $c0, $80, $00, $00, $00, $00, $00, $00
slideshow_28_c_p4:
	dc.b $00, $ff, $7f, $07, $00, $00, $58, $44
	dc.b $48, $50, $4d, $00, $00, $69, $e9, $db
	dc.b $df, $db, $cf, $ce, $00, $00, $1c, $1c
	dc.b $00, $1c, $00, $1c, $77, $63, $f7, $d5
	dc.b $94, $14, $14, $1c, $08, $00, $00, $00
slideshow_28_c_p5:
	dc.b $00, $ff, $ff, $ff, $ff, $f8, $c1, $81
	dc.b $81, $81, $83, $80, $80, $9d, $9d, $8d
	dc.b $8c, $9e, $ba, $b3, $80, $80, $80, $80
	dc.b $80, $80, $80, $80, $80, $84, $86, $87
	dc.b $87, $82, $80, $c0, $f8, $fc, $fe, $00
slideshow_28_c_ptr:
	dc.w slideshow_28_c_colbg
	dc.w slideshow_28_c_colfg
	dc.w slideshow_28_c_p0
	dc.w slideshow_28_c_p1
	dc.w slideshow_28_c_p2
	dc.w slideshow_28_c_p3
	dc.w slideshow_28_c_p4
	dc.w slideshow_28_c_p5

slideshow_28_d_p0:
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $70, $70, $b0
	dc.b $b0, $b0, $b0, $b0, $b0, $b0, $b0, $b0
	dc.b $b0, $b0, $b0, $b0, $b0, $b0, $b0, $b0
	dc.b $b0, $b0, $b0, $b0, $b0, $b0, $b0, $30
slideshow_28_d_p1:
	dc.b $ff, $ff, $ff, $ff, $fe, $fd, $fb, $f5
	dc.b $e8, $d0, $a2, $47, $4d, $99, $b3, $66
	dc.b $3c, $01, $83, $c6, $e0, $f0, $f8, $fc
	dc.b $fe, $f3, $ed, $d2, $da, $ad, $b3, $4c
	dc.b $6e, $12, $6d, $6d, $80, $f3, $ff, $00
slideshow_28_d_p2:
	dc.b $1f, $e7, $f9, $fe, $ff, $ff, $ff, $df
	dc.b $eb, $f6, $ec, $78, $f0, $60, $c0, $9e
	dc.b $1b, $11, $18, $cc, $e6, $73, $39, $4c
	dc.b $44, $6c, $b1, $83, $87, $8e, $1e, $3d
	dc.b $7d, $fc, $fd, $fd, $fe, $ff, $ff, $00
slideshow_28_d_p3:
	dc.b $80, $70, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $e0, $d0, $b0, $d0, $f0, $70
	dc.b $b0, $e0, $c0, $80, $00, $00, $00, $00
	dc.b $e0, $70, $10, $90, $c0, $70, $80, $c0
	dc.b $00, $00, $10, $30, $70, $f0, $f0, $00
slideshow_28_d_p4:
	dc.b $ff, $7f, $9f, $ef, $f7, $fb, $fd, $fe
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $bf
	dc.b $ff, $bf, $77, $eb, $dd, $6b, $37, $1e
	dc.b $8d, $87, $83, $b1, $60, $c4, $9c, $f8
	dc.b $30, $61, $c3, $36, $38, $1c, $ff, $00
slideshow_28_d_p5:
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $fe, $fd, $fb, $f7, $f7, $ef, $ef, $df
	dc.b $df, $df, $df, $df, $df, $df, $de, $df
	dc.b $da, $df, $da, $df, $df, $de, $dc, $d8
	dc.b $d1, $d1, $d0, $d0, $d0, $d0, $df, $c0
slideshow_28_d_ptr:
	dc.w slideshow_28_d_colbg
	dc.w slideshow_28_d_colfg
	dc.w slideshow_28_d_p0
	dc.w slideshow_28_d_p1
	dc.w slideshow_28_d_p2
	dc.w slideshow_28_d_p3
	dc.w slideshow_28_d_p4
	dc.w slideshow_28_d_p5

slideshow_28_e_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $70, $70, $30, $30, $30
	dc.b $30, $10, $10, $10, $10, $10, $10, $30
	dc.b $30, $30, $30, $70, $70, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00
slideshow_28_e_p1:
	dc.b $00, $ff, $ff, $fe, $f8, $f0, $e0, $c0
	dc.b $80, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $c0, $e0, $f0, $f8, $fe, $ff, $ff, $00
slideshow_28_e_p2:
	dc.b $00, $1f, $01, $00, $00, $00, $00, $70
	dc.b $70, $70, $70, $70, $70, $70, $70, $70
	dc.b $f0, $f0, $f0, $70, $70, $70, $70, $f0
	dc.b $f0, $70, $70, $70, $70, $f0, $f0, $f0
	dc.b $f0, $00, $00, $00, $00, $01, $1f, $00
slideshow_28_e_p3:
	dc.b $00, $80, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $70, $f0, $e0, $c0, $c0, $e0, $f0
	dc.b $f0, $e0, $c0, $c0, $e0, $f0, $70, $30
	dc.b $00, $00, $00, $00, $00, $00, $80, $00
slideshow_28_e_p4:
	dc.b $00, $ff, $1f, $07, $01, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $80, $80, $80, $80, $00
	dc.b $00, $80, $80, $80, $80, $00, $00, $00
	dc.b $00, $00, $00, $01, $07, $1f, $ff, $00
slideshow_28_e_p5:
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $fe, $fc
	dc.b $f8, $f0, $f0, $e0, $e0, $c0, $c0, $c0
	dc.b $c0, $80, $80, $80, $80, $80, $80, $c0
	dc.b $c0, $c0, $c0, $e0, $e0, $f0, $f0, $f8
	dc.b $fc, $fe, $ff, $ff, $ff, $ff, $ff, $00
slideshow_28_e_ptr:
	dc.w slideshow_28_e_colbg
	dc.w slideshow_28_e_colfg
	dc.w slideshow_28_e_p0
	dc.w slideshow_28_e_p1
	dc.w slideshow_28_e_p2
	dc.w slideshow_28_e_p3
	dc.w slideshow_28_e_p4
	dc.w slideshow_28_e_p5

slideshow_28_f_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $00, $00
	dc.b $00, $60, $a0, $a0, $a0, $60, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $10
	dc.b $10, $10, $f0, $f0, $f0, $f0, $00, $f0
	dc.b $f0, $70, $80, $f0, $f0, $70, $90, $e0
slideshow_28_f_p1:
	dc.b $00, $9a, $aa, $99, $aa, $99, $00, $00
	dc.b $00, $63, $42, $62, $42, $62, $00, $00
	dc.b $ca, $aa, $cc, $aa, $cc, $00, $00, $40
	dc.b $40, $41, $c7, $ff, $ff, $c0, $3f, $f8
	dc.b $c7, $3e, $f9, $e7, $9e, $7d, $f3, $ef
slideshow_28_f_p2:
	dc.b $00, $9b, $75, $b5, $d5, $35, $00, $00
	dc.b $00, $15, $14, $1c, $14, $08, $00, $00
	dc.b $69, $89, $ef, $29, $c6, $00, $00, $03
	dc.b $03, $43, $43, $7f, $ff, $ff, $ff, $ff
	dc.b $ff, $fa, $ed, $ae, $b7, $db, $ed, $ed
slideshow_28_f_p3:
	dc.b $00, $90, $70, $b0, $d0, $30, $00, $00
	dc.b $00, $30, $40, $70, $10, $60, $00, $00
	dc.b $60, $80, $e0, $20, $c0, $00, $00, $40
	dc.b $c0, $c0, $c0, $c0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $70, $50, $d0, $b0, $70, $70
slideshow_28_f_p4:
	dc.b $00, $91, $b7, $97, $b7, $97, $00, $00
	dc.b $00, $d2, $96, $de, $9a, $d2, $00, $00
	dc.b $6a, $4a, $6c, $4a, $6c, $00, $00, $20
	dc.b $e0, $e0, $e1, $e1, $ff, $f0, $ff, $f1
	dc.b $fe, $a7, $d9, $ee, $77, $bb, $dc, $df
slideshow_28_f_p5:
	dc.b $00, $fc, $fb, $fd, $fe, $f9, $00, $00
	dc.b $00, $69, $2d, $6f, $2b, $69, $00, $00
	dc.b $0d, $05, $0d, $05, $0d, $00, $00, $c2
	dc.b $c2, $f2, $f3, $f3, $f3, $fc, $03, $ff
	dc.b $fc, $e3, $1f, $fe, $f9, $e7, $9f, $7e
slideshow_28_f_ptr:
	dc.w slideshow_28_f_colbg
	dc.w slideshow_28_f_colfg
	dc.w slideshow_28_f_p0
	dc.w slideshow_28_f_p1
	dc.w slideshow_28_f_p2
	dc.w slideshow_28_f_p3
	dc.w slideshow_28_f_p4
	dc.w slideshow_28_f_p5

slideshow_28_g_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $e0, $40, $40, $40, $40, $40, $e0
	dc.b $00, $80, $80, $80, $80, $80, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $80, $80
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_28_g_p1:
	dc.b $00, $00, $00, $ca, $aa, $cc, $aa, $cc
	dc.b $00, $3e, $90, $94, $9c, $94, $90, $3e
	dc.b $00, $94, $55, $99, $55, $98, $00, $00
	dc.b $00, $09, $32, $54, $55, $22, $00, $98
	dc.b $00, $00, $00, $01, $00, $01, $00, $00
slideshow_28_g_p2:
	dc.b $00, $00, $00, $69, $89, $4f, $29, $c6
	dc.b $00, $a6, $54, $d4, $8c, $94, $14, $0e
	dc.b $00, $11, $2a, $aa, $aa, $a9, $00, $00
	dc.b $00, $a1, $a2, $91, $d0, $98, $d8, $86
	dc.b $cc, $87, $c6, $81, $c3, $80, $00, $00
slideshow_28_g_p3:
	dc.b $00, $00, $00, $60, $80, $40, $20, $c0
	dc.b $00, $e0, $40, $70, $20, $20, $10, $10
	dc.b $00, $50, $50, $a0, $80, $80, $00, $00
	dc.b $00, $20, $20, $40, $c0, $50, $c0, $10
	dc.b $80, $10, $00, $10, $00, $00, $00, $00
slideshow_28_g_p4:
	dc.b $00, $00, $00, $6a, $4a, $6c, $4a, $6c
	dc.b $00, $94, $94, $b5, $f6, $d5, $94, $9c
	dc.b $00, $6a, $4a, $6c, $4a, $6c, $00, $00
	dc.b $00, $32, $49, $25, $15, $08, $00, $c3
	dc.b $80, $e0, $c0, $30, $60, $10, $00, $00
slideshow_28_g_p5:
	dc.b $00, $00, $00, $0d, $05, $0d, $05, $0d
	dc.b $00, $7d, $09, $28, $38, $28, $09, $7d
	dc.b $00, $05, $09, $09, $09, $1d, $00, $00
	dc.b $00, $00, $01, $02, $02, $01, $08, $0c
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_28_g_ptr:
	dc.w slideshow_28_g_colbg
	dc.w slideshow_28_g_colfg
	dc.w slideshow_28_g_p0
	dc.w slideshow_28_g_p1
	dc.w slideshow_28_g_p2
	dc.w slideshow_28_g_p3
	dc.w slideshow_28_g_p4
	dc.w slideshow_28_g_p5

	ALIGN 256
slideshow_26_a_colbg:
	dc.b $0e, $62, $62, $62, $62, $62, $0e, $00
	dc.b $00, $00, $00, $00, $0e, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
slideshow_26_a_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $0e
	dc.b $0e, $0e, $0e, $0e, $00, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_26_b_colbg:
	dc.b $0e, $00, $00, $00, $00, $00, $0e, $62
	dc.b $62, $62, $62, $62, $0e, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
slideshow_26_b_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $0e
	dc.b $0e, $0e, $0e, $0e, $00, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_27_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $9c, $9c
	dc.b $b2, $b2, $b2, $b2, $b2, $9c, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $9c, $00, $00, $00, $00, $00, $00
slideshow_27_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $9c, $9c, $9c, $9c, $9c, $00, $9c, $9c
	dc.b $9c, $9c, $9c, $9c, $9c, $9c, $9c, $9c
	dc.b $9c, $9c, $9c, $9c, $9c, $9c, $9c, $9c
	dc.b $9c, $00, $0e, $0e, $0e, $0e, $0e, $0e

	ALIGN 256
slideshow_27_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $9c, $9c
	dc.b $9c, $9c, $9c, $9c, $9c, $9c, $00, $00
	dc.b $00, $00, $62, $0e, $0e, $62, $62, $62
	dc.b $62, $62, $0e, $0e, $62, $00, $00, $00
	dc.b $00, $9c, $00, $00, $00, $00, $00, $00
slideshow_27_b_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $6a, $6a, $6a, $6a, $6a, $00, $9c, $9c
	dc.b $9c, $9c, $00, $00, $00, $0e, $0e, $0e
	dc.b $0e, $0e, $00, $00, $00, $9c, $9c, $9c
	dc.b $9c, $00, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_28_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_28_a_colfg:
	dc.b $00, $00, $96, $96, $96, $96, $96, $96
	dc.b $96, $96, $96, $96, $96, $96, $96, $96
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $96
	dc.b $96, $96, $96, $96, $96, $96, $96, $96
	dc.b $96, $96, $96, $96, $96, $00, $00, $00

slideshow_28_b_colbg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $34, $00
	dc.b $00, $00, $00, $00, $34, $34, $34, $34
	dc.b $34, $34, $34, $34, $34, $34, $0e, $0e
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $0e, $0e, $0e, $0e
slideshow_28_b_colfg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $34
	dc.b $34, $34, $34, $34, $00, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $00, $00, $00, $00

	ALIGN 256
slideshow_28_c_colbg:
	dc.b $0e, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $2a
	dc.b $2a, $2a, $2a, $2a, $2a, $2a, $2a, $0e
slideshow_28_c_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $00

slideshow_28_d_colbg:
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
slideshow_28_d_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_28_e_colbg:
	dc.b $0e, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $0e
slideshow_28_e_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $00

	ALIGN 256
slideshow_28_f_colbg:
	dc.b $0e, $62, $62, $62, $62, $62, $0e, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
	dc.b $62, $62, $62, $62, $62, $62, $62, $62
slideshow_28_f_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $0e, $0e, $0e, $0e, $0e, $00, $00, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_28_g_colbg:
	dc.b $b2, $b2, $b2, $b2, $b2, $b2, $b2, $b2
	dc.b $b2, $b2, $b2, $b2, $b2, $b2, $b2, $b2
	dc.b $b2, $b2, $b2, $b2, $b2, $b2, $b2, $b2
	dc.b $b2, $b2, $b2, $b2, $b2, $b2, $b2, $b2
	dc.b $b2, $b2, $b2, $b2, $b2, $b2, $b2, $b2
slideshow_28_g_colfg:
	dc.b $00, $00, $00, $0e, $0e, $0e, $0e, $0e
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $00, $00

