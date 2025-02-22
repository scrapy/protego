from __future__ import annotations

import logging
import re
from datetime import time
from typing import TYPE_CHECKING, NamedTuple
from urllib.parse import ParseResult, quote, urlparse, urlunparse

if TYPE_CHECKING:
    from collections.abc import Iterator

    # typing.Self requires Python 3.11
    from typing_extensions import Self


logger = logging.getLogger(__name__)


class _Rule(NamedTuple):
    field: str
    value: _URLPattern


class RequestRate(NamedTuple):
    requests: int
    seconds: int
    start_time: time | None
    end_time: time | None


class VisitTime(NamedTuple):
    start_time: time
    end_time: time


_DISALLOW_DIRECTIVE = {
    "disallow",
    "dissallow",
    "dissalow",
    "disalow",
    "diasllow",
    "disallaw",
}
_ALLOW_DIRECTIVE = {"allow"}
_USER_AGENT_DIRECTIVE = {"user-agent", "useragent", "user agent"}
_SITEMAP_DIRECTIVE = {"sitemap", "sitemaps", "site-map"}
_CRAWL_DELAY_DIRECTIVE = {"crawl-delay", "crawl delay"}
_REQUEST_RATE_DIRECTIVE = {"request-rate", "request rate"}
_VISIT_TIME_DIRECTIVE = {"visit-time", "visit time"}
_HOST_DIRECTIVE = {"host"}

_WILDCARDS = {"*", "$"}

_HEX_DIGITS = set("0123456789ABCDEFabcdef")

__all__ = ["Protego", "RequestRate"]


def _is_valid_directive_field(field: str) -> bool:
    return any(
        [
            field in _DISALLOW_DIRECTIVE,
            field in _ALLOW_DIRECTIVE,
            field in _USER_AGENT_DIRECTIVE,
            field in _SITEMAP_DIRECTIVE,
            field in _CRAWL_DELAY_DIRECTIVE,
            field in _REQUEST_RATE_DIRECTIVE,
            field in _HOST_DIRECTIVE,
        ]
    )


class _URLPattern:
    """Internal class which represents a URL pattern."""

    def __init__(self, pattern: str):
        self._pattern: str = pattern
        self.priority: int = len(pattern)
        self._contains_asterisk: bool = "*" in self._pattern
        self._contains_dollar: bool = self._pattern.endswith("$")

        if self._contains_asterisk:
            self._pattern_before_asterisk: str = self._pattern[
                : self._pattern.find("*")
            ]
        elif self._contains_dollar:
            self._pattern_before_dollar: str = self._pattern[:-1]

        self._pattern_compiled: re.Pattern[str] | None = None

    def match(self, url: str) -> bool:
        """Return True if pattern matches the given URL, otherwise return False."""
        # check if pattern is already compiled
        if self._pattern_compiled is not None:
            return bool(self._pattern_compiled.match(url))

        if not self._contains_asterisk:
            if not self._contains_dollar:
                # answer directly for patterns without wildcards
                return url.startswith(self._pattern)

            # pattern only contains $ wildcard.
            return url == self._pattern_before_dollar

        if not url.startswith(self._pattern_before_asterisk):
            return False

        _pattern_regex = self._prepare_pattern_for_regex(self._pattern)
        self._pattern_compiled = re.compile(_pattern_regex)
        return bool(self._pattern_compiled.match(url))

    @staticmethod
    def _prepare_pattern_for_regex(pattern: str) -> str:
        """Return equivalent regex pattern for the given URL pattern."""
        pattern = re.sub(r"\*+", "*", pattern)
        s = re.split(r"(\*|\$$)", pattern)
        for index, substr in enumerate(s):
            if substr not in _WILDCARDS:
                s[index] = re.escape(substr)
            elif s[index] == "*":
                s[index] = ".*?"
        return "".join(s)


class _RuleSet:
    """Internal class which stores rules for a user agent."""

    def __init__(self, parser_instance: Protego):
        self.user_agent: str | None = None
        self._rules: list[_Rule] = []
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
        if self.user_agent in robotname:
            return len(self.user_agent)
        return 0

    @staticmethod
    def _unquote(url: str, ignore: str = "", errors: str = "replace") -> str:
        """Replace %xy escapes by their single-character equivalent."""
        if "%" not in url:
            return url

        def hex_to_byte(h: str) -> bytes:
            """Replaces a %xx escape with equivalent binary sequence."""
            return bytes.fromhex(h)

        # ignore contains %xy escapes for characters that are not
        # meant to be converted back.
        ignore_set = {f"{ord(c):02X}" for c in ignore}

        # TODO: try to refactor this
        parts = url.split("%")
        parts_encoded: list[bytes] = [parts[0].encode("utf-8")]

        for i in range(1, len(parts)):
            # %xy is a valid escape only if x and y are hexadecimal digits.
            if len(parts[i]) >= 2 and set(parts[i][:2]).issubset(_HEX_DIGITS):
                # make sure that all %xy escapes are in uppercase.
                hexcode = parts[i][:2].upper()
                leftover = parts[i][2:]
                if hexcode not in ignore_set:
                    parts_encoded.append(
                        hex_to_byte(hexcode) + leftover.encode("utf-8")
                    )
                    continue
                parts[i] = hexcode + leftover

            # add back the '%' we removed during splitting.
            parts_encoded.append(b"%" + parts[i].encode("utf-8"))

        return b"".join(parts_encoded).decode("utf-8", errors)

    @staticmethod
    def hexescape(char: str) -> str:
        """Escape char as RFC 2396 specifies"""
        hex_repr = hex(ord(char))[2:].upper()
        if len(hex_repr) == 1:
            hex_repr = f"0{hex_repr}"
        return f"%{hex_repr}"

    def _quote_path(self, path: str) -> str:
        """Return percent encoded path."""
        parts = urlparse(path)
        path = self._unquote(parts.path, ignore="/%")
        path = quote(path, safe="/%")

        parts = ParseResult("", "", path, parts.params, parts.query, parts.fragment)
        path = urlunparse(parts)
        return path or "/"

    def _quote_pattern(self, pattern: str) -> str:
        if pattern.startswith(("https://", "http://")):
            pattern = "/" + pattern
        if pattern.startswith("//"):
            pattern = "//" + pattern

        # Corner case for query only (e.g. '/abc?') and param only (e.g. '/abc;') URLs.
        # Save the last character otherwise, urlparse will kill it.
        last_char = ""
        if pattern[-1] == "?" or pattern[-1] == ";" or pattern[-1] == "$":
            last_char = pattern[-1]
            pattern = pattern[:-1]

        parts = urlparse(pattern)
        pattern = self._unquote(parts.path, ignore="/*$%")
        pattern = quote(pattern, safe="/*%=")

        parts = ParseResult(
            "", "", pattern + last_char, parts.params, parts.query, parts.fragment
        )
        return urlunparse(parts)

    def allow(self, pattern: str) -> None:
        if "$" in pattern:
            self.allow(pattern.replace("$", self.hexescape("$")))

        pattern = self._quote_pattern(pattern)
        if not pattern:
            return
        self._rules.append(_Rule(field="allow", value=_URLPattern(pattern)))

        # If index.html is allowed, we interpret this as / being allowed too.
        if pattern.endswith("/index.html"):
            self.allow(pattern[:-10] + "$")

    def disallow(self, pattern: str) -> None:
        if "$" in pattern:
            self.disallow(pattern.replace("$", self.hexescape("$")))

        pattern = self._quote_pattern(pattern)
        if not pattern:
            return
        self._rules.append(_Rule(field="disallow", value=_URLPattern(pattern)))

    def finalize_rules(self) -> None:
        self._rules.sort(
            key=lambda r: (r.value.priority, r.field == "allow"), reverse=True
        )

    def can_fetch(self, url: str) -> bool:
        """Return if the url can be fetched."""
        url = self._quote_path(url)
        allowed = True
        for rule in self._rules:
            if rule.value.match(url):
                if rule.field == "disallow":
                    allowed = False
                break
        return allowed

    @property
    def crawl_delay(self) -> float | None:
        """Get & set crawl delay for the rule set."""
        return self._crawl_delay

    @crawl_delay.setter
    def crawl_delay(self, delay: str) -> None:
        try:
            self._crawl_delay = float(delay)
        except ValueError:
            # Value is malformed, do nothing.
            logger.debug(
                f"Malformed rule at line {self._parser_instance._total_line_seen} : "
                f"cannot set crawl delay to '{delay}'. Ignoring this rule."
            )

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
            requests, seconds = int(requests_str), int(seconds_str[:-1])

            if time_unit == "m":
                seconds *= 60
            elif time_unit == "h":
                seconds *= 3600
            elif time_unit == "d":
                seconds *= 86400

            start_time = None
            end_time = None
            if time_period:
                start_time, end_time = self._parse_time_period(time_period)
        except Exception:
            # Value is malformed, do nothing.
            logger.debug(
                f"Malformed rule at line {self._parser_instance._total_line_seen} : "
                f"cannot set request rate using '{value}'. Ignoring this rule."
            )
            return

        self._req_rate = RequestRate(requests, seconds, start_time, end_time)

    @staticmethod
    def _parse_time_period(time_period: str, separator: str = "-") -> tuple[time, time]:
        """Parse a string with a time period into a tuple of start and end times."""
        start_time_str, end_time_str = time_period.split(separator)
        start_time = time(int(start_time_str[:2]), int(start_time_str[-2:]))
        end_time = time(int(end_time_str[:2]), int(end_time_str[-2:]))
        return start_time, end_time

    @property
    def visit_time(self) -> VisitTime | None:
        """Get & set visit time for the rule set."""
        return self._visit_time

    @visit_time.setter
    def visit_time(self, value: str) -> None:
        try:
            start_time, end_time = self._parse_time_period(value, separator=" ")
        except Exception:
            logger.debug(
                f"Malformed rule at line {self._parser_instance._total_line_seen} : "
                f"cannot set visit time using '{value}'. Ignoring this rule."
            )
            return
        self._visit_time = VisitTime(start_time, end_time)


class Protego:
    def __init__(self) -> None:
        # A dict mapping user agents (specified in robots.txt) to rule sets.
        self._user_agents: dict[str, _RuleSet] = {}

        # Preferred host specified in the robots.txt
        self._host: str | None = None

        # A list of sitemaps specified in the robots.txt
        self._sitemap_list: list[str] = []

        # A memoization table mapping user agents (used in queries) to matched rule sets.
        self._matched_rule_set: dict[str, _RuleSet | None] = {}

        self._total_line_seen = 0
        self._invalid_directive_seen = 0
        self._total_directive_seen = 0

    @classmethod
    def parse(cls, content: str) -> Self:
        o = cls()
        if not isinstance(content, str):
            raise ValueError(f"Protego.parse expects str, got {type(content).__name__}")
        o._parse_robotstxt(content)
        return o

    def _parse_robotstxt(self, content: str) -> None:
        lines = content.splitlines()

        # A list containing rule sets corresponding to user
        # agents of the current record group.
        current_rule_sets: list[_RuleSet] = []

        # Last encountered rule irrespective of whether it was valid or not.
        previous_rule_field = None

        for line in lines:
            self._total_line_seen += 1

            # Remove the comment portion of the line
            hash_pos = line.find("#")
            if hash_pos != -1:
                line = line[0:hash_pos].strip()

            # Whitespace at the beginning and at the end of the line is ignored.
            line = line.strip()
            if not line:
                continue

            # Format for a valid robots.txt rule is "<field>:<value>"
            if line.find(":") != -1:
                field, value = line.split(":", 1)
            else:
                # We will be generous here and give it a second chance.
                parts = line.split(" ")
                if len(parts) < 2:
                    continue

                possible_filed = parts[0]
                for i in range(1, len(parts)):
                    if _is_valid_directive_field(possible_filed):
                        field, value = possible_filed, " ".join(parts[i:])
                        break
                    possible_filed += " " + parts[i]
                else:
                    continue

            field = field.strip().lower()
            value = value.strip()

            # Ignore rules with no value part (e.g. "Disallow: ", "Allow: ").
            if not value:
                previous_rule_field = field
                continue

            # Ignore rules without a corresponding user agent.
            if (
                not current_rule_sets
                and field not in _USER_AGENT_DIRECTIVE
                and field not in _SITEMAP_DIRECTIVE
            ):
                logger.debug(
                    f"Rule at line {self._total_line_seen} without any user agent to enforce it on."
                )
                continue

            self._total_directive_seen += 1

            if field in _USER_AGENT_DIRECTIVE:
                if (
                    previous_rule_field
                    and previous_rule_field not in _USER_AGENT_DIRECTIVE
                ):
                    current_rule_sets = []

                # Wildcards are not supported in the user agent values.
                # We will be generous here and remove all the wildcards.
                user_agent = value.strip().lower()
                user_agent_without_asterisk = None
                if user_agent != "*" and "*" in user_agent:
                    user_agent_without_asterisk = user_agent.replace("*", "")

                user_agents = [user_agent, user_agent_without_asterisk]
                for ua in user_agents:
                    if not ua:
                        continue
                    # See if this user agent is encountered before, if so merge these rules into it.
                    rule_set = self._user_agents.get(ua, None)
                    if rule_set and rule_set not in current_rule_sets:
                        current_rule_sets.append(rule_set)

                    if not rule_set:
                        rule_set = _RuleSet(self)
                        rule_set.user_agent = ua
                        self._user_agents[ua] = rule_set
                        current_rule_sets.append(rule_set)

            elif field in _ALLOW_DIRECTIVE:
                for rule_set in current_rule_sets:
                    rule_set.allow(value)

            elif field in _DISALLOW_DIRECTIVE:
                for rule_set in current_rule_sets:
                    rule_set.disallow(value)

            elif field in _SITEMAP_DIRECTIVE:
                self._sitemap_list.append(value)

            elif field in _CRAWL_DELAY_DIRECTIVE:
                for rule_set in current_rule_sets:
                    rule_set.crawl_delay = value

            elif field in _REQUEST_RATE_DIRECTIVE:
                for rule_set in current_rule_sets:
                    rule_set.request_rate = value

            elif field in _HOST_DIRECTIVE:
                self._host = value

            elif field in _VISIT_TIME_DIRECTIVE:
                for rule_set in current_rule_sets:
                    rule_set.visit_time = value

            else:
                self._invalid_directive_seen += 1

            previous_rule_field = field

        for rule_set in self._user_agents.values():
            rule_set.finalize_rules()

    def _get_matching_rule_set(self, user_agent: str) -> _RuleSet | None:
        """Return the rule set with highest matching score."""
        if not self._user_agents:
            return None

        if user_agent in self._matched_rule_set:
            return self._matched_rule_set[user_agent]
        score_rule_set_pairs = (
            (rs.applies_to(user_agent), rs) for rs in self._user_agents.values()
        )
        match_score, matched_rule_set = max(score_rule_set_pairs, key=lambda p: p[0])

        if not match_score:
            self._matched_rule_set[user_agent] = None
            return None
        self._matched_rule_set[user_agent] = matched_rule_set
        return matched_rule_set

    def can_fetch(self, url: str, user_agent: str) -> bool:
        """Return True if the user agent can fetch the URL, otherwise return False."""
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return True
        return matched_rule_set.can_fetch(url)

    def crawl_delay(self, user_agent: str) -> float | None:
        """Return the crawl delay specified for the user agent as a float.
        If nothing is specified, return None.
        """
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return None
        return matched_rule_set.crawl_delay

    def request_rate(self, user_agent: str) -> RequestRate | None:
        """Return the request rate specified for the user agent as a named tuple
        RequestRate(requests, seconds, start_time, end_time). If nothing is
        specified, return None.
        """
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return None
        return matched_rule_set.request_rate

    def visit_time(self, user_agent: str) -> VisitTime | None:
        """Return the visit time specified for the user agent as a named tuple
        VisitTime(start_time, end_time). If nothing is specified, return None.
        """
        matched_rule_set = self._get_matching_rule_set(user_agent)
        if not matched_rule_set:
            return None
        return matched_rule_set.visit_time

    @property
    def sitemaps(self) -> Iterator[str]:
        """Get an iterator containing links to sitemaps specified."""
        return iter(self._sitemap_list)

    @property
    def preferred_host(self) -> str | None:
        """Get the preferred host."""
        return self._host

    @property
    def _valid_directive_seen(self) -> int:
        return self._total_directive_seen - self._invalid_directive_seen
