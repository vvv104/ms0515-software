# The RS profShell of the ОСА disks

| file | what | how to run |
|---|---|---|
| `RS.SYS` | EmeSoft's 'RT11 profShell' v06.05 (1990, build 13-Sep-94): a Norton-Commander-style disk shell packed into a 26-block pseudo-device handler. File panel with marks, and the whole toolbox on hotkeys - COPY/DELETE/RENAME/SQUEEZE/PROTECT/TYPE/DUMP (words/bytes/radix)/CREATE/INIT/MOUNT/BOOT/COPY-BOOT - plus LD containers, bad-block scan, search, saved state, and the greeting 'Жми на клавишу, не бойся ...'. Start with R RS.SYS or SET RS ON; uses EIS, so needs GETEML/EM on this machine. The System2/bg0515/superBAK7 and Buhgal monitors print its banner at boot - profShell is built into those builds | `LOAD RS` then `SET RS ON`; «Жми на клавишу, не бойся ...» |

The `System2`/`bg0515`/`superBAK7` diskettes booted into it: `LOAD RS` then `SET RS ON`.
