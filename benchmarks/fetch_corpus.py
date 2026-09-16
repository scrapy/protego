"""Rebuild the benchmark corpus from live websites.

Walks a `Tranco <https://tranco-list.eu/>`_ list from the top, and for every
domain that serves both a ``robots.txt`` and a homepage worth crawling, saves
the ``robots.txt`` and the links the homepage offers. Run it as
``python -m benchmarks.fetch_corpus top-1m.csv``.
"""

from __future__ import annotations

import argparse
import json
import sys
from concurrent.futures import ThreadPoolExecutor
from html.parser import HTMLParser
from pathlib import Path
from urllib.error import HTTPError, URLError
from urllib.parse import urljoin, urlsplit
from urllib.request import Request, urlopen

from benchmarks._workload import USER_AGENT as _UA
from protego import Protego

_CORPUS = Path(__file__).parent / "corpus"
_URLS = _CORPUS / "urls.json"

_SITES = 100
#: A homepage offering fewer links than this is a landing page or an
#: interstitial, not the entry point of a site a crawler would walk.
_MIN_URLS = 10
_MAX_URLS = 30
_TIMEOUT = 15
#: RFC 9309 asks parsers to process at least 500 KiB of robots.txt.
_MAX_ROBOTSTXT = 512 * 1024
_MAX_HOMEPAGE = 2 * 1024 * 1024


class _LinkParser(HTMLParser):
    """Collects the ``href`` of every link of an HTML document."""

    def __init__(self) -> None:
        super().__init__(convert_charrefs=True)
        self.hrefs: list[str] = []

    def handle_starttag(self, tag: str, attrs: list[tuple[str, str | None]]) -> None:
        if tag != "a":
            return
        self.hrefs += [value for name, value in attrs if name == "href" and value]


def _get(url: str, limit: int) -> tuple[str, bytes] | None:
    """Return where *url* landed and its first *limit* bytes, or ``None``.

    The URL that comes back is the one redirects ended on, which is the host
    the response, and therefore the ``robots.txt`` governing it, belongs to.
    """
    request = Request(url, headers={"User-Agent": _UA})  # noqa: S310
    try:
        with urlopen(request, timeout=_TIMEOUT) as response:  # noqa: S310
            if response.status != 200:
                return None
            return response.url, response.read(limit)
    except (HTTPError, URLError, OSError, ValueError):
        return None


def _links(homepage: str, body: bytes) -> list[str]:
    """Return up to ``_MAX_URLS`` of the distinct on-site URLs *body* links to.

    A crawler queues every link a page offers, so the sample is taken at an
    even stride over all of them. Truncating instead would keep only the
    navigation links a homepage opens with, which are shorter and cleaner than
    the content links further down.
    """
    parser = _LinkParser()
    parser.feed(body.decode("utf-8", errors="replace"))
    host = urlsplit(homepage).netloc
    seen: dict[str, None] = {}
    for href in parser.hrefs:
        url = urljoin(homepage, href.strip())
        parts = urlsplit(url)
        if parts.scheme in ("http", "https") and parts.netloc == host:
            seen.setdefault(parts._replace(fragment="").geturl())
    links = list(seen)
    return links[:: max(1, len(links) // _MAX_URLS)][:_MAX_URLS]


def _robotstxt(host: str) -> str | None:
    """Return the ``robots.txt`` *host* serves, if it serves a usable one."""
    fetched = _get(f"https://{host}/robots.txt", _MAX_ROBOTSTXT)
    if not fetched:
        return None
    _, body = fetched
    try:
        return body.decode("utf-8")
    except UnicodeDecodeError:
        return None


def _fetch(domain: str) -> tuple[str, str, list[str]] | None:
    """Return the ``robots.txt`` and homepage links of *domain*, if it has both."""
    robotstxt = _robotstxt(domain)
    if robotstxt is None:
        return None
    homepage = f"https://{domain}/"
    if not Protego.parse(robotstxt).can_fetch(homepage, _UA):
        return None
    fetched = _get(homepage, _MAX_HOMEPAGE)
    if not fetched:
        return None
    homepage, page = fetched

    # A redirect can spell the host with its default port, which neither the
    # links of the page nor a file name can carry.
    parts = urlsplit(homepage)
    if parts.port == 443:
        parts = parts._replace(netloc=parts.hostname or parts.netloc)
        homepage = parts.geturl()

    # Apex domains routinely redirect to a www host, which serves its own
    # robots.txt and is the host the collected links belong to.
    host = parts.netloc
    if host != domain:
        robotstxt = _robotstxt(host)
        if robotstxt is None or not Protego.parse(robotstxt).can_fetch(homepage, _UA):
            return None

    urls = _links(homepage, page)
    if len(urls) < _MIN_URLS:
        return None
    return host, robotstxt, urls


def _candidates(listing: Path) -> list[str]:
    return [
        line.split(",")[-1].strip()
        for line in listing.read_text(encoding="utf-8").splitlines()
        if line.strip()
    ]


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("listing", type=Path, help="Tranco top-1m.csv")
    parser.add_argument("-n", "--sites", type=int, default=_SITES)
    args = parser.parse_args()

    # Keyed by host rather than by candidate, since several ranked domains can
    # redirect to one host, and that host has a single robots.txt.
    found: dict[str, tuple[str, list[str]]] = {}
    candidates = _candidates(args.listing)
    # Domains are tried in rank order but fetched in parallel, in batches wide
    # enough that a batch usually covers the shortfall left by the previous one.
    with ThreadPoolExecutor(max_workers=16) as pool:
        for start in range(0, len(candidates), 64):
            if len(found) >= args.sites:
                break
            batch = candidates[start : start + 64]
            for site in pool.map(_fetch, batch):
                if site:
                    host, robotstxt, urls = site
                    found.setdefault(host, (robotstxt, urls))
            print(f"  {start + len(batch)} tried, {len(found)} kept", file=sys.stderr)

    sites = list(found.items())[: args.sites]
    if len(sites) < args.sites:
        print(f"Only {len(sites)} of {args.sites} sites usable.", file=sys.stderr)

    _CORPUS.mkdir(exist_ok=True)
    for stale in _CORPUS.iterdir():
        stale.unlink()
    for host, (robotstxt, _) in sites:
        (_CORPUS / host).write_text(robotstxt, encoding="utf-8")
    _URLS.write_text(
        json.dumps({host: urls for host, (_, urls) in sites}, indent=1) + "\n",
        encoding="utf-8",
    )
    print(f"Saved {len(sites)} sites to {_CORPUS}.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
