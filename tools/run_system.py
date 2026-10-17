"""run_system.py - the dec system diskette ms0515-run carries, made anew
from this collection and written into the emulator's repository.

    python tools/run_system.py            compose it, write it there if it changed
    python tools/run_system.py --check    say whether the emulator's copy is current

The emulator keeps the diskette as a file of its own
(src/tools/run/system/system.dsk) so that it builds from nothing but its
own repository; this collection is where the diskette's files live - the
dec kit and OSA's EM.SYS - so it is the one that refreshes it.  Run it
after either changes, then bring the new file into the emulator by a
pull request of its own.

The emulator's repository is $MS0515_DIR, else ../ms0515 beside this one;
the composer is its package/ms0515-disk (built there by `conan build`).
"""
from __future__ import annotations

import os
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
RECIPE = ["--system", "dec", "--media", "ss", "--add", "hd-rt11", "--add", "em"]


def emulator() -> Path:
    where = Path(os.environ["MS0515_DIR"]) if os.environ.get("MS0515_DIR") else ROOT.parent / "ms0515"
    if not (where / "src" / "tools" / "run").is_dir():
        sys.exit(f"no emulator repository at {where}: set MS0515_DIR")
    return where


def composer(emu: Path) -> Path:
    for name in ("ms0515-disk.exe", "ms0515-disk"):
        tool = emu / "package" / name
        if tool.is_file():
            return tool
    sys.exit(f"no ms0515-disk in {emu / 'package'}: build the emulator first")


def main() -> int:
    emu = emulator()
    target = emu / "src" / "tools" / "run" / "system" / "system.dsk"
    with tempfile.TemporaryDirectory() as tmp:
        made = Path(tmp) / "system.dsk"
        subprocess.run([str(composer(emu)), "compose", "--repo", str(ROOT), *RECIPE, str(made)],
                       check=True, stdout=subprocess.DEVNULL)
        new = made.read_bytes()
    old = target.read_bytes() if target.is_file() else b""
    if new == old:
        print(f"{target}: current")
        return 0
    if "--check" in sys.argv:
        print(f"{target}: differs from what this collection composes - run tools/run_system.py")
        return 1
    target.parent.mkdir(parents=True, exist_ok=True)
    target.write_bytes(new)
    print(f"{target}: written anew - commit it in the emulator's repository by a pull request")
    return 0


if __name__ == "__main__":
    sys.exit(main())
