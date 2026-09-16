"""Regenerate the parser comparison table of ``README.rst``.

Run with ``--write`` to update the file in place, otherwise the table is
printed. Measuring requires ``valgrind``.
"""

from __future__ import annotations

import argparse
import os
import re
import shutil
import subprocess
import sys
from functools import cache
from pathlib import Path

from benchmarks._parsers import ADAPTERS, FEATURES, ProtegoAdapter, supports

README = Path(__file__).parent.parent / "README.rst"
START = ".. comparison-table-start"
END = ".. comparison-table-end"

#: Iteration counts for the two-point measurement. Instruction counts are taken
#: at both, and their difference is the cost of BASE iterations alone, which
#: cancels interpreter startup, imports and corpus loading.
BASE = 20
_REFS = re.compile(rb"^==\d+==\s+Collected\s+:\s+([\d,]+)", re.MULTILINE)

_SPEC = {
    "Protego": "Google_",
    "RobotFileParser": "`Martijn Koster's 1996 draft`_",
    "robotspy": "`RFC 9309`_",
    "Robotexclusionrulesparser": "`Martijn Koster's 1996 draft`_",
}


@cache
def _valgrind() -> str:
    path = shutil.which("valgrind")
    if path is None:
        raise SystemExit("valgrind is required to measure instruction counts.")
    return path


def _instructions(parser: str, bench: str, iterations: int) -> int:
    """Return the instructions executed by *iterations* rounds of *bench*."""
    process = subprocess.run(  # noqa: S603
        [
            _valgrind(),
            "--tool=callgrind",
            "--callgrind-out-file=/dev/null",
            sys.executable,
            "-m",
            "benchmarks._run",
            parser,
            bench,
            str(iterations),
        ],
        capture_output=True,
        check=True,
        cwd=README.parent,
        # Hash randomization perturbs dict and set behaviour, which shows up as
        # jitter in instruction counts.
        env={**os.environ, "PYTHONHASHSEED": "0"},
    )
    return _refs(process.stderr)


def _refs(stderr: bytes) -> int:
    """Return the instruction count from callgrind's summary on *stderr*."""
    found = _REFS.search(stderr)
    if not found:
        raise RuntimeError(
            f"No instruction count in callgrind output:\n"
            f"{stderr.decode(errors='replace')}"
        )
    return int(found.group(1).replace(b",", b""))


def _cost(parser: str, bench: str) -> int:
    return _instructions(parser, bench, 2 * BASE) - _instructions(parser, bench, BASE)


def _relative(baseline: int, other: int) -> str:
    """Return *other* as a percentage speed difference against *baseline*."""
    if other == baseline:
        return "0%"
    return f"{round((baseline / other - 1) * 100):+d}%"


def _measure() -> dict[str, str]:
    totals = {}
    for adapter in ADAPTERS:
        totals[adapter.name] = sum(
            _cost(adapter.name, bench) for bench in ("parse", "match")
        )
        print(f"  {adapter.name}: {totals[adapter.name]:,} instructions", flush=True)
    baseline = totals[ProtegoAdapter.name]
    return {
        name: "" if name == ProtegoAdapter.name else _relative(baseline, total)
        for name, total in totals.items()
    }


def _table(performance: dict[str, str]) -> str:
    columns = ["", *(adapter.name for adapter in ADAPTERS)]
    rows = [
        ["Version tested", *(adapter.version() for adapter in ADAPTERS)],
        ["Reference specification", *(_SPEC[adapter.name] for adapter in ADAPTERS)],
    ]
    rows += [
        [label, *("✓" if supports(adapter, key) else "" for adapter in ADAPTERS)]
        for label, key, _ in FEATURES
    ]
    rows.append(["Performance", *(performance[adapter.name] for adapter in ADAPTERS)])

    out = [".. list-table::", "   :header-rows: 1", "   :stub-columns: 1", ""]
    for row in [columns, *rows]:
        for index, cell in enumerate(row):
            bullet = "   *" if index == 0 else "    "
            out.append(f"{bullet} - {cell}".rstrip())
    return "\n".join(out)


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--write", action="store_true", help=f"update {README.name} in place"
    )
    args = parser.parse_args()

    _valgrind()

    print("Measuring…", file=sys.stderr)
    table = _table(_measure())

    if not args.write:
        print(table)
        return 0

    text = README.read_text(encoding="utf-8")
    updated = re.sub(
        rf"({re.escape(START)}\n\n).*?(\n\n{re.escape(END)})",
        lambda m: m.group(1) + table + m.group(2),
        text,
        flags=re.DOTALL,
    )
    if updated == text:
        if START not in text:
            raise SystemExit(f"Missing {START} marker in {README}")
        print("Table unchanged.")
        return 0
    README.write_text(updated, encoding="utf-8")
    print(f"Updated {README}.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
