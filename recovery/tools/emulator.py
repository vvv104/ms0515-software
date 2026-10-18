"""Where the emulator's tools are: its ms0515-disk and its Python scripts.
The recovery scripts use the emulator; the emulator knows nothing of them."""
import os
from pathlib import Path


def emulator() -> Path:
    """The emulator's repository: the folder $MS0515_DIR names, else
    `ms0515` beside this repository."""
    root = Path(__file__).resolve().parents[2]
    return Path(os.environ.get("MS0515_DIR") or root.parent / "ms0515")


def disk_tool() -> Path:
    """`package/ms0515-disk` of the emulator's repository."""
    tool = emulator() / "package" / "ms0515-disk.exe"
    return tool if tool.exists() else tool.with_suffix("")
