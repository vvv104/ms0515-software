# Savings-bank workstation

The programs of the sberkassa disk — `PMK.SAV` (teller station v1.2), `KZARM.SAV` (printer self-test) and the registration block `AAUSER.MSH`.  PMK needs its card file, which lived past the file system of the original disk and is not published.

| file | what | how to run |
|---|---|---|
| `AAUSER.MSH` | Registration block of the savings-bank workstation: branch identity '7503/0141 00010001' (отделение/филиал 7503/0141, window 0001) plus a few config words; the deposit records themselves live past the file area of the Buhgal disk | data file of `PMK.SAV`, keep beside it |
| `KZARM.SAV` | Printer self-test of the savings-bank workstation ('КЗ АРМ' - контрольная задача): 'ПУ не готово! Когда будет готово, нажмите Y', repeat/exit prompts | needs a printer |
| `PMK.SAV` | Savings-bank teller workstation, 'PMK Версия 1.2': deposits and payments (ВКЛАДЫ/ПЛАТЕЖИ), operational-day cycle (ОТКРЫТИЕ/ПЕРЕРЫВ/ПРОДОЛЖЕНИЕ/ИТОГИ/ЗАКЛЮЧЕНИЕ), deposit kinds incl. ДЕТСКИЙ and МОЛОДЕЖНО-ПРЕМИАЛЬНЫЙ. The Buhgal monitor autostarts it; it accesses its data past the file system, so it lives only on the byte-copy - where it boots into an operational day interrupted 03.04.02 (in use until 2002!). To enter: type the interrupted day's date, digits only (030402) | `RUN PMK`; needs the card file of the original disk, so it stops at the menu here |
