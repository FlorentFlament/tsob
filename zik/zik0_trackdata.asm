; TIATracker music player
; Copyright 2016 Andre "Kylearan" Wichmann
; Website: https://bitbucket.org/kylearan/tiatracker
; Email: andre.wichmann@gmx.de
;
; Licensed under the Apache License, Version 2.0 (the "License");
; you may not use this file except in compliance with the License.
; You may obtain a copy of the License at
;
;   http://www.apache.org/licenses/LICENSE-2.0
;
; Unless required by applicable law or agreed to in writing, software
; distributed under the License is distributed on an "AS IS" BASIS,
; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
; See the License for the specific language governing permissions and
; limitations under the License.

; Song author: Glafouk
; Song name: Glafouk

; @com.wudsn.ide.asm.hardware=ATARI2600

; =====================================================================
; TIATracker melodic and percussion instruments, patterns and sequencer
; data.
; =====================================================================
tt_TrackDataStart:

; =====================================================================
; Melodic instrument definitions (up to 7). tt_envelope_index_c0/1 hold
; the index values into these tables for the current instruments played
; in channel 0 and 1.
; 
; Each instrument is defined by:
; - tt_InsCtrlTable: the AUDC value
; - tt_InsADIndexes: the index of the start of the ADSR envelope as
;       defined in tt_InsFreqVolTable
; - tt_InsSustainIndexes: the index of the start of the Sustain phase
;       of the envelope
; - tt_InsReleaseIndexes: the index of the start of the Release phase
; - tt_InsFreqVolTable: The AUDF frequency and AUDV volume values of
;       the envelope
; =====================================================================

; Instrument master CTRL values
tt_InsCtrlTable:
        dc.b $04, $0c, $06


; Instrument Attack/Decay start indexes into ADSR tables.
tt_InsADIndexes:
        dc.b $00, $00, $08


; Instrument Sustain start indexes into ADSR tables
tt_InsSustainIndexes:
        dc.b $04, $04, $0e


; Instrument Release start indexes into ADSR tables
; Caution: Values are stored with an implicit -1 modifier! To get the
; real index, add 1.
tt_InsReleaseIndexes:
        dc.b $05, $05, $0f


; AUDVx and AUDFx ADSR envelope values.
; Each byte encodes the frequency and volume:
; - Bits 7..4: Freqency modifier for the current note ([-8..7]),
;       8 means no change. Bit 7 is the sign bit.
; - Bits 3..0: Volume
; Between sustain and release is one byte that is not used and
; can be any value.
; The end of the release phase is encoded by a 0.
tt_InsFreqVolTable:
; 0+1: beepr
        dc.b $88, $88, $87, $83, $81, $00, $80, $00
; 2: bass2
        dc.b $8f, $8e, $8d, $8b, $85, $83, $82, $00
        dc.b $80, $00



; =====================================================================
; Percussion instrument definitions (up to 15)
;
; Each percussion instrument is defined by:
; - tt_PercIndexes: The index of the first percussion frame as defined
;       in tt_PercFreqTable and tt_PercCtrlVolTable
; - tt_PercFreqTable: The AUDF frequency value
; - tt_PercCtrlVolTable: The AUDV volume and AUDC values
; =====================================================================

; Indexes into percussion definitions signifying the first frame for
; each percussion in tt_PercFreqTable.
; Caution: Values are stored with an implicit +1 modifier! To get the
; real index, subtract 1.
tt_PercIndexes:
        dc.b $01, $06, $15, $24


; The AUDF frequency values for the percussion instruments.
; If the second to last value is negative (>=128), it means it's an
; "overlay" percussion, i.e. the player fetches the next instrument note
; immediately and starts it in the sustain phase next frame. (Needs
; TT_USE_OVERLAY)
tt_PercFreqTable:
; 0: HH
        dc.b $00, $01, $01, $00, $00
; 1: KickRegular
        dc.b $03, $01, $03, $04, $04, $05, $05, $06
        dc.b $06, $07, $08, $0a, $0e, $14, $00
; 2: Snare
        dc.b $03, $01, $05, $08, $07, $07, $07, $08
        dc.b $0b, $10, $12, $16, $18, $19, $00
; 3: Snare
        dc.b $03, $1a, $06, $0b, $0b, $0d, $00


; The AUDCx and AUDVx volume values for the percussion instruments.
; - Bits 7..4: AUDC value
; - Bits 3..0: AUDV value
; 0 means end of percussion data.
tt_PercCtrlVolTable:
; 0: HH
        dc.b $87, $82, $81, $81, $00
; 1: KickRegular
        dc.b $ef, $ee, $ed, $ec, $eb, $ea, $e9, $e8
        dc.b $e7, $e6, $e5, $e4, $e3, $e2, $00
; 2: Snare
        dc.b $ef, $8e, $8d, $8c, $8b, $8a, $89, $88
        dc.b $87, $86, $85, $84, $83, $82, $00
; 3: Snare
        dc.b $8c, $cc, $6b, $89, $86, $83, $00


        
; =====================================================================
; Track definition
; The track is defined by:
; - tt_PatternX (X=0, 1, ...): Pattern definitions
; - tt_PatternPtrLo/Hi: Pointers to the tt_PatternX tables, serving
;       as index values
; - tt_SequenceTable: The order in which the patterns should be played,
;       i.e. indexes into tt_PatternPtrLo/Hi. Contains the sequences
;       for all channels and sub-tracks. The variables
;       tt_cur_pat_index_c0/1 hold an index into tt_SequenceTable for
;       each channel.
;
; So tt_SequenceTable holds indexes into tt_PatternPtrLo/Hi, which
; in turn point to pattern definitions (tt_PatternX) in which the notes
; to play are specified.
; =====================================================================

; ---------------------------------------------------------------------
; Pattern definitions, one table per pattern. tt_cur_note_index_c0/1
; hold the index values into these tables for the current pattern
; played in channel 0 and 1.
;
; A pattern is a sequence of notes (one byte per note) ending with a 0.
; A note can be either:
; - Pause: Put melodic instrument into release. Must only follow a
;       melodic instrument.
; - Hold: Continue to play last note (or silence). Default "empty" note.
; - Slide (needs TT_USE_SLIDE): Adjust frequency of last melodic note
;       by -7..+7 and keep playing it
; - Play new note with melodic instrument
; - Play new note with percussion instrument
; - End of pattern
;
; A note is defined by:
; - Bits 7..5: 1-7 means play melodic instrument 1-7 with a new note
;       and frequency in bits 4..0. If bits 7..5 are 0, bits 4..0 are
;       defined as:
;       - 0: End of pattern
;       - [1..15]: Slide -7..+7 (needs TT_USE_SLIDE)
;       - 8: Hold
;       - 16: Pause
;       - [17..31]: Play percussion instrument 1..15
;
; The tracker must ensure that a pause only follows a melodic
; instrument or a hold/slide.
; ---------------------------------------------------------------------
TT_FREQ_MASK    = %00011111
TT_INS_HOLD     = 8
TT_INS_PAUSE    = 16
TT_FIRST_PERC   = 17

; vide
tt_pattern0:
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $00

; hh0a
tt_pattern1:
        dc.b $11, $11, $11, $11, $11, $08, $11, $11
        dc.b $11, $08, $11, $08, $11, $11, $11, $08
        dc.b $11, $11, $11, $11, $11, $08, $11, $11
        dc.b $11, $08, $11, $08, $11, $11, $11, $11
        dc.b $00

; bd0a
tt_pattern2:
        dc.b $12, $08, $08, $08, $12, $08, $08, $08
        dc.b $12, $08, $08, $08, $12, $08, $08, $08
        dc.b $12, $08, $08, $08, $12, $08, $08, $08
        dc.b $12, $08, $08, $08, $12, $08, $12, $08
        dc.b $00

; bd0b
tt_pattern3:
        dc.b $12, $08, $11, $08, $12, $08, $11, $08
        dc.b $12, $08, $11, $08, $12, $08, $11, $11
        dc.b $12, $08, $11, $08, $12, $08, $11, $08
        dc.b $12, $08, $11, $08, $12, $08, $12, $11
        dc.b $00

; bd0c
tt_pattern4:
        dc.b $12, $08, $11, $08, $13, $08, $11, $08
        dc.b $12, $08, $11, $08, $13, $08, $11, $11
        dc.b $12, $08, $11, $08, $13, $08, $11, $08
        dc.b $12, $08, $11, $08, $13, $08, $12, $11
        dc.b $00

; bd+mel0a
tt_pattern5:
        dc.b $12, $51, $11, $4e, $13, $08, $11, $4e
        dc.b $12, $57, $11, $57, $13, $08, $11, $11
        dc.b $12, $57, $11, $4e, $13, $08, $11, $57
        dc.b $12, $53, $11, $53, $13, $08, $11, $11
        dc.b $00

; bd0d
tt_pattern6:
        dc.b $12, $08, $11, $08, $13, $08, $11, $08
        dc.b $12, $08, $11, $08, $13, $08, $11, $11
        dc.b $72, $72, $74, $08, $72, $72, $6f, $08
        dc.b $72, $72, $74, $08, $72, $72, $6d, $6f
        dc.b $00

; bd1a
tt_pattern7:
        dc.b $12, $08, $11, $08, $13, $08, $11, $08
        dc.b $12, $08, $11, $11, $13, $08, $11, $08
        dc.b $12, $08, $11, $08, $13, $08, $11, $08
        dc.b $12, $08, $11, $11, $13, $08, $11, $08
        dc.b $00

; bd1a2
tt_pattern8:
        dc.b $12, $08, $11, $08, $13, $08, $11, $08
        dc.b $12, $08, $11, $11, $13, $08, $11, $08
        dc.b $11, $11, $11, $11, $11, $08, $11, $11
        dc.b $11, $08, $11, $08, $11, $11, $11, $11
        dc.b $00

; bd3a
tt_pattern9:
        dc.b $12, $08, $11, $08, $12, $08, $11, $11
        dc.b $12, $08, $11, $08, $12, $08, $11, $11
        dc.b $00

; bd3b
tt_pattern10:
        dc.b $14, $14, $11, $14, $14, $11, $14, $11
        dc.b $14, $11, $11, $11, $14, $11, $11, $11
        dc.b $00

; bd3c
tt_pattern11:
        dc.b $14, $14, $11, $14, $14, $11, $14, $11
        dc.b $14, $11, $14, $11, $14, $11, $11, $11
        dc.b $00

; bd3d
tt_pattern12:
        dc.b $12, $14, $11, $14, $13, $08, $11, $08
        dc.b $12, $14, $11, $14, $13, $08, $11, $11
        dc.b $12, $14, $11, $14, $13, $08, $14, $08
        dc.b $12, $08, $11, $14, $13, $08, $12, $11
        dc.b $00

; endC
tt_pattern13:
        dc.b $12, $08, $08, $08, $08, $08, $08, $08
        dc.b $12, $08, $08, $08, $08, $08, $08, $08
        dc.b $12, $08, $08, $08, $57, $53, $51, $53
        dc.b $13, $4e, $76, $4b, $13, $13, $76, $13
        dc.b $00

; endA
tt_pattern14:
        dc.b $76, $31, $76, $76, $13, $76, $37, $35
        dc.b $74, $33, $74, $74, $13, $74, $3d, $3a
        dc.b $7b, $35, $7b, $7b, $13, $7b, $31, $33
        dc.b $7b, $3a, $7b, $7b, $13, $74, $76, $3d
        dc.b $00

; b0a
tt_pattern15:
        dc.b $7b, $6d, $08, $7b, $6d, $08, $7b, $6d
        dc.b $08, $7b, $6d, $08, $7b, $08, $7b, $08
        dc.b $00

; b+mal0a
tt_pattern16:
        dc.b $7b, $6d, $51, $7b, $6d, $53, $7b, $6d
        dc.b $4e, $7b, $6d, $53, $7b, $51, $7b, $51
        dc.b $7b, $6d, $53, $7b, $6d, $51, $7b, $6d
        dc.b $08, $7b, $6d, $08, $7b, $51, $7b, $53
        dc.b $00

; b+mal0b
tt_pattern17:
        dc.b $7b, $6d, $4e, $7b, $6d, $4c, $7b, $6d
        dc.b $51, $7b, $6d, $4e, $7b, $57, $7b, $53
        dc.b $7b, $6d, $08, $7b, $6d, $51, $7b, $6d
        dc.b $4e, $7b, $6d, $57, $7b, $53, $7b, $51
        dc.b $00

; b+mal0c
tt_pattern18:
        dc.b $7b, $6d, $4b, $7b, $6d, $51, $7b, $6d
        dc.b $57, $7b, $6d, $4e, $7b, $57, $7b, $53
        dc.b $7b, $6d, $08, $7b, $6d, $4b, $7b, $6d
        dc.b $3a, $7b, $6d, $57, $7b, $53, $7b, $51
        dc.b $00

; mal0a
tt_pattern19:
        dc.b $51, $4e, $51, $11, $11, $53, $4c, $11
        dc.b $4e, $11, $3a, $53, $11, $51, $4b, $51
        dc.b $11, $11, $53, $11, $11, $51, $3d, $11
        dc.b $11, $11, $4b, $11, $11, $51, $4e, $53
        dc.b $00

; mal0b
tt_pattern20:
        dc.b $11, $11, $4e, $11, $11, $51, $4c, $11
        dc.b $51, $11, $3d, $4e, $11, $57, $4b, $53
        dc.b $11, $11, $3a, $11, $11, $51, $35, $11
        dc.b $4e, $11, $3a, $57, $11, $3d, $3a, $4b
        dc.b $00

; mal0c
tt_pattern21:
        dc.b $11, $11, $4b, $11, $11, $51, $31, $11
        dc.b $57, $11, $33, $4e, $11, $57, $3a, $53
        dc.b $11, $11, $35, $11, $11, $4b, $3d, $11
        dc.b $3a, $11, $3a, $57, $11, $53, $14, $11
        dc.b $00

; b+mal0d
tt_pattern22:
        dc.b $14, $14, $14, $14, $14, $11, $14, $14
        dc.b $14, $11, $14, $11, $14, $14, $14, $08
        dc.b $14, $14, $14, $14, $14, $11, $14, $14
        dc.b $14, $11, $14, $11, $14, $14, $14, $14
        dc.b $00

; b+mal0e
tt_pattern23:
        dc.b $14, $14, $14, $14, $14, $11, $14, $14
        dc.b $14, $11, $14, $11, $14, $14, $14, $08
        dc.b $11, $11, $11, $08, $11, $08, $11, $08
        dc.b $11, $11, $11, $08, $11, $08, $11, $11
        dc.b $00

; b1a
tt_pattern24:
        dc.b $72, $72, $08, $72, $72, $08, $6f, $6f
        dc.b $08, $6f, $6f, $08, $6f, $08, $6f, $08
        dc.b $6d, $6d, $08, $6d, $6d, $08, $6f, $6f
        dc.b $08, $6f, $6f, $08, $6f, $08, $6f, $08
        dc.b $00

; mel3a
tt_pattern25:
        dc.b $4e, $08, $08, $4c, $4b, $08, $4b, $08
        dc.b $00

; mel3a2
tt_pattern26:
        dc.b $4c, $4e, $4c, $4b, $4e, $08, $53, $08
        dc.b $00

; mel3b
tt_pattern27:
        dc.b $51, $51, $08, $51, $51, $08, $51, $08
        dc.b $00

; mel3b2
tt_pattern28:
        dc.b $4f, $08, $08, $08, $4f, $08, $08, $08
        dc.b $00

; mel3c
tt_pattern29:
        dc.b $4f, $08, $4f, $08, $4f, $08, $08, $08
        dc.b $00

; mel3d
tt_pattern30:
        dc.b $51, $51, $08, $51, $4f, $08, $08, $08
        dc.b $00

; mel3e
tt_pattern31:
        dc.b $4f, $08, $14, $08, $4f, $14, $14, $14
        dc.b $00

; b4a
tt_pattern32:
        dc.b $72, $08, $72, $08, $72, $72, $08, $78
        dc.b $08, $78, $08, $78, $78, $78, $78, $78
        dc.b $74, $08, $74, $08, $74, $74, $08, $72
        dc.b $08, $72, $08, $72, $72, $72, $6f, $72
        dc.b $00

; b4b
tt_pattern33:
        dc.b $72, $08, $72, $08, $72, $72, $08, $6d
        dc.b $08, $6d, $08, $6d, $6d, $6d, $6d, $6d
        dc.b $74, $08, $74, $08, $74, $74, $08, $72
        dc.b $08, $72, $08, $72, $72, $74, $6f, $72
        dc.b $00

; hh0b
tt_pattern34:
        dc.b $11, $11, $08, $11, $11, $08, $08, $11
        dc.b $11, $08, $08, $08, $11, $11, $08, $08
        dc.b $11, $11, $08, $11, $11, $08, $08, $11
        dc.b $11, $08, $08, $08, $11, $11, $11, $11
        dc.b $00

; endB
tt_pattern35:
        dc.b $5d, $4e, $5d, $4b, $5d, $4f, $5d, $4e
        dc.b $5a, $53, $5a, $4f, $5a, $4e, $5a, $51
        dc.b $5f, $4b, $5f, $4e, $5f, $4f, $5f, $4e
        dc.b $5d, $4f, $5d, $4e, $5d, $4b, $5d, $4e
        dc.b $00




; Individual pattern speeds (needs TT_GLOBAL_SPEED = 0).
; Each byte encodes the speed of one pattern in the order
; of the tt_PatternPtr tables below.
; If TT_USE_FUNKTEMPO is 1, then the low nibble encodes
; the even speed and the high nibble the odd speed.
    IF TT_GLOBAL_SPEED = 0
tt_PatternSpeeds:
%%PATTERNSPEEDS%%
    ENDIF


; ---------------------------------------------------------------------
; Pattern pointers look-up table.
; ---------------------------------------------------------------------
tt_PatternPtrLo:
        dc.b <tt_pattern0, <tt_pattern1, <tt_pattern2, <tt_pattern3
        dc.b <tt_pattern4, <tt_pattern5, <tt_pattern6, <tt_pattern7
        dc.b <tt_pattern8, <tt_pattern9, <tt_pattern10, <tt_pattern11
        dc.b <tt_pattern12, <tt_pattern13, <tt_pattern14, <tt_pattern15
        dc.b <tt_pattern16, <tt_pattern17, <tt_pattern18, <tt_pattern19
        dc.b <tt_pattern20, <tt_pattern21, <tt_pattern22, <tt_pattern23
        dc.b <tt_pattern24, <tt_pattern25, <tt_pattern26, <tt_pattern27
        dc.b <tt_pattern28, <tt_pattern29, <tt_pattern30, <tt_pattern31
        dc.b <tt_pattern32, <tt_pattern33, <tt_pattern34, <tt_pattern35

tt_PatternPtrHi:
        dc.b >tt_pattern0, >tt_pattern1, >tt_pattern2, >tt_pattern3
        dc.b >tt_pattern4, >tt_pattern5, >tt_pattern6, >tt_pattern7
        dc.b >tt_pattern8, >tt_pattern9, >tt_pattern10, >tt_pattern11
        dc.b >tt_pattern12, >tt_pattern13, >tt_pattern14, >tt_pattern15
        dc.b >tt_pattern16, >tt_pattern17, >tt_pattern18, >tt_pattern19
        dc.b >tt_pattern20, >tt_pattern21, >tt_pattern22, >tt_pattern23
        dc.b >tt_pattern24, >tt_pattern25, >tt_pattern26, >tt_pattern27
        dc.b >tt_pattern28, >tt_pattern29, >tt_pattern30, >tt_pattern31
        dc.b >tt_pattern32, >tt_pattern33, >tt_pattern34, >tt_pattern35
        


; ---------------------------------------------------------------------
; Pattern sequence table. Each byte is an index into the
; tt_PatternPtrLo/Hi tables where the pointers to the pattern
; definitions can be found. When a pattern has been played completely,
; the next byte from this table is used to get the address of the next
; pattern to play. tt_cur_pat_index_c0/1 hold the current index values
; into this table for channels 0 and 1.
; If TT_USE_GOTO is used, a value >=128 denotes a goto to the pattern
; number encoded in bits 6..0 (i.e. value AND %01111111).
; ---------------------------------------------------------------------
tt_SequenceTable:
        ; ---------- Channel 0 ----------
        dc.b $00, $00, $01, $02, $03, $04, $04, $05
        dc.b $05, $05, $05, $05, $05, $05, $05, $04
        dc.b $06, $02, $02, $07, $07, $02, $02, $07
        dc.b $08, $09, $0a, $09, $0b, $04, $0c, $02
        dc.b $02, $03, $03, $04, $04, $01, $03, $04
        dc.b $04, $02, $02, $0d, $0e, $ac

        
        ; ---------- Channel 1 ----------
        dc.b $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
        dc.b $0f, $0f, $0f, $0f, $10, $11, $10, $12
        dc.b $13, $14, $13, $15, $16, $17, $18, $18
        dc.b $18, $18, $18, $18, $18, $18, $19, $1a
        dc.b $1b, $1c, $19, $1a, $1b, $1d, $19, $19
        dc.b $1a, $1a, $1b, $1e, $1b, $1f, $20, $21
        dc.b $20, $21, $20, $21, $20, $21, $22, $22
        dc.b $01, $01, $00, $00, $23, $ea


        echo "Track size: ", *-tt_TrackDataStart
