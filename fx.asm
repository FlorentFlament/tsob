fx_init:
                lda #0
                sta PF0
                sta PF1
                sta PF2
                sta COLUBK
                lda #$FF
                sta COLUPF 

                ldx #39
.load           lda sintab,x
                sta ss_sin,x
                dex
                bne .load
                rts
fx_vblank:
                lda ss_sin+$1
                sta posintab
                lda ss_sin+$2
                sta ss_sin+$1
                lda ss_sin+$3
                sta ss_sin+$2
                lda ss_sin+$4
                sta ss_sin+$3
                lda ss_sin+$5
                sta ss_sin+$4
                lda ss_sin+$6
                sta ss_sin+$5
                lda ss_sin+$7
                sta ss_sin+$6
                lda ss_sin+$8
                sta ss_sin+$7
                lda ss_sin+$9
                sta ss_sin+$8
                lda ss_sin+$a
                sta ss_sin+$9
                lda ss_sin+$b
                sta ss_sin+$a
                lda ss_sin+$c
                sta ss_sin+$b
                lda ss_sin+$d
                sta ss_sin+$c
                lda ss_sin+$e
                sta ss_sin+$d
                lda ss_sin+$f
                sta ss_sin+$e
                lda ss_sin+$10
                sta ss_sin+$f
                lda ss_sin+$11
                sta ss_sin+$10
                lda ss_sin+$12
                sta ss_sin+$11
                lda ss_sin+$13
                sta ss_sin+$12
                lda ss_sin+$14
                sta ss_sin+$13
                lda ss_sin+$15
                sta ss_sin+$14
                lda ss_sin+$16
                sta ss_sin+$15
                lda ss_sin+$17
                sta ss_sin+$16
                lda ss_sin+$18
                sta ss_sin+$17
                lda ss_sin+$19
                sta ss_sin+$18
                lda ss_sin+$1a
                sta ss_sin+$19
                lda ss_sin+$1b
                sta ss_sin+$1a
                lda ss_sin+$1c
                sta ss_sin+$1b
                lda ss_sin+$1d
                sta ss_sin+$1c
                lda ss_sin+$1e
                sta ss_sin+$1d
                lda ss_sin+$1f
                sta ss_sin+$1e
                lda ss_sin+$20
                sta ss_sin+$1f
                lda ss_sin+$21
                sta ss_sin+$20
                lda ss_sin+$22
                sta ss_sin+$21
                lda ss_sin+$23
                sta ss_sin+$22
                lda ss_sin+$24
                sta ss_sin+$23
                lda ss_sin+$25
                sta ss_sin+$24
                lda ss_sin+$26
                sta ss_sin+$25
                lda ss_sin+$27
                sta ss_sin+$26

                lda posintab
                sta ss_sin+$26                
                rts


fx_kernel:   

                lda  #2
                sta  WSYNC  
                sta  WSYNC
                sta  WSYNC
                lda #$FF
                sta COLUPF                         

                ldx #30
WaitForVblankEnd
                sta WSYNC
                dex
                bne WaitForVblankEnd      
            

                ldy #39
reloadx 
                ldx ss_sin,y
ss_DrawPic      
                lda logo0,Y
                sta PF0
                lda logo1,Y
                sta PF1
                lda logo2,Y
                sta PF2
                sty COLUPF
                lda logo3,Y 
                sta PF0
                lda logo4,Y
                sta PF1
                lda logo5,Y
                sta PF2
                sta WSYNC
                
                dex
                bne ss_DrawPic

                dey
                bne reloadx

                rts

fx_overscan:
                sta WSYNC 
                rts

                include "logo.asm" 

ss_tblow:       .byte <sintab
ss_tbhi:        .byte >sintab

sintab:         
                .byte $1,$1,$1,$2,$2,$2,$2,$3,$3,$3
                .byte $4,$4,$4,$5,$5,$5,$6,$6,$6,$7
                .byte $7,$8,$7,$7,$6,$6,$5,$5,$5,$4
                .byte $4,$3,$3,$3,$3,$2,$2,$2,$2,$2

                echo "ROM:", ($FFFC - *)d, "bytes left"