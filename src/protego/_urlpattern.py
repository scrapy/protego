from __future__ import annotations

import re


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
            self._wildcard_parts, self._wildcard_ends_with_dollar = (
                self._prepare_wildcard_parts(pattern)
            )
        elif self._contains_dollar:
            self._pattern_before_dollar: str = self._pattern[:-1]

    def match(self, url: str) -> bool:
        """Return True if pattern matches the given URL, otherwise return False."""
        if not self._contains_asterisk:
            if not self._contains_dollar:
                return url.startswith(self._pattern)
            return url == self._pattern_before_dollar

        if not url.startswith(self._pattern_before_asterisk):
            return False

        return self._match_wildcard(url)

    def _match_wildcard(self, url: str) -> bool:
        parts = self._wildcard_parts
        ends_with_dollar = self._wildcard_ends_with_dollar

        pos = len(parts[0])

        for part in parts[1:-1]:
            idx = url.find(part, pos)
            if idx == -1:
                return False
            pos = idx + len(part)

        last = parts[-1]
        if ends_with_dollar:
            end_pos = len(url) - len(last)
            return end_pos >= pos and url[end_pos:] == last
        if not last:
            return True
        return url.find(last, pos) != -1

    @staticmethod
    def _prepare_wildcard_parts(pattern: str) -> tuple[list[str], bool]:
        ends_with_dollar = pattern.endswith("$")
        if ends_with_dollar:
            pattern = pattern[:-1]
        pattern = re.sub(r"\*+", "*", pattern)
        return pattern.split("*"), ends_with_dollar
