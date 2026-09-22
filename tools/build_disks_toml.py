"""build_disks_toml.py - make disks.toml out of the pieces that lie with the
files it describes.

    disks.head.toml        what the collection is: format, version, the media,
                           the headings of the sections, the presets
    kits.toml              which kits there are, where each lies and in what
                           order, and the folders that follow them
    <folder>/bundles.toml  the files of that folder: the systems whose monitor
                           is there, and a bundle per build

    python tools/build_disks_toml.py            write disks.toml
    python tools/build_disks_toml.py --check    say whether it is up to date

Nothing is reworded on the way: a piece's text is copied as it stands, so
what comes out is what the pieces say, and `--check` in CI keeps the two
from drifting apart.
"""
from __future__ import annotations

import re
import sys
import tomllib
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
HEAD = ROOT / "disks.head.toml"
KITS = ROOT / "kits.toml"
OUT = ROOT / "disks.toml"
PIECE = "bundles.toml"

MARK = {"kits": "# ---- kits ---", "systems": "# ---- systems ---",
        "bundles": "# ---- bundles ---", "kitsec": "# ==== Kits ===",
        "presets": "# ---- presets ---"}


def cut(text: str, marks: list[str]) -> list[str]:
    """The text between one heading and the next, headings kept."""
    out, at = [], 0
    for m in marks[1:]:
        i = text.index("\n" + m, at)
        out.append(text[at:i + 1])
        at = i + 1
    out.append(text[at:])
    return out


def part(text: str, kind: str) -> str:
    """A piece of a bundles.toml: what comes before the first [bundle. is the
    systems, the rest is the bundles."""
    m = re.search(r"(?m)^\[bundle\.", text)
    cutpoint = m.start() if m else len(text)
    head = text[:cutpoint]
    # a comment block right above the first bundle belongs to the bundles
    keep = re.search(r"(?s)\n(#[^\n]*\n)+\Z", head)
    if keep and m:
        cutpoint = cutpoint - (len(head) - keep.start() - 1)
    return text[:cutpoint] if kind == "systems" else text[cutpoint:]


def folders() -> tuple[list[Path], list[Path]]:
    kits = tomllib.loads(KITS.read_text(encoding="utf-8"))
    kit_dirs = [ROOT / k["path"] for k in kits["kit"].values()]
    areas = [ROOT / a for a in kits.get("areas", [])]
    listed = {d.resolve() for d in kit_dirs + areas}
    stray = sorted(p.parent for p in ROOT.rglob(PIECE)
                   if p.parent.resolve() not in listed)
    if stray:
        print("not named in kits.toml, appended at the end:",
              ", ".join(p.relative_to(ROOT).as_posix() for p in stray))
    return kit_dirs, areas + stray


def build() -> str:
    head = HEAD.read_text(encoding="utf-8")
    top, systems_head, bundles_head, kits_head, presets = cut(
        head, [MARK["kits"], MARK["systems"], MARK["bundles"], MARK["kitsec"],
               MARK["presets"]])
    kit_dirs, area_dirs = folders()
    pieces = {d: (d / PIECE).read_text(encoding="utf-8") for d in kit_dirs + area_dirs}

    kits_text = KITS.read_text(encoding="utf-8")
    out = [top, kits_text[kits_text.index(MARK["kits"]):].rstrip("\n"),
           "\n\n", systems_head]
    out += [part(pieces[d], "systems") for d in kit_dirs]
    out += [bundles_head, kits_head]
    out += [part(pieces[d], "bundles") for d in kit_dirs]
    out += [pieces[d] for d in area_dirs]
    out.append(presets)
    text = "".join(out)
    return re.sub(r"\n{3,}", "\n\n", text)


def main() -> int:
    text = build()
    if "--check" in sys.argv:
        now = OUT.read_text(encoding="utf-8")
        if now == text:
            print("disks.toml is what its pieces say")
            return 0
        print("disks.toml differs from its pieces - run tools/build_disks_toml.py")
        import difflib
        for line in list(difflib.unified_diff(now.split("\n"), text.split("\n"),
                                              "committed", "assembled", n=1))[:40]:
            print(line)
        return 1
    OUT.write_text(text, encoding="utf-8", newline="\n")
    print(f"disks.toml: {len(text.splitlines())} lines from "
          f"{len(list(ROOT.rglob(PIECE)))} pieces")
    return 0


if __name__ == "__main__":
    sys.exit(main())
