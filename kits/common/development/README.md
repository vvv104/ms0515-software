# Common development tools

The system macro library and the system object library of the kits that
came without DEC's: what MACRO reads from `SY:` and what LINK draws the
system calls from, the same files on every kit's disks.  Everything else
that was here - the compilers, the BASICs, the editors, the dump viewer,
`LIBR`, `ODT` - is under [`software/development/`](../../software/development/README.md).

| file | what | how to run |
|---|---|---|
| `SYSMAC.SML` | MACRO-11 system macro library — what MACRO reads from `SY:`, the same file on every kit's disks | read by MACRO |
| `SYSLIB.OBJ` | The RT-11 system library SYSLIB (28 KB) LINK draws the system calls from | object module for LINK |
