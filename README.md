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

