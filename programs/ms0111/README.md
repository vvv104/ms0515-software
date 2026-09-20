# The МС0111 terminal complex

The МС-0515 as a terminal of an МС0108 under ФОДОС-4/TS: the link initializer `EPP`, the `KUBUS` patch, the memory-mapping tests `PIC`/`PIC1`, and and the memory-mapping tests of that disk; its `PC` and `RK` handlers, which came without sources, are in [`../../software/system/handlers/`](../../software/system/handlers/README.md).  The terminal emulator itself, `TERM.SAV`, is a standard utility that the complex used - it is in `software/system/utils/` with its manual.  The link registers are not emulated, so these only start.

| file | what | how to run |
|---|---|---|
| `EPP.BAK` | Earlier revision of EPP.MAC, one line shorter (no TST @#177552 poll) - kept as the project's history | data file |
| `EPP.MAC` | Nine lines: writes the constant 47 to the register 173406 and exits - initialises the link adapter of the МС0111 complex | assemble with MACRO, then LINK |
| `EPP.OBJ` | Object module of EPP.MAC | object module for LINK |
| `EPP.SAV` | Link-channel initializer from the МС0111 terminal-complex disk: an 8251-style UART setup sequence into 173206 (dummy/mode/command bytes) plus 173406, then a test of 177552; run before TERM. Source EPP.MAC survives beside it | `RUN EPP` |
| `KUBUS.BAK` | Earlier revision of KUBUS.MAC with different patch addresses (21 lines apart) - kept as the project's history | data file |
| `KUBUS.MAC` | Fourteen lines: stores 13727 at 125464 (a patch into memory) and exits - the KUBUS fix of the complex | assemble with MACRO, then LINK |
| `KUBUS.OBJ` | Object module of KUBUS.MAC | object module for LINK |
| `KUBUS.SAV` | Ten-word in-memory patch from the МС0111 terminal-complex disk: pokes a polling sequence for I/O register 175200 (the link adapter) into code loaded at 125464 and exits. Source KUBUS.MAC survives beside it | `RUN KUBUS` |
| `PIC.SAV` | Extended-memory mapping TEST from the МС0111 complex disk (056): takes a file at its CSI '*' prompt, asks 'poehali?' and walks the mapped-memory API - create region, create window, map window, read/write/remap, reporting 'remap OK / read OK / write OK' per step (also prints 'user mode'/'digit mode'). Under our SJ monitors the mapping step fails with 'ERROR in macro or I-O error 22' - it expects the multi-user/XM environment of the complex's central machine world | prompt; answers ?CSI-F-Файлненайден* |
| `PIC1.SAV` | PIC.SAV with eleven bytes changed - ten size constants 6->8 and one address 040->044: the same memory-mapping test rebuilt for a larger window/region. An engineer's parameter sweep preserved as two binaries | prompt; answers ?CSI-F-Файлненайден* |
