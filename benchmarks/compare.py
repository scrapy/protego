"""Regenerate the parser comparison table of ``README.rst``.

Run with ``--write`` to update the file in place, otherwise the table is
printed.
"""

from __future__ import annotations

import argparse
import re
import sys
import time
from functools import partial
from pathlib import Path

from benchmarks._parsers import ADAPTERS, FEATURES, ProtegoAdapter, supports
from benchmarks._workload import corpus, match, parse

README = Path(__file__).parent.parent / "README.rst"
START = ".. comparison-table-start"
END = ".. comparison-table-end"

#: Timings are taken as the best of this many runs over the whole corpus. The
#: shortest run is the one least disturbed by the rest of the machine, and the
#: differences the table reports are far larger than what is left of that noise.
_REPEATS = 5

#: The benchmarks of ``benchmarks/_workload.py``, and the row each one gets.
#: Matching comes first because it dominates what a crawler spends here: a
#: robots.txt is parsed once per website and then matched against every URL
#: found on it.
_BENCHMARKS = {"match": "Matching performance", "parse": "Parsing performance"}

_SPEC = {
    "Protego": "`RFC 9309`_",
    "RobotFileParser": "`Martijn Koster's 1996 draft`_",
    "robotspy": "`RFC 9309`_",
    "Robotexclusionrulesparser": "`Martijn Koster's 1996 draft`_",
}


def _cost(adapter: type, bench: str) -> float:
    """Return the shortest time *adapter* takes to run *bench* over the corpus."""
    sites = corpus()
    if bench == "parse":
        work = partial(parse, adapter, sites)
    else:
        work = partial(match, parse(adapter, sites))

    best = float("inf")
    for _ in range(_REPEATS):
        started = time.perf_counter()
        work()
        best = min(best, time.perf_counter() - started)
    return best


def _relative(baseline: float, other: float) -> str:
    """Return *other* as a percentage speed difference against *baseline*."""
    if other == baseline:
        return "0%"
    return f"{round((baseline / other - 1) * 100):+d}%"


def _measure() -> dict[str, dict[str, str]]:
    """Return every parser's speed against Protego, per benchmark.

    Parsing and matching are reported apart because a parser fast at one can be
    slow at the other, and a single figure would hide that behind however many
    URLs the corpus happens to carry per site.
    """
    measured = {}
    for bench in _BENCHMARKS:
        totals = {}
        for adapter in ADAPTERS:
            totals[adapter.name] = _cost(adapter, bench)
            print(
                f"  {bench} {adapter.name}: {totals[adapter.name] * 1000:.1f} ms",
                flush=True,
            )
        baseline = totals[ProtegoAdapter.name]
        measured[bench] = {
            name: "" if name == ProtegoAdapter.name else _relative(baseline, total)
            for name, total in totals.items()
        }
    return measured


def _table(performance: dict[str, dict[str, str]]) -> str:
    columns = ["", *(adapter.name for adapter in ADAPTERS)]
    rows = [
        ["Version tested", *(adapter.version() for adapter in ADAPTERS)],
        ["Reference specification", *(_SPEC[adapter.name] for adapter in ADAPTERS)],
    ]
    rows += [
        [label, *("✓" if supports(adapter, key) else "" for adapter in ADAPTERS)]
        for label, key, _ in FEATURES
    ]
    rows += [
        [label, *(performance[bench][adapter.name] for adapter in ADAPTERS)]
        for bench, label in _BENCHMARKS.items()
    ]

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
