=================
Protego changelog
=================

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
