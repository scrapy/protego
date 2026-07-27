from __future__ import annotations

from datetime import time
from urllib.parse import ParseResult, quote, urlparse, urlunparse

_HEX_DIGITS = set("0123456789ABCDEFabcdef")


def _parse_time_of_day(value: str) -> time:
    """Parse an HMM or HHMM time-of-day value."""
    value = value.strip()
    if not (3 <= len(value) <= 4 and value.isascii() and value.isdigit()):
        raise ValueError(f"Invalid time of day: {value!r}")
    return time(int(value[:-2]), int(value[-2:]))


def _parse_time_period(time_period: str, separator: str = "-") -> tuple[time, time]:
    """Parse a string with a time period into a tuple of start and end times."""
    start_time_str, end_time_str = time_period.split(separator)
    return _parse_time_of_day(start_time_str), _parse_time_of_day(end_time_str)


def _parse_int(value: str) -> int:
    """Parse a plain decimal integer, rejecting other forms that int()
    accepts, such as "1_0", "+5" or non-ASCII digits."""
    if not (value.isascii() and value.isdigit()):
        raise ValueError(f"Invalid integer: {value!r}")
    return int(value)


def _parse_float(value: str) -> float:
    """Parse a plain non-negative decimal number, rejecting other forms that
    float() accepts, such as "1_000", "1e2", "inf" or "-5"."""
    integral = value.replace(".", "", 1)
    if not (integral.isascii() and integral.isdigit()):
        raise ValueError(f"Invalid number: {value!r}")
    return float(value)


def _unquote(url: str, ignore: str = "", errors: str = "replace") -> str:
    """Replace %xy escapes by their single-character equivalent."""
    if "%" not in url:
        return url

    # ignore contains %xy escapes for characters that are not
    # meant to be converted back.
    ignore_set = {f"{ord(c):02X}" for c in ignore}

    parts = url.split("%")
    parts_encoded: list[bytes] = [parts[0].encode("utf-8")]

    for part in parts[1:]:
        # %xy is a valid escape only if x and y are hexadecimal digits.
        if len(part) >= 2 and set(part[:2]).issubset(_HEX_DIGITS):
            # make sure that all %xy escapes are in uppercase.
            hexcode = part[:2].upper()
            leftover = part[2:]
            if hexcode not in ignore_set:
                parts_encoded.append(bytes.fromhex(hexcode) + leftover.encode("utf-8"))
                continue
            part = hexcode + leftover

        # add back the '%' we removed during splitting.
        parts_encoded.append(b"%" + part.encode("utf-8"))

    return b"".join(parts_encoded).decode("utf-8", errors)


def _hexescape(char: str) -> str:
    """Escape char as RFC 2396 specifies"""
    return f"%{ord(char):02X}"


def _quote_path(path: str) -> str:
    """Return percent encoded path."""
    parts = urlparse(path)
    path = _unquote(parts.path, ignore="/%")
    path = quote(path, safe="/%")

    parts = ParseResult("", "", path, parts.params, parts.query, parts.fragment)
    path = urlunparse(parts)
    return path or "/"


def _quote_pattern(pattern: str) -> str:
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
    pattern = _unquote(parts.path, ignore="/*$%")
    pattern = quote(pattern, safe="/*%=")

    parts = ParseResult(
        "", "", pattern + last_char, parts.params, parts.query, parts.fragment
    )
    return urlunparse(parts)
