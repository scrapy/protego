User-agent: *
# prevent oembed without url param
Disallow: /oembed$
Disallow: /oembed/$

Disallow: /my-watchlist
Disallow: /settings

Sitemap: https://roosterteeth.com/sitemap.xml
