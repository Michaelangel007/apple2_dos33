; BLOCKIO
; Write DOS 3.3 image to disk
;
; Syntax:
;    Block < StartAddr.EndAddr <Ctrl-Y> <Mode>
;
; Legend:
;    Block: 0000000T tttttsss
;    Mode : R or W
;
; Note: Block is a combined Track/Sector
;    Tttttt = Track
;    sss    = Sector
;
; Block to Track/Sector
;    Block  0 = T0S0
;    Block 15 = T2S9
;
; Examples:
;   00<6B00.8CFF<Ctrl-Y>W
;   15<8C00.91FF<Ctrl-Y>W
;
; ZP Mem usage:
;   [$A4] < [$A1].[$A2]
;                 [$0E]
;
; Comments by Michaelangel007
; Special thanks to TommyGH

END         EQU $0E     ; 16-bit pointer

MON_A1L     EQU $3C
MON_A1H     EQU $3D

MON_A2L     EQU $3E
MON_A2H     EQU $3F

MON_A4L     EQU $42
MON_A4H     EQU $43

IN_BUF      EQU $0200

USRADR      EQU $03F8   ; Ctrl-Y Vector
DO_RWTS     EQU $03D9   ; JMP $B7B5 RWTS (ReadWriteTrackSector)

IB_CMD_R    EQU 1
IB_CMD_W    EQU 2

IBSLOT      EQU $B7E9   ; DOS 3.3
IBDRVN      EQU $B7EA   ; DOS 3.3

MON         EQU $FF65
MONZ        EQU $FF69
PRERR       EQU $FF2D

            ORG $0300

MAIN
            LDA #$4C          ; "JMP" opcode
            STA USRADR        ; Ctrl-Y vector
            LDA #<USR         ; lo @ USR = $311
            STA USRADR+1      ;
            LDA #>USR         ; hi @ USR = $311
            STA USRADR+2      ;
            BNE QUIT          ; Always (assumes we are not running fro

USR         LDA IBSLOT        ;B7E9:60
            STA IOB_SLOT      ;
            STA IOB_OLD_SLT   ;
            LDA IBDRVN        ;B7EA:01
            STA IOB_DRIVE     ;
            STA IOB_OLD_DRV   ;

            LDX #$00
SCAN_BUF    LDA IN_BUF,X
            CMP #$99          ;Have Ctrl-Y?
            BEQ HAVE_CY       ;
            INX               ;
            BNE SCAN_BUF      ;Max 255 chars
HAVE_CY     LDA IN_BUF+1,X    ; Command: Write or Read
            LDY #IB_CMD_W     ; Default to write
            CMP #'W'+$80      ; W = Write
            BEQ HAVE_W        ;
            CMP #'R'+$80      ; R = Read
            BEQ HAVE_R        ;
QUIT        JMP MON           ; Unknown command, bail to monitor

HAVE_R      DEY               ; Change from write to read command
HAVE_W      STY IOB_CMD       ;

            LDA MON_A1L       ; [$A4] < [$A1].[$A2] <Ctrl-Y> <Cmd>
            STA IOB_BUF+0     ;
            LDA MON_A1H       ;
            STA IOB_BUF+1     ;

            LDA MON_A2L       ;
            STA END           ;
            LDA MON_A2H       ;
            STA END+1         ; C n        C bits
            LDA MON_A4L       ; ? tttttsss ? 00010101 A=15 
            ASL               ; t ttttsss0 0 00101010 A=2A  n*2
            AND #$0F          ; t 0000sss0 0 00001010 A=0A (n*2) & F
            TAY               ; Save sector
            DEY               ; NOTE: NEXT_SEC does INY then CPY
            STY CUR_SEC       ;
                              ;
            LSR MON_A4H       ; T ???????? 0 00000000  =00 High byte of Block!
            ROR MON_A4L       ; s Ttttttss 0 00001010  =0A
            ROR MON_A4L       ; s sTttttts 0 10000101  =05
            ROR MON_A4L       ; s ssTttttt 1 00000010  =02
            LDA MON_A4L       ; s ssTttttt 1 00000010  =02
            AND #$3F          ; s 00Tttttt 1 00000010  =02
            STA IOB_TRACK     ; Above is bloated, shorter is: LDA MON_A4H, ROR, ROR, ROR, AND #$3F, STA IOB_TRACK

NEXT_SEC    LDY CUR_SEC       ;
            INY               ;
            CPY #$10          ;Finished 16 sectors on track?
            BNE SAME_TRK      ;
            INC IOB_TRACK     ;Move to next track
            LDY #$00          ;Restart on Sector 0
SAME_TRK    LDA INTERLEAVE,Y  ;
            STA IOB_SECTOR    ;
            STY CUR_SEC       ;
            LDA #>IOB         ; hi @ IOB @ $3B8
            LDY #<IOB         ; lo @ IOB @ $3B8
            JSR DO_RWTS       ;
            BCC NO_ERR        ;v [Wastes 3 bytes: BCS ERR           ]
            JSR PRERR         ;  [PRERR should be before QUIT @ $33C]
            JMP MONZ          ;  [and this JMP can be omitted       ]
NO_ERR      INC MON_A1H       ;Useless StartAddress++
            INC IOB_BUF+1     ;
            LDA IOB_BUF       ;
            CMP END           ;C=(Current offset == done?)
            LDA IOB_BUF+1     ;
            SBC END+1         ;
            BCC NEXT_SEC      ;
            JMP MONZ          ;Wastes 1 bytes: BCS $33C

CUR_SEC     db #$A0           ;
INTERLEAVE  db #$00           ;
            db #$0E           ;
            db #$0D           ;
            db #$0C           ;
            db #$0B           ;
            db #$0A           ;
            db #$09           ;
            db #$08           ;
            db #$07           ;
            db #$06           ;
            db #$05           ;
            db #$04           ;
            db #$03           ;
            db #$02           ;
            db #$01           ;
            db #$0F           ;

IOB         db #$01           ; [0] IOB_OFFSET_TYPE: Hard-coded Type 1
IOB_SLOT    db #$A0           ; [1] IOB_OFFSET_SLOT
IOB_DRIVE   db #$A0           ; [2] IOB_OFFSET_DRV_NUM
IOB_VOLUME  db #$00           ; [3] IOB_OFFSET_VOL
IOB_TRACK   db #$E0           ; [4] IOB_OFFSET_TRK
IOB_SECTOR  db #$A0           ; [5] IOB_OFFSET_SEC
IOB_DCT     dw DCT            ; [6] IOB_OFFSET_DCT
IOB_BUF     dw $D2E8          ; [8] IOB_OFFSET_BUF
IOB_LEN     dw $A0A0          ; [A] IOB_OFFSET_LEN
IOB_CMD     db #$F7           ; [C] IOB_OFFSET_CMD, 1=Read, 2=Write
            db #$A0           ; [D] IOB_OFFSET_STATUS
            db #$A9           ; [E] IOB_OFFSET_MOD
IOB_OLD_SLT db #$9E           ; [F] IOB_OFFSET_PREV_SLOT
IOB_OLD_DRV db #$BD           ;[10] IOB_OFFSET_PREV_DRV

DCT         db #$00           ; [0] Device Type, $0 = Disk II
            db #$01           ; [1] Phases per Track-1
            dw $D8EF          ; [2] Motor on time in 100 microseconds
