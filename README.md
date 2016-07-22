
# DOS 3.3C Source Includes

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
|FVCBUFS|  86 | Max Sectors in File Dir, Command Control Block | |
|BOOTLDR|   8 | Boot Loader                   | READNEXT, GOLOADER, BHERE2, TABLE, SC3, BUMPER, EOFFIX, FIXIT, FIXIT2, UPRCASE, BHERE1, BHERE4, DOSLODR, DOSINIT |
|COREQUS|  24 | Core EQU's                    | Q6L, Q6H, Q7L, Q7H |
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


# Unused Source Files

|Source |Page |Symbols|
|:------|----:|:------|
|TEMPY  | 128 | MOVEOF, GOON, OFF80, FIXIT2 |
|TRASH  | 129 | FNDFIL, FF1, FF2, FF3, MVFN | 


# DOS 3.3 Contents

|Filename        |Page|
|:---------------|---:|
|ASMIDSTAMP      |  3 |
|BLOCKIO         |  7 |
|DOS.TO.DISK.EXEC| 28 |
|DOS33.OBJ       | 29 |
|EASM            | 54 |
|HELLO.A.BAS     | 90 |
|HELLO.B.BAS     | 91 |
|MAKE.MASTER     | 92 |
|MASTER.3.3E.BAS | 93 |
|MASTERE.OBJ0    | 96 |



# Disk -> Memory Map

|T/S |File |Mem  |Reloc|Source|
|:---|:----|:----|:----|:-----|
|T0S0|$3600|$0800| n/a |BOOTLDR          |
|T0S1|$3700|     |     |                 |
|T0S2|$3800|     |     |PRENIBL, WRITRTN |
|T0S3|$3900|     |     | |
|T0S4|$3A00|     |     | |
|T0S5|$3B00|     |     | |
|T0S6|$3C00|     |     | |
|T0S7|$3D00|     |     | |
|T0S8|$3E00|     |     | |
|T0S9|$3F00|     |     | |
|T0SA|$1B00|     |     | |
|T0SB|$1C00|     |     | |
|T0SC|$1D00|     |     | |
|T0SD|$1E00|     |     | |
|T0SE|$1F00|     |     | |
|T0SF|$2000|     |     | |
|T1S0|$2100|     |     | |
|T1S1|$2200|     |     | |
|T1S2|$2300|     |     | |
|T1S3|$2400|     |     | |
|T1S4|$2500|     |     | |
|T1S5|$2600|     |     | |
|T1S6|$2700|     |     | |
|T1S7|$2800|     |     | |
|T1S8|$2900|     |     | |
|T1S9|$2A00|     |     | |
|T1SA|$2B00|     |     | |
|T1SB|$2C00|     |     | |
|T1SC|$2D00|     |     | |
|T1SD|$2E00|     |     | |
|T1SE|$2F00|     |     | |
|T1SF|$3000|     |     | |
|T2S0|$3100|     |     | |
|T2S1|$3200|     |     | |
|T2S2|$3300|     |     | |
|T2S3|$3400|     |     | |
|T2S4|$3500|     |     | |

Legend:

 * T/S Track/Sector on Disk
 * DOS3.3 File Address
 * Load memory address
 * Relocated to high memory address
 * Source filename

