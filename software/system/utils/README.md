# Utilities

The five that belong to no kit and could not go to [`../../../kits/common/`](../../../kits/common/README.md) either, because a rival build of each is in a kit: `BINCOM` (the common kit has DEC's, built from the V5.4 sources), `DATIME` (the `dec` and `vvv` kits have theirs), `TERM` with its manual (Mihin's kit has the other cut) and `HELP.TXT`.  Run a utility by its bare name at the monitor prompt or with `R NAME`.

`TERM` makes the machine a terminal of another computer over its serial line.  The cut kept here is the one the work diskettes 056 and 172 carried, of the КВИ «Электроника МС0111» complex — an installation, not a machine: the МС 0515 runs ОСА and is the terminal, the central computer is an МС 0108 under ФОДОС-4 with the multi-user monitor TS.  The complex's own programs and the long manual that describes all this are in [`../../../programs/ms0111/`](../../../programs/ms0111/README.md).

| file | what | how to run |
|---|---|---|
| `BINCOM.SAV` | DEC RT-11 BINCOM V05.08, Russian-localized binary compare (files or devices, PATCH output for SIPP) | bare prompt, no answer to a bogus file name |
| `DATIME.SAV` | DATIME «(C) 1987» of the ВЦ АН СССР, from the work diskette 056 - the greeter with escape-sequence highlighting | `RUN DATIME` |
| `HELP.TXT` | «Описание команд операционной системы ФОДОС-3» - the command reference HELP.SAV prints, as plain text: ASSIGN, BOOT, COPY… with their syntax | text: `TYPE HELP.TXT`, or read on the host (koi8-r) |
| `TERM.SAV` | The terminal emulator as the work diskettes 056 and 172 carried it: asks the line speed (9600=1, 4800=0) and whether scrolling is smooth before entering terminal mode; this cut prints its prompts in KOI-7 | `RUN TERM` |
| `TERM.TXT` | The operator's page: how to call `TERM`, what «РЕЖИМ ЭМУЛЯЦИИ ТЕРМИНАЛА» means and that СУ/Е returns to ОСА.  One block, on the 064, 066 and 172 disks.  The nine-block manual of the same name, which describes the whole complex and its check-out, is in `programs/ms0111/` | text: `TYPE TERM.TXT`, or read on the host (koi8-r) |
