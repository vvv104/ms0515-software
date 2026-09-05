# Saboteur 2

«Saboteur 2», omega-games 1991: `SABOT2.SAV` is a small loader that reads the 85-block game body `SABOT2.DAT` into high memory, overlays the monitor and reboots on exit - it needs the full 128 KB machine and the data file beside it.  Two builds of the body survived and both ship, each in its own folder with a copy of the loader: `osa/` from the ОСА disks (keyboard), `omega/` from the omega-games disk 059 (reads the joystick).  The loader opens `DZ:SABOT2.DAT` by device name, so it runs only from a DZ system volume (not a DV-booted one): copy either folder's two files onto a DZ system disk and `R SABOT2`.  The high-score table opens with the localizers' names - IGOR IWAN, IWAN ALEKS, GENNADIJ P., JURIJ IGOR, LENA - above the original DARREN, NOEL, BRAD...

