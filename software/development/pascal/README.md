# Pascal

OMSI Pascal-1 (`PAS1.SAV`, © ESI 1975-77) as adapted for the machine, its libraries, the graphics library `PASGRF.OBJ` with its manual `PASGR.DOC` and its declarations file `GRAPH.P1U` (the EXTERNAL procedure headers to include in a program), and three unit sources to include in your own programs: `STRING.PAS` (a string type with editing input and VAL), `SETPIX.PAS` (SetPixel straight into the video RAM) and `GETDAT.PAS` (the RT-11 date via inline MACRO).  `PASUSE.LST` is the usage guide, `PASCAL.LST` the language listing.

| file | what | how to run |
|---|---|---|
| `FORLIB.OBJ` | The FORTRAN IV run-time library (105 KB) that the OMSI Pascal programs are LINKed against for RAN and the FORTRAN-declared routines | object module for LINK |
| `GETDAT.PAS` | getdat(var d:data) - the system date (year 1972.., month, day) unpacked from the RT-11 .DATE word with inline MACRO-11 ({$C ... }), a unit for programs that stamp their output | compile with PAS1, MACRO, LINK |
| `GRAPH.P1U` | Declarations file of the PASGRF graphics library for OMSI Pascal-1: the EXTERNAL procedure headers (InitGraph, SetColor, SetFon, SetBorder, SetPixel...) to include in a program that links with PASGRF.OBJ | data file |
| `PAS1.OBJ` | The OMSI Pascal run-time support module («Trap to 4», «Not a valid device», «End of file on device»…) every compiled program is LINKed with | object module for LINK |
| `PAS1.SAV` | First pass of the Pascal compiler; prompts with * for a command line | `R PAS1`, then `*OUT,LST=IN.PAS` at the CSI prompt |
| `PAS1HD.OBJ` | A one-block object module whose only text is «Graphics library -- copyleft by Naumov A.I.» - the header of the graphics library | object module for LINK |
| `PASCAL.LST` | The Pascal language listing/reference that came with the compiler. Two reads of disk5 survived; this is the clean one (the other has junk in blocks 130, 150, 168-170) | text: `TYPE PASCAL.LST`, or read on the host (koi8-r) |
| `PASGR.DOC` | Manual of the Pascal graphics library PASGRF.OBJ: InitGraph, SetColor, SetFon, SetBorder, SetBright/ResBright, SetFlach, drawing and text routines, KbMode/inkey keyboard polling, with examples. Three reads of disk5 survived; this is the one clean one (the other two carry corrupt blocks 6-13 and 26) | text: `TYPE PASGR.DOC`, or read on the host (koi8-r) |
| `PASGRF.OBJ` | The graphics library for OMSI Pascal on the МС-0515: InitGraph, SetPixel, LINE, sprites - what the graphics programs LINK with | object module for LINK |
| `PASLIB.OBJ` | The Pascal library with the terminal routines (ClrScr, GotoXY, Inkey, KbMode, cursor on/off) the programs declare EXTERNAL | object module for LINK |
| `PASUSE.LST` | «ПАСКАЛЬ - руководство программиста», 45 sheets, 1982: the Pascal programmer's manual of the machine | text: `TYPE PASUSE.LST`, or read on the host (koi8-r) |
| `SETPIX.PAS` | SetPixel for the 640x200 hi-res screen written straight against the hardware: the pixel byte at VRAM 40000B + 80*y + x div 8, ORed with the bit mask, with the memory-dispatcher register 177400B / its shadow at 157700B switched to reach the video bank and restored; a one-call test main follows | compile with PAS1, MACRO, LINK |
| `STRING.PAS` | String library for OMSI Pascal (which has no string type): STRING = array[1..79] of char with STRINIT, STRLENG, STRREAD (raw keyboard input through the external KBMODE/INKEY of PASGRF, with backspace editing), STRWRITE, STRDELETE, STRINSERT and VAL (string to real with an error position); ends with a small self-test main | compile with PAS1, MACRO, LINK |
| `SYSLIB.OBJ` | The RT-11 system library SYSLIB (28 KB) LINK draws the system calls from | object module for LINK |
