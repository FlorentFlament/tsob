	ALIGN 256 ; In case, but file should be included at the begining of a bank
slideshow_17_a_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_17_a_p1:
	dc.b $00, $1f, $3c, $7a, $7a, $7b, $7c, $7f
	dc.b $40, $4f, $50, $5f, $5f, $5f, $5f, $5f
	dc.b $5f, $5f, $6f, $6e, $6c, $6c, $74, $74
	dc.b $7a, $7a, $7c, $7c, $7e, $7e, $7e, $7c
	dc.b $7f, $7f, $7f, $7f, $7f, $3f, $1f, $00
slideshow_17_a_p2:
	dc.b $00, $ff, $f5, $6f, $6f, $6f, $c7, $ff
	dc.b $00, $ff, $fc, $fd, $0b, $f3, $fb, $fd
	dc.b $26, $c6, $0e, $1f, $bf, $df, $be, $be
	dc.b $82, $c6, $be, $c2, $fe, $00, $00, $00
	dc.b $fe, $fe, $fe, $fe, $fe, $01, $ff, $00
slideshow_17_a_p3:
	dc.b $00, $f0, $60, $d0, $d0, $d0, $60, $f0
	dc.b $00, $f0, $f0, $f0, $80, $70, $f0, $f0
	dc.b $20, $10, $80, $c0, $e0, $f0, $f0, $f0
	dc.b $10, $10, $f0, $10, $f0, $00, $00, $00
	dc.b $f0, $f0, $f0, $f0, $f0, $00, $f0, $00
slideshow_17_a_p4:
	dc.b $00, $ff, $f7, $6b, $6b, $6b, $37, $ff
	dc.b $00, $fe, $c1, $bf, $bf, $7f, $7f, $bf
	dc.b $df, $df, $df, $ef, $e7, $e7, $e6, $e5
	dc.b $65, $e5, $cb, $4b, $c7, $0f, $0f, $07
	dc.b $df, $df, $df, $df, $df, $3f, $ff, $00
slideshow_17_a_p5:
	dc.b $70, $71, $03, $77, $77, $77, $07, $77
	dc.b $74, $74, $05, $75, $75, $75, $05, $75
	dc.b $75, $75, $06, $76, $76, $76, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $73, $01, $70
slideshow_17_a_ptr:
	dc.w slideshow_17_a_colbg
	dc.w slideshow_17_a_colfg
	dc.w slideshow_17_a_p0
	dc.w slideshow_17_a_p1
	dc.w slideshow_17_a_p2
	dc.w slideshow_17_a_p3
	dc.w slideshow_17_a_p4
	dc.w slideshow_17_a_p5

slideshow_17_b_p0:
	dc.b $00, $00, $80, $80, $80, $80, $80, $00
	dc.b $80, $80, $80, $80, $80, $00, $00, $00
	dc.b $00, $00, $00, $80, $80, $80, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_17_b_p1:
	dc.b $00, $00, $5c, $51, $59, $51, $9d, $00
	dc.b $49, $55, $55, $55, $89, $00, $00, $1f
	dc.b $20, $5f, $bf, $7f, $7f, $7f, $bf, $bf
	dc.b $5f, $2f, $11, $0e, $01, $00, $00, $00
	dc.b $f6, $f6, $c6, $c7, $c2, $c1, $00, $00
slideshow_17_b_p2:
	dc.b $00, $00, $05, $0a, $08, $08, $08, $00
	dc.b $aa, $02, $02, $02, $01, $00, $00, $30
	dc.b $4d, $b2, $7c, $7c, $be, $de, $1f, $ff
	dc.b $ff, $ff, $ff, $fc, $03, $fc, $00, $00
	dc.b $83, $83, $83, $83, $81, $80, $00, $00
slideshow_17_b_p3:
	dc.b $00, $00, $30, $50, $30, $50, $30, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $10, $10, $00, $f0, $00, $f0
	dc.b $f0, $f0, $f0, $30, $c0, $30, $00, $00
	dc.b $30, $70, $50, $30, $50, $30, $00, $00
slideshow_17_b_p4:
	dc.b $00, $00, $ea, $8a, $ce, $8a, $e4, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $01, $02, $0d, $73, $85, $3e, $ff
	dc.b $ff, $ff, $f8, $07, $f8, $00, $00, $00
	dc.b $cc, $cc, $cc, $cc, $cc, $de, $00, $00
slideshow_17_b_p5:
	dc.b $00, $00, $12, $02, $12, $12, $17, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $07, $08, $15, $15, $17, $17, $16
	dc.b $09, $06, $01, $00, $00, $00, $00, $00
	dc.b $0f, $0f, $03, $0f, $03, $0f, $00, $00
slideshow_17_b_ptr:
	dc.w slideshow_17_b_colbg
	dc.w slideshow_17_b_colfg
	dc.w slideshow_17_b_p0
	dc.w slideshow_17_b_p1
	dc.w slideshow_17_b_p2
	dc.w slideshow_17_b_p3
	dc.w slideshow_17_b_p4
	dc.w slideshow_17_b_p5

slideshow_18_a_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_18_a_p1:
	dc.b $00, $1f, $35, $75, $75, $75, $73, $7f
	dc.b $7f, $7f, $7f, $7f, $7f, $7f, $7e, $7e
	dc.b $7e, $7e, $7d, $7d, $7c, $7d, $7c, $7d
	dc.b $7c, $7d, $7d, $7d, $7c, $7c, $7e, $7e
	dc.b $7e, $7e, $7f, $7f, $7f, $3f, $1f, $00
slideshow_18_a_p2:
	dc.b $00, $ff, $99, $ea, $8a, $aa, $dc, $ff
	dc.b $ff, $07, $fb, $fd, $c6, $be, $63, $dd
	dc.b $fd, $fb, $f7, $ef, $7c, $ba, $3c, $db
	dc.b $3c, $ff, $ff, $ff, $fa, $a5, $57, $ae
	dc.b $fb, $47, $fe, $b9, $f7, $0f, $ff, $00
slideshow_18_a_p3:
	dc.b $00, $f0, $90, $e0, $e0, $e0, $e0, $f0
	dc.b $f0, $f0, $c0, $b0, $70, $f0, $d0, $d0
	dc.b $e0, $f0, $f0, $f0, $c0, $a0, $80, $f0
	dc.b $80, $f0, $f0, $70, $b0, $d0, $20, $d0
	dc.b $70, $90, $e0, $30, $f0, $00, $f0, $00
slideshow_18_a_p4:
	dc.b $00, $ff, $e5, $d7, $d7, $df, $e7, $ff
	dc.b $ff, $ff, $ff, $ff, $ff, $3f, $df, $ef
	dc.b $f7, $c7, $db, $d3, $d1, $9a, $ca, $dc
	dc.b $8e, $d6, $ba, $7e, $35, $6d, $dd, $b5
	dc.b $eb, $9b, $f7, $67, $9f, $7f, $ff, $00
slideshow_18_a_p5:
	dc.b $70, $71, $03, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $73, $01, $70
slideshow_18_a_ptr:
	dc.w slideshow_18_a_colbg
	dc.w slideshow_18_a_colfg
	dc.w slideshow_18_a_p0
	dc.w slideshow_18_a_p1
	dc.w slideshow_18_a_p2
	dc.w slideshow_18_a_p3
	dc.w slideshow_18_a_p4
	dc.w slideshow_18_a_p5

slideshow_18_b_p0:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $80, $80, $80, $00, $00
	dc.b $00, $00, $80, $c0, $e0, $60, $60, $c0
	dc.b $80, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $c0, $20, $e0, $20, $c0, $00
slideshow_18_b_p1:
	dc.b $00, $0e, $1f, $3b, $31, $33, $18, $0f
	dc.b $00, $70, $f8, $dd, $8d, $99, $c1, $60
	dc.b $30, $00, $c0, $e3, $77, $36, $66, $06
	dc.b $83, $c3, $00, $00, $6a, $8a, $ea, $8a
	dc.b $6c, $00, $52, $52, $52, $52, $67, $00
slideshow_18_b_p2:
	dc.b $00, $00, $38, $7d, $ed, $0c, $0c, $18
	dc.b $18, $00, $07, $8f, $dd, $41, $41, $c3
	dc.b $83, $00, $00, $01, $e3, $b7, $10, $10
	dc.b $30, $e0, $00, $00, $52, $52, $72, $52
	dc.b $27, $00, $aa, $aa, $6e, $aa, $64, $00
slideshow_18_b_p3:
	dc.b $00, $00, $00, $c0, $60, $60, $60, $60
	dc.b $c0, $00, $00, $70, $e0, $c0, $c0, $c0
	dc.b $70, $00, $00, $00, $10, $b0, $b0, $b0
	dc.b $b0, $90, $00, $00, $50, $50, $30, $50
	dc.b $30, $00, $40, $40, $40, $40, $e0, $00
slideshow_18_b_p4:
	dc.b $00, $00, $06, $cf, $ed, $6c, $6c, $64
	dc.b $c0, $03, $03, $39, $7d, $65, $65, $65
	dc.b $64, $20, $0c, $0e, $e6, $e7, $b6, $b6
	dc.b $96, $93, $90, $00, $46, $4a, $4a, $4a
	dc.b $ec, $00, $35, $55, $55, $55, $66, $00
slideshow_18_b_p5:
	dc.b $00, $06, $0e, $0c, $3d, $6d, $4d, $6d
	dc.b $1c, $00, $01, $01, $07, $0d, $09, $0d
	dc.b $07, $00, $00, $00, $00, $01, $03, $02
	dc.b $03, $01, $00, $00, $35, $45, $25, $15
	dc.b $63, $00, $06, $08, $04, $02, $0c, $00
slideshow_18_b_ptr:
	dc.w slideshow_18_b_colbg
	dc.w slideshow_18_b_colfg
	dc.w slideshow_18_b_p0
	dc.w slideshow_18_b_p1
	dc.w slideshow_18_b_p2
	dc.w slideshow_18_b_p3
	dc.w slideshow_18_b_p4
	dc.w slideshow_18_b_p5

slideshow_19_a_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_19_a_p1:
	dc.b $00, $1f, $3f, $6e, $6e, $6a, $64, $6e
	dc.b $7f, $70, $78, $7c, $7e, $7f, $7f, $7f
	dc.b $7f, $7f, $7f, $7e, $7e, $7e, $7e, $7e
	dc.b $7e, $7e, $7e, $7c, $7c, $7c, $7c, $7c
	dc.b $7e, $7e, $7f, $7f, $7f, $3f, $1f, $00
slideshow_19_a_p2:
	dc.b $00, $ff, $ff, $55, $55, $91, $55, $9b
	dc.b $ff, $00, $80, $00, $00, $f0, $f9, $fd
	dc.b $c6, $86, $0e, $1f, $bf, $df, $bf, $bf
	dc.b $83, $c6, $bc, $c4, $fc, $f8, $f8, $80
	dc.b $00, $00, $00, $01, $03, $07, $ff, $00
slideshow_19_a_p3:
	dc.b $00, $f0, $f0, $30, $d0, $d0, $d0, $30
	dc.b $f0, $00, $f0, $e0, $90, $70, $f0, $f0
	dc.b $10, $00, $80, $c0, $e0, $f0, $f0, $f0
	dc.b $10, $10, $f0, $10, $f0, $f0, $f0, $f0
	dc.b $80, $00, $00, $00, $00, $00, $f0, $00
slideshow_19_a_p4:
	dc.b $00, $ff, $ff, $f3, $f5, $f5, $f5, $f3
	dc.b $ff, $00, $81, $83, $c7, $cf, $5f, $bf
	dc.b $df, $df, $df, $ef, $ef, $ef, $ef, $ef
	dc.b $6f, $e7, $c7, $47, $c7, $c7, $87, $87
	dc.b $87, $8f, $8f, $1f, $3f, $7f, $ff, $00
slideshow_19_a_p5:
	dc.b $70, $71, $03, $76, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $73, $01, $70
slideshow_19_a_ptr:
	dc.w slideshow_19_a_colbg
	dc.w slideshow_19_a_colfg
	dc.w slideshow_19_a_p0
	dc.w slideshow_19_a_p1
	dc.w slideshow_19_a_p2
	dc.w slideshow_19_a_p3
	dc.w slideshow_19_a_p4
	dc.w slideshow_19_a_p5

slideshow_19_b_p0:
	dc.b $00, $d0, $d0, $d0, $d0, $d0, $d0, $50
	dc.b $90, $d0, $00, $00, $70, $70, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f0, $f0, $f0, $00
slideshow_19_b_p1:
	dc.b $00, $94, $94, $90, $94, $94, $94, $94
	dc.b $10, $99, $00, $00, $1e, $0f, $07, $87
	dc.b $c3, $e1, $e0, $e0, $e0, $a0, $80, $80
	dc.b $c0, $c0, $c0, $e0, $e0, $e0, $c0, $c8
	dc.b $7c, $00, $fc, $c0, $80, $fc, $ff, $00
slideshow_19_b_p2:
	dc.b $00, $51, $51, $59, $59, $19, $19, $59
	dc.b $59, $59, $00, $00, $f0, $e0, $e1, $e1
	dc.b $f1, $e0, $e0, $c0, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $80, $80, $c0, $c0
	dc.b $c0, $c0, $c0, $e0, $e0, $c6, $cf, $00
slideshow_19_b_p3:
	dc.b $00, $a0, $a0, $20, $a0, $a0, $a0, $a0
	dc.b $20, $60, $00, $00, $30, $70, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $f0, $f0, $30, $10
	dc.b $90, $c0, $c0, $90, $10, $30, $f0, $00
slideshow_19_b_p4:
	dc.b $00, $24, $24, $24, $24, $26, $27, $27
	dc.b $27, $64, $00, $00, $0c, $0e, $07, $87
	dc.b $83, $c1, $c1, $e0, $60, $10, $00, $00
	dc.b $00, $00, $00, $00, $ff, $ff, $00, $00
	dc.b $ff, $ff, $ff, $ff, $00, $00, $ff, $00
slideshow_19_b_p5:
	dc.b $00, $88, $88, $ef, $ef, $8e, $8c, $e9
	dc.b $e9, $88, $00, $00, $f0, $f0, $e0, $e1
	dc.b $e1, $e1, $e0, $f0, $f0, $f0, $f0, $f0
	dc.b $f0, $f0, $f0, $f0, $f1, $f1, $f8, $fc
	dc.b $ff, $f7, $f7, $f3, $f0, $f0, $ff, $00
slideshow_19_b_ptr:
	dc.w slideshow_19_b_colbg
	dc.w slideshow_19_b_colfg
	dc.w slideshow_19_b_p0
	dc.w slideshow_19_b_p1
	dc.w slideshow_19_b_p2
	dc.w slideshow_19_b_p3
	dc.w slideshow_19_b_p4
	dc.w slideshow_19_b_p5

slideshow_20_a_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_20_a_p1:
	dc.b $00, $1f, $3f, $6d, $77, $77, $77, $63
	dc.b $7f, $7f, $7f, $7f, $7c, $7b, $74, $68
	dc.b $68, $74, $7b, $74, $74, $7a, $7d, $7e
	dc.b $7f, $7f, $7d, $7b, $7b, $7d, $7d, $7b
	dc.b $7b, $7d, $7f, $7f, $7f, $3f, $1f, $00
slideshow_20_a_p2:
	dc.b $00, $ff, $ff, $69, $ae, $6e, $fe, $2e
	dc.b $ff, $ff, $0f, $f0, $0f, $00, $00, $00
	dc.b $0c, $f3, $00, $00, $00, $3c, $c1, $02
	dc.b $05, $3b, $47, $bf, $7f, $7d, $7b, $fb
	dc.b $fd, $fd, $bb, $7f, $7f, $bf, $ff, $00
slideshow_20_a_p3:
	dc.b $00, $f0, $f0, $60, $b0, $30, $a0, $70
	dc.b $f0, $f0, $e0, $10, $e0, $00, $00, $00
	dc.b $60, $90, $00, $00, $00, $80, $70, $00
	dc.b $20, $40, $80, $80, $50, $b0, $d0, $e0
	dc.b $f0, $70, $70, $f0, $f0, $f0, $f0, $00
slideshow_20_a_p4:
	dc.b $00, $ff, $ff, $56, $d5, $d4, $d5, $4e
	dc.b $ff, $ff, $ff, $7f, $87, $7b, $05, $02
	dc.b $02, $e2, $11, $0a, $05, $02, $c2, $25
	dc.b $55, $eb, $77, $7f, $ff, $f7, $fb, $fb
	dc.b $77, $f7, $fb, $7b, $f7, $ff, $ff, $00
slideshow_20_a_p5:
	dc.b $70, $71, $03, $76, $77, $77, $07, $76
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $06, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $73, $01, $70
slideshow_20_a_ptr:
	dc.w slideshow_20_a_colbg
	dc.w slideshow_20_a_colfg
	dc.w slideshow_20_a_p0
	dc.w slideshow_20_a_p1
	dc.w slideshow_20_a_p2
	dc.w slideshow_20_a_p3
	dc.w slideshow_20_a_p4
	dc.w slideshow_20_a_p5

slideshow_20_b_p0:
	dc.b $00, $00, $00, $00, $80, $80, $80, $80
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_20_b_p1:
	dc.b $00, $00, $00, $ff, $b6, $25, $25, $b2
	dc.b $9f, $70, $00, $00, $47, $44, $66, $54
	dc.b $67, $00, $00, $08, $09, $09, $09, $1d
	dc.b $00, $00, $04, $04, $06, $05, $06, $00
	dc.b $00, $72, $42, $62, $42, $77, $00, $00
slideshow_20_b_p2:
	dc.b $00, $00, $f8, $ff, $ff, $ff, $ff, $ff
	dc.b $3f, $00, $00, $00, $2a, $2a, $2a, $2a
	dc.b $9a, $00, $00, $99, $aa, $9a, $aa, $9a
	dc.b $00, $00, $4a, $aa, $a6, $aa, $46, $00
	dc.b $00, $ea, $2a, $66, $2a, $e6, $00, $00
slideshow_20_b_p3:
	dc.b $00, $f0, $f0, $f0, $f0, $f0, $f0, $10
	dc.b $00, $00, $00, $00, $10, $90, $90, $90
	dc.b $b0, $00, $00, $30, $00, $10, $00, $30
	dc.b $00, $00, $20, $20, $60, $a0, $60, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_20_b_p4:
	dc.b $00, $e0, $f8, $fe, $fa, $f7, $2e, $1c
	dc.b $01, $00, $00, $00, $95, $55, $59, $55
	dc.b $59, $00, $00, $33, $2a, $2b, $2a, $33
	dc.b $00, $00, $57, $54, $66, $54, $67, $00
	dc.b $00, $c4, $2a, $4a, $8a, $64, $00, $00
slideshow_20_b_p5:
	dc.b $00, $00, $00, $00, $00, $00, $00, $07
	dc.b $0f, $0e, $00, $00, $03, $00, $01, $00
	dc.b $03, $00, $00, $01, $00, $00, $00, $01
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $05, $05, $05, $05, $03, $00, $00
slideshow_20_b_ptr:
	dc.w slideshow_20_b_colbg
	dc.w slideshow_20_b_colfg
	dc.w slideshow_20_b_p0
	dc.w slideshow_20_b_p1
	dc.w slideshow_20_b_p2
	dc.w slideshow_20_b_p3
	dc.w slideshow_20_b_p4
	dc.w slideshow_20_b_p5

slideshow_21_a_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_21_a_p1:
	dc.b $00, $1f, $3f, $5a, $6e, $6e, $6e, $46
	dc.b $7f, $40, $60, $70, $78, $7c, $7f, $7f
	dc.b $7f, $7e, $7f, $7d, $7e, $7c, $79, $74
	dc.b $7c, $78, $76, $76, $7c, $7f, $7c, $79
	dc.b $7e, $7f, $7d, $7f, $7f, $3f, $1f, $00
slideshow_21_a_p2:
	dc.b $00, $ff, $ff, $d5, $dd, $9d, $5c, $9d
	dc.b $ff, $00, $00, $00, $00, $c0, $60, $a3
	dc.b $d4, $e5, $e2, $74, $b1, $f0, $fa, $7a
	dc.b $7a, $f9, $f8, $9a, $18, $f8, $f1, $f3
	dc.b $e9, $92, $4b, $96, $4f, $9b, $ff, $00
slideshow_21_a_p3:
	dc.b $00, $f0, $f0, $d0, $d0, $90, $d0, $b0
	dc.b $f0, $00, $00, $00, $00, $f0, $80, $70
	dc.b $f0, $f0, $80, $70, $70, $f0, $c0, $f0
	dc.b $f0, $e0, $e0, $30, $30, $f0, $f0, $f0
	dc.b $f0, $70, $80, $40, $00, $40, $f0, $00
slideshow_21_a_p4:
	dc.b $00, $ff, $ff, $56, $56, $12, $56, $bb
	dc.b $ff, $00, $00, $00, $00, $01, $87, $9f
	dc.b $6f, $97, $a3, $c5, $d5, $d3, $e4, $e9
	dc.b $e4, $e0, $e2, $e8, $62, $e9, $d2, $cd
	dc.b $82, $73, $15, $2f, $8b, $ef, $ff, $00
slideshow_21_a_p5:
	dc.b $70, $71, $03, $77, $77, $76, $07, $76
	dc.b $77, $74, $06, $76, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $76, $07, $77
	dc.b $76, $76, $06, $77, $76, $77, $06, $77
	dc.b $77, $77, $07, $77, $77, $73, $01, $70
slideshow_21_a_ptr:
	dc.w slideshow_21_a_colbg
	dc.w slideshow_21_a_colfg
	dc.w slideshow_21_a_p0
	dc.w slideshow_21_a_p1
	dc.w slideshow_21_a_p2
	dc.w slideshow_21_a_p3
	dc.w slideshow_21_a_p4
	dc.w slideshow_21_a_p5

slideshow_21_b_p0:
	dc.b $00, $40, $20, $60, $20, $40, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $80
	dc.b $00, $80, $00, $10, $30, $60, $c0, $90
	dc.b $30, $60, $c0, $90, $30, $60, $c0, $80
slideshow_21_b_p1:
	dc.b $00, $49, $85, $8d, $88, $85, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $01
	dc.b $03, $03, $03, $03, $01, $41, $e0, $b0
	dc.b $00, $50, $00, $00, $00, $00, $00, $82
	dc.b $c3, $63, $33, $97, $c6, $6f, $2f, $8f
slideshow_21_b_p2:
	dc.b $00, $a2, $a2, $aa, $b6, $22, $00, $00
	dc.b $00, $00, $e0, $f8, $fe, $ff, $1f, $0f
	dc.b $07, $03, $03, $03, $07, $0f, $1f, $ff
	dc.b $fe, $f8, $e0, $00, $00, $00, $00, $00
	dc.b $00, $01, $01, $03, $07, $8e, $5d, $3b
slideshow_21_b_p3:
	dc.b $00, $00, $80, $10, $20, $90, $00, $00
	dc.b $00, $00, $30, $30, $30, $30, $80, $80
	dc.b $80, $80, $00, $80, $80, $80, $80, $30
	dc.b $30, $30, $30, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $10, $20, $c0, $80
slideshow_21_b_p4:
	dc.b $00, $c5, $49, $c9, $5c, $89, $00, $80
	dc.b $00, $00, $00, $00, $00, $00, $fc, $f8
	dc.b $f0, $e0, $00, $e0, $f0, $f8, $fc, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $04
	dc.b $0c, $1c, $1c, $3e, $7a, $f7, $ef, $df
slideshow_21_b_p5:
	dc.b $00, $24, $52, $52, $52, $24, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $80, $c0, $60, $30, $98
	dc.b $cc, $66, $33, $99, $cc, $66, $32, $18
slideshow_21_b_ptr:
	dc.w slideshow_21_b_colbg
	dc.w slideshow_21_b_colfg
	dc.w slideshow_21_b_p0
	dc.w slideshow_21_b_p1
	dc.w slideshow_21_b_p2
	dc.w slideshow_21_b_p3
	dc.w slideshow_21_b_p4
	dc.w slideshow_21_b_p5

slideshow_23_a_p0:
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
	dc.b $e0, $e0, $00, $e0, $e0, $e0, $00, $e0
slideshow_23_a_p1:
	dc.b $00, $1f, $7a, $7a, $79, $7a, $79, $7f
	dc.b $7f, $40, $60, $70, $7c, $7f, $7f, $7f
	dc.b $7f, $7f, $7f, $7f, $7f, $7f, $7e, $7e
	dc.b $7e, $7e, $7e, $7e, $7e, $7f, $7f, $7e
	dc.b $79, $77, $6f, $6f, $6f, $30, $1f, $00
slideshow_23_a_p2:
	dc.b $00, $ff, $35, $d5, $d1, $d5, $3b, $ff
	dc.b $ff, $00, $80, $70, $f8, $8d, $75, $05
	dc.b $7e, $c2, $ba, $7a, $fa, $fa, $fb, $f7
	dc.b $cf, $bf, $e3, $cb, $c3, $fe, $c2, $fc
	dc.b $01, $af, $07, $03, $1c, $7f, $ff, $00
slideshow_23_a_p3:
	dc.b $00, $f0, $50, $50, $10, $50, $50, $f0
	dc.b $f0, $00, $f0, $f0, $c0, $f0, $f0, $f0
	dc.b $e0, $f0, $f0, $f0, $70, $70, $70, $f0
	dc.b $f0, $f0, $80, $20, $00, $f0, $00, $f0
	dc.b $00, $a0, $00, $00, $00, $00, $f0, $00
slideshow_23_a_p4:
	dc.b $00, $ff, $a7, $ab, $ab, $eb, $a7, $ff
	dc.b $ff, $00, $00, $00, $01, $07, $7f, $7f
	dc.b $7f, $bf, $bf, $bf, $df, $5f, $67, $3b
	dc.b $1b, $93, $95, $95, $95, $9d, $81, $83
	dc.b $07, $57, $0f, $1f, $3f, $ff, $ff, $00
slideshow_23_a_p5:
	dc.b $70, $71, $03, $77, $77, $77, $07, $77
	dc.b $77, $74, $06, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $77, $07, $77
	dc.b $77, $77, $07, $77, $77, $73, $01, $70
slideshow_23_a_ptr:
	dc.w slideshow_23_a_colbg
	dc.w slideshow_23_a_colfg
	dc.w slideshow_23_a_p0
	dc.w slideshow_23_a_p1
	dc.w slideshow_23_a_p2
	dc.w slideshow_23_a_p3
	dc.w slideshow_23_a_p4
	dc.w slideshow_23_a_p5

	ALIGN 256
slideshow_17_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_17_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_17_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_17_b_colfg:
	dc.b $00, $00, $9c, $9c, $9c, $9c, $9c, $00
	dc.b $6c, $6c, $6c, $6c, $6c, $00, $00, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $00, $00
	dc.b $5c, $5c, $5c, $5c, $5c, $5c, $00, $00

slideshow_18_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_18_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

	ALIGN 256
slideshow_18_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_18_b_colfg:
	dc.b $00, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $2c, $2c, $2c, $2c, $2c, $2c, $2c
	dc.b $2c, $2c, $04, $04, $04, $04, $04, $04
	dc.b $04, $04, $04, $00, $0e, $0e, $0e, $0e
	dc.b $0e, $00, $0e, $0e, $0e, $0e, $0e, $00

slideshow_19_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_19_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_19_b_colbg:
	dc.b $0e, $64, $64, $64, $64, $64, $64, $64
	dc.b $64, $64, $0e, $0e, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $0e
slideshow_19_b_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $00, $00, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $00

	ALIGN 256
slideshow_20_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_20_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_20_b_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_20_b_colfg:
	dc.b $00, $b2, $b2, $b4, $b4, $b6, $b6, $b8
	dc.b $b8, $b8, $00, $00, $0e, $0e, $0e, $0e
	dc.b $0e, $00, $00, $64, $64, $64, $64, $64
	dc.b $00, $00, $2c, $2c, $2c, $2c, $2c, $00
	dc.b $00, $04, $04, $04, $04, $04, $00, $00

slideshow_21_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_21_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

	ALIGN 256
slideshow_21_b_colbg:
	dc.b $9a, $9a, $9a, $9a, $9a, $9a, $9a, $9a
	dc.b $9a, $9a, $9a, $9a, $9a, $9a, $9a, $9a
	dc.b $9a, $9a, $9a, $9a, $9a, $9a, $9a, $9a
	dc.b $9a, $9a, $9a, $9a, $9a, $9a, $9a, $9a
	dc.b $9a, $9a, $9a, $9a, $9a, $9a, $9a, $9a
slideshow_21_b_colfg:
	dc.b $00, $0e, $0e, $0e, $0e, $0e, $00, $0e
	dc.b $00, $00, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

slideshow_23_a_colbg:
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
	dc.b $00, $00, $00, $00, $00, $00, $00, $00
slideshow_23_a_colfg:
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dc.b $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e

