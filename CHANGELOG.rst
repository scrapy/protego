=================
Protego changelog
=================

0.7.0 (unreleased)
==================

-   **Backward-incompatible:** ``Protego.parse()`` now raises a more suitable
    ``TypeError`` instead of a ``ValueError`` when ``content`` is not a string.

-   Added official support for Python 3.15.

-   ``can_fetch()`` now allows ``/robots.txt`` whatever the rules say, as
    required by RFC 9309.

-   A group now applies to a user agent only if its product token appears in
    that user agent at a token boundary, so that ``User-agent: bot`` no longer
    applies to ``mybot``. A product token within a whole ``User-Agent`` header
    value, e.g. ``Mozilla/5.0 (compatible; mybot/1.0)``, still matches.

-   Percent-encoding is now normalized in the query string and the parameters
    of a URL, and not only in its path, so that a rule matches whichever
    spelling either of them uses, e.g. ``Disallow: /a?b=ツ`` now matches
    ``/a?b=%E3%83%84``. The fragment is now left out of matching altogether.

-   ``Visit-time`` now also accepts a hyphen between the two times, e.g.
    ``0400-0845``, and times with a single-digit hour, e.g. ``400``.

-   Malformed ``Crawl-delay`` values, such as a negative or infinite number,
    and ``Request-rate`` values with zero requests or zero seconds, are now
    ignored, as other malformed values already were.

-   Improved the handling of invalid and misspelled lines.

    ``Sitemap`` and ``Host`` lines are now read anywhere in the file,
    including before any ``User-agent`` line, and no longer merge the groups
    they sit between. A ``User-agent`` line without a value still ends the
    preceding group. Lines written without a colon are now salvaged for every
    directive, ``Visit-time`` included, and with any whitespace as the
    separator. A line whose field is not a known directive is no longer read
    as one.

-   Fixed matching of URLs whose path contains ``=``, which no rule could
    match because it was percent-encoded in the URL but not in the rule.

-   Fixed matching of URLs whose path starts with ``//``, which got extra
    slashes before being matched.

-   Fixed ``Allow: …/index.html``, which, besides allowing the parent
    directory as intended, also allowed URLs with a ``$`` right after that
    directory.

-   Improved matching and parsing performance.

-   Documentation improvements, including a rewritten parser comparison table
    generated from benchmarks.

0.6.2 (2026-06-25)
==================

-   Fixed a ReDoS (regular expression denial of service) vulnerability: URL
    patterns from ``robots.txt`` ``Allow`` and ``Disallow`` directives were
    compiled into regular expressions, where multiple ``*`` wildcards could
    cause exponential backtracking. A server could exploit this to cause denial
    of service by serving a crafted ``robots.txt`` file. Wildcard matching is
    now performed without regular expressions. Please, see the
    `CVE-2026-55520`_ and `GHSA-wjmf-p669-5m5p`_ security advisories for more
    information.

.. _CVE-2026-55520: https://www.cve.org/CVERecord?id=CVE-2026-55520
.. _GHSA-wjmf-p669-5m5p: https://github.com/scrapy/protego/security/advisories/GHSA-wjmf-p669-5m5p

0.6.1 (2026-06-11)
==================

-   Fixed parsing of ``Request-rate`` values where the seconds field has no
    time-unit suffix (e.g. ``1/60`` instead of ``1/60s``). Previously the last
    digit of the number was silently dropped.

0.6.0 (2026-01-29)
==================

-   Added official support for Python 3.14.

-   Dropped support for Python 3.9 and PyPy 3.10.

-   CI fixes and improvements.

0.5.0 (2025-06-24)
==================

-   Restructured the code, splitting the single ``protego.py`` file into
    multiple modules. The public API remains the same but some internal names
    may now be available at different import paths.

-   Added type hints and ``py.typed``.

-   Added official support for PyPy 3.11.

-   Switched the build backend from ``setuptools`` to ``hatchling``.

-   Switched from ``setup.py`` to ``pyproject.toml``.

-   CI fixes and improvements.

0.4.0 (2024-11-15)
==================

-   Dropped Python 3.8 support, added official Python 3.13 support.

-   Added support for ``//``-prefixed URLs.

-   Improved the rendering of the ``README.rst`` code snippets in GitHub.


0.3.1 (2024-04-05)
==================

-   Added official support for Python 3.12.

-   ``=`` is no longer percent-encoded in patterns, fixing many scenarios where
    patterns included query strings.


0.3.0 (2023-08-09)
==================

-   Changed requirements:

    -   Dropped support for Python 2.7, 3.5, 3.6, and 3.7, and added support
        for 3.11 and for the upcoming 3.12.

    -   ``six`` is no longer a dependency.

-   Added support for the ``Visit-Time`` directive.

-   Fixed leading asterisks in allow and disallow values not being properly
    interpreted.

-   ``Protego.parse()`` now raises value error when *content* is not a string.


Earlier releases
================

Find the changelog of earlier releases `at GitHub
<https://github.com/scrapy/protego/releases>`_.
