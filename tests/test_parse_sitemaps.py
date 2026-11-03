import pytest

from protego import Protego, parse_sitemaps
from protego._protego import _SITEMAP_DIRECTIVE

A = "https://example.com/a.xml"
B = "https://example.com/b.xml"


def _check(content: str, expected: list[str]) -> None:
    assert list(parse_sitemaps(content)) == expected
    assert list(Protego.parse(content).sitemaps) == expected


@pytest.mark.parametrize(
    "directive",
    sorted(_SITEMAP_DIRECTIVE | {spelling.upper() for spelling in _SITEMAP_DIRECTIVE}),
)
def test_spellings(directive: str) -> None:
    _check(f"{directive}: {A}", [A])


@pytest.mark.parametrize(
    ("content", "expected"),
    [
        (f"Sitemap: {A} # comment", [A]),
        (f"Sitemap: {A}#comment", [A]),
        ("Sitemap: # comment", []),
        ("Sitemap:", []),
        (f"Sitemap {A}", [A]),
        (f"Sitemap:\t{A}", [A]),
        (f"Sitemap: {A}\nUser-agent: *\nDisallow: /", [A]),
        (
            f"User-agent: *\nDisallow: /\nSitemap: {A}\nSitemap: {B}\nSitemap: {A}",
            [A, B, A],
        ),
        ("User-agent: *\nDisallow: /", []),
        ("", []),
        (f"Sitemap: {A}\r\nSitemap: {B}\r\n", [A, B]),
        (f"Sitemap: {A}\rSitemap: {B}", [A, B]),
        (f"\ufeffSitemap: {A}", [A]),
        ("# site map at /sitemap.xml", []),
        ("website: https://example.com", []),
        (f"Sitemap index: see {A}", []),
    ],
)
def test_parse_sitemaps(content: str, expected: list[str]) -> None:
    _check(content, expected)


def test_type_error() -> None:
    with pytest.raises(TypeError, match="parse_sitemaps expects str, got bytes"):
        parse_sitemaps(b"Sitemap: https://example.com/a.xml")  # type: ignore[arg-type]
