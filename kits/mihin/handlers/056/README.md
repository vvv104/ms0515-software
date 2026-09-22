# The handlers of the work diskette 056

Diskette `056` carries no monitor: it is the work diskette of the КВИ «Электроника МС0111» complex — an installation, not a machine, in which our МС 0515 runs ОСА and works as the terminal of a central МС 0108 under ФОДОС-4/TS (the diskette's own `TERM.TXT` says so, and is kept in [`../../../../programs/ms0111/`](../../../../programs/ms0111/README.md)) — and these five files are its handlers.  All three `.SYS` carry the sysgen word `TIM$IT` (4), which of the collection's monitors only Mihin's OS-16SJ has, and the cross-run bears that out: ОСА, ОМЕГА and ОМЕГА2 answer «Conflicting SYSGEN options» and then «Invalid device», Mihin's `INSTALL` and `LOAD` take all three.  That is why they lie here.

**No bundle names them**: `PC` and `RK` drive hardware the emulator does not have, so a disk made with them would only fail differently.  What is known about them is written down here instead; if the devices are ever emulated, the bundles are a few lines.

| file | what it is |
|---|---|
| `PC.SYS` | DEC's `PC` handler — the PC11 paper-tape reader and punch.  Device code 7, CSR `177550`, and a vector table of two: `070` for the reader and `074` for the punch, which is exactly what `PC.MAC` of DEC's V5.4 sources declares (`.DRDEF PC,7,<PR11$X*RONLY$>,0,177550,70`).  It polls bit 15 of the status register, moves a byte, and clears `177550` and `177554` when the request ends.  Not a link to anything: the earlier note here, which called it the channel to the central machine, was wrong |
| `PC.COM` | The `SIPP` script that patched it: offset `176` — the device address in the handler's header — set to `177550` |
| `RK.SYS` | DEC's `RK` handler — the RK05 cartridge disk, 4800 blocks (2.4 MB), which is what `RK.MAC` declares (`.DRDEF RK,0,FILST$,4800.,177400,220`).  This copy was moved to CSR `173100` and vector `350`, the addresses of the complex's own controller.  It has a primary driver — `?BOOT-U-I/O error` is in it — so a machine could boot from such a disk |
| `RK.COM` | The `SIPP` script that made it Mihin's: offset `60` — the sysgen word — set to `4`, which is `TIM$IT` |
| `SL.SYS` | Сторожевых's single-line editor, «SL V06.00b [SW] … СТОРОЖЕВЫХ С.В. 1987» — the older of the two SL this kit has.  See below for what it has that the V8.00 beside it has not |

Both `PC` and `RK` are of an RT-11 older than V5.4: their version words say `01`, while V5.4's sources build version `05` of `PC` and `08` of `RK` — checked by building them here with Mihin's SYSGEN answers, which gives files of the same size (1024 and 1536 bytes) and the same shape, but not the same bytes.

The complex's own programs, with their sources, are in [`../../../../programs/ms0111/`](../../../../programs/ms0111/README.md).

## The two SL of this kit

`056/SL.SYS` is V06.00b of 1987, `../SL.SYS` is V8.00 of 1990 — the same
program of the same author, five years apart.  Both are 5120 bytes and both
carry the `TIM$IT` sysgen word; the code of the newer is 174 bytes longer
(`004316` against `004060`), and it uses header words the older leaves at
zero (the class word, the `076` in the CSR field, the two install entries).

**V06.00b, 1987 — Сторожевых's own, in English.**  Its texts are English
throughout: `Assignments:`, `Symbol  Status  Value`, `Empty bytes:`,
`SL is set:`, `Loaded at`, `Unloaded`.  It carries the `LET` language with a
prompt of its own (`Let>`) and its help — `x=LINE  assign 'LINE' for 'x'`,
`x=LINE_ assign 'LINE'+auto<CR>`, `x/D - delete assignment for 'x'`,
`/A  - delete all assignments`, `/L  - show assignments`, and the line
`   For help use SET SL LET,/H`.  It knows what it is talking to —
`Your console is a VT`, `100 in VT52 mode`, `<Unknown>` — and it names the
keypad functions it binds (`NEW LIN`, `GET OLD`, `GET2OLD`, `TRUNC`,
`LEFT C`, `GOLD`, `RIGHT C`, `BEGIN`, `RESET`, `END`, `DEL CHR`, `DEL LIN`,
`UNDEL`, `REFRESH`, `CTRL U`, `CTRL W`, `RUBOUT`).  Two sample assignments
are baked in — `;Directory/Full/Block/VolumeId` and `Copy/System DK: SL:` —
and three startup lines: `$LO SL`, `$SET SL NOPRINT`, `$UNL SL`.

**V8.00, 1990 — adapted for the УБПК.**  Its banner says
«АДАПТАЦИЯ ДЛЯ УБПК НПФ "СЕНСОР" <1990>», and its texts are Russian in
KOI-7: `НАЗНАЧЕНИЯ`, `СИМВОЛ  СТАТУС  СТРОКА`, `СВОБОДНО..>`,
`**>НЕВЕРНАЯ КОМАНДА`.  It answers with messages the older has not
(`?SL-W-Buffer overflow`, `?SL-W-Invalid value, ignored`,
`?SL-W-[NO]PRINT ignored`) and it comes with that installation's own ten
hotkey assignments — `BASIC ALL`, `DIR DZ4:`, `AS DZ4: DK:`, `DEL DZ:`,
`DEL DZ4:`, `COP/Q DZ: DZ4:`, `COP/Q DZ4: DZ`, `COP/Q VM: DZ4:`,
`COP/Q DZ: VM:`, `RUN DBAS ALL` — where the copy of amk disk3, the one shipped as `../SL.SYS`,
has them blank.  The English `LET` help is gone.
