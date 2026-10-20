# Pascal SM-4

The Pascal of the SM EVM and the DVK under RAFOS - the compiler whose
listings say «Pascal SM-4» and its run-time library, ident V1.2G - with
the RAFOS Pascal manuals.  None of it came from a diskette of the MS 0515;
all of it is from the DVK/UKNC archive at archive.pdp-11.org.ru
(`ukdwk_archive`):

- the compiler and its library are the bytes of the UKNC image
  `ukncbtlwebcomplekt/pascal/pascal.dsk` (volume PAF80; `sys52.dsk` has
  the same pair), dated 8-Aug-1992.  There they are `PASSAV.NEW` and
  `PASOBJ.NEW`, a newer build put beside the older `PASCAL.SAV` and
  `PASCAL.OBJ`; they ship here under the names they work by - the ones
  the manual gives, `SY:PASCAL.SAV` and `DK:PASCAL.OBJ`, and the one the
  same compiler has on the DVK image `dwkwebcomplekt/DSKMX/RT11/DSKMXC.DSK`,
  where its messages were turned into capitals;
- the manuals are from the DVK image
  `dwkwebcomplekt/Algol_C_F77_Pascal_Lisp/PASCAL.DSK`, dated 29-Nov-1988.

It is here because it runs on the MS 0515 - it needs no EIS or FIS (the
run-time multiplies and divides in software and emulates the
floating-point instructions the compiler emits) - and because it is the
compiler the RT-11 Tetris (`TETRIS.SAV` of the old games disks) was built
with: its run-time is this library's, all but a few words.

A program is compiled to MACRO-11, assembled and linked with the library:

    .RUN PASCAL PROG=PROG           (PROG.PAS -> PROG.MAC; PROG,PROG=PROG adds a listing)
    .RUN MACRO PROG=PROG
    .RUN LINK PROG=PROG,SY:PASCAL
    .RUN PROG

Compiled, assembled, linked and run so under DEC's RT-11 for the machine,
ОМЕГА, ОСА, Mihin's OS-16SJ and Rodionov's RT15SJ (2026-10-20).  Keys go
in the source as `(*$T-*)`, `(*$A-*)` and the like, MACRO-11 inline as
`(*$C ... *)` - `PASCAL.RUK` says how; `EXIT` leaves the innermost loop.

| file | what | how to run |
|---|---|---|
| `PASCAL.SAV` | The compiler, Pascal SM-4: reads PROG.PAS, writes PROG.MAC (MACRO-11) and, if asked, the listing.  `PASSAV.NEW` on its disks | `RUN PASCAL PROG=PROG` |
| `PASCAL.OBJ` | Its run-time library, V1.2G: what every compiled program is linked with.  `PASOBJ.NEW` on its disks | object module for LINK |
| `PASCAL.RUK` | «Программное обеспечение ДВК. РАФОС. Паскаль. Руководство программиста», 1987: the command line, the keys, MACRO inserts, external procedures, the run-time's messages.  Written for the DVK kit, whose files beside the compiler (`PASIMP`, `EMUL.OBJ`, `ROOT.OBJ`) are not here | text, KOI-7 |
| `PASCAL.LAN` | «... РАФОС. Паскаль. Описание языка», 1987: the language after Wirth's Revised Report and the RAFOS implementation's features | text, KOI-7 |
