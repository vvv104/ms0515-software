# The kits' system libraries

The system macro library and the system object library the machine's
kits shipped, the same files on every kit's disks (ОСА, ОМЕГА, the FODOS
builds of the vvv104 diskettes): what their MACRO reads from `SY:` and
what LINK draws the system calls from, and what PAS1's and FORTRAN's
programs link against.  Not interchangeable with DEC's pair in the folder
above: a `PIP` linked against this `SYSLIB` builds without a complaint
and dies, and PAS1's output wants this one.

| file | what | how to run |
|---|---|---|
| `SYSMAC.SML` | MACRO-11 system macro library — what MACRO reads from `SY:`, the same file on every kit's disks | read by MACRO |
| `SYSLIB.OBJ` | The RT-11 system library SYSLIB (28 KB) LINK draws the system calls from | object module for LINK |
