"""The work measured by both the CodSpeed suite and the README comparison."""

from __future__ import annotations

from pathlib import Path

CORPUS = Path(__file__).parent.parent / "tests" / "test_data" / "github.com"

#: Paths chosen to exercise the wildcard matcher: each one shares a prefix with
#: several patterns in the corpus, so matching cannot stop at the first
#: comparison.
URLS = [
    "/scrapy/protego/tree/master/src",
    "/scrapy/protego/blob/master/README.rst",
    "/scrapy/protego/commits/master/setup.py",
    "/scrapy/protego/issues/new",
    "/scrapy/protego/wiki/Home/History",
    "/scrapy/protego/pulse",
    "/scrapy/protego/forks",
    "/gist/someone/1234/revisions",
    "/orgs/scrapy/people",
    "/scrapy/protego",
]


def content() -> str:
    return CORPUS.read_text(encoding="utf-8")


def parse(adapter: type, robotstxt: str) -> object:
    return adapter(robotstxt)


def match(parser: object) -> None:
    for url in URLS:
        parser.can_fetch(url)
