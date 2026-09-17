from __future__ import annotations

from datetime import time
from urllib.parse import quote, urlsplit

_HEX_DIGITS = set("0123456789ABCDEFabcdef")

# Characters kept verbatim while percent-encoding a URL for comparison: the
# path separator, and "%" so that escapes already present are not doubled.
_SAFE = "/%"

# Patterns additionally keep "*", which stands for any sequence of characters.
_PATTERN_SAFE = f"{_SAFE}*"


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


def _quote(value: str, safe: str) -> str:
    """Return *value* with its percent-encoding normalized.

    Escapes of characters that need none are decoded, characters that do need
    one are encoded, and the characters in *safe* are left as they are. Both
    sides of a comparison must be normalized with the same *safe* set, or
    equivalent strings end up spelled differently.
    """
    return quote(_unquote(value, ignore=safe), safe=safe)


def _quote_path(url: str) -> str:
    """Return the path and query of *url*, normalized for comparison.

    The scheme, the authority and the fragment are dropped, since rules never
    match against them.
    """
    url = url.partition("#")[0]
    parts = urlsplit(url)
    path = parts.path
    # A "?" with nothing after it is still part of what rules match against.
    if "?" in url:
        path += f"?{parts.query}"
    path = _quote(path, safe=_SAFE)
    return path if path.startswith("/") else f"/{path}"


def _quote_pattern(pattern: str) -> str:
    """Return *pattern* normalized for comparison.

    A trailing "$", which anchors the pattern to the end of the URL, is kept
    as it is; a "$" anywhere else is an ordinary character.
    """
    # A rule written as an absolute URL matches a path with that URL in it,
    # which is what the site owner who wrote it by mistake gets.
    if pattern.startswith(("https://", "http://")):
        pattern = f"/{pattern}"

    anchor = ""
    if pattern.endswith("$"):
        anchor = "$"
        pattern = pattern[:-1]
    return _quote(pattern, safe=_PATTERN_SAFE) + anchor
