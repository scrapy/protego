"""The work measured by both the CodSpeed suite and the README comparison."""

from __future__ import annotations

import json
from pathlib import Path
from typing import TYPE_CHECKING

if TYPE_CHECKING:
    from benchmarks._parsers import _Adapter

_CORPUS = Path(__file__).parent / "corpus"
_URLS = _CORPUS / "urls.json"

#: The crawler the measurements run as, a whole ``User-Agent`` header value
#: rather than a bare product token, since that is the costlier of the two
#: forms ``can_fetch`` accepts. No site of the corpus gives it a group of its
#: own, so every site is matched against its ``*`` rules, which is what a
#: crawler nobody has heard of gets. It is also the user agent the corpus was
#: collected with, so the URLs are the ones this crawler is allowed to see.
USER_AGENT = "protego-benchmark (+https://pypi.org/project/protego/)"


def corpus() -> list[tuple[str, list[str]]]:
    """Return the ``robots.txt`` and the URLs to match of every site measured.

    Both come from a live crawl of the top of a `Tranco
    <https://tranco-list.eu/>`_ list, so the sizes, the rule counts and the URL
    shapes are the ones a crawler meets rather than ones chosen to flatter a
    parser. ``benchmarks/fetch_corpus.py`` rebuilds them.
    """
    sites = json.loads(_URLS.read_text(encoding="utf-8"))
    return [
        ((_CORPUS / domain).read_text(encoding="utf-8"), urls)
        for domain, urls in sites.items()
    ]


def parse(
    adapter: type[_Adapter], sites: list[tuple[str, list[str]]]
) -> list[tuple[_Adapter, list[str]]]:
    return [(adapter(robotstxt), urls) for robotstxt, urls in sites]


def match(parsed: list[tuple[_Adapter, list[str]]]) -> None:
    for parser, urls in parsed:
        for url in urls:
            parser.can_fetch(url)
