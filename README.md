# Protego

![build-badge](https://img.shields.io/travis/scrapy/protego)
## Overview
Protego is a pure-Python `robots.txt` parser with support for modern conventions.

## Requirements
* Python 2.7 or Python 3.5+
* Works on Linux, Windows, Mac OSX, BSD

## Install

To install Protego, simply use pip:

```
pip install protego
```

## Usage

```python
>>> from protego import Protego
>>> robotstxt = """
... User-agent: *
... Disallow: /
... Allow: /about
... Allow: /account
... Disallow: /account/contact$
... Disallow: /account/*/profile
... Crawl-delay: 4
... Request-rate: 10/1m                 # 10 requests every 1 minute
... 
... Sitemap: http://example.com/sitemap-index.xml
... Host: http://example.co.in
... """
>>> rp = Protego.parse(robotstxt)
>>> rp.can_fetch("http://example.com/profiles", "mybot")
False
>>> rp.can_fetch("http://example.com/about", "mybot")
True
>>> rp.can_fetch("http://example.com/account", "mybot")
True
>>> rp.can_fetch("http://example.com/account/myuser/profile", "mybot")
False
>>> rp.can_fetch("http://example.com/account/contact", "mybot")
False
>>> rp.crawl_delay("mybot")
4.0
>>> rp.request_rate("mybot")
RequestRate(requests=10, seconds=60, start_time=None, end_time=None)
>>> list(rp.sitemaps)
['http://example.com/sitemap-index.xml']
>>> rp.preferred_host
'http://example.co.in'
```

Using Protego with [Requests](https://3.python-requests.org/)

```python
>>> from protego import Protego
>>> import requests
>>> r = requests.get("https://google.com/robots.txt")
>>> rp = Protego.parse(r.text)
>>> rp.can_fetch("https://google.com/search", "mybot")
False
>>> rp.can_fetch("https://google.com/search/about", "mybot")
True
>>> list(rp.sitemaps)
['https://www.google.com/sitemap.xml']
```

## Documentation

Class `protego.Protego`:
    
### Properties

* `sitemaps` {`list_iterator`} A list of sitemaps specified in `robots.txt`.
* `preferred_host` {string} Preferred host specified in `robots.txt`.

### Methods

* `parse(robotstxt_body)` Parse `robots.txt` and return a new instance of `protego.Protego`. 
* `can_fetch(url, user_agent)` Return True if the user agent can fetch the URL, otherwise return False.
* `crawl_delay(user_agent)` Return the crawl delay specified for the user agent as a float. If nothing is specified, return None.
* `request_rate(user_agent)` Return the request rate specified for the user agent as a named tuple `RequestRate(requests, seconds, start_time, end_time)`. If nothing is specified, return None.
