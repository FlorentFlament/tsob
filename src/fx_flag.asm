fx_flag_init:   SUBROUTINE
                lda #0
                sta PF0
                sta PF1
                sta PF2
                sta COLUBK
                lda #$FF
                sta COLUPF

                lda #$A2
                sta COLUBK

                ldx #39
.load           lda fx_flag_sintab,x
                sta fx_flag_ss_sin,x
                dex
                bne .load
                jmp RTSBank

fx_flag_vblank: SUBROUTINE
                lda fx_flag_ss_sin+$1
                sta fx_flag_posintab
                lda fx_flag_ss_sin+$2
                sta fx_flag_ss_sin+$1
                lda fx_flag_ss_sin+$3
                sta fx_flag_ss_sin+$2
                lda fx_flag_ss_sin+$4
                sta fx_flag_ss_sin+$3
                lda fx_flag_ss_sin+$5
                sta fx_flag_ss_sin+$4
                lda fx_flag_ss_sin+$6
                sta fx_flag_ss_sin+$5
                lda fx_flag_ss_sin+$7
                sta fx_flag_ss_sin+$6
                lda fx_flag_ss_sin+$8
                sta fx_flag_ss_sin+$7
                lda fx_flag_ss_sin+$9
                sta fx_flag_ss_sin+$8
                lda fx_flag_ss_sin+$a
                sta fx_flag_ss_sin+$9
                lda fx_flag_ss_sin+$b
                sta fx_flag_ss_sin+$a
                lda fx_flag_ss_sin+$c
                sta fx_flag_ss_sin+$b
                lda fx_flag_ss_sin+$d
                sta fx_flag_ss_sin+$c
                lda fx_flag_ss_sin+$e
                sta fx_flag_ss_sin+$d
                lda fx_flag_ss_sin+$f
                sta fx_flag_ss_sin+$e
                lda fx_flag_ss_sin+$10
                sta fx_flag_ss_sin+$f
                lda fx_flag_ss_sin+$11
                sta fx_flag_ss_sin+$10
                lda fx_flag_ss_sin+$12
                sta fx_flag_ss_sin+$11
                lda fx_flag_ss_sin+$13
                sta fx_flag_ss_sin+$12
                lda fx_flag_ss_sin+$14
                sta fx_flag_ss_sin+$13
                lda fx_flag_ss_sin+$15
                sta fx_flag_ss_sin+$14
                lda fx_flag_ss_sin+$16
                sta fx_flag_ss_sin+$15
                lda fx_flag_ss_sin+$17
                sta fx_flag_ss_sin+$16
                lda fx_flag_ss_sin+$18
                sta fx_flag_ss_sin+$17
                lda fx_flag_ss_sin+$19
                sta fx_flag_ss_sin+$18
                lda fx_flag_ss_sin+$1a
                sta fx_flag_ss_sin+$19
                lda fx_flag_ss_sin+$1b
                sta fx_flag_ss_sin+$1a
                lda fx_flag_ss_sin+$1c
                sta fx_flag_ss_sin+$1b
                lda fx_flag_ss_sin+$1d
                sta fx_flag_ss_sin+$1c
                lda fx_flag_ss_sin+$1e
                sta fx_flag_ss_sin+$1d
                lda fx_flag_ss_sin+$1f
                sta fx_flag_ss_sin+$1e
                lda fx_flag_ss_sin+$20
                sta fx_flag_ss_sin+$1f
                lda fx_flag_ss_sin+$21
                sta fx_flag_ss_sin+$20
                lda fx_flag_ss_sin+$22
                sta fx_flag_ss_sin+$21
                lda fx_flag_ss_sin+$23
                sta fx_flag_ss_sin+$22
                lda fx_flag_ss_sin+$24
                sta fx_flag_ss_sin+$23
                lda fx_flag_ss_sin+$25
                sta fx_flag_ss_sin+$24
                lda fx_flag_ss_sin+$26
                sta fx_flag_ss_sin+$25
                lda fx_flag_ss_sin+$27
                sta fx_flag_ss_sin+$26

                lda fx_flag_posintab
                sta fx_flag_ss_sin+$26
                jmp RTSBank


fx_flag_kernel: SUBROUTINE
                lda #$80
                sta COLUBK
                lda  #2
                sta  WSYNC
                sta  WSYNC
                sta  WSYNC
                lda #$FF
                sta COLUPF

                ldx #30
.WaitForVblankEnd
                sta WSYNC
                dex
                bne .WaitForVblankEnd
                

                lda #200
                sta fx_lvl

                sta WSYNC
                sta WSYNC
                sta WSYNC
                ldy #15
.reloadx
                ;ldx fx_flag_ss_sin,y
                ldx #6
.ss_DrawPic
                sta WSYNC
                dec fx_lvl
                ;sty COLUPF
                ;nop
                ;nop
                lda fx_flag_logo0,Y
                sta PF0
                lda fx_flag_logo1,Y
                sta PF1
                lda fx_flag_logo2,Y
                sta PF2
                SLEEP 2
                lda fx_flag_logo3,Y
                sta PF0
                lda fx_flag_logo4,Y
                sta PF1
                lda fx_flag_logo5,Y
                sta PF2

                dex
                bne .ss_DrawPic

                dey
                bne .reloadx

                lda #$00
                sta PF0
                sta PF1
                sta PF2
             
                sta WSYNC                
                sta WSYNC                
                sta WSYNC                
                sta WSYNC                
                sta WSYNC                
                sta WSYNC                

                lda #$B0
                sta COLUBK
                lda #$B2
                sta COLUPF

                sta WSYNC
                sta WSYNC
                sta WSYNC 

                ldy #0 
                iny
                sta WSYNC
                
.rexbis
                ldx fx_flag_ss_sin,y
                ;ldx #8
.ss_Drbis
                sta WSYNC
                dec fx_lvl      
                ;nop
                ;nop
                lda fx_flag_logo0,Y
                sta PF0
                lda fx_flag_logo1,Y
                sta PF1
                lda fx_flag_logo2,Y
                sta PF2
                SLEEP 2
                lda fx_flag_logo3,Y
                sta PF0
                lda fx_flag_logo4,Y
                sta PF1
                lda fx_flag_logo5,Y
                sta PF2

                dex
                bne .ss_Drbis

                iny
                cpy #15
                bne .rexbis

                lda #$00
                sta PF0
                sta PF1
                sta PF2

                sta WSYNC
.water          
                sta WSYNC
                dec fx_lvl
                bne .water

                lda #0
                sta fx_lvl

                lda #$00
                sta COLUPF
                sta COLUBK
                sta PF0
                sta PF1
                sta PF2
;
                sta WSYNC
                jmp RTSBank

fx_flag_overscan:
                sta WSYNC
                jmp RTSBank

                include "fx_flag_logo.asm"

fx_flag_ss_tblow:       .byte <fx_flag_sintab
fx_flag_ss_tbhi:        .byte >fx_flag_sintab

fx_flag_sintab:
                .byte $1,$1,$1,$2,$2,$2,$2,$3,$3,$3
                .byte $4,$4,$4,$5,$5,$5,$6,$6,$6,$7
                .byte $7,$8,$7,$7,$6,$6,$5,$5,$5,$4
                .byte $4,$3,$3,$3,$3,$2,$2,$2,$2,$2