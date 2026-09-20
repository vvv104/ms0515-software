# MACRO-11: the system macro library

`SYSMAC.SML` is what MACRO reads from `SY:`, and it is the same file on every kit's disks.  The assemblers and linkers themselves are in [`../../../kits/`](../../../kits/README.md), each in its kit's `development/`.

| file | what | how to run |
|---|---|---|
| `SYSMAC.SML` | MACRO-11 system macro library | object module for LINK |

Programs that survived in several builds - `LINK.SAV`, `MACRO.SAV` - have one folder per kit here, each build in the folder of the disks it came from: `mihin/` - Mihin's OS-16SJ kits; `omega/` - the ОМЕГА kits; `vvv/` - the collector's disks.  The files in the table are common to every kit.
