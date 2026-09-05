# PRIMER

`PRIMER.SAV` with its manual `PRIMER.DOC`.  The program fails on start - «?Err 63 Illegal instruction trap in routine ""» repeated, PC 005342 - on every monitor; the runtime-library error text says it was built with a high-level compiler.  The manual reads fine.

| file | what | how to run |
|---|---|---|
| `PRIMER.DOC` | «Заполнение платёжного поручения» - a step-by-step instruction for a bank clerk: insert the diskette labelled ROSA, switch on, enter the date, pick R15.SAV in the commander, edit DOKUM.DOC=PLPARU.DOC, fill in the payment order… - the workplace of Rodionov's system | text: `TYPE PRIMER.DOC`, or read on the host (koi8-r) |
| `PRIMER.SAV` | Fails on start, repeating "?Err 63 Illegal instruction trap ... (PC=005342)" - a runtime error, not a screen | runtime error: ?Err63Illegalinstructiontrapinroutine""l |
