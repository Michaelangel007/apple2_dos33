# Apple ][ DOS 3.3C Source

## Versions

There are at least 3 version of DOS 3.3

* v1980 August 1980
* v1983 January 1983
* v1984 Copy ][ v5.0


## Conditional Compilation Flags

Page 39

```
ORIGIN  = $1B00
DIAGMOD =     0 ; Diagnostic Mode for RWTS
DOS33B  =     1 ; Version of DOS
ULC     =     0 ; =1 if assemble with lower case patch
``` 

## Source Includes (Chronological)

Page 39

|Source |Page |Description|Symbols|
|:------|----:|:----------|:------|
|RELOCTR| 110 | Relocator                     | BEGIN |
|DOSINIT|  48 | DOS Initialize                | DBINIT, DBRST, DBVECT |
|DOSHOOK|  44 | DOS Hook                      | CHRIN |
|CMDSCAN|  16 | Command Scanner               | SCNCMD |
|XOPNCLS| 150 | Execute Open Close            | GNXTC, GNBC, CLRCCB, GETNUM, HEXNUM, EPR, EMON, EMAXF, EDEL, ELOCK, EUNLK, EVAR, EREN, EAPND, EOPEN, ECLOSE, CLOSE, CLALL |
|XLODSAV| 140 | Execute Binary Load Save      | EBSV, EBLD, EBRUN, ESAVE, ELOAD |
|XMISCMD| 145 | Execute Misc. Commands        | EWRITE, EREAD, RWPOSN, EINIT, ECAT,  EAS, EINT, EEXEC, OCTD, ICFD, NXTEXC, MVEFTA |
|DOSGOER|  40 | DOS Go Error                  | DOSGO |
|BLDFTAB|   4 | Build File Tables             | BLDFTAB, MVCSW, MVOSW |
|CMDTBSL|  21 | Command Tables                | CMDNTB, EC1, CMDSTB |
|FDOSENT|  60 | File DOS Entry                | SC2, USERENT, ERR2 |
|FOPCLRW|  77 | File Open Close Read Write    | FOPEN, FCLOSE, FRNME, FREAD, FWRITE, RSPBYT, RNXBLK, GETBYT, WSPBYT, WSPBLK, PUTBYT |
|FDELCAT|  55 | File Delete Catalog           | FLOCK, FUNLCK, FPOSTN, FDEL, FDSUB, RDIR, PRNUM, CLCFCB, RTNFCB |
|FMTRWIO|  73 | Execute Format Request        | FFMT, RDFDIR |
|FLOCNXB|  63 | File Locate Next Byte         | RDVTOC, WRVTOC, RDVDIR, WRVDIR, MVVDBA, DCBIO, BADIO, LOCNXB, GNWSEC, INCRRB, INCSCB, MIBDA, DTBLN |
|FLOCSEC|  68 | Locate Sector for Record I/O  | FNDFIL, GETSEC |
|FVCBUFS|  86 | File, Volume, Catalog Buffers | FTTAB, VOLMES |
|BOOTLDR|   8 | Boot Loader                   | READNEXT, GOLOADER, BHERE2, TABLE, SC3, BUMPER, EOFFIX, FIXIT, FIXIT2, UPRCASE, BHERE1, BHERE4, DOSLODR, DOSINIT |
|COREQUS|  24 | Core EQU\'s                   | Q6L, Q6H, Q7L, Q7H |
|PRENIBL| 104 | Prenibblize                   | PRENIB16 |
|WRITRTN| 137 | Write Data                    | WRITE16 |
|POSTNRD| 101 | Post Nibblize Read            | POSTNB16 |
|RDADSEK| 106 | Read Address Seek             | RDADR16, SEEK |
|MSWAITR|  97 | Delay for Motor Startup       | MSWAIT, NIBL, PD2, NBUF1, NBUF2 |
|WRITADR| 134 | Write Address                 | WADR16, WBYTE |
|RWTSONE| 116 | Read Write Track Sector       | RWTS |
|RWTSTWO| 122 | Read Write Track Sector       | FORMDSK |
|FORMATR|  82 | Format all 35 tracks          | DSKFORM, FORMTRK, WTRACK16, INTRLEAV |
|DOSPTCH|  52 | Dos Patches                   | RCPATCH, CLRBYTE, ERROR9X, ENDOFDOS |


Extra info.:

* FVCBUFS Max Sectors in File Dir, Command Control Block


## Source Includes (Alphabetical)

|Source |Page |Lines|
|:------|----:|----:|
|BLDFTAB|   4 | 144 |
|BOOTLDR|   8 | 436 |
|CMDSCAN|  16 | 270 |
|CMDTBSL|  21 | 164 |
|COREQUS|  24 | 174 |
|DOSGOER|  40 | 215 |
|DOSHOOK|  44 | 215 |
|DOSINIT|  48 | 226 |
|DOSPTCH|  52 |  56 |
|FDELCAT|  55 | 249 |
|FDOSENT|  60 | 122 |
|FLOCNXB|  63 | 280 |
|FLOCSEC|  68 | 284 |
|FMTRWIO|  73 | 233 |
|FOPCLRW|  77 | 286 |
|FORMATR|  82 | 215 |
|FVCBUFS|  86 | 187 |
|MSWAITR|  97 | 202 |
|POSTNRD| 101 | 165 |
|PRENIBL| 104 |  54 |
|RDADSEK| 106 | 203 |
|RELOCTR| 110 | 337 |
|RWTSONE| 116 | 323 |
|RWTSTWO| 122 | 302 |
|WRITADR| 134 | 123 |
|WRITRTN| 137 | 128 |
|XLODSAV| 140 | 269 |
|XMISCMD| 145 | 254 |
|XOPNCLS| 150 | 290 |
|-------|-----|-----|
|Total: | n/a |6,406|


## Unused Source Files

|Source |Page |Symbols|
|:------|----:|:------|
|TEMPY  | 128 | MOVEOF, GOON, OFF80, FIXIT2 |
|TRASH  | 129 | FNDFIL, FF1, FF2, FF3, MVFN | 


## DOS 3.3 Disk Utility Contents

|Filename        |Page|File Type  | Description |
|:---------------|---:|:----------|:------------|
|ASMIDSTAMP      |  3 | TXT | Identification Timestamp             |
|BLOCKIO         |  7 | BIN | ProDOS binary utility                |
|DOS.TO.DISK     | 28 |EXEC | Script to convert .OBJ to disk image |
|DOS33C.OBJ      | 29 | BIN | Binary object of DOS 3.3             |
|EASM            | 54 | TXT | EASM build script to assemble        |
|HELLO.A         | 90 | BAS | Applesoft HELLO A program            |
|HELLO.B         | 91 | BAS | Applesoft HELLO B program            |
|MAKE.MASTER     | 92 | BAS | Applesoft make DOS master            |
|MASTER.3.3E     | 93 | BAS | Applesoft make DOS master            |
|MASTERE.OBJ0    | 96 | BIN | Utility BLOAD\'d by MASTER.3.3E      |


Misc. Files:

* ASMIDSTAMP: "12-JUL-83 #B00090"

## Disk -> Memory Map

|T/S |File |Mem  | Sector Identification      | Source, Page #          |
|:---|:----|:----|:---------------------------|:------------------------|
|T0S0|$3600|$B600| 01 A5 27 C9 .. 00 00 36 09 | BOOTLDR -- also loaded at $0800, 75 wasted bytes $B3..$FD |
|T0S1|$3700|$B700| 8E E9 37 8E .. 01 EF D8 00 | BOOTLDR (cont.) -- last byte wasted         |
|T0S2|$3800|$B800| A2 00 A0 00 .. AD D0 E7 A9 | PRENIBL @ $00..$29, WRITRTN @ $2A, POSTNRD  |
|T0S3|$3900|$B900| 00 88 84 26 .. 60 00 00 00 | wastes 3 bytes                              |
|T0S4|$3A00|$BA00| A2 11 CA D0 .. 3C 3D 3E 3F | MSWAITR page 97                             |
|T0S5|$3B00|$BB00| 00 00 00 00 .. 00 00 00 00 | MSWAITR line 201 - NBUF1 wastes entire sector|
|T0S6|$3C00|$BC00| 00 00 00 00 .. 00 00 00 00 | MSWAITR line 202 - NBUF2                    |
|T0S7|$3D00|$BD00| 84 48 85 49 .. 68 CE F8 04 |                                             |
|T0S8|$3E00|$BE00| D0 E5 F0 CA .. 44 C9 23 90 | RWTSTWO page 125                            |
|T0S9|$3F00|$BF00| D3 18 90 05 .. 09 4C 85 33 | FORMATR page 83 line 2                      |
|T0SA|$1B00|     | 4C 84 1D A9 .. AA EC 59 1C | RELOCTR page 110                            |
|T0SB|$1C00|     | 90 AF A9 3F .. FE FC FD FD | RELOCTR page 114 line 20, junk @ $81 .. $FF |
|T0SC|$1D00|     |                            | DOSINIT |
|T0SD|$1E00|     |                            | DOSINIT, DOSHOOK |
|T0SE|$1F00|     | | |
|T0SF|$2000|     | | |
|T1S0|$2100|     | | |
|T1S1|$2200|     | | |
|T1S2|$2300|     | | |
|T1S3|$2400|     | | |
|T1S4|$2500|     | | |
|T1S5|$2600|     | | |
|T1S6|$2700|     | 5E 1D BD 3F .. CA 68 48 C8 | BLDFTBL @ $D4 page 4                          |
|T1S7|$2800|     | 91 40 8A C8 .. 41 C4 42 52 | BLDFTBL (cont.) page 5, CMDTBLS @ $84 page 21 |
|T1S8|$2900|     | 55 CE 56 45 .. 45 52 52 20 | CMDTBLS page 21                               |
|T1S9|$2A00|     | 41 56 41 49 .. 33 E0 00 F0 | CMDTBLS (cont.) page 23                       |
|T1SA|$2B00|     | | |
|T1SB|$2C00|     | | |
|T1SC|$2D00|     | | |
|T1SD|$2E00|     | | |
|T1SE|$2F00|     | | |
|T1SF|$3000|     | | |
|T2S0|$3100|     | | |
|T2S1|$3200|     | | |
|T2S2|$3300|     | | |
|T2S3|$3400|     | | |
|T2S4|$3500|     | | |

Legend:

 * T/S: Logical Track/Sector on disk (i.e. Copy ]\[+ Sector Editor)
 * File = DOS33C.OBJ BLOAD address and BOOTLDR load address
 * Mem: Final relocated address in high memory
 * Id:  First and Last 4 bytes of page
 * Source: Original filename of assembly source


## Logical vs Physical Sector

DOS always translates a logical sector # into a raw physical sector number.

This is done in two places:

* BOOTLDR, Page #9, Line #, LDA TABLE,X
* MSWAITR, Page #123, Line #105, LDA INTRLEAV,Y

This DOS (sector) order is:

```
0 7 E 6 D 5 C 4 B 3 A 2 9 1 8 F (Hex) DOS 3.3 Boot Logical (and Copy ]\[+ Sector Edit)
0 1 2 3 4 5 6 7 8 9 A B C D E F (Hex) DOS 3.3 Boot Physical
```

If you are reading a DOS disk from assembly language, this is the T/S mapping:

|Logical|Physical|
|:---|:---|
|T0S0|T0S0|
|T0S1|T0SD|
|T0S2|T0SB|
|T0S3|T0S9|
|T0S4|T0S7|
|T0S5|T0S5|
|T0S6|T0S3|
|T0S7|T0S1|
|T0S8|T0SE|
|T0S9|T0SC|
|T0SA|T0S?|
|T0SB|T0S?|
|T0SC|T0S?|
|T0SD|T0S?|
|T0SE|T0S?|
|T0SF|T0SF|
|T1S0|T1S0|
|T1S1|T1S?|
|T1S2|T1S?|
|T1S3|T1S?|
|T1S4|T1S?|
|T1S5|T1S?|
|T1S6|T1S?|
|T1S7|T1S?|
|T1S8|T1S?|
|T1S9|T1S?|
|T1SA|T1S?|
|T1SB|T1S?|
|T1SC|T1S?|
|T1SD|T1S?|
|T1SE|T1S?|
|T1SF|T1SF|
|T2S0|T2S0|
|T2S1|T2S?|
|T2S2|T2S?|
|T2S3|T2S?|
|T2S4|T2S?|

Legend:

 * Logical = Track/Sector used by DOS mapped to a physical sector # (i.e. Copy ]\[+ Sector Editor)
 * Physical= Raw Track/Sector actually read/written on disk.

