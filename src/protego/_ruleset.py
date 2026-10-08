from __future__ import annotations

import logging
import math
from typing import TYPE_CHECKING, NamedTuple

from ._urlpattern import _PREFIX, _can_fetch, _FlatRule, _URLPattern
from ._utils import _hexescape, _parse_time_period, _quote_path, _quote_pattern

if TYPE_CHECKING:
    from datetime import time

    from ._protego import Protego


logger = logging.getLogger(__name__)


class RequestRate(NamedTuple):
    requests: int
    seconds: int
    start_time: time | None
    end_time: time | None


class VisitTime(NamedTuple):
    start_time: time
    end_time: time


class _Rule(NamedTuple):
    field: str
    value: _URLPattern


class _RuleSet:
    """Internal class which stores rules for a user agent."""

    def __init__(self, parser_instance: Protego):
        self.user_agent: str | None = None
        self._rules: list[_Rule] = []
        self._plain_prefixes: tuple[str, ...] | None = None
        self._flat_rules: list[_FlatRule] = []
        self._special_rules: list[_FlatRule] = []
        self._crawl_delay: float | None = None
        self._req_rate: RequestRate | None = None
        self._visit_time: VisitTime | None = None
        self._parser_instance: Protego = parser_instance

    def applies_to(self, robotname: str) -> int:
        """Return matching score."""
        assert self.user_agent is not None
        robotname = robotname.strip().lower()
        if self.user_agent == "*":
            return 1
        # Match the product token only at a token boundary. This avoids
        # false positives such as "bot" matching "mybot", while still
        # matching a token within a full User-Agent header, e.g.
        # "Mozilla/5.0 (compatible; Foobot/1.0)" matching "foobot".
        index = robotname.find(self.user_agent)
        while index != -1:
            if index == 0 or not (
                robotname[index - 1].isalnum() or robotname[index - 1] in "-_"
            ):
                return len(self.user_agent)
            index = robotname.find(self.user_agent, index + 1)
        return 0

    def _url_pattern(self, pattern: str) -> _URLPattern:
        """Return the URL pattern for a directive value.

        The same value usually appears once per user agent in a robots.txt,
        so patterns are shared across the rule sets of a parser.
        """
        cache = self._parser_instance._url_patterns
        if pattern not in cache:
            cache[pattern] = _URLPattern(_quote_pattern(pattern))
        return cache[pattern]

    def allow(self, pattern: str) -> None:
        if "$" in pattern:
            self.allow(pattern.replace("$", _hexescape("$")))

        url_pattern = self._url_pattern(pattern)
        self._rules.append(_Rule(field="allow", value=url_pattern))

        # If index.html is allowed, we interpret this as / being allowed too.
        page = "index.html"
        quoted = url_pattern._pattern
        if quoted.endswith(f"/{page}"):
            # Add the rule directly; going through allow() would treat the
            # "$" anchor as a literal dollar sign too.
            self._rules.append(
                _Rule(field="allow", value=_URLPattern(quoted.removesuffix(page) + "$"))
            )

    def disallow(self, pattern: str) -> None:
        if "$" in pattern:
            self.disallow(pattern.replace("$", _hexescape("$")))

        url_pattern = self._url_pattern(pattern)
        self._rules.append(_Rule(field="disallow", value=url_pattern))

    def finalize_rules(self) -> None:
        self._rules.sort(
            key=lambda r: (r.value.priority, r.field == "allow"), reverse=True
        )

    def _build_index(self) -> tuple[str, ...]:
        """Flatten the rules for the match loop, and split out the patterns
        that can only match as a prefix of a URL and the rules that can match
        otherwise.

        Built on the first match rather than at parse time because a
        robots.txt declares many rule sets and a crawler queries one.
        """
        prefixes = []
        flat_rules = []
        special = []
        for rule in self._rules:
            pattern = rule.value
            flat_rule = (pattern.kind, pattern.data, rule.field == "disallow")
            flat_rules.append(flat_rule)
            if pattern.kind == _PREFIX:
                prefixes.append(pattern._pattern)
            else:
                special.append(flat_rule)
        self._flat_rules = flat_rules
        self._special_rules = special
        self._plain_prefixes = tuple(prefixes)
        return self._plain_prefixes

    def can_fetch(self, url: str) -> bool:
        """Return if the url can be fetched."""
        url = _quote_path(url)
        # A plain pattern matches only as a prefix of the URL, so a single
        # startswith over all of them rules every one of them out at once.
        prefixes = self._plain_prefixes
        if prefixes is None:
            prefixes = self._build_index()
        rules = self._flat_rules if url.startswith(prefixes) else self._special_rules
        return _can_fetch(rules, url)

    @property
    def crawl_delay(self) -> float | None:
        """Get & set crawl delay for the rule set."""
        return self._crawl_delay

    @crawl_delay.setter
    def crawl_delay(self, delay: str) -> None:
        try:
            parsed_delay = float(delay)
        except ValueError:
            parsed_delay = None
        if parsed_delay is None or not math.isfinite(parsed_delay) or parsed_delay < 0:
            # Value is malformed, do nothing.
            logger.debug(
                f"Malformed rule at line {self._parser_instance._total_line_seen} : "
                f"cannot set crawl delay to '{delay}'. Ignoring this rule."
            )
            return
        self._crawl_delay = parsed_delay

    @property
    def request_rate(self) -> RequestRate | None:
        """Get & set request rate for the rule set."""
        return self._req_rate

    @request_rate.setter
    def request_rate(self, value: str) -> None:
        try:
            parts = value.split()
            if len(parts) == 2:
                rate, time_period = parts
            else:
                rate, time_period = parts[0], ""

            requests_str, seconds_str = rate.split("/")
            time_unit = seconds_str[-1].lower()
            if time_unit in ("s", "m", "h", "d"):
                seconds = int(seconds_str[:-1])
            else:
                time_unit = "s"
                seconds = int(seconds_str)
            requests = int(requests_str)

            if requests <= 0 or seconds <= 0:
                raise ValueError(f"Request rate must be positive: {value!r}")

            if time_unit == "m":
                seconds *= 60
            elif time_unit == "h":
                seconds *= 3600
            elif time_unit == "d":
                seconds *= 86400

            start_time = None
            end_time = None
            if time_period:
                start_time, end_time = _parse_time_period(time_period)
        except Exception:  # noqa: BLE001
            # Value is malformed, do nothing.
            logger.debug(
                f"Malformed rule at line {self._parser_instance._total_line_seen} : "
                f"cannot set request rate using '{value}'. Ignoring this rule."
            )
            return

        self._req_rate = RequestRate(requests, seconds, start_time, end_time)

    @property
    def visit_time(self) -> VisitTime | None:
        """Get & set visit time for the rule set."""
        return self._visit_time

    @visit_time.setter
    def visit_time(self, value: str) -> None:
        try:
            try:
                # "0400-0845"
                start_time, end_time = _parse_time_period(value)
            except ValueError:
                # "0400 0845"
                start_time, end_time = _parse_time_period(value, separator=" ")
        except Exception:  # noqa: BLE001
            logger.debug(
                f"Malformed rule at line {self._parser_instance._total_line_seen} : "
                f"cannot set visit time using '{value}'. Ignoring this rule."
            )
            return
        self._visit_time = VisitTime(start_time, end_time)
