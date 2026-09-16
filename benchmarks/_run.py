"""Run one benchmark a fixed number of times, for measurement under callgrind."""

from __future__ import annotations

import sys

from benchmarks._parsers import ADAPTERS
from benchmarks._workload import content, match, parse


def main() -> None:
    name, bench, iterations = sys.argv[1], sys.argv[2], int(sys.argv[3])
    adapter = next(a for a in ADAPTERS if a.name == name)
    robotstxt = content()

    if bench == "parse":
        for _ in range(iterations):
            parse(adapter, robotstxt)
    else:
        parser = parse(adapter, robotstxt)
        for _ in range(iterations):
            match(parser)


if __name__ == "__main__":
    main()
