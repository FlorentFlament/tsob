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

; Song author: 
; Song name: 

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
        dc.b $04, $06, $04, $0c, $04, $0c


; Instrument Attack/Decay start indexes into ADSR tables.
tt_InsADIndexes:
        dc.b $00, $20, $2a, $2a, $31, $31


; Instrument Sustain start indexes into ADSR tables
tt_InsSustainIndexes:
        dc.b $1c, $26, $2d, $2d, $40, $40


; Instrument Release start indexes into ADSR tables
; Caution: Values are stored with an implicit -1 modifier! To get the
; real index, add 1.
tt_InsReleaseIndexes:
        dc.b $1d, $27, $2e, $2e, $43, $43


; AUDVx and AUDFx ADSR envelope values.
; Each byte encodes the frequency and volume:
; - Bits 7..4: Freqency modifier for the current note ([-8..7]),
;       8 means no change. Bit 7 is the sign bit.
; - Bits 3..0: Volume
; Between sustain and release is one byte that is not used and
; can be any value.
; The end of the release phase is encoded by a 0.
tt_InsFreqVolTable:
; 0: GBsound
        dc.b $8f, $8e, $8c, $8b, $8a, $89, $88, $88
        dc.b $88, $87, $86, $86, $86, $85, $85, $85
        dc.b $84, $84, $84, $83, $83, $83, $82, $82
        dc.b $82, $81, $81, $81, $80, $00, $80, $00
; 1: bass2
        dc.b $8f, $8e, $8d, $8c, $8a, $88, $85, $00
        dc.b $80, $00
; 2+3: Lead2
        dc.b $88, $85, $72, $85, $00, $80, $00
; 4+5: Chords
        dc.b $86, $86, $76, $85, $75, $85, $74, $84
        dc.b $74, $83, $73, $83, $72, $82, $72, $81
        dc.b $71, $81, $00, $80, $00



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
        dc.b $01, $0a, $0e


; The AUDF frequency values for the percussion instruments.
; If the second to last value is negative (>=128), it means it's an
; "overlay" percussion, i.e. the player fetches the next instrument note
; immediately and starts it in the sustain phase next frame. (Needs
; TT_USE_OVERLAY)
tt_PercFreqTable:
; 0: KickRegular
        dc.b $03, $01, $05, $06, $05, $03, $05, $06
        dc.b $00
; 1: Hit
        dc.b $00, $01, $01, $00
; 2: Snarey
        dc.b $0c, $05, $07, $09, $0a, $0a, $0b, $0d
        dc.b $0f, $11, $0a, $18, $1b, $1f, $00


; The AUDCx and AUDVx volume values for the percussion instruments.
; - Bits 7..4: AUDC value
; - Bits 3..0: AUDV value
; 0 means end of percussion data.
tt_PercCtrlVolTable:
; 0: KickRegular
        dc.b $ef, $ee, $ed, $ec, $eb, $e9, $e6, $e2
        dc.b $00
; 1: Hit
        dc.b $83, $82, $82, $00
; 2: Snarey
        dc.b $8f, $8f, $8e, $8d, $8d, $8c, $8c, $8b
        dc.b $8a, $89, $87, $85, $83, $80, $00


        
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

; blank32
tt_pattern0:
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $00

; blank
tt_pattern1:
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $00

; GB_introL
tt_pattern2:
        dc.b $2f, $08, $27, $08, $08, $08, $08, $08
        dc.b $00

; b0a_1
tt_pattern3:
        dc.b $4f, $08, $08, $08, $4f, $08, $08, $08
        dc.b $4a, $08, $48, $08, $08, $08, $47, $08
        dc.b $08, $08, $47, $08, $48, $08, $4a, $08
        dc.b $48, $08, $08, $08, $47, $08, $08, $08
        dc.b $00

; b0a_2
tt_pattern4:
        dc.b $08, $08, $4f, $08, $4a, $08, $08, $08
        dc.b $4a, $08, $4b, $08, $4d, $08, $4b, $08
        dc.b $08, $08, $51, $08, $51, $08, $51, $08
        dc.b $51, $08, $08, $08, $51, $08, $08, $08
        dc.b $00

; b0a_3
tt_pattern5:
        dc.b $08, $08, $4a, $08, $48, $08, $4a, $08
        dc.b $45, $08, $47, $08, $08, $08, $48, $08
        dc.b $47, $08, $4b, $08, $4a, $08, $51, $08
        dc.b $51, $08, $08, $08, $4f, $08, $51, $08
        dc.b $00

; b0a_4
tt_pattern6:
        dc.b $08, $08, $08, $08, $48, $08, $08, $08
        dc.b $4a, $08, $48, $08, $4f, $08, $4a, $08
        dc.b $48, $08, $08, $08, $48, $08, $47, $08
        dc.b $51, $08, $4f, $08, $4c, $08, $4f, $08
        dc.b $00

; b0b_1
tt_pattern7:
        dc.b $4f, $10, $4f, $10, $4f, $10, $4f, $10
        dc.b $00

; b0b_2
tt_pattern8:
        dc.b $51, $08, $54, $08, $51, $08, $08, $08
        dc.b $00

; b0b_3
tt_pattern9:
        dc.b $47, $08, $48, $08, $4f, $08, $08, $08
        dc.b $4a, $08, $08, $08, $48, $08, $47, $08
        dc.b $00

; b0b_4
tt_pattern10:
        dc.b $4c, $10, $4c, $10, $4c, $10, $4c, $10
        dc.b $4b, $10, $4b, $10, $47, $08, $48, $08
        dc.b $00

; b0b_5
tt_pattern11:
        dc.b $47, $10, $47, $10, $08, $08, $48, $10
        dc.b $47, $10, $45, $08, $08, $08, $48, $08
        dc.b $00

; b+mel0a
tt_pattern12:
        dc.b $4f, $08, $78, $08, $4f, $08, $7f, $08
        dc.b $4a, $08, $48, $08, $74, $08, $47, $08
        dc.b $8b, $08, $47, $08, $48, $08, $4a, $08
        dc.b $48, $08, $74, $08, $47, $08, $94, $08
        dc.b $91, $08, $4f, $08, $4a, $08, $97, $08
        dc.b $4a, $71, $4b, $08, $4d, $08, $4b, $08
        dc.b $77, $08, $51, $08, $51, $08, $51, $08
        dc.b $51, $71, $8b, $08, $51, $08, $7f, $08
        dc.b $00

; b+mel0b
tt_pattern13:
        dc.b $4f, $08, $6f, $08, $4f, $08, $7a, $08
        dc.b $4a, $08, $48, $08, $8b, $08, $47, $08
        dc.b $7f, $08, $47, $08, $48, $08, $4a, $08
        dc.b $48, $08, $94, $08, $47, $08, $8f, $08
        dc.b $8d, $08, $4a, $08, $48, $08, $4a, $08
        dc.b $45, $08, $47, $08, $8b, $08, $48, $08
        dc.b $47, $08, $4b, $08, $4a, $08, $51, $08
        dc.b $51, $08, $6f, $6b, $4f, $6c, $51, $08
        dc.b $00

; b+mel0c
tt_pattern14:
        dc.b $4f, $08, $8b, $08, $4f, $08, $94, $08
        dc.b $4a, $08, $48, $08, $74, $08, $47, $08
        dc.b $97, $08, $47, $08, $48, $08, $4a, $08
        dc.b $48, $08, $94, $08, $47, $08, $9b, $08
        dc.b $7a, $08, $77, $08, $48, $08, $97, $08
        dc.b $4a, $08, $48, $08, $4f, $08, $4a, $08
        dc.b $48, $08, $9b, $08, $48, $08, $47, $08
        dc.b $51, $08, $4f, $67, $4c, $68, $4f, $67
        dc.b $00

; b+mel1a
tt_pattern15:
        dc.b $4f, $7f, $4f, $7a, $4f, $6f, $4f, $71
        dc.b $4f, $74, $4f, $08, $4f, $71, $4f, $08
        dc.b $4f, $6f, $4f, $6f, $4f, $6c, $4f, $6f
        dc.b $51, $71, $54, $6f, $51, $7f, $7a, $77
        dc.b $00

; b+mel1b
tt_pattern16:
        dc.b $4f, $94, $4f, $91, $4f, $8f, $4f, $08
        dc.b $4f, $8d, $4f, $8f, $4f, $91, $4f, $8f
        dc.b $47, $94, $48, $9b, $4f, $08, $7f, $8b
        dc.b $08, $4a, $8d, $8b, $48, $97, $47, $94
        dc.b $00

; b+mel1c
tt_pattern17:
        dc.b $4f, $94, $4f, $94, $4f, $7f, $4f, $7f
        dc.b $4f, $8b, $4f, $8d, $4f, $8f, $4f, $8d
        dc.b $4c, $6f, $4c, $6f, $4c, $68, $4c, $67
        dc.b $4b, $65, $4b, $67, $47, $68, $48, $67
        dc.b $00

; b+mel1d
tt_pattern18:
        dc.b $4f, $94, $4f, $91, $4f, $8f, $4f, $8d
        dc.b $4f, $6f, $4f, $71, $4f, $74, $4f, $08
        dc.b $47, $67, $47, $67, $08, $71, $48, $6f
        dc.b $47, $67, $45, $08, $68, $6b, $48, $67
        dc.b $00

; b1a_1
tt_pattern19:
        dc.b $4f, $08, $08, $08, $08, $08, $08, $08
        dc.b $00

; mel0a_1
tt_pattern20:
        dc.b $65, $08, $71, $08, $51, $08, $6f, $08
        dc.b $00

; mel0a_2
tt_pattern21:
        dc.b $65, $08, $64, $08, $51, $08, $68, $08
        dc.b $00

; mel0a_3
tt_pattern22:
        dc.b $65, $67, $68, $67, $51, $08, $8b, $08
        dc.b $7f, $08, $4f, $08, $51, $08, $7a, $08
        dc.b $00

; b1a_12
tt_pattern23:
        dc.b $4f, $08, $08, $08, $08, $08, $4a, $08
        dc.b $47, $08, $48, $08, $08, $08, $08, $08
        dc.b $4a, $08, $08, $08, $08, $08, $51, $65
        dc.b $67, $67, $48, $68, $47, $71, $6f, $7f
        dc.b $00

; mel1a_1
tt_pattern24:
        dc.b $bf, $08, $08, $08, $08, $08, $08, $08
        dc.b $4f, $08, $4f, $08, $bf, $08, $08, $08
        dc.b $08, $08, $08, $08, $4f, $08, $bf, $08
        dc.b $cd, $08, $51, $08, $67, $65, $4f, $08
        dc.b $00

; mel1a_2
tt_pattern25:
        dc.b $b5, $08, $08, $08, $af, $08, $b1, $08
        dc.b $4f, $08, $4f, $08, $b7, $08, $08, $08
        dc.b $08, $08, $b5, $08, $4f, $08, $af, $08
        dc.b $b1, $08, $51, $08, $cb, $08, $51, $08
        dc.b $00

; mel1a_3
tt_pattern26:
        dc.b $af, $08, $08, $08, $bf, $08, $b1, $08
        dc.b $4f, $08, $4f, $08, $b7, $08, $08, $08
        dc.b $b5, $08, $08, $08, $4f, $08, $b1, $08
        dc.b $af, $08, $4f, $08, $67, $65, $51, $08
        dc.b $00

; mel1a_4
tt_pattern27:
        dc.b $bf, $08, $08, $08, $ba, $08, $b7, $08
        dc.b $51, $08, $4f, $08, $b5, $08, $08, $08
        dc.b $bf, $08, $af, $08, $51, $08, $b1, $08
        dc.b $b7, $08, $51, $08, $68, $67, $4f, $08
        dc.b $00

; mel1a_5
tt_pattern28:
        dc.b $af, $08, $af, $08, $b1, $08, $af, $08
        dc.b $51, $08, $4f, $08, $b5, $08, $af, $08
        dc.b $cb, $08, $b1, $08, $51, $08, $af, $08
        dc.b $ac, $08, $51, $10, $51, $10, $51, $10
        dc.b $00

; b+mel2a
tt_pattern29:
        dc.b $bf, $08, $cb, $08, $bf, $08, $08, $08
        dc.b $ba, $08, $08, $08, $cd, $08, $08, $08
        dc.b $cb, $08, $97, $10, $b7, $08, $ba, $08
        dc.b $94, $10, $4f, $10, $4f, $10, $4f, $10
        dc.b $00

; b+mel2b
tt_pattern30:
        dc.b $bf, $08, $08, $08, $94, $10, $ba, $08
        dc.b $91, $10, $8f, $10, $cd, $08, $cb, $08
        dc.b $97, $10, $94, $10, $b7, $08, $ba, $08
        dc.b $9a, $10, $97, $10, $94, $10, $97, $10
        dc.b $00

; b+mel2c
tt_pattern31:
        dc.b $b5, $08, $b1, $08, $7f, $10, $b5, $08
        dc.b $b7, $08, $8b, $10, $ba, $08, $8d, $10
        dc.b $bf, $08, $8b, $10, $ba, $08, $bf, $08
        dc.b $b7, $08, $ba, $08, $4f, $10, $4f, $10
        dc.b $00

; b+mel2d
tt_pattern32:
        dc.b $b5, $08, $b1, $08, $b7, $08, $08, $08
        dc.b $b5, $08, $4f, $08, $bf, $08, $51, $08
        dc.b $cb, $08, $4f, $08, $bf, $08, $bf, $08
        dc.b $08, $08, $08, $08, $10, $08, $08, $08
        dc.b $00

; b20a
tt_pattern33:
        dc.b $4f, $10, $4f, $10, $d4, $08, $4f, $10
        dc.b $4f, $10, $d4, $08, $4f, $10, $4f, $10
        dc.b $d1, $08, $4f, $10, $4f, $10, $08, $08
        dc.b $54, $08, $db, $08, $d7, $08, $08, $08
        dc.b $00

; b02b
tt_pattern34:
        dc.b $4f, $10, $4f, $10, $d4, $08, $4f, $10
        dc.b $4f, $10, $d4, $08, $4f, $10, $4f, $10
        dc.b $d1, $08, $4f, $10, $4f, $10, $08, $08
        dc.b $4b, $08, $d7, $08, $d4, $08, $d7, $08
        dc.b $00

; b20c
tt_pattern35:
        dc.b $4f, $10, $4f, $10, $cf, $08, $4f, $10
        dc.b $54, $10, $d1, $08, $51, $10, $db, $08
        dc.b $d7, $08, $d4, $08, $51, $10, $51, $10
        dc.b $cf, $08, $d1, $08, $08, $08, $08, $08
        dc.b $00

; b02d
tt_pattern36:
        dc.b $54, $10, $54, $10, $d4, $08, $51, $10
        dc.b $51, $10, $d4, $08, $4f, $10, $4f, $08
        dc.b $d1, $08, $51, $10, $51, $10, $51, $10
        dc.b $af, $08, $b1, $08, $54, $10, $54, $10
        dc.b $00

; b0b_6
tt_pattern37:
        dc.b $6f, $08, $71, $08, $08, $08, $08, $10
        dc.b $00

; GB_introR
tt_pattern38:
        dc.b $08, $2f, $08, $27, $08, $08, $08, $08
        dc.b $00

; d0a_1
tt_pattern39:
        dc.b $11, $08, $11, $08, $12, $08, $08, $08
        dc.b $13, $08, $08, $08, $12, $08, $08, $08
        dc.b $12, $08, $12, $08, $11, $08, $08, $08
        dc.b $13, $08, $08, $08, $12, $08, $08, $08
        dc.b $00

; d0a_2
tt_pattern40:
        dc.b $12, $08, $12, $08, $11, $08, $08, $08
        dc.b $13, $08, $11, $08, $11, $08, $08, $08
        dc.b $12, $08, $12, $08, $11, $08, $11, $08
        dc.b $13, $08, $11, $08, $11, $08, $11, $08
        dc.b $00

; d0a_4
tt_pattern41:
        dc.b $11, $08, $11, $08, $11, $08, $08, $08
        dc.b $11, $08, $08, $08, $11, $08, $08, $08
        dc.b $11, $08, $12, $08, $11, $08, $12, $08
        dc.b $13, $08, $13, $08, $13, $08, $13, $08
        dc.b $00

; d0a_3
tt_pattern42:
        dc.b $08, $08, $08, $08, $08, $08, $08, $08
        dc.b $08, $08, $08, $08, $11, $08, $11, $08
        dc.b $11, $08, $12, $08, $11, $08, $12, $08
        dc.b $13, $08, $13, $08, $13, $08, $13, $08
        dc.b $00

; d+mel0a
tt_pattern43:
        dc.b $11, $78, $11, $74, $12, $08, $8b, $08
        dc.b $13, $08, $7a, $08, $12, $08, $77, $08
        dc.b $12, $08, $12, $08, $11, $08, $74, $08
        dc.b $13, $08, $7f, $08, $12, $08, $78, $08
        dc.b $12, $08, $12, $08, $11, $08, $6f, $08
        dc.b $13, $08, $12, $74, $11, $71, $12, $8b
        dc.b $11, $08, $12, $08, $11, $78, $11, $74
        dc.b $13, $08, $11, $08, $11, $6f, $11, $08
        dc.b $00

; d+mel0b
tt_pattern44:
        dc.b $11, $6f, $11, $71, $12, $08, $6c, $71
        dc.b $13, $6f, $08, $74, $12, $08, $71, $08
        dc.b $12, $08, $12, $08, $11, $08, $6f, $08
        dc.b $13, $08, $77, $08, $12, $08, $74, $08
        dc.b $12, $08, $12, $08, $11, $08, $7f, $08
        dc.b $13, $08, $12, $08, $11, $08, $11, $7a
        dc.b $11, $77, $12, $08, $11, $6f, $12, $71
        dc.b $13, $08, $13, $08, $13, $08, $13, $08
        dc.b $00

; d+mel0c
tt_pattern45:
        dc.b $11, $8d, $11, $7f, $12, $08, $7a, $08
        dc.b $13, $08, $8d, $08, $12, $08, $6f, $08
        dc.b $12, $08, $12, $08, $11, $08, $74, $08
        dc.b $13, $08, $71, $08, $12, $08, $74, $08
        dc.b $11, $08, $11, $08, $8d, $08, $8b, $08
        dc.b $11, $08, $6f, $08, $11, $08, $71, $08
        dc.b $11, $6c, $6f, $71, $11, $74, $12, $6f
        dc.b $13, $71, $13, $08, $13, $08, $13, $08
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
        dc.b <tt_pattern36, <tt_pattern37, <tt_pattern38, <tt_pattern39
        dc.b <tt_pattern40, <tt_pattern41, <tt_pattern42, <tt_pattern43
        dc.b <tt_pattern44, <tt_pattern45
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
        dc.b >tt_pattern36, >tt_pattern37, >tt_pattern38, >tt_pattern39
        dc.b >tt_pattern40, >tt_pattern41, >tt_pattern42, >tt_pattern43
        dc.b >tt_pattern44, >tt_pattern45        


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
        dc.b $00, $01, $02, $01, $01, $00, $00, $00
        dc.b $00, $03, $04, $03, $05, $03, $04, $03
        dc.b $06, $07, $07, $07, $08, $07, $07, $09
        dc.b $07, $07, $07, $08, $07, $07, $0a, $07
        dc.b $07, $07, $08, $07, $07, $09, $07, $07
        dc.b $07, $08, $07, $07, $0b, $0c, $0d, $0c
        dc.b $0e, $0f, $10, $0f, $11, $0f, $10, $0f
        dc.b $12, $03, $04, $03, $05, $03, $04, $03
        dc.b $06, $13, $01, $01, $14, $13, $01, $01
        dc.b $15, $13, $01, $01, $14, $13, $01, $16
        dc.b $13, $01, $01, $14, $13, $01, $01, $15
        dc.b $13, $01, $01, $14, $17, $0f, $10, $0f
        dc.b $11, $0f, $10, $0f, $12, $18, $19, $1a
        dc.b $1b, $18, $19, $1a, $1c, $1d, $1e, $1d
        dc.b $1f, $1d, $1e, $1d, $20, $21, $22, $21
        dc.b $23, $21, $22, $21, $24, $07, $07, $01
        dc.b $07, $07, $08, $01, $01, $07, $07, $01
        dc.b $07, $07, $08, $01, $25

        
        ; ---------- Channel 1 ----------
        dc.b $00, $01, $26, $01, $01, $27, $28, $27
        dc.b $29, $27, $28, $27, $2a, $27, $28, $27
        dc.b $29, $27, $28, $27, $29, $27, $28, $28
        dc.b $2a, $2b, $2c, $2b, $2d, $27, $28, $27
        dc.b $29, $27, $28, $28, $2a, $27, $28, $27
        dc.b $2a, $27, $28, $27, $29, $27, $28, $27
        dc.b $2a, $27, $28, $27, $29, $27, $28, $27
        dc.b $29, $27, $28, $28, $2a, $27, $28, $27
        dc.b $29, $27, $28, $28, $2a, $27, $28, $27
        dc.b $29, $27, $28, $27, $2a, $27, $28, $27
        dc.b $29, $27, $28, $27, $2a, $27, $28, $27
        dc.b $2a


        echo "Track size: ", *-tt_TrackDataStart
