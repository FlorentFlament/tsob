;;;-----------------------------------------------------------------------------
;;; Header

	PROCESSOR 6502
	INCLUDE "vcs.h"	; Provides RIOT & TIA memory map
	INCLUDE "macro.h" ; This file includes some helper macros
	INCLUDE "my_macros.h"	; Some more generic macros

; The 2 next constants can be used to ease FXs developments
; Use START_PART to select on which part to start the demo
; Set SINGLE_PART to 1 to disable parts switching
START_PART  equ 0 ; default 0
SINGLE_PART equ 0 ; default 0
ENDMAIN_PART equ 24 ; Turn off soundtrack if reached last track
GREETZ_PART equ 25

;;;-----------------------------------------------------------------------------
;;; RAM segment
	SEG.U ram
	ORG $0080

	; Songs variables first
	INCLUDE "zik0_variables.asm"

;;; Temporary variables
tmp	equ tt_ptr
tmp1	equ tt_ptr+1
ptr	ds 2

;;; Keep track of time and parts
frame	ds 2 ; 16 bits frames counter
curpart ds 1 ; Index of current part (FX)

;;; part-specific RAM starts here
PARTRAM equ *
;;;4 bytes of stack used (Possibly more)
RAMEND  equ $FC
	echo "RAM available for parts:", (RAMEND-PARTRAM)d, "bytes"

	INCLUDE "fx_flag_vars.asm"
	echo "fx_flag_vars:", (RAMEND-*)d, "bytes left"
	INCLUDE "slideshow_vars.asm"
	echo "slideshow_vars:", (RAMEND-*)d, "bytes left"

; Bank switching macro by Tjoppen (slightly adapted)
RTSBank equ $1FD9
JMPBank equ $1FE6

;39 byte bootstrap macro
;Includes RTSBank, JMPBank routines and JMP to Start in Bank 7
	MAC END_SEGMENT_CODE
	;RTSBank
	;Perform a long RTS
	tsx
	lda $02,X
	;decode bank
	;bank 0: $1000-$1FFF
	;bank 1: $3000-$3FFF
	;...
	;bank 7: $F000-$FFFF
	lsr
	lsr
	lsr
	lsr
	lsr
	tax
	nop $1FF4,X ;3 B
	rts
	;JMPBank
	;Perform a long jmp to (ptr)
	;The bank number is stored in the topmost three bits of (ptr)
	;Example usage:
	;   SET_POINTER ptr, Address
	;   jsr JMPBank
	;
	;$1FE6-$1FED
	lda ptr+1
	lsr
	lsr
	lsr
	lsr
	lsr
	tax
	;$1FEE-$1FF3
	nop $1FF4,X ;3 B
	jmp (ptr)   ;3 B
	ENDM

	MAC END_SEGMENT
.BANK	SET {1}
	echo "Bank",(.BANK)d,":", ((RTSBank + (.BANK * 8192)) - *)d, "free"

	ORG RTSBank + (.BANK * 4096)
	RORG RTSBank + (.BANK * 8192)
	END_SEGMENT_CODE
;$1FF4-$1FFB - These are the bankswitching hotspots
	.byte 0,0,0,0
	.byte 0,0,0,$4C ;JMP Start (reading the instruction jumps to bank 7, i.e init address)
;$1FFC-1FFF
	.word $1FFB
	.word $1FFB
;Bank .BANK+1
	ORG $1000 + ((.BANK + 1) * 4096)
	RORG $1000 + ((.BANK + 1) * 8192)
	ENDM

	; Adding small JSRBank macro
	MAC JSRBank
	SET_POINTER ptr, {1}
	jsr JMPBank
	ENDM
; End of bank switching macro definitions

;-----------------------------------------------------------------------------
; Code segment
	echo "--- ROM follows ---"
	SEG code

; Bank 0
	ORG $1000
	RORG $1000
tt_player_proxy SUBROUTINE
PARTSTART_ZIK1 equ *
	; Turn off soundtrack at the end of demo
	lda curpart
	cmp ENDMAIN_PART
	bne tt_PlayerStart
	lda #$00
	sta AUDC0
	sta AUDC1
	jmp tt_player_proxy_end
	INCLUDE "zik0_player.asm"
tt_player_proxy_end:
	jmp RTSBank
	INCLUDE "zik0_trackdata.asm"
	echo "zik1:", (*-PARTSTART_ZIK1)d, "B"
PARTSTART_FLAG equ *
	INCLUDE "fx_flag.asm"
	echo "fx_flag:", (*-PARTSTART_FLAG)d, "B"
;; PARTSTART_LAPINKO equ *
;; 	INCLUDE "fx_lapinko.asm"
;; 	echo "fx_lapinko:", (*-PARTSTART_LAPINKO)d, "B"
	END_SEGMENT 0


; Bank 1
PARTSTART_SLIDESHOW equ *
	INCLUDE "slideshow.asm"
	INCLUDE "slideshow-cinema-nova.asm"
	INCLUDE "slideshow-02.asm"
	INCLUDE "slideshow-15a.asm"
	INCLUDE "slideshow-15b.asm"
	echo "slideshow:", (*-PARTSTART_SLIDESHOW)d, "B"
	END_SEGMENT 1

; Bank 2
;; PARTSTART_PLASMA equ *
	;; INCLUDE "fx_plasma.asm"
	;; echo "fx_plasma:", (*-PARTSTART_PLASMA)d, "B"
	END_SEGMENT 2

; Bank 3
;; PARTSTART_GREETINGS equ *
;; 	INCLUDE "fx_greetings_ctrl.asm"
;; 	INCLUDE "fx_greetings_kernel.asm"
;; 	echo "fx_greetings:", (*-PARTSTART_GREETINGS)d, "B"
	END_SEGMENT 3

; Bank 4
;; PARTSTART_SPRITEBG equ *
;; 	INCLUDE "fx_spritebg.asm"
;; 	echo "fx_spritebg:", (*-PARTSTART_SPRITEBG)d, "B"
	END_SEGMENT 4

; Bank 5
;; PARTSTART_ANIMATION equ *
;; 	INCLUDE "fx_animation.asm"
;; 	echo "fx_animation:", (*-PARTSTART_ANIMATION)d, "B"
	END_SEGMENT 5

; Bank 6
;; PARTSTART_SHUTTER equ *
;; 	INCLUDE "fx_plainshut_ctrl.asm"
;; 	INCLUDE "fx_plainshut_kernel.asm"
;; 	echo "fx_shutter:", (*-PARTSTART_SHUTTER)d, "B"
	END_SEGMENT 6

; Bank 7
PARTSTART_MAIN equ *
inits:
	.word fx_flag_init ; 0
	.word slideshow_init

vblanks:
	.word fx_flag_vblank
	.word slideshow_vblank

kernels:
	.word fx_flag_kernel
	.word slideshow_kernel

; specifies on which frame to switch parts
M_P0  equ 224+28
M_P1  equ 0

partswitch:
	.word M_P0
	.word M_P1

; Calls current part
; unique argument is the stuff to call (inits, vblanks or kernels)
; ex: call_curpart vblanks
	MAC call_curpart
	lda curpart
	asl
	tax
	lda {1},X
	sta ptr
	lda {1}+1,X
	sta ptr+1
	jsr JMPBank
	ENDM

init	CLEAN_START ; Initializes Registers & Memory
	INCLUDE "zik0_init.asm"
	lda #START_PART
	sta curpart
	call_curpart inits ; Initialize first part

main_loop SUBROUTINE
	VERTICAL_SYNC		; 4 scanlines Vertical Sync signal

	; ===== VBLANK =====
	; 34 VBlank lines (76 cycles/line)
	lda #39			; (/ (* 34.0 76) 64) = 40.375
	sta TIM64T
	call_curpart vblanks
	jsr wait_timint

	; ===== KERNEL =====
	; 248 Kernel lines
	lda #19			; (/ (* 248.0 76) 1024) = 18.40
	sta T1024T
	call_curpart kernels
	jsr wait_timint		; scanline 289 - cycle 30

	; ===== OVERSCAN ======
	; 26 Overscan lines
	lda #22			; (/ (* 26.0 76) 64) = 30.875
	sta TIM64T

	JSRBank tt_player_proxy	; Play song
	
	m_add_to_pointer frame, #1
	jsr check_partswitch
	jsr wait_timint

	jmp main_loop		; scanline 308 - cycle 15

check_partswitch SUBROUTINE
	IF SINGLE_PART
	rts
	ENDIF
	lda curpart
	asl
	tax
	lda partswitch,X
	cmp frame
	bne .no_switch
	lda partswitch+1,X
	cmp frame+1
	bne .no_switch
	; Switch part
	inc curpart
	call_curpart inits
.no_switch:
	rts

wait_timint SUBROUTINE
	lda TIMINT
	beq wait_timint
	rts
	echo "main:", (*-PARTSTART_MAIN)d, "B"

;; PARTSTART_FLAG equ *
;;  	INCLUDE "fx_flag.asm"
;;  	echo "fx_flag:", (*-PARTSTART_FLAG)d, "B"
	echo "Bank 7 :", ((RTSBank + (7 * 8192)) - *)d, "free"

;;;-----------------------------------------------------------------------------
;;; Reset Vector
	ORG RTSBank + $7000
	RORG RTSBank + $E000
	END_SEGMENT_CODE
	;$1FF4-$1FFB
	.byte 0,0,0,0
	.byte 0,0,0,$4C
	;$1FFC-1FFF
	.word init
	.word init
