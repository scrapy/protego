"""Uniform adapters over the ``robots.txt`` parsers compared in the README."""

from __future__ import annotations

import io
import platform
from importlib.metadata import version
from typing import TYPE_CHECKING, ClassVar
from urllib.robotparser import RobotFileParser

from protego import Protego

if TYPE_CHECKING:
    from collections.abc import Callable

_UA = "mybot"


class _Adapter:
    """Common interface over one ``robots.txt`` parser."""

    name: ClassVar[str]
    distribution: ClassVar[str | None]

    #: Directives the parser exposes, as names of the probes that cover them.
    #: A probe absent here is reported as unsupported without being run.
    directives: ClassVar[frozenset[str]] = frozenset()

    def __init__(self, content: str):
        self._parser = self._parse(content)

    @staticmethod
    def _parse(content: str) -> object:
        raise NotImplementedError

    def can_fetch(self, url: str) -> bool:
        raise NotImplementedError

    @classmethod
    def version(cls) -> str:
        return version(cls.distribution) if cls.distribution else ""


class ProtegoAdapter(_Adapter):
    name = "Protego"
    # Deliberately blank in the README: the table ships with the release.
    distribution = None
    directives = frozenset(
        {"crawl_delay", "request_rate", "visit_time", "sitemaps", "host"}
    )

    @staticmethod
    def _parse(content: str) -> Protego:
        return Protego.parse(content)

    def can_fetch(self, url: str) -> bool:
        return self._parser.can_fetch(url, _UA)


class RobotFileParserAdapter(_Adapter):
    name = "RobotFileParser"
    distribution = None
    directives = frozenset({"crawl_delay", "request_rate", "sitemaps"})

    @staticmethod
    def _parse(content: str) -> RobotFileParser:
        parser = RobotFileParser()
        parser.parse(io.StringIO(content).readlines())
        return parser

    def can_fetch(self, url: str) -> bool:
        return self._parser.can_fetch(_UA, url)

    @classmethod
    def version(cls) -> str:
        return f"Python {platform.python_version()}"


class RobotspyAdapter(_Adapter):
    name = "robotspy"
    distribution = "robotspy"
    directives = frozenset({"sitemaps"})

    @staticmethod
    def _parse(content: str) -> object:
        # Imported here so the CodSpeed suite, which only benchmarks Protego,
        # runs without the other parsers installed.
        import robots  # noqa: PLC0415

        return robots.RobotsParser.from_string(content)

    def can_fetch(self, url: str) -> bool:
        return self._parser.can_fetch(_UA, url)


class RerpAdapter(_Adapter):
    name = "Robotexclusionrulesparser"
    distribution = "robotexclusionrulesparser"
    directives = frozenset({"crawl_delay", "sitemaps"})

    @staticmethod
    def _parse(content: str) -> object:
        import robotexclusionrulesparser  # noqa: PLC0415

        parser = robotexclusionrulesparser.RobotExclusionRulesParser()
        parser.parse(content)
        return parser

    def can_fetch(self, url: str) -> bool:
        return self._parser.is_allowed(_UA, url)


ADAPTERS: list[type[_Adapter]] = [
    ProtegoAdapter,
    RobotFileParserAdapter,
    RobotspyAdapter,
    RerpAdapter,
]


def _probe_wildcards(adapter: type[_Adapter]) -> bool:
    parser = adapter("User-agent: *\nDisallow: /a/*/b\n")
    return not parser.can_fetch("/a/x/b") and parser.can_fetch("/a/x/c")


def _probe_precedence(adapter: type[_Adapter]) -> bool:
    # The Disallow rule comes first but is shorter, so the two orderings
    # disagree: length-based precedence allows the URL, first-match denies it.
    parser = adapter("User-agent: *\nDisallow: /a/b/\nAllow: /a/b/c\n")
    return parser.can_fetch("/a/b/c")


def _probe_crawl_delay(adapter: type[_Adapter]) -> bool:
    parser = adapter("User-agent: *\nCrawl-delay: 4\n")._parser
    getter = getattr(parser, "crawl_delay", None) or getattr(
        parser, "get_crawl_delay", None
    )
    return getter is not None and getter(_UA) in (4, 4.0)


def _probe_request_rate(adapter: type[_Adapter]) -> bool:
    parser = adapter("User-agent: *\nRequest-rate: 10/1m\n")._parser
    getter = getattr(parser, "request_rate", None)
    if getter is None:
        return False
    rate = getter(_UA)
    return rate is not None and (rate.requests, rate.seconds) == (10, 60)


def _probe_visit_time(adapter: type[_Adapter]) -> bool:
    parser = adapter("User-agent: *\nVisit-time: 0100-0200\n")._parser
    getter = getattr(parser, "visit_time", None)
    return getter is not None and getter(_UA) is not None


def _probe_sitemaps(adapter: type[_Adapter]) -> bool:
    content = "User-agent: *\nSitemap: http://example.com/sitemap.xml\n"
    parser = adapter(content)._parser
    for attribute in ("sitemaps", "site_maps"):
        value = getattr(parser, attribute, None)
        if value is None:
            continue
        found = value() if callable(value) else value
        if found and list(found) == ["http://example.com/sitemap.xml"]:
            return True
    return False


def _probe_host(adapter: type[_Adapter]) -> bool:
    parser = adapter("User-agent: *\nHost: http://example.co.in\n")._parser
    return getattr(parser, "preferred_host", None) == "http://example.co.in"


#: Feature rows of the README table, in display order, each paired with the
#: probe that decides whether a parser gets a checkmark.
FEATURES: list[tuple[str, str, Callable[[type[_Adapter]], bool]]] = [
    ("`Wildcard support`_", "wildcards", _probe_wildcards),
    ("`Length-based precedence`_", "precedence", _probe_precedence),
    ("Crawl-delay", "crawl_delay", _probe_crawl_delay),
    ("Request-rate", "request_rate", _probe_request_rate),
    ("Visit-time", "visit_time", _probe_visit_time),
    ("Sitemaps", "sitemaps", _probe_sitemaps),
    ("Host", "host", _probe_host),
]


def supports(adapter: type[_Adapter], key: str) -> bool:
    """Return whether *adapter* supports the feature named *key*."""
    probe = next(probe for _, name, probe in FEATURES if name == key)
    # Probes for directives call getters that a parser may not define at all;
    # the declared set keeps a missing attribute from reading as a failed probe.
    if key in {"crawl_delay", "request_rate", "visit_time", "sitemaps", "host"}:
        return key in adapter.directives and probe(adapter)
    return probe(adapter)
