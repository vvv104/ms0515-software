"""Where the emulator's ms0515-disk is.  The recovery scripts use the
emulator's build; the emulator knows nothing of them."""
import os
from pathlib import Path


def disk_tool() -> Path:
    """`package/ms0515-disk` of the emulator's repository: the folder
    $MS0515_DIR names, else `ms0515` beside this repository."""
    root = Path(__file__).resolve().parents[2]
    emulator = Path(os.environ.get("MS0515_DIR") or root.parent / "ms0515")
    tool = emulator / "package" / "ms0515-disk.exe"
    return tool if tool.exists() else tool.with_suffix("")
