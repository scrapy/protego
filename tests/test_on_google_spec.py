from __future__ import annotations

import pytest

from protego import Protego


@pytest.mark.parametrize(
    ("path", "user_agent"),
    [
        ("/group1", "hedwig-news"),
        ("/group1", "hedwig-news2"),
        ("/group2", "hedwi"),
        ("/group2", "a"),
        ("/group3", "hedwig-new"),
        ("/group3", "hedwig-images"),
    ],
)
def test_user_agent_precedence(path, user_agent):
    robotstxt_content = """
    user-agent: hedwig-news
    disallow: /
    allow: /group1
    user-agent: *
    disallow: /
    allow: /group2
    user-agent: hedwig
    disallow: /
    allow: /group3
    """
    rp = Protego.parse(content=robotstxt_content)
    allowed_path: str | None
    for allowed_path in ("/group1", "/group2", "/group3"):
        if rp.can_fetch(allowed_path, user_agent):
            break
    else:
        allowed_path = None
    assert allowed_path == path


@pytest.mark.parametrize(
    ("pattern", "path", "match"),
    [
        ("/", "/harry", True),
        ("/", "/device/time-turner", True),
        ("/", "/hogwards.html", True),
        ("/*", "/harry", True),
        ("/*", "/device/time-turner", True),
        ("/*", "/hogwards.html", True),
        ("/phoenix", "/phoenix", True),
        ("/phoenix", "/phoenix.html", True),
        ("/phoenix", "/phoenix/sparky.html", True),
        ("/phoenix", "/phoenixheads", True),
        ("/phoenix", "/phoenixheads/yummy.html", True),
        ("/phoenix", "/phoenix.php?id=anything", True),
        ("/phoenix", "/Phoenix.asp", False),
        ("/phoenix", "/redphoenix", False),
        ("/phoenix", "/?id=phoenix", False),
        ("/phoenix*", "/phoenix", True),
        ("/phoenix*", "/phoenix.html", True),
        ("/phoenix*", "/phoenix/sparky.html", True),
        ("/phoenix*", "/phoenixheads", True),
        ("/phoenix*", "/phoenixheads/yummy.html", True),
        ("/phoenix*", "/phoenix.php?id=anything", True),
        ("/phoenix*", "/Phoenix.asp", False),
        ("/phoenix*", "/redphoenix", False),
        ("/phoenix*", "/?id=phoenix", False),
        ("/phoenix/", "/phoenix/", True),
        ("/phoenix/", "/phoenix/?id=anything", True),
        ("/phoenix/", "/phoenix/sparky.htm", True),
        ("/phoenix/", "/phoenix", False),
        ("/phoenix/", "/phoenix.html", False),
        ("/phoenix/", "/Phoenix/Sparky.asp", False),
        ("/*.php", "/filename.php", True),
        ("/*.php", "/folder/filename.php", True),
        ("/*.php", "/folder/filename.php?parameters", True),
        ("/*.php", "/folder/any.php.file.html", True),
        ("/*.php", "/filename.php/", True),
        ("/*.php", "/windows.PHP", False),
        ("/*.php", "/", False),
        ("/*.php", "/index?f=filename.php/", True),
        ("/*.php", "/index?php", False),
        ("/*.php$", "/filename.php", True),
        ("/*.php$", "/folder/filename.php", True),
        ("/*.php$", "/filename.php?parameters", False),
        ("/*.php$", "/filename.php/", False),
        ("/*.php$", "/filename.php5", False),
        ("/*.php$", "/windows.PHP", False),
        ("/*.php$", "/filename?php", False),
        ("/fish*.php", "/fish.php", True),
        ("/fish*.php", "/fishheads/catfish.php?parameters", True),
        ("/fish*.php", "/Fish.PHP", False),
    ],
)
def test_path_matching(pattern, path, match):
    content = f"""
    User-Agent: *
    disallow: {pattern}
    """
    rp = Protego.parse(content)
    assert (not rp.can_fetch(path, "*")) == match


@pytest.mark.parametrize(
    ("rules", "url", "allowed"),
    [
        ("allow: /p \n disallow: /", "http://example.com/page", True),
        ("allow: /folder \n disallow: /folder", "http://example.com/folder/page", True),
        ("allow: /$ \n disallow: /", "http://example.com/", True),
        ("allow: /$ \n disallow: /", "http://example.com/page.htm", False),
    ],
)
def test_record_precedence(rules, url, allowed):
    content = f"""
    User-Agent: *
    {rules}
    """
    rp = Protego.parse(content)
    assert rp.can_fetch(url, "*") == allowed


@pytest.mark.parametrize(
    ("content", "url", "allowed"),
    [
        # "=" in a wildcard pattern must match "=" in the URL path.
        (
            "User-agent: *\nAllow: /*/filter/page=*/$\nDisallow: /\n",
            "http://example.com/1/filter/page=5/",
            True,
        ),
        (
            "User-agent: *\nAllow: /*/filter/page=*/$\nDisallow: /\n",
            "http://example.com/a/filter/page=99/",
            True,
        ),
        # The trailing "$" still requires the path to end right after the slash.
        (
            "User-agent: *\nAllow: /*/filter/page=*/$\nDisallow: /\n",
            "http://example.com/1/filter/page=5",
            False,
        ),
        # "=" must be matched literally without wildcards too.
        ("User-agent: *\nDisallow: /path=1\n", "http://example.com/path=1", False),
        ("User-agent: *\nDisallow: /path=1\n", "http://example.com/path=2", True),
    ],
)
def test_equals_sign_in_path(content, url, allowed):
    # Regression test for https://github.com/scrapy/protego/issues/51
    rp = Protego.parse(content)
    assert rp.can_fetch(url, "mozilla") == allowed
