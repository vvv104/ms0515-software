# BASIC

БЕЙСИК-ОМЕГА (`BASICO.SAV`, the native BASIC of the machine; manual `BASICO.DOC`) and BASIC/RAFOS (`BASIC.SAV`, asks which optional functions to load).  Both run with `R BASICO` / `R BASIC`.  Under БЕЙСИК-ОМЕГА `LOAD NAME` loads a `.BAS`, `RUN` runs it, `BYE` returns to the monitor (BASIC/RAFOS says `OLD NAME` instead).

| file | what | how to run |
|---|---|---|
| `BASIC.SAV` | BASIC / RAFOS V02-030 interpreter; asks which optional functions to load (ALL, NONE, OR INDIVIDUAL) | `RUN BASIC` |
| `BASICO.DOC` | Manual of БЕЙСИК-ОМЕГА («РАЗРАБОТАН ЛЬВОВСКИМ НАУЧНО-ИССЛЕДОВАТЕЛЬСКИМ ПРЕДПРИЯТИЕМ "ОМЕГА"»), 363 blocks. Pages 8-14 are lost: under blocks 29-45 the diskette holds monitor swap code, not text, and the three reads of disk5 (the only disk with the file) disagree there | text: `TYPE BASICO.DOC`, or read on the host (koi8-r) |
| `BASICO.SAV` | Omega BASIC for the Elektronika MS 0515, edition 1-01a; the native BASIC of the machine, ready prompt in Russian | `R BASICO`; `LOAD NAME` / `RUN` / `BYE` |
