# РБД-МИКРО

The relational DBMS of РТК МИКРО (1987-88) — programs and its documentation set (`INTRDB.DOC` introduction, `GENRDB.DOC` generator, `EDDOC.DOC` document generator, the menu and chart docs).  Start with `RUN RETRDB`.  The manuals describe more than survived: the CHART diagram program itself, the INTRDB command interpreter, the EDDOC document generator, the EDIMEN/INTMEN/PRIMEN menu shell, DEFRDB.PAS and LIBRDB.OBJ for programmers, MENU1/MENU2/RDBEK1.TXT - none of them is on any disk of the collection.

| file | what | how to run |
|---|---|---|
| `CHART.DOC` | Manual of the CHART graphics package of RBD-MIKRO (1988): bar/stacked/line/sector diagrams from a database, the command file format (OB, OC, TD, ZG...), keyboard table, and a sample bar chart drawn in pseudo-graphics. One stretch was lost in all three reads of disk5 - 153 bytes at the end of block 7, the description of the 'open database' command. It is restored here from INTRDB.DOC, the sister manual of the same package, which documents the same OB command in the same words (the text on both sides of the gap matches INTRDB's paragraph word for word); INTRDB's wording is a few bytes shorter, so the line is padded with spaces to keep every other byte in place | text: `TYPE CHART.DOC`, or read on the host (koi8-r/cp866) |
| `COLRDB.SAV` | Column-maintenance program of RBD-MIKRO | `RUN COLRDB` |
| `CRERDB.SAV` | Creates a database; part of RBD-MIKRO | `RUN CRERDB` |
| `EDDOC.DOC` | RUNOFF manual: «Технологический комплекс РТК МИКРО - средства генерации документов» - the document-generator of the РБД-МИКРО system | text: `TYPE EDDOC.DOC`, or read on the host (koi8-r/cp866) |
| `EDRDB.SAV` | Database editor; part of RBD-MIKRO | `RUN EDRDB` |
| `GENRDB.DOC` | RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ» - the database generator | text: `TYPE GENRDB.DOC`, or read on the host (koi8-r/cp866) |
| `GENRDB.SAV` | Task generator of RBD-MIKRO | `RUN GENRDB` |
| `INTRDB.DOC` | RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ», the introduction to РБД-МИКРО | text: `TYPE INTRDB.DOC`, or read on the host (koi8-r/cp866) |
| `MENU.DOC` | RUNOFF manual: «РТК МИКРО - система меню» - the programmer's menu shell of the complex (the largest of the set) | text: `TYPE MENU.DOC`, or read on the host (ascii) |
| `MERRDB.SAV` | Merges two databases; part of RBD-MIKRO | `RUN MERRDB` |
| `RDBEK.DOC` | RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ» - the operator's (эксплуатационная) part | text: `TYPE RDBEK.DOC`, or read on the host (koi8-r/cp866) |
| `RDBPR.DOC` | RUNOFF manual: «РТК МИКРО - реляционная СУБД для микро-ЭВМ» - the programmer's part | text: `TYPE RDBPR.DOC`, or read on the host (ascii) |
| `RETRDB.SAV` | Query program of the RBD-MIKRO relational DBMS; the document generator (EDDOC) plugs into it | `RUN RETRDB` |
| `SORRDB.SAV` | Sorts a database; part of RBD-MIKRO | `RUN SORRDB` |
| `UNIRDB.SAV` | Joins databases of the same shape; part of RBD-MIKRO | `RUN UNIRDB` |
