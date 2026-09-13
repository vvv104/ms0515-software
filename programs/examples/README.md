# Examples

Samples written for the collection's own disks, not recovered software: a
first program to build on the machine, so the toolchain can be tried
before anything of one's own is typed in.  Sources only; the disk they go
on has the compiler.

| file | what | how to run |
|---|---|---|
| `HELLO.PAS` | `Hello, world!` in the Pascal the PAS1 compiler takes (`PROGRAM HELLO(INPUT,OUTPUT); BEGIN WRITELN('Hello, world!') END.`) | `PAS1 HELLO=HELLO`, `MACRO HELLO`, `LINK HELLO,PASLIB,PAS1`, `RUN HELLO` |

The bundle `hello-pas` carries it; its date is the working date the
Pascal disk sets (`DATE 01-APR-92`), since a file written for the
collection in 2026 has none an RT-11 directory could hold.
