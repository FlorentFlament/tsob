	ALIGN 256 ; In case, but file should be included at the begining of a bank
slideshow_12_b_p0:
	dc.b $00, $00, $00, $00, $80, $40, $40, $c0
	dc.b $40, $80, $00, $00, $80, $40, $40, $80
	dc.b $00, $00, $80, $40, $40, $c0, $80, $00
	dc.b $40, $40, $c0, $40, $80, $00, $80, $40
	dc.b $00, $80, $40, $80, $00, $00, $00, $00
slideshow_12_b_p1:
	dc.b $03, $03, $02, $02, $e2, $12, $02, $c2
	dc.b $12, $e3, $03, $e3, $13, $03, $03, $13
	dc.b $e3, $03, $23, $13, $13, $f3, $23, $c3
	dc.b $03, $03, $e3, $13, $e3, $03, $e3, $13
	dc.b $13, $e3, $03, $f3, $03, $03, $03, $03
slideshow_12_b_p2:
	dc.b $ff, $fe, $fc, $bc, $1c, $18, $14, $64
	dc.b $04, $02, $81, $41, $43, $47, $4f, $1f
	dc.b $3f, $df, $df, $1f, $1f, $1f, $1f, $ef
	dc.b $ef, $0f, $0f, $0f, $0f, $df, $df, $1f
	dc.b $1f, $1f, $1f, $3f, $3f, $7f, $ff, $ff
slideshow_12_b_p3:
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $80
	dc.b $30, $00, $40, $80, $80, $80, $80, $00
	dc.b $00, $10, $10, $00, $e0, $e0, $00, $10
	dc.b $10, $00, $e0, $e0, $00, $10, $10, $00
	dc.b $e0, $e0, $00, $00, $00, $80, $c0, $f0
slideshow_12_b_p4:
	dc.b $ff, $fb, $f1, $f1, $f1, $e1, $d1, $91
	dc.b $11, $0b, $07, $07, $0f, $1f, $3f, $7f
	dc.b $ff, $7f, $7f, $7f, $7f, $7f, $7f, $3f
	dc.b $3f, $3f, $bf, $bf, $3f, $7f, $7f, $7f
	dc.b $7f, $7f, $7f, $ff, $ff, $ff, $ff, $ff
slideshow_12_b_p5:
	dc.b $ff, $e1, $c0, $c0, $d8, $d8, $e1, $ff
	dc.b $e0, $c0, $c0, $d8, $d8, $e0, $ff, $c1
	dc.b $c0, $f8, $f8, $f8, $f8, $f8, $ff, $f1
	dc.b $f1, $f1, $f1, $f1, $ff, $f1, $e0, $f1
	dc.b $ff, $e0, $c0, $c0, $d8, $d8, $e0, $ff
slideshow_12_b_ptr:
	dc.w slideshow_12_b_colbg
	dc.w slideshow_12_b_colfg
	dc.w slideshow_12_b_p0
	dc.w slideshow_12_b_p1
	dc.w slideshow_12_b_p2
	dc.w slideshow_12_b_p3
	dc.w slideshow_12_b_p4
	dc.w slideshow_12_b_p5

slideshow_13_a_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $70, $70, $b0, $b0, $d0, $d0, $d0, $d0
	dc.b $d0, $d0, $b0, $b0, $b0, $b0, $70, $70
	dc.b $70, $f0, $f0, $f0, $f0, $f0, $f0, $70
	dc.b $70, $70, $b0, $b0, $d0, $50, $90, $00
slideshow_13_a_p1:
	dc.b $00, $ff, $ff, $ff, $f0, $cf, $bf, $7f
	dc.b $ff, $ff, $ff, $fe, $fd, $c3, $fb, $fb
	dc.b $fb, $fb, $fd, $fe, $fe, $fd, $fd, $fb
	dc.b $fb, $7d, $65, $a2, $61, $61, $40, $c7
	dc.b $9c, $b3, $cf, $bf, $7f, $ff, $ff, $00
slideshow_13_a_p2:
	dc.b $00, $1f, $e7, $f8, $ff, $ff, $ff, $ff
	dc.b $ff, $07, $f9, $fe, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $fe, $f9, $03, $43, $83
	dc.b $67, $bf, $bf, $df, $e0, $ff, $f9, $c6
	dc.b $3f, $ff, $ff, $ff, $ff, $ff, $ff, $00
slideshow_13_a_p3:
	dc.b $00, $00, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $00, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $00, $a0, $d0
	dc.b $e0, $d0, $d0, $b0, $70, $f0, $f0, $30
	dc.b $c0, $f0, $f0, $f0, $f0, $f0, $f0, $00
slideshow_13_a_p4:
	dc.b $00, $ff, $3f, $cf, $f0, $ff, $ff, $ff
	dc.b $ff, $7f, $9f, $e7, $fb, $fc, $fd, $fd
	dc.b $fd, $fd, $fb, $e7, $87, $03, $83, $c5
	dc.b $fd, $fb, $fa, $f4, $08, $f8, $90, $6c
	dc.b $f3, $fc, $ff, $ff, $ff, $ff, $ff, $00
slideshow_13_a_p5:
	dc.b $00, $ff, $ff, $ff, $ff, $fc, $fb, $f7
	dc.b $ef, $ef, $df, $df, $bf, $bc, $bf, $bf
	dc.b $bf, $bf, $df, $df, $df, $df, $ef, $ef
	dc.b $ef, $f7, $f6, $fa, $f6, $f6, $f4, $ec
	dc.b $e8, $eb, $dc, $db, $b7, $af, $9f, $00
slideshow_13_a_ptr:
	dc.w slideshow_13_a_colbg
	dc.w slideshow_13_a_colfg
	dc.w slideshow_13_a_p0
	dc.w slideshow_13_a_p1
	dc.w slideshow_13_a_p2
	dc.w slideshow_13_a_p3
	dc.w slideshow_13_a_p4
	dc.w slideshow_13_a_p5

slideshow_13_b_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $70, $70, $b0, $b0, $d0, $d0, $d0, $d0
	dc.b $d0, $d0, $b0, $b0, $b0, $b0, $70, $70
	dc.b $70, $f0, $f0, $f0, $f0, $f0, $f0, $70
	dc.b $70, $70, $b0, $b0, $d0, $50, $90, $00
slideshow_13_b_p1:
	dc.b $00, $ff, $ff, $ff, $f0, $cf, $bf, $7f
	dc.b $ff, $ff, $ff, $fe, $fd, $c3, $fb, $fb
	dc.b $fb, $fb, $fd, $fe, $fe, $fc, $fc, $fa
	dc.b $fb, $7d, $65, $a2, $61, $61, $40, $c7
	dc.b $9c, $b3, $cf, $bf, $7f, $ff, $ff, $00
slideshow_13_b_p2:
	dc.b $00, $1f, $e7, $f8, $ff, $ff, $ff, $ff
	dc.b $ff, $07, $f9, $fe, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $fe, $f8, $00, $58, $bc
	dc.b $7f, $bf, $bf, $df, $e0, $ff, $f9, $c6
	dc.b $3f, $ff, $ff, $ff, $ff, $ff, $ff, $00
slideshow_13_b_p3:
	dc.b $00, $00, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $00, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $00, $20, $10
	dc.b $60, $d0, $d0, $b0, $70, $f0, $f0, $30
	dc.b $c0, $f0, $f0, $f0, $f0, $f0, $f0, $00
slideshow_13_b_p4:
	dc.b $00, $ff, $3f, $cf, $f0, $ff, $ff, $ff
	dc.b $ff, $7f, $9f, $e7, $fb, $fc, $fd, $fd
	dc.b $fd, $fd, $fb, $e7, $97, $3b, $3b, $3d
	dc.b $7d, $fb, $fa, $f4, $08, $f8, $90, $6c
	dc.b $f3, $fc, $ff, $ff, $ff, $ff, $ff, $00
slideshow_13_b_p5:
	dc.b $00, $ff, $ff, $ff, $ff, $fc, $fb, $f7
	dc.b $ef, $ef, $df, $df, $bf, $bc, $bf, $bf
	dc.b $bf, $bf, $df, $df, $df, $df, $ef, $ef
	dc.b $ef, $f7, $f6, $fa, $f6, $f6, $f4, $ec
	dc.b $e8, $eb, $dc, $db, $b7, $af, $9f, $00
slideshow_13_b_ptr:
	dc.w slideshow_13_b_colbg
	dc.w slideshow_13_b_colfg
	dc.w slideshow_13_b_p0
	dc.w slideshow_13_b_p1
	dc.w slideshow_13_b_p2
	dc.w slideshow_13_b_p3
	dc.w slideshow_13_b_p4
	dc.w slideshow_13_b_p5

slideshow_14_a_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $80, $80, $80
	dc.b $80, $80, $80, $80, $00, $00, $00, $f0
	dc.b $f0, $f0, $f0, $00, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $00, $f0, $f0, $f0, $00, $00
slideshow_14_a_p1:
	dc.b $00, $00, $01, $0e, $18, $22, $24, $44
	dc.b $40, $40, $a0, $93, $80, $00, $00, $00
	dc.b $00, $00, $00, $00, $80, $80, $80, $bf
	dc.b $bf, $bf, $df, $10, $ef, $f7, $fb, $fd
	dc.b $fe, $ff, $00, $ff, $ff, $ff, $00, $00
slideshow_14_a_p2:
	dc.b $00, $00, $e7, $1c, $01, $00, $00, $00
	dc.b $00, $00, $02, $01, $c1, $81, $01, $01
	dc.b $02, $02, $80, $08, $c8, $08, $70, $fd
	dc.b $03, $ff, $ff, $80, $ff, $ff, $ff, $ff
	dc.b $ff, $fe, $02, $f3, $cf, $3f, $00, $00
slideshow_14_a_p3:
	dc.b $00, $00, $f0, $00, $80, $40, $20, $00
	dc.b $c0, $c0, $c0, $00, $00, $00, $00, $00
	dc.b $00, $10, $00, $00, $10, $00, $00, $f0
	dc.b $e0, $f0, $10, $10, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $00, $f0, $f0, $00, $00, $00
slideshow_14_a_p4:
	dc.b $00, $00, $c0, $10, $c4, $21, $18, $04
	dc.b $1e, $fe, $ff, $06, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $e0, $e7
	dc.b $df, $df, $07, $01, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $00, $fc, $f3, $0f, $00, $00
slideshow_14_a_p5:
	dc.b $00, $00, $00, $00, $00, $00, $01, $02
	dc.b $02, $04, $04, $08, $08, $0a, $08, $08
	dc.b $04, $02, $00, $00, $00, $00, $00, $ff
	dc.b $ff, $ff, $ff, $01, $fd, $fb, $f7, $f7
	dc.b $f7, $fb, $02, $ff, $ff, $ff, $00, $00
slideshow_14_a_ptr:
	dc.w slideshow_14_a_colbg
	dc.w slideshow_14_a_colfg
	dc.w slideshow_14_a_p0
	dc.w slideshow_14_a_p1
	dc.w slideshow_14_a_p2
	dc.w slideshow_14_a_p3
	dc.w slideshow_14_a_p4
	dc.w slideshow_14_a_p5

slideshow_14_b_p0:
	dc.b $f0, $00, $c0, $30, $e0, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $c0, $40, $40
	dc.b $00, $c0, $40, $c0, $00, $c0, $00, $00
	dc.b $00, $c0, $00, $c0, $40, $c0, $00, $c0
	dc.b $40, $c0, $00, $c0, $80, $c0, $00, $00
slideshow_14_b_p1:
	dc.b $f3, $00, $ff, $78, $97, $ef, $5f, $5f
	dc.b $6f, $37, $19, $0e, $02, $e2, $22, $22
	dc.b $06, $e5, $25, $e5, $05, $e4, $24, $46
	dc.b $25, $e5, $06, $e3, $a1, $61, $01, $e1
	dc.b $21, $e0, $00, $01, $e1, $01, $01, $00
slideshow_14_b_p2:
	dc.b $ff, $00, $ff, $e0, $1f, $ff, $ff, $ff
	dc.b $ff, $c7, $bb, $7d, $71, $6f, $9b, $f5
	dc.b $fe, $fd, $fd, $9b, $2f, $0c, $f9, $14
	dc.b $fb, $fc, $ff, $fe, $19, $e6, $fe, $1e
	dc.b $ed, $6d, $5b, $d9, $be, $be, $dd, $63
slideshow_14_b_p3:
	dc.b $f0, $00, $f0, $f0, $e0, $10, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $70, $f0, $f0, $70, $90, $b0, $60, $f0
	dc.b $f0, $f0, $70, $90, $e0, $f0, $70, $80
	dc.b $f0, $00, $00, $00, $00, $00, $00, $00
slideshow_14_b_p4:
	dc.b $fb, $00, $ff, $87, $f8, $ff, $1f, $ef
	dc.b $ef, $df, $de, $bd, $7d, $fd, $9d, $6d
	dc.b $dd, $5d, $db, $e2, $6a, $9a, $fa, $7a
	dc.b $7a, $7a, $fa, $f6, $ec, $98, $70, $c0
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_14_b_p5:
	dc.b $ff, $00, $ff, $7f, $be, $d9, $6f, $37
	dc.b $1b, $0d, $06, $03, $00, $00, $00, $3e
	dc.b $08, $08, $08, $3e, $00, $3e, $2a, $2a
	dc.b $22, $22, $00, $3e, $04, $08, $10, $3e
	dc.b $00, $3e, $08, $08, $14, $22, $00, $00
slideshow_14_b_ptr:
	dc.w slideshow_14_b_colbg
	dc.w slideshow_14_b_colfg
	dc.w slideshow_14_b_p0
	dc.w slideshow_14_b_p1
	dc.w slideshow_14_b_p2
	dc.w slideshow_14_b_p3
	dc.w slideshow_14_b_p4
	dc.w slideshow_14_b_p5

slideshow_15_a_p0:
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $00, $00, $10, $d0
	dc.b $30, $b0, $70, $f0, $00, $00, $70, $70
	dc.b $f0, $f0, $f0, $f0, $00, $00, $00, $80
	dc.b $40, $20, $20, $20, $40, $80, $00, $00
slideshow_15_a_p1:
	dc.b $f2, $f2, $f4, $f8, $fe, $fe, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $00, $00, $5b, $d8
	dc.b $6a, $e3, $f7, $17, $00, $00, $2d, $ed
	dc.b $71, $75, $bb, $bb, $00, $00, $00, $ae
	dc.b $64, $e4, $03, $22, $61, $81, $00, $00
slideshow_15_a_p2:
	dc.b $3f, $8f, $f7, $f7, $e7, $0e, $fc, $71
	dc.b $03, $07, $33, $9f, $00, $00, $1f, $df
	dc.b $be, $be, $7e, $7d, $00, $00, $59, $d6
	dc.b $22, $be, $6d, $73, $00, $00, $00, $77
	dc.b $92, $82, $61, $11, $90, $e0, $00, $00
slideshow_15_a_p3:
	dc.b $80, $70, $f0, $f0, $70, $50, $20, $00
	dc.b $00, $80, $b0, $f0, $00, $00, $60, $50
	dc.b $b0, $b0, $d0, $c0, $00, $00, $b0, $a0
	dc.b $40, $60, $70, $f0, $00, $00, $00, $c0
	dc.b $80, $80, $80, $80, $a0, $e0, $00, $00
slideshow_15_a_p4:
	dc.b $f2, $f1, $62, $e1, $61, $80, $03, $01
	dc.b $00, $c2, $97, $6f, $00, $00, $17, $f7
	dc.b $77, $1a, $ba, $8d, $00, $00, $be, $bd
	dc.b $de, $22, $ef, $11, $00, $00, $00, $8e
	dc.b $11, $11, $11, $11, $51, $ce, $00, $00
slideshow_15_a_p5:
	dc.b $fe, $fd, $fc, $ff, $ff, $ff, $fe, $ff
	dc.b $ff, $ff, $ff, $ff, $00, $00, $c6, $ba
	dc.b $b5, $b5, $b5, $ce, $00, $00, $fc, $ff
	dc.b $fb, $fc, $fe, $e1, $00, $00, $00, $77
	dc.b $22, $32, $2a, $26, $22, $77, $00, $00
slideshow_15_a_ptr:
	dc.w slideshow_15_a_colbg
	dc.w slideshow_15_a_colfg
	dc.w slideshow_15_a_p0
	dc.w slideshow_15_a_p1
	dc.w slideshow_15_a_p2
	dc.w slideshow_15_a_p3
	dc.w slideshow_15_a_p4
	dc.w slideshow_15_a_p5

slideshow_15_b_p0:
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $30
	dc.b $d0, $e0, $60, $a0, $20, $a0, $a0, $e0
	dc.b $10, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
slideshow_15_b_p1:
	dc.b $84, $82, $82, $c3, $c1, $c0, $c0, $e0
	dc.b $f8, $fe, $ff, $ff, $ff, $f8, $07, $f7
	dc.b $ef, $0f, $df, $9f, $9f, $9f, $9f, $1f
	dc.b $1f, $9e, $9e, $1f, $8f, $c7, $e1, $f0
	dc.b $f8, $f2, $ff, $fe, $f8, $ff, $ff, $ff
slideshow_15_b_p2:
	dc.b $00, $00, $00, $00, $00, $00, $00, $f8
	dc.b $04, $00, $3b, $c3, $fc, $0f, $07, $0f
	dc.b $9f, $ff, $ff, $7f, $87, $fb, $fd, $fe
	dc.b $fe, $ff, $ff, $fe, $7d, $bb, $87, $7e
	dc.b $00, $00, $00, $1c, $8e, $c7, $ff, $ff
slideshow_15_b_p3:
	dc.b $00, $00, $00, $80, $00, $00, $00, $30
	dc.b $40, $00, $80, $30, $f0, $f0, $e0, $f0
	dc.b $f0, $f0, $f0, $00, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $70, $80, $70, $40, $40, $d0
	dc.b $70, $00, $00, $70, $30, $f0, $30, $f0
slideshow_15_b_p4:
	dc.b $83, $83, $83, $07, $07, $0f, $0f, $1f
	dc.b $1f, $3f, $88, $00, $81, $e7, $f2, $f1
	dc.b $f8, $f8, $fc, $fc, $7c, $be, $de, $ee
	dc.b $ee, $dc, $7c, $b0, $40, $40, $c0, $80
	dc.b $00, $18, $78, $71, $63, $ce, $3e, $fd
slideshow_15_b_p5:
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $f8, $e7, $cd, $da, $dd
	dc.b $ce, $e7, $b0, $d8, $c0, $e0, $f0, $d8
	dc.b $e0, $f8, $e0, $c0, $9c, $78, $f0, $e0
	dc.b $c9, $c9, $d9, $fd, $fc, $fe, $ff, $ff
slideshow_15_b_ptr:
	dc.w slideshow_15_b_colbg
	dc.w slideshow_15_b_colfg
	dc.w slideshow_15_b_p0
	dc.w slideshow_15_b_p1
	dc.w slideshow_15_b_p2
	dc.w slideshow_15_b_p3
	dc.w slideshow_15_b_p4
	dc.w slideshow_15_b_p5

slideshow_16_a_p0:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $70, $30, $30
	dc.b $70, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $00, $00, $00
slideshow_16_a_p1:
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $fe, $fc, $fc, $fc
	dc.b $fc, $fe, $fe, $9f, $0f, $67, $f3, $f3
	dc.b $67, $e7, $cc, $9c, $26, $32, $82, $c7
	dc.b $ff, $fe, $fe, $ff, $ff, $00, $00, $00
slideshow_16_a_p2:
	dc.b $00, $7f, $3f, $1f, $9f, $0f, $47, $07
	dc.b $13, $f3, $01, $00, $f0, $e6, $cf, $1f
	dc.b $3f, $fe, $fe, $fc, $f9, $c3, $07, $3f
	dc.b $ff, $ef, $cf, $c7, $c6, $c2, $c2, $c8
	dc.b $48, $4e, $5e, $5f, $ff, $00, $00, $00
slideshow_16_a_p3:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $e0, $e0
	dc.b $f0, $f0, $80, $00, $70, $70, $70, $00
	dc.b $80, $f0, $f0, $f0, $f0, $10, $00, $e0
	dc.b $f0, $f0, $f0, $f0, $f0, $d0, $80, $00
	dc.b $20, $60, $60, $60, $40, $00, $00, $00
slideshow_16_a_p4:
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $7f, $7f, $7f, $ff
	dc.b $ff, $ef, $cf, $9f, $3f, $7e, $fc, $fc
	dc.b $8e, $03, $33, $9e, $9c, $cc, $ce, $4f
	dc.b $4f, $4f, $67, $67, $7f, $00, $00, $00
slideshow_16_a_p5:
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $fc, $f8, $f3, $f3
	dc.b $f9, $f9, $fc, $fe, $f3, $e7, $e6, $e0
	dc.b $f1, $ff, $ff, $ff, $ff, $00, $00, $00
slideshow_16_a_ptr:
	dc.w slideshow_16_a_colbg
	dc.w slideshow_16_a_colfg
	dc.w slideshow_16_a_p0
	dc.w slideshow_16_a_p1
	dc.w slideshow_16_a_p2
	dc.w slideshow_16_a_p3
	dc.w slideshow_16_a_p4
	dc.w slideshow_16_a_p5

slideshow_16_b_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_b_p1:
	dc.b $00, $22, $22, $2a, $36, $22, $00, $00
	dc.b $00, $1c, $02, $01, $00, $00, $00, $60
	dc.b $18, $04, $03, $00, $00, $00, $01, $0e
	dc.b $30, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $06, $08, $08, $08, $06, $00
slideshow_16_b_p2:
	dc.b $00, $65, $55, $57, $15, $62, $00, $00
	dc.b $80, $c0, $e0, $e0, $e1, $f0, $f0, $f0
	dc.b $f0, $70, $70, $70, $78, $78, $78, $f8
	dc.b $f0, $f0, $e0, $f0, $f0, $b0, $30, $10
	dc.b $00, $00, $95, $55, $57, $45, $95, $00
slideshow_16_b_p3:
	dc.b $00, $90, $50, $50, $40, $90, $00, $00
	dc.b $10, $30, $70, $60, $60, $60, $60, $e0
	dc.b $e0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $b0, $b0, $90
	dc.b $00, $00, $90, $40, $40, $40, $90, $00
slideshow_16_b_p4:
	dc.b $00, $c9, $d5, $55, $55, $95, $00, $00
	dc.b $01, $02, $0c, $10, $00, $00, $00, $01
	dc.b $06, $18, $00, $00, $00, $8c, $83, $80
	dc.b $80, $80, $80, $80, $00, $80, $80, $00
	dc.b $00, $00, $22, $a6, $aa, $b2, $22, $00
slideshow_16_b_p5:
	dc.b $00, $03, $00, $01, $00, $03, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $03
	dc.b $00, $00, $00, $00, $00, $00, $00, $01
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_b_ptr:
	dc.w slideshow_16_b_colbg
	dc.w slideshow_16_b_colfg
	dc.w slideshow_16_b_p0
	dc.w slideshow_16_b_p1
	dc.w slideshow_16_b_p2
	dc.w slideshow_16_b_p3
	dc.w slideshow_16_b_p4
	dc.w slideshow_16_b_p5

slideshow_16_c_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_c_p1:
	dc.b $00, $22, $22, $2a, $36, $22, $00, $00
	dc.b $04, $02, $01, $00, $00, $00, $00, $1c
	dc.b $03, $00, $00, $00, $00, $01, $06, $08
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $06, $08, $08, $08, $06, $00
slideshow_16_c_p2:
	dc.b $00, $65, $55, $57, $15, $62, $00, $00
	dc.b $00, $80, $c1, $c2, $c0, $c0, $c0, $e0
	dc.b $e0, $e3, $e0, $e0, $e0, $f1, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $e0, $b0, $b0, $20
	dc.b $00, $00, $95, $55, $57, $45, $95, $00
slideshow_16_c_p3:
	dc.b $00, $90, $50, $50, $40, $90, $00, $00
	dc.b $30, $70, $f0, $e0, $e0, $e0, $e0, $e0
	dc.b $e0, $d0, $d0, $d0, $d0, $d0, $d0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $b0, $90, $10
	dc.b $00, $00, $90, $40, $40, $40, $90, $00
slideshow_16_c_p4:
	dc.b $00, $c9, $d5, $55, $55, $95, $00, $00
	dc.b $00, $01, $02, $04, $08, $80, $80, $80
	dc.b $80, $81, $86, $80, $c0, $c0, $c4, $c3
	dc.b $80, $80, $00, $80, $80, $80, $80, $80
	dc.b $00, $00, $22, $a6, $aa, $b2, $22, $00
slideshow_16_c_p5:
	dc.b $00, $03, $00, $01, $00, $03, $00, $00
	dc.b $00, $03, $00, $00, $00, $00, $00, $0c
	dc.b $03, $00, $00, $00, $00, $00, $00, $01
	dc.b $06, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_c_ptr:
	dc.w slideshow_16_c_colbg
	dc.w slideshow_16_c_colfg
	dc.w slideshow_16_c_p0
	dc.w slideshow_16_c_p1
	dc.w slideshow_16_c_p2
	dc.w slideshow_16_c_p3
	dc.w slideshow_16_c_p4
	dc.w slideshow_16_c_p5

slideshow_16_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $20, $90, $90, $90, $20, $00, $00
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_p1:
	dc.b $00, $4a, $aa, $aa, $aa, $ac, $00, $00
	dc.b $00, $94, $24, $a4, $20, $94, $00, $00
	dc.b $00, $ff, $fc, $f8, $f0, $e0, $e0, $c0
	dc.b $c0, $c0, $80, $80, $80, $00, $00, $22
	dc.b $22, $21, $10, $10, $11, $22, $10, $00
slideshow_16_p2:
	dc.b $00, $62, $a1, $a3, $a1, $62, $00, $00
	dc.b $00, $0a, $8a, $8a, $8a, $26, $00, $00
	dc.b $00, $f0, $c0, $80, $00, $00, $08, $1c
	dc.b $38, $78, $f0, $f0, $f0, $e0, $00, $04
	dc.b $04, $04, $09, $09, $08, $04, $08, $00
slideshow_16_p3:
	dc.b $00, $40, $20, $60, $20, $40, $00, $00
	dc.b $00, $50, $80, $d0, $40, $90, $00, $00
	dc.b $00, $f0, $f0, $f0, $f0, $e0, $c0, $80
	dc.b $00, $00, $10, $30, $f0, $f0, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_p4:
	dc.b $00, $89, $8a, $aa, $da, $89, $00, $00
	dc.b $00, $22, $42, $43, $62, $43, $00, $00
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $7f, $3f, $0f, $00, $c0, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_p5:
	dc.b $00, $04, $01, $01, $01, $00, $00, $00
	dc.b $00, $54, $94, $dc, $55, $88, $00, $00
	dc.b $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
	dc.b $ff, $ff, $ff, $ff, $f8, $f0, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_ptr:
	dc.w slideshow_16_colbg
	dc.w slideshow_16_colfg
	dc.w slideshow_16_p0
	dc.w slideshow_16_p1
	dc.w slideshow_16_p2
	dc.w slideshow_16_p3
	dc.w slideshow_16_p4
	dc.w slideshow_16_p5

	ALIGN 256
slideshow_12_b_colbg:
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
slideshow_12_b_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_13_a_colbg:
	dc.b $5a, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $5a
slideshow_13_a_colfg:
	dc.b $00, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $00

slideshow_13_b_colbg:
	dc.b $5a, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $5a
slideshow_13_b_colfg:
	dc.b $00, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $5a
	dc.b $5a, $5a, $5a, $5a, $5a, $5a, $5a, $00

	ALIGN 256
slideshow_14_a_colbg:
	dc.b $b8, $b8, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $b8, $b8
slideshow_14_a_colfg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $b8
	dc.b $b8, $b8, $b8, $00, $b8, $b8, $b8, $b8
	dc.b $b8, $b8, $00, $b8, $b8, $b8, $00, $00

slideshow_14_b_colbg:
	dc.b $00, $6c, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_14_b_colfg:
	dc.b $6c, $00, $6c, $6c, $6c, $6c, $6c, $6c
	dc.b $6c, $6c, $6c, $6c, $6c, $6c, $6c, $6c
	dc.b $6c, $6c, $6c, $6c, $6c, $6c, $6c, $6c
	dc.b $6c, $6c, $6c, $6c, $6c, $6c, $6c, $6c
	dc.b $6c, $6c, $6c, $6c, $6c, $6c, $6c, $6c

slideshow_15_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $98, $0e, $62, $62
	dc.b $62, $62, $62, $62, $0e, $0e, $62, $62
	dc.b $62, $62, $62, $62, $0e, $98, $98, $98
	dc.b $98, $98, $98, $98, $98, $98, $98, $98
slideshow_15_a_colfg:
	dc.b $98, $98, $98, $98, $98, $98, $98, $98
	dc.b $98, $98, $98, $98, $00, $00, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $00, $00, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $00, $00, $00, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $00, $00

	ALIGN 256
slideshow_15_b_colbg:
	dc.b $52, $52, $52, $52, $52, $52, $52, $52
	dc.b $52, $52, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_15_b_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_16_a_colbg:
	dc.b $2c, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $2c, $2c, $2c
slideshow_16_a_colfg:
	dc.b $00, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $2c, $2c, $2c, $00, $00, $00

slideshow_16_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_b_colfg:
	dc.b $00, $66, $66, $66, $66, $66, $00, $00
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $3e, $3e, $3a, $34, $38, $34, $38
	dc.b $00, $00, $66, $66, $66, $66, $66, $00

	ALIGN 256
slideshow_16_c_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_16_c_colfg:
	dc.b $00, $66, $66, $66, $66, $66, $00, $00
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $3e, $3e, $3a, $34, $38, $34, $38
	dc.b $00, $00, $66, $66, $66, $66, $66, $00

slideshow_16_colbg:
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $64, $64
slideshow_16_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $00, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $64, $64, $64, $64, $00, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $00

