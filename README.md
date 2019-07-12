# Protego

## Overview
Protego is a pure-Python `robots.txt` parser with support for modern conventions.

## Requirements
* Python 2.7 or Python 3.4+
* Works on Linux, Windows, Mac OSX, BSD

## Install

To install Protego, simply use pip:

```
pip install protego
```

## Usage

```python
>> from protego import Protego
>> import requests
>> r = requests.get('https://google.com/robots.txt')
>> rp = Protego.parse(r.text)
>> # That's it! We can now perform queries.
>> rp.can_fetch('https://google.com/search', 'mybot')
False
>> rp.can_fetch('https://google.com/search/about', 'mybot')
True
>> list(rp.sitemaps)
['https://www.google.com/sitemap.xml']
```