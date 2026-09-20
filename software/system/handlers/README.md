# Handlers that belong to no kit

The `.SYS` handlers of the collection that came with no monitor of their own — everything else is in [`../../../kits/`](../../../kits/README.md), a folder per kit, with [`HANDLERS.md`](../../../kits/HANDLERS.md) saying which loads where.

| file | what | how to run |
|---|---|---|
| `PC.COM` | SIPP patch script for `PC.SYS` (`R SIPP`, `DK:PC.SYS/C`, then the patched offsets) | `@PC` |
| `PC.SYS` | Handler of the МС0111 terminal-complex disk (056): the link to the central machine as a character device.  The link registers are not emulated | `LOAD PC:` / `SET PC ON` |
| `RK.COM` | SIPP patch script for `RK.SYS` | `@RK` |
| `RK.SYS` | Handler of the same disk: the central machine's disk seen over the link | `LOAD RK:` / `SET RK ON` |
| `SL.SYS` | Сторожевых's single-line editor SL V06.00b of 1987, from the МС0111 complex disk 056: history and editing on the monitor's command line.  Of the collection's monitors only Mihin's loads it | `LOAD SL` then `SET SL ON` |

The complex's own programs, the ones that kept their sources, are in [`../../../programs/ms0111/`](../../../programs/ms0111/README.md).
