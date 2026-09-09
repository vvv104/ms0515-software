# Saboteur 2 - repaired bodies

Both surviving builds with the drawing loop's Z80 count restored, and
nothing else touched.  Use them exactly like the originals one level up:
copy a folder's two files onto a DZ system disk and `R SABOT2`.

The room under the green building, entered by walking left from the
"BIKE ARRIVED" screen, is fatal in both builds as shipped - and on other
emulators, so it was fatal on the machine too.  Its floor is one fill of
exactly 256 tiles, and the data writes 256 as a count byte of 0, which is
what `LD B,0` / `DJNZ` counts on the Spectrum the game was ported from.
The port's loop is `SOB`, where 0 means 65536, so the fill runs over the
whole address space - through the game's own code and into the I/O page,
where it sets the hi-res bit of register C and scrambles the memory
dispatcher.

The repair puts the Z80 semantics back, in place:

```
SOB  R1, loop        ->    DECB R1
JMP  exit                  BNE  loop
                           BR   <another routine's JMP exit>
```

`DECB` touches only the low byte, and the count is always loaded with
`CLR R1` / `BISB`, so a count of 1..255 behaves exactly as before and 0
wraps to 255 and runs 256 times.  Six bytes change - at 020222 in `osa`
and 020320 in `omega` - and no code moves.

| build | file offset | before | after |
|---|---|---|---|
| osa   | 0x2092 | `077103 000167 173172` | `105301 001374 000732` |
| omega | 0x20d0 | `077103 000167 173172` | `105301 001374 000732` |
