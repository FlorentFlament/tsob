	ALIGN 256 ; In case, but file should be included at the begining of a bank
slideshow_01_a_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $80, $40
	dc.b $40, $e0, $40, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $c0
	dc.b $c0, $00, $00, $00, $00, $00, $00, $00
slideshow_01_a_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $c8
	dc.b $a8, $ac, $a8, $66, $00, $00, $52, $54
	dc.b $76, $54, $52, $00, $00, $00, $00, $c3
	dc.b $c7, $c6, $c0, $c3, $c7, $c6, $c6, $f7
	dc.b $f3, $00, $00, $00, $00, $00, $00, $00
slideshow_01_a_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $8c
	dc.b $54, $cc, $54, $8c, $00, $00, $44, $28
	dc.b $2c, $24, $48, $00, $00, $00, $80, $43
	dc.b $27, $26, $16, $17, $13, $10, $26, $27
	dc.b $43, $80, $00, $00, $00, $00, $00, $00
slideshow_01_a_p3:
	dc.b $00, $00, $00, $00, $00, $00, $00, $40
	dc.b $20, $20, $20, $20, $00, $00, $50, $50
	dc.b $30, $50, $30, $00, $00, $e0, $10, $00
	dc.b $c0, $20, $10, $00, $40, $60, $60, $40
	dc.b $00, $10, $e0, $00, $00, $00, $00, $00
slideshow_01_a_p4:
	dc.b $00, $00, $00, $00, $00, $00, $00, $69
	dc.b $aa, $aa, $82, $69, $00, $00, $a5, $aa
	dc.b $e8, $a8, $48, $00, $00, $c0, $30, $08
	dc.b $84, $44, $22, $02, $82, $c2, $c4, $84
	dc.b $08, $30, $c0, $00, $00, $00, $00, $00
slideshow_01_a_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $0a
	dc.b $0a, $0e, $0a, $04, $00, $00, $28, $45
	dc.b $65, $25, $45, $00, $00, $00, $00, $1f
	dc.b $3f, $33, $33, $1f, $1f, $33, $33, $3f
	dc.b $1f, $00, $00, $00, $00, $00, $00, $00
slideshow_01_a_ptr:
	dc.w slideshow_01_a_colbg
	dc.w slideshow_01_a_colfg
	dc.w slideshow_01_a_p0
	dc.w slideshow_01_a_p1
	dc.w slideshow_01_a_p2
	dc.w slideshow_01_a_p3
	dc.w slideshow_01_a_p4
	dc.w slideshow_01_a_p5

slideshow_01_b_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $80, $40
	dc.b $40, $e0, $40, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $c0
	dc.b $c0, $00, $00, $00, $00, $00, $00, $00
slideshow_01_b_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $c8
	dc.b $a8, $ac, $a8, $66, $00, $00, $52, $54
	dc.b $76, $54, $52, $00, $00, $00, $00, $c3
	dc.b $c7, $c6, $c0, $c3, $c7, $c6, $c6, $f7
	dc.b $f3, $00, $00, $00, $00, $00, $00, $00
slideshow_01_b_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $8c
	dc.b $54, $cc, $54, $8c, $00, $00, $44, $28
	dc.b $2c, $24, $48, $00, $00, $80, $40, $23
	dc.b $27, $16, $16, $17, $13, $20, $26, $47
	dc.b $83, $00, $00, $00, $00, $00, $00, $00
slideshow_01_b_p3:
	dc.b $00, $00, $00, $00, $00, $00, $00, $40
	dc.b $20, $20, $20, $20, $00, $00, $50, $50
	dc.b $30, $50, $30, $00, $e0, $10, $00, $c0
	dc.b $20, $10, $00, $00, $40, $00, $00, $00
	dc.b $10, $e0, $00, $00, $00, $00, $00, $00
slideshow_01_b_p4:
	dc.b $00, $00, $00, $00, $00, $00, $00, $69
	dc.b $aa, $aa, $82, $69, $00, $00, $a5, $aa
	dc.b $e8, $a8, $48, $00, $c0, $30, $08, $84
	dc.b $44, $22, $02, $82, $c2, $c4, $84, $08
	dc.b $30, $c0, $00, $00, $00, $00, $00, $00
slideshow_01_b_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $0a
	dc.b $0a, $0e, $0a, $04, $00, $00, $28, $45
	dc.b $65, $25, $45, $00, $00, $00, $00, $1f
	dc.b $3f, $33, $33, $1f, $1f, $33, $33, $3f
	dc.b $1f, $00, $00, $00, $00, $00, $00, $00
slideshow_01_b_ptr:
	dc.w slideshow_01_b_colbg
	dc.w slideshow_01_b_colfg
	dc.w slideshow_01_b_p0
	dc.w slideshow_01_b_p1
	dc.w slideshow_01_b_p2
	dc.w slideshow_01_b_p3
	dc.w slideshow_01_b_p4
	dc.w slideshow_01_b_p5

slideshow_02_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $c0, $c0, $00, $00, $00, $00, $c0, $40
	dc.b $40, $40, $80, $00, $00, $40, $40, $40
	dc.b $40, $e0, $00, $00, $00, $00, $00, $00
slideshow_02_p1:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $c3, $c7, $c6, $c0, $c3, $c7, $c6, $c6
	dc.b $f7, $f3, $00, $00, $00, $00, $11, $ba
	dc.b $ab, $aa, $a9, $00, $00, $54, $54, $5c
	dc.b $54, $48, $00, $00, $00, $00, $00, $00
slideshow_02_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $43, $27, $a6, $96, $17, $13, $10, $26
	dc.b $27, $43, $80, $00, $00, $00, $15, $14
	dc.b $0c, $14, $0d, $00, $00, $44, $28, $2c
	dc.b $24, $48, $00, $00, $00, $00, $00, $00
slideshow_02_p3:
	dc.b $00, $00, $00, $00, $00, $00, $e0, $10
	dc.b $00, $00, $90, $b0, $b0, $a0, $a0, $a0
	dc.b $a0, $00, $10, $e0, $00, $00, $60, $a0
	dc.b $60, $a0, $60, $00, $00, $50, $50, $30
	dc.b $50, $30, $00, $00, $00, $00, $00, $00
slideshow_02_p4:
	dc.b $00, $00, $00, $00, $00, $00, $c0, $30
	dc.b $08, $04, $34, $72, $62, $42, $42, $44
	dc.b $44, $08, $30, $c0, $00, $00, $55, $14
	dc.b $08, $14, $14, $00, $00, $55, $95, $dd
	dc.b $95, $48, $00, $00, $00, $00, $00, $00
slideshow_02_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $1f, $3f, $33, $33, $1f, $1f, $33, $33
	dc.b $3f, $1f, $00, $00, $00, $00, $2e, $02
	dc.b $02, $02, $02, $00, $00, $28, $48, $68
	dc.b $2a, $45, $00, $00, $00, $00, $00, $00
slideshow_02_ptr:
	dc.w slideshow_02_colbg
	dc.w slideshow_02_colfg
	dc.w slideshow_02_p0
	dc.w slideshow_02_p1
	dc.w slideshow_02_p2
	dc.w slideshow_02_p3
	dc.w slideshow_02_p4
	dc.w slideshow_02_p5

slideshow_03_a_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_03_a_p1:
	dc.b $00, $03, $07, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0f, $0f, $0f, $0f, $07, $03, $00
slideshow_03_a_p2:
	dc.b $00, $ff, $cf, $c7, $03, $03, $c7, $cf
	dc.b $ff, $c1, $81, $8f, $8f, $8f, $8f, $1f
	dc.b $1f, $3f, $7f, $7f, $ff, $ff, $ff, $fc
	dc.b $f8, $71, $63, $47, $0f, $1f, $3f, $7f
	dc.b $3f, $1f, $0f, $0f, $1f, $3f, $ff, $00
slideshow_03_a_p3:
	dc.b $00, $f0, $f0, $f0, $00, $00, $f0, $f0
	dc.b $f0, $30, $30, $70, $f0, $70, $30, $30
	dc.b $60, $40, $00, $00, $00, $10, $10, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $80, $c0, $80, $80, $c0, $e0, $f0, $00
slideshow_03_a_p4:
	dc.b $00, $fc, $fe, $ff, $3f, $3f, $ff, $ff
	dc.b $ff, $7f, $3f, $1f, $1f, $1f, $3f, $7f
	dc.b $3f, $3f, $1f, $1f, $1f, $1f, $1f, $1f
	dc.b $33, $63, $47, $8f, $1f, $3f, $7f, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $fe, $fc, $00
slideshow_03_a_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_03_a_ptr:
	dc.w slideshow_03_a_colbg
	dc.w slideshow_03_a_colfg
	dc.w slideshow_03_a_p0
	dc.w slideshow_03_a_p1
	dc.w slideshow_03_a_p2
	dc.w slideshow_03_a_p3
	dc.w slideshow_03_a_p4
	dc.w slideshow_03_a_p5

slideshow_03_b_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00
slideshow_03_b_p1:
	dc.b $00, $fc, $f8, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f8, $fc, $00
slideshow_03_b_p2:
	dc.b $00, $00, $ca, $2a, $6a, $aa, $46, $00
	dc.b $00, $3e, $7e, $70, $70, $70, $70, $e0
	dc.b $e0, $c0, $80, $80, $00, $00, $00, $03
	dc.b $07, $8e, $9c, $b8, $f0, $e0, $c0, $80
	dc.b $c0, $e0, $f0, $f0, $e0, $c0, $00, $00
slideshow_03_b_p3:
	dc.b $00, $00, $c0, $20, $20, $20, $20, $00
	dc.b $00, $c0, $c0, $80, $00, $80, $c0, $c0
	dc.b $90, $b0, $f0, $f0, $f0, $e0, $e0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $70, $30, $70, $70, $30, $10, $00, $00
slideshow_03_b_p4:
	dc.b $00, $03, $41, $a0, $a0, $20, $20, $00
	dc.b $00, $80, $c0, $e0, $e0, $e0, $c0, $80
	dc.b $c0, $c0, $e0, $e0, $e0, $e0, $e0, $e0
	dc.b $cc, $9c, $b8, $70, $e0, $c0, $80, $00
	dc.b $00, $00, $00, $00, $00, $01, $03, $00
slideshow_03_b_p5:
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
slideshow_03_b_ptr:
	dc.w slideshow_03_b_colbg
	dc.w slideshow_03_b_colfg
	dc.w slideshow_03_b_p0
	dc.w slideshow_03_b_p1
	dc.w slideshow_03_b_p2
	dc.w slideshow_03_b_p3
	dc.w slideshow_03_b_p4
	dc.w slideshow_03_b_p5

slideshow_03_c_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_03_c_p1:
	dc.b $00, $03, $07, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
	dc.b $0f, $0e, $0c, $0e, $0f, $07, $03, $00
slideshow_03_c_p2:
	dc.b $00, $ff, $39, $d5, $99, $55, $b9, $ff
	dc.b $ff, $e3, $c3, $8f, $8f, $c7, $e3, $c3
	dc.b $87, $07, $0f, $1f, $1f, $3f, $3f, $3f
	dc.b $3f, $3f, $1f, $1f, $0f, $07, $03, $31
	dc.b $78, $3c, $1e, $1e, $3f, $7f, $ff, $00
slideshow_03_c_p3:
	dc.b $00, $f0, $30, $50, $30, $70, $90, $f0
	dc.b $f0, $f0, $70, $70, $70, $70, $70, $30
	dc.b $30, $10, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $c0, $80, $00, $00, $80, $c0, $f0, $00
slideshow_03_c_p4:
	dc.b $00, $fc, $de, $df, $df, $df, $8f, $ff
	dc.b $ff, $07, $07, $1f, $3f, $3f, $3f, $3f
	dc.b $7f, $7f, $7f, $7f, $7f, $ff, $f3, $f3
	dc.b $e3, $e7, $c7, $8f, $1f, $3f, $7f, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $fe, $fc, $00
slideshow_03_c_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_03_c_ptr:
	dc.w slideshow_03_c_colbg
	dc.w slideshow_03_c_colfg
	dc.w slideshow_03_c_p0
	dc.w slideshow_03_c_p1
	dc.w slideshow_03_c_p2
	dc.w slideshow_03_c_p3
	dc.w slideshow_03_c_p4
	dc.w slideshow_03_c_p5

slideshow_04_a_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $80, $80, $c0, $c0, $c0
	dc.b $c0, $e0, $e0, $e0, $e0, $e0, $e0, $c0
	dc.b $c0, $c0, $c0, $80, $80, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_04_a_p1:
	dc.b $00, $00, $00, $01, $07, $0f, $1f, $3f
	dc.b $7f, $ff, $ff, $ff, $ff, $ff, $fe, $fd
	dc.b $eb, $f7, $fb, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f
	dc.b $3f, $1f, $0f, $07, $01, $00, $00, $00
slideshow_04_a_p2:
	dc.b $00, $e0, $fe, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $3f, $cf, $f3, $fd, $fe, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $fb, $f1, $f1, $f1, $f1, $f1, $f1
	dc.b $fb, $ff, $ff, $ff, $ff, $fe, $e0, $00
slideshow_04_a_p3:
	dc.b $00, $70, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $c0, $30, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $70, $00
slideshow_04_a_p4:
	dc.b $00, $00, $e0, $f8, $fe, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $3f, $df, $ef, $f7, $fb
	dc.b $fd, $fe, $fd, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $bf, $1f, $1f, $1f, $1f, $1f, $1f
	dc.b $bf, $ff, $ff, $fe, $f8, $e0, $00, $00
slideshow_04_a_p5:
	dc.b $00, $00, $00, $00, $00, $00, $01, $03
	dc.b $07, $0f, $0f, $1f, $1f, $3f, $3f, $3f
	dc.b $3e, $7f, $7f, $7f, $7f, $7f, $7f, $3f
	dc.b $3f, $3f, $3f, $1f, $1f, $0f, $0f, $07
	dc.b $03, $01, $00, $00, $00, $00, $00, $00
slideshow_04_a_ptr:
	dc.w slideshow_04_a_colbg
	dc.w slideshow_04_a_colfg
	dc.w slideshow_04_a_p0
	dc.w slideshow_04_a_p1
	dc.w slideshow_04_a_p2
	dc.w slideshow_04_a_p3
	dc.w slideshow_04_a_p4
	dc.w slideshow_04_a_p5

slideshow_04_b_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $80, $80, $c0, $c0, $c0
	dc.b $c0, $e0, $e0, $e0, $e0, $e0, $e0, $c0
	dc.b $c0, $c0, $c0, $80, $80, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_04_b_p1:
	dc.b $00, $00, $00, $01, $07, $0f, $1f, $3f
	dc.b $7f, $ff, $ff, $ff, $ff, $ff, $fe, $fd
	dc.b $eb, $f7, $fb, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $7f
	dc.b $3f, $1f, $0f, $07, $01, $00, $00, $00
slideshow_04_b_p2:
	dc.b $00, $e0, $fe, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $3f, $cf, $f3, $fd, $fe, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $fb, $f1, $fb, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $fe, $e0, $00
slideshow_04_b_p3:
	dc.b $00, $70, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $c0, $30, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $70, $00
slideshow_04_b_p4:
	dc.b $00, $00, $e0, $f8, $fe, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $3f, $df, $ef, $f7, $fb
	dc.b $fd, $fe, $fd, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $bf, $1f, $1f, $1f, $1f, $1f, $1f
	dc.b $bf, $ff, $ff, $fe, $f8, $e0, $00, $00
slideshow_04_b_p5:
	dc.b $00, $00, $00, $00, $00, $00, $01, $03
	dc.b $07, $0f, $0f, $1f, $1f, $3f, $3f, $3f
	dc.b $3e, $7f, $7f, $7f, $7f, $7f, $7f, $3f
	dc.b $3f, $3f, $3f, $1f, $1f, $0f, $0f, $07
	dc.b $03, $01, $00, $00, $00, $00, $00, $00
slideshow_04_b_ptr:
	dc.w slideshow_04_b_colbg
	dc.w slideshow_04_b_colfg
	dc.w slideshow_04_b_p0
	dc.w slideshow_04_b_p1
	dc.w slideshow_04_b_p2
	dc.w slideshow_04_b_p3
	dc.w slideshow_04_b_p4
	dc.w slideshow_04_b_p5

slideshow_05_p0:
	dc.b $00, $e0, $00, $00, $80, $40, $40, $40
	dc.b $80, $00, $00, $40, $40, $40, $40, $c0
	dc.b $00, $00, $40, $40, $c0, $40, $80, $00
	dc.b $00, $e0, $00, $00, $e0, $e0, $60, $60
	dc.b $60, $60, $60, $e0, $e0, $00, $00, $e0
slideshow_05_p1:
	dc.b $00, $ff, $00, $00, $9a, $a2, $b2, $22
	dc.b $9b, $00, $00, $99, $a2, $b2, $a2, $1a
	dc.b $00, $00, $91, $a9, $a9, $a9, $2b, $00
	dc.b $00, $ff, $00, $00, $e7, $f7, $36, $36
	dc.b $37, $36, $36, $f7, $e7, $00, $00, $ff
slideshow_05_p2:
	dc.b $00, $ff, $00, $00, $59, $45, $cd, $45
	dc.b $d8, $00, $00, $32, $55, $34, $54, $34
	dc.b $00, $00, $48, $54, $54, $d4, $49, $00
	dc.b $00, $ff, $00, $00, $e7, $f7, $30, $30
	dc.b $33, $30, $30, $f7, $e7, $00, $00, $ff
slideshow_05_p3:
	dc.b $00, $f0, $00, $00, $50, $50, $c0, $50
	dc.b $80, $00, $00, $60, $10, $30, $10, $60
	dc.b $00, $00, $40, $40, $50, $60, $40, $00
	dc.b $00, $f0, $00, $00, $30, $70, $40, $00
	dc.b $00, $00, $40, $70, $30, $00, $00, $f0
slideshow_05_p4:
	dc.b $00, $ff, $00, $00, $91, $92, $92, $92
	dc.b $39, $00, $00, $a4, $a4, $e4, $a4, $4e
	dc.b $00, $00, $a4, $a4, $e4, $a4, $4e, $00
	dc.b $00, $ff, $00, $00, $c6, $c6, $c6, $fe
	dc.b $6c, $6c, $6c, $38, $10, $00, $00, $ff
slideshow_05_p5:
	dc.b $00, $7f, $00, $00, $14, $15, $0d, $15
	dc.b $0c, $00, $00, $7f, $7f, $77, $7f, $7f
	dc.b $00, $00, $19, $05, $05, $05, $19, $00
	dc.b $00, $7f, $00, $00, $03, $03, $03, $3f
	dc.b $7f, $43, $43, $7f, $3f, $00, $00, $7f
slideshow_05_ptr:
	dc.w slideshow_05_colbg
	dc.w slideshow_05_colfg
	dc.w slideshow_05_p0
	dc.w slideshow_05_p1
	dc.w slideshow_05_p2
	dc.w slideshow_05_p3
	dc.w slideshow_05_p4
	dc.w slideshow_05_p5

slideshow_06_a_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $20, $40, $c0, $a0, $80, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_06_a_p1:
	dc.b $00, $00, $00, $00, $04, $02, $03, $05
	dc.b $01, $00, $00, $88, $50, $70, $a8, $20
	dc.b $00, $00, $40, $80, $80, $40, $00, $00
	dc.b $00, $88, $50, $70, $a8, $20, $00, $04
	dc.b $02, $03, $05, $01, $00, $00, $00, $00
slideshow_06_a_p2:
	dc.b $00, $20, $40, $c0, $a2, $81, $01, $02
	dc.b $00, $00, $c0, $f0, $f8, $3c, $1c, $1c
	dc.b $0e, $0e, $0e, $07, $07, $07, $0e, $0e
	dc.b $1e, $1c, $3c, $f8, $f0, $c0, $00, $02
	dc.b $01, $01, $22, $40, $c0, $a0, $80, $00
slideshow_06_a_p3:
	dc.b $00, $20, $10, $10, $20, $00, $00, $00
	dc.b $00, $00, $10, $70, $f0, $e0, $c0, $c0
	dc.b $80, $80, $00, $00, $00, $00, $80, $80
	dc.b $c0, $c0, $e0, $f0, $70, $10, $00, $00
	dc.b $00, $00, $20, $10, $10, $20, $00, $00
slideshow_06_a_p4:
	dc.b $00, $00, $00, $00, $44, $28, $38, $54
	dc.b $10, $00, $00, $01, $00, $80, $81, $80
	dc.b $c0, $c0, $00, $00, $00, $00, $c0, $c0
	dc.b $80, $81, $80, $00, $01, $00, $00, $44
	dc.b $28, $38, $54, $10, $00, $00, $00, $00
slideshow_06_a_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $08, $05, $07, $0a, $02
	dc.b $00, $00, $44, $28, $38, $54, $10, $00
	dc.b $00, $08, $05, $07, $0a, $02, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_06_a_ptr:
	dc.w slideshow_06_a_colbg
	dc.w slideshow_06_a_colfg
	dc.w slideshow_06_a_p0
	dc.w slideshow_06_a_p1
	dc.w slideshow_06_a_p2
	dc.w slideshow_06_a_p3
	dc.w slideshow_06_a_p4
	dc.w slideshow_06_a_p5

slideshow_06_b_p0:
	dc.b $20, $40, $80, $00, $00, $00, $00, $00
	dc.b $00, $00, $c0, $e0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $00, $f0, $e0, $d0, $b0
	dc.b $70, $f0, $f0, $f0, $f0, $f0, $70, $70
	dc.b $70, $d0, $d0, $90, $50, $90, $f0, $f0
slideshow_06_b_p1:
	dc.b $00, $00, $00, $80, $40, $20, $10, $08
	dc.b $08, $f6, $f9, $fe, $df, $ef, $f1, $f6
	dc.b $f7, $fb, $3d, $ce, $e7, $9b, $75, $f6
	dc.b $c7, $3b, $fd, $fe, $ff, $7b, $f7, $73
	dc.b $d6, $5a, $de, $8f, $ff, $ff, $ff, $ff
slideshow_06_b_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $c0, $e0, $70, $83, $bc, $bb, $d7, $d6
	dc.b $d9, $df, $c7, $db, $f8, $f5, $f3, $f3
	dc.b $f2, $f9, $ed, $d6, $d9, $1f, $0f, $0f
	dc.b $f7, $fb, $fb, $fa, $fb, $e7, $1f, $ff
slideshow_06_b_p3:
	dc.b $00, $00, $00, $00, $00, $e0, $f0, $f0
	dc.b $30, $c0, $f0, $f0, $30, $d0, $60, $e0
	dc.b $00, $f0, $f0, $70, $f0, $f0, $f0, $f0
	dc.b $90, $40, $00, $f0, $00, $00, $00, $00
	dc.b $30, $10, $90, $90, $90, $10, $30, $00
slideshow_06_b_p4:
	dc.b $40, $41, $42, $44, $48, $fc, $fe, $ff
	dc.b $07, $f9, $fe, $ff, $07, $fb, $0d, $fd
	dc.b $01, $ff, $ff, $ef, $bf, $7f, $7f, $bf
	dc.b $b3, $e5, $e1, $ff, $01, $00, $00, $00
	dc.b $07, $e3, $13, $03, $13, $e3, $06, $01
slideshow_06_b_p5:
	dc.b $00, $01, $06, $08, $10, $20, $40, $40
	dc.b $41, $e3, $07, $b0, $fe, $fe, $fd, $fd
	dc.b $fd, $fd, $f1, $ed, $ef, $d7, $d7, $d7
	dc.b $a7, $af, $bb, $b5, $cd, $fc, $f8, $f8
	dc.b $f7, $ef, $ef, $ef, $ef, $f3, $fc, $ff
slideshow_06_b_ptr:
	dc.w slideshow_06_b_colbg
	dc.w slideshow_06_b_colfg
	dc.w slideshow_06_b_p0
	dc.w slideshow_06_b_p1
	dc.w slideshow_06_b_p2
	dc.w slideshow_06_b_p3
	dc.w slideshow_06_b_p4
	dc.w slideshow_06_b_p5

	ALIGN 256
slideshow_01_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_01_a_colfg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $2c
	dc.b $2c, $2c, $2c, $2c, $00, $00, $2c, $2c
	dc.b $2c, $2c, $2c, $00, $00, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $00, $00, $00, $00, $00

slideshow_01_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_01_b_colfg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $2c
	dc.b $2c, $2c, $2c, $2c, $00, $00, $2c, $2c
	dc.b $2c, $2c, $2c, $00, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $00, $00, $00, $00, $00, $00

slideshow_02_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_02_colfg:
	dc.b $00, $00, $00, $00, $00, $00, $c6, $c6
	dc.b $c6, $98, $98, $56, $56, $2c, $2c, $24
	dc.b $24, $64, $64, $64, $00, $00, $9c, $9c
	dc.b $9c, $9c, $9c, $00, $00, $6c, $6c, $6c
	dc.b $6c, $6c, $00, $00, $00, $00, $00, $00

	ALIGN 256
slideshow_03_a_colbg:
	dc.b $d2, $d2, $d2, $d2, $d2, $d2, $d2, $d2
	dc.b $d2, $d2, $d2, $d2, $d2, $d2, $d2, $d2
	dc.b $d2, $d2, $d2, $d2, $d2, $d2, $d2, $d2
	dc.b $d2, $d2, $d2, $d2, $d2, $d2, $d2, $d2
	dc.b $d2, $d2, $d2, $d2, $d2, $d2, $d2, $d2
slideshow_03_a_colfg:
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $00

slideshow_03_b_colbg:
	dc.b $0e, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $0e
slideshow_03_b_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $00

slideshow_03_c_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_03_c_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $00

	ALIGN 256
slideshow_04_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_04_a_colfg:
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $00

slideshow_04_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_04_b_colfg:
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $00

slideshow_05_colbg:
	dc.b $92, $92, $92, $92, $92, $92, $92, $92
	dc.b $92, $92, $92, $92, $92, $92, $92, $92
	dc.b $92, $92, $92, $92, $92, $92, $92, $92
	dc.b $92, $92, $92, $92, $92, $92, $92, $92
	dc.b $92, $92, $92, $92, $92, $92, $92, $92
slideshow_05_colfg:
	dc.b $00, $66, $00, $00, $0e, $0e, $0e, $0e
	dc.b $0e, $00, $00, $5a, $5a, $5a, $5a, $5a
	dc.b $00, $00, $0e, $0e, $0e, $0e, $0e, $00
	dc.b $00, $66, $00, $00, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $00, $00, $66

	ALIGN 256
slideshow_06_a_colbg:
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
slideshow_06_a_colfg:
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $00, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $00, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $00

slideshow_06_b_colbg:
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
	dc.b $b4, $b4, $b4, $b4, $b4, $b4, $b4, $b4
slideshow_06_b_colfg:
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c

