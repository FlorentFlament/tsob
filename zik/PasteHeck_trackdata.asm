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
; Song name: PastHeck

; =====================================================================
; TIATracker melodic and percussion instruments, patterns and sequencer
; data.
; =====================================================================
PasteHeck_tt_TrackDataStart:

; =====================================================================
; Melodic instrument definitions (up to 7). tt_envelope_index_c0/1 hold
; the index values into these tables for the current instruments played
; in channel 0 and 1.
; 
; Each instrument is defined by:
; - PasteHeck_tt_InsCtrlTable: the AUDC value
; - PasteHeck_tt_InsADIndexes: the index of the start of the ADSR envelope as
;       defined in PasteHeck_tt_InsFreqVolTable
; - PasteHeck_tt_InsSustainIndexes: the index of the start of the Sustain phase
;       of the envelope
; - PasteHeck_tt_InsReleaseIndexes: the index of the start of the Release phase
; - PasteHeck_tt_InsFreqVolTable: The AUDF frequency and AUDV volume values of
;       the envelope
; =====================================================================

; Instrument master CTRL values
PasteHeck_tt_InsCtrlTable:
        dc.b $06, $01, $0c, $04, $0c


; Instrument Attack/Decay start indexes into ADSR tables.
PasteHeck_tt_InsADIndexes:
        dc.b $00, $12, $1c, $24, $24


; Instrument Sustain start indexes into ADSR tables
PasteHeck_tt_InsSustainIndexes:
        dc.b $0c, $18, $20, $24, $24


; Instrument Release start indexes into ADSR tables
; Caution: Values are stored with an implicit -1 modifier! To get the
; real index, add 1.
PasteHeck_tt_InsReleaseIndexes:
        dc.b $0d, $19, $21, $25, $25


; AUDVx and AUDFx ADSR envelope values.
; Each byte encodes the frequency and volume:
; - Bits 7..4: Freqency modifier for the current note ([-8..7]),
;       8 means no change. Bit 7 is the sign bit.
; - Bits 3..0: Volume
; Between sustain and release is one byte that is not used and
; can be any value.
; The end of the release phase is encoded by a 0.
PasteHeck_tt_InsFreqVolTable:
; 0: bassline
        dc.b $8f, $8f, $8f, $8e, $8d, $8c, $8b, $8a
        dc.b $89, $88, $87, $86, $85, $00, $84, $83
        dc.b $82, $00
; 1: leadBass
        dc.b $86, $86, $86, $86, $85, $81, $80, $00
        dc.b $80, $00
; 2: LeadHigh
        dc.b $87, $87, $86, $84, $80, $00, $80, $00
; 3+4: ---
        dc.b $80, $00, $80, $00



; =====================================================================
; Percussion instrument definitions (up to 15)
;
; Each percussion instrument is defined by:
; - PasteHeck_tt_PercIndexes: The index of the first percussion frame as defined
;       in PasteHeck_tt_PercFreqTable and PasteHeck_tt_PercCtrlVolTable
; - PasteHeck_tt_PercFreqTable: The AUDF frequency value
; - PasteHeck_tt_PercCtrlVolTable: The AUDV volume and AUDC values
; =====================================================================

; Indexes into percussion definitions signifying the first frame for
; each percussion in PasteHeck_tt_PercFreqTable.
; Caution: Values are stored with an implicit +1 modifier! To get the
; real index, subtract 1.
PasteHeck_tt_PercIndexes:
        dc.b $01, $10, $14


; The AUDF frequency values for the percussion instruments.
; If the second to last value is negative (>=128), it means it's an
; "overlay" percussion, i.e. the player fetches the next instrument note
; immediately and starts it in the sustain phase next frame. (Needs
; TT_USE_OVERLAY)
PasteHeck_tt_PercFreqTable:
; 0: KickRegular
        dc.b $03, $01, $03, $04, $04, $05, $05, $06
        dc.b $06, $07, $08, $0a, $0e, $14, $00
; 1: HH
        dc.b $04, $05, $02, $00
; 2: Snare
        dc.b $04, $06, $08, $0a, $0c, $0e, $10, $12
        dc.b $14, $16, $18, $1a, $1c, $1f, $00


; The AUDCx and AUDVx volume values for the percussion instruments.
; - Bits 7..4: AUDC value
; - Bits 3..0: AUDV value
; 0 means end of percussion data.
PasteHeck_tt_PercCtrlVolTable:
; 0: KickRegular
        dc.b $ef, $ee, $ed, $ec, $eb, $ea, $e9, $e8
        dc.b $e7, $e6, $e5, $e4, $e3, $e2, $00
; 1: HH
        dc.b $84, $84, $83, $00
; 2: Snare
        dc.b $8f, $8e, $8d, $8c, $8b, $8a, $89, $88
        dc.b $87, $86, $85, $84, $83, $82, $00


        
; =====================================================================
; Track definition
; The track is defined by:
; - tt_PatternX (X=0, 1, ...): Pattern definitions
; - PasteHeck_tt_PatternPtrLo/Hi: Pointers to the tt_PatternX tables, serving
;       as index values
; - PasteHeck_tt_SequenceTable: The order in which the patterns should be played,
;       i.e. indexes into PasteHeck_tt_PatternPtrLo/Hi. Contains the sequences
;       for all channels and sub-tracks. The variables
;       tt_cur_pat_index_c0/1 hold an index into PasteHeck_tt_SequenceTable for
;       each channel.
;
; So PasteHeck_tt_SequenceTable holds indexes into PasteHeck_tt_PatternPtrLo/Hi, which
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

; d0a
PasteHeck_tt_pattern0:
        dc.b $11, $08, $11, $08, $12, $08, $12, $08
        dc.b $13, $08, $08, $08, $12, $08, $11, $08
        dc.b $12, $08, $12, $08, $11, $08, $08, $08
        dc.b $13, $08, $08, $08, $11, $08, $11, $08
        dc.b $11, $08, $11, $08, $12, $12, $12, $08
        dc.b $13, $08, $08, $08, $12, $08, $11, $08
        dc.b $08, $08, $12, $08, $11, $08, $12, $08
        dc.b $13, $08, $08, $08, $12, $08, $12, $08
        dc.b $00

; d0b
PasteHeck_tt_pattern1:
        dc.b $11, $08, $11, $08, $12, $08, $11, $08
        dc.b $13, $08, $08, $08, $11, $08, $11, $08
        dc.b $11, $08, $11, $08, $11, $08, $12, $08
        dc.b $13, $08, $08, $08, $11, $08, $12, $08
        dc.b $11, $08, $12, $08, $12, $12, $12, $08
        dc.b $13, $08, $08, $08, $12, $08, $11, $08
        dc.b $12, $08, $12, $08, $11, $08, $12, $08
        dc.b $13, $08, $08, $08, $11, $08, $13, $08
        dc.b $00

; d0c
PasteHeck_tt_pattern2:
        dc.b $11, $08, $12, $08, $12, $08, $11, $08
        dc.b $13, $08, $08, $08, $11, $08, $12, $12
        dc.b $12, $08, $11, $08, $11, $08, $12, $08
        dc.b $13, $08, $08, $08, $11, $08, $12, $08
        dc.b $11, $08, $12, $08, $12, $12, $12, $08
        dc.b $13, $08, $08, $08, $12, $08, $11, $08
        dc.b $12, $12, $12, $08, $11, $08, $12, $08
        dc.b $13, $08, $13, $08, $11, $08, $13, $08
        dc.b $00

; d0d
PasteHeck_tt_pattern3:
        dc.b $12, $08, $12, $12, $12, $08, $12, $08
        dc.b $12, $08, $12, $08, $12, $08, $12, $08
        dc.b $12, $08, $12, $08, $12, $08, $12, $12
        dc.b $12, $08, $12, $08, $12, $12, $12, $08
        dc.b $12, $08, $12, $08, $12, $08, $12, $08
        dc.b $12, $12, $12, $08, $12, $08, $12, $08
        dc.b $12, $08, $12, $08, $12, $08, $12, $08
        dc.b $11, $11, $11, $08, $13, $08, $08, $08
        dc.b $00

; b0a
PasteHeck_tt_pattern4:
        dc.b $32, $08, $32, $08, $08, $08, $08, $08
        dc.b $34, $08, $32, $08, $08, $08, $32, $08
        dc.b $08, $08, $08, $08, $32, $08, $08, $08
        dc.b $2f, $08, $08, $08, $34, $08, $08, $08
        dc.b $00

; b0b
PasteHeck_tt_pattern5:
        dc.b $32, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $36, $08, $08, $08
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $34, $08, $08, $08, $08, $08, $08, $08
        dc.b $00

; b0c
PasteHeck_tt_pattern6:
        dc.b $2f, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $30, $08, $08, $08
        dc.b $08, $08, $08, $08, $34, $08, $08, $08
        dc.b $32, $08, $2f, $08, $34, $08, $08, $08
        dc.b $00

; b0d
PasteHeck_tt_pattern7:
        dc.b $38, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $34, $08, $08, $08
        dc.b $08, $08, $08, $08, $2f, $08, $08, $08
        dc.b $38, $08, $32, $08, $34, $08, $08, $08
        dc.b $00

; b+mel0a
PasteHeck_tt_pattern8:
        dc.b $32, $08, $32, $08, $08, $08, $50, $08
        dc.b $34, $08, $32, $08, $53, $08, $32, $08
        dc.b $56, $08, $53, $08, $32, $08, $08, $08
        dc.b $2f, $08, $08, $08, $34, $08, $5d, $08
        dc.b $32, $08, $08, $08, $5d, $08, $5a, $08
        dc.b $56, $08, $53, $08, $36, $08, $08, $08
        dc.b $57, $08, $08, $08, $53, $08, $56, $08
        dc.b $34, $08, $08, $08, $5a, $08, $08, $08
        dc.b $00

; b+mel0b
PasteHeck_tt_pattern9:
        dc.b $32, $08, $32, $08, $4e, $08, $50, $08
        dc.b $34, $08, $32, $08, $53, $08, $32, $08
        dc.b $50, $08, $4e, $08, $32, $08, $56, $08
        dc.b $2f, $08, $08, $08, $34, $08, $08, $08
        dc.b $2f, $08, $08, $08, $53, $08, $08, $08
        dc.b $56, $08, $53, $08, $30, $08, $08, $08
        dc.b $50, $08, $08, $08, $34, $08, $56, $08
        dc.b $32, $08, $2f, $08, $34, $08, $53, $08
        dc.b $00

; b+mel0c
PasteHeck_tt_pattern10:
        dc.b $32, $08, $32, $08, $08, $08, $4e, $08
        dc.b $34, $08, $32, $08, $50, $08, $32, $08
        dc.b $4e, $08, $53, $08, $32, $08, $56, $08
        dc.b $2f, $08, $53, $08, $08, $08, $08, $08
        dc.b $38, $08, $08, $08, $56, $08, $56, $08
        dc.b $53, $08, $50, $08, $34, $08, $4e, $08
        dc.b $56, $08, $50, $08, $2f, $08, $5a, $08
        dc.b $38, $08, $32, $08, $34, $08, $56, $08
        dc.b $00

; b+mel1a
PasteHeck_tt_pattern11:
        dc.b $32, $08, $32, $08, $53, $08, $53, $08
        dc.b $34, $08, $32, $08, $5a, $08, $32, $08
        dc.b $56, $08, $53, $08, $32, $08, $4e, $08
        dc.b $2f, $08, $50, $08, $34, $08, $08, $08
        dc.b $32, $08, $08, $08, $5a, $08, $5a, $08
        dc.b $56, $08, $53, $08, $36, $08, $78, $08
        dc.b $4e, $08, $56, $08, $74, $08, $53, $08
        dc.b $34, $08, $5a, $08, $70, $08, $56, $08
        dc.b $00

; b+mel1b
PasteHeck_tt_pattern12:
        dc.b $32, $08, $32, $08, $53, $08, $4e, $08
        dc.b $34, $08, $32, $08, $56, $08, $32, $08
        dc.b $53, $08, $08, $08, $32, $08, $53, $08
        dc.b $2f, $08, $50, $08, $34, $08, $08, $08
        dc.b $2f, $08, $08, $08, $5a, $08, $5a, $08
        dc.b $53, $08, $50, $08, $30, $08, $08, $08
        dc.b $5a, $08, $56, $08, $34, $08, $53, $08
        dc.b $32, $08, $2f, $08, $34, $08, $56, $08
        dc.b $00

; b+mel1c
PasteHeck_tt_pattern13:
        dc.b $32, $08, $32, $08, $5a, $08, $4e, $08
        dc.b $34, $08, $32, $08, $53, $08, $32, $08
        dc.b $50, $08, $50, $08, $32, $08, $53, $08
        dc.b $2f, $08, $83, $08, $34, $08, $08, $08
        dc.b $38, $08, $08, $08, $53, $08, $53, $08
        dc.b $5a, $08, $56, $08, $34, $08, $56, $08
        dc.b $5a, $08, $53, $08, $2f, $08, $5a, $08
        dc.b $38, $08, $32, $08, $34, $08, $53, $08
        dc.b $00

; mel0a
PasteHeck_tt_pattern14:
        dc.b $78, $08, $78, $08, $74, $08, $50, $08
        dc.b $94, $08, $92, $08, $53, $08, $70, $08
        dc.b $56, $08, $53, $08, $72, $08, $74, $08
        dc.b $72, $08, $78, $08, $74, $08, $5d, $08
        dc.b $7b, $08, $7b, $08, $5d, $08, $5a, $08
        dc.b $56, $08, $53, $08, $78, $08, $78, $08
        dc.b $57, $08, $7b, $08, $53, $08, $56, $08
        dc.b $78, $08, $74, $08, $5a, $08, $7b, $08
        dc.b $00

; mel0b
PasteHeck_tt_pattern15:
        dc.b $70, $08, $70, $08, $4e, $08, $50, $08
        dc.b $6d, $08, $70, $08, $53, $08, $72, $08
        dc.b $50, $08, $4e, $08, $74, $08, $56, $08
        dc.b $70, $08, $6d, $08, $70, $08, $78, $08
        dc.b $7b, $08, $72, $08, $53, $08, $74, $08
        dc.b $56, $08, $53, $08, $7b, $08, $78, $08
        dc.b $50, $08, $74, $08, $78, $08, $56, $08
        dc.b $7b, $08, $78, $08, $78, $08, $53, $08
        dc.b $00

; mel0c
PasteHeck_tt_pattern16:
        dc.b $78, $08, $78, $08, $74, $08, $4e, $08
        dc.b $78, $08, $7b, $08, $50, $08, $78, $08
        dc.b $4e, $08, $53, $08, $7b, $08, $56, $08
        dc.b $74, $08, $53, $08, $7b, $08, $78, $08
        dc.b $74, $08, $7b, $08, $56, $08, $56, $08
        dc.b $53, $08, $50, $08, $78, $08, $4e, $08
        dc.b $56, $08, $50, $08, $70, $08, $5a, $08
        dc.b $6d, $08, $70, $08, $74, $08, $56, $08
        dc.b $00




; Individual pattern speeds (needs TT_GLOBAL_SPEED = 0).
; Each byte encodes the speed of one pattern in the order
; of the tt_PatternPtr tables below.
; If TT_USE_FUNKTEMPO is 1, then the low nibble encodes
; the even speed and the high nibble the odd speed.
    IF TT_GLOBAL_SPEED = 0
PasteHeck_tt_PatternSpeeds:
%%PATTERNSPEEDS%%
    ENDIF


; ---------------------------------------------------------------------
; Pattern pointers look-up table.
; ---------------------------------------------------------------------
PasteHeck_tt_PatternPtrLo:
        dc.b <PasteHeck_tt_pattern0, <PasteHeck_tt_pattern1, <PasteHeck_tt_pattern2, <PasteHeck_tt_pattern3
        dc.b <PasteHeck_tt_pattern4, <PasteHeck_tt_pattern5, <PasteHeck_tt_pattern6, <PasteHeck_tt_pattern7
        dc.b <PasteHeck_tt_pattern8, <PasteHeck_tt_pattern9, <PasteHeck_tt_pattern10, <PasteHeck_tt_pattern11
        dc.b <PasteHeck_tt_pattern12, <PasteHeck_tt_pattern13, <PasteHeck_tt_pattern14, <PasteHeck_tt_pattern15
        dc.b <PasteHeck_tt_pattern16
PasteHeck_tt_PatternPtrHi:
        dc.b >PasteHeck_tt_pattern0, >PasteHeck_tt_pattern1, >PasteHeck_tt_pattern2, >PasteHeck_tt_pattern3
        dc.b >PasteHeck_tt_pattern4, >PasteHeck_tt_pattern5, >PasteHeck_tt_pattern6, >PasteHeck_tt_pattern7
        dc.b >PasteHeck_tt_pattern8, >PasteHeck_tt_pattern9, >PasteHeck_tt_pattern10, >PasteHeck_tt_pattern11
        dc.b >PasteHeck_tt_pattern12, >PasteHeck_tt_pattern13, >PasteHeck_tt_pattern14, >PasteHeck_tt_pattern15
        dc.b >PasteHeck_tt_pattern16        


; ---------------------------------------------------------------------
; Pattern sequence table. Each byte is an index into the
; PasteHeck_tt_PatternPtrLo/Hi tables where the pointers to the pattern
; definitions can be found. When a pattern has been played completely,
; the next byte from this table is used to get the address of the next
; pattern to play. tt_cur_pat_index_c0/1 hold the current index values
; into this table for channels 0 and 1.
; If PasteHeck_TT_USE_GOTO is used, a value >=128 denotes a goto to the pattern
; number encoded in bits 6..0 (i.e. value AND %01111111).
; ---------------------------------------------------------------------
PasteHeck_tt_SequenceTable:
        ; ---------- Channel 0 ----------
        dc.b $00, $01, $00, $02, $00, $01, $00, $02
        dc.b $00, $01, $00, $02, $00, $01, $00, $03
        dc.b $80

        
        ; ---------- Channel 1 ----------
        dc.b $04, $05, $04, $06, $04, $05, $04, $07
        dc.b $08, $09, $08, $0a, $0b, $0c, $0b, $0d
        dc.b $0e, $0f, $0e, $10, $91


        echo "Track size: ", *-PasteHeck_tt_TrackDataStart
