# Development: RT-11 V5.4 from sources

What DEC's programs are built with, itself built from DEC's V5.4 sources in the emulator's repository (`rt11_devel/projects/rt11`). Put here by its `kit/ship_kit.py`.

| file | what |
|---|---|
| `LINK.SAV` | LINK V5.4 - byte for byte what DEC's sources give |
| `LIBR.SAV` | The librarian. No kit of the machine had one, so no library could be rebuilt |
| `SYSMAC.SML` | DEC's system macro library |
| `SYSLIB.OBJ` | DEC's system object library. Not interchangeable with the Pascal kit's `SYSLIB.OBJ` (`../../../software/development/pascal/`): a `PIP` linked against that one builds without a complaint and dies of an overlay error |
| `ODT.OBJ` | The octal debugger, to be linked into the program it debugs |

`MACRO` is not here: DEC's V5.4 source kit has no source for it. The kits' own are in their `development/` folders.

Not in the catalogue (`CATALOG.md`, `catalog.csv`) yet.
