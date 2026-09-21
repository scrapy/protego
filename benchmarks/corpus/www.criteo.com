User-agent: *

#Dynamic URLs

Disallow: /*?industry=
Disallow: /*?region=
Disallow: /*?business=
Disallow: /*?solution=
Disallow: /*sortby=
Disallow: /*?action=
Disallow: /*?year=

#Paths & URls
# -----------------

Disallow: /privacy/embed/
Disallow: */media_category
Disallow: */email-preference-center/
Disallow: */process/*
Disallow: /wp-json/
Disallow: */criteo2017/fonts/*
Disallow: */privacy/disable-criteo-services-on-internet-browsers/
Disallow: /blocked-sitemap.xml

# Prevents issues with GWT
# -----------------

Allow: /*.css$
Allow: /*.js$

#Trackbacks
# -----------------

Disallow: /trackback
Disallow: /*trackback
Disallow: /*trackback*
Disallow: /*/trackback

#Block feeds for crawlers
# -----------------

Allow: /feed/$
Disallow: /feed/
Disallow: /comments/feed/
Disallow: /*/feed/$
Disallow: /*/feed/rss/$
Disallow: /*/trackback/$
Disallow: /*/*/feed/$
Disallow: /*/*/feed/rss/$
Disallow: /*/*/trackback/$
Disallow: /*/*/*/feed/$
Disallow: /*/*/*/feed/rss/$
Disallow: /*/*/*/trackback/$


# Sitemap
# -----------------

Sitemap: https://www.criteo.com/sitemap_index.xml
Sitemap: https://www.criteo.com/de/sitemap_index.xml
Sitemap: https://www.criteo.com/fr/sitemap_index.xml
Sitemap: https://www.criteo.com/br/sitemap_index.xml
Sitemap: https://www.criteo.com/jp/sitemap_index.xml
Sitemap: https://www.criteo.com/kr/sitemap_index.xml
Sitemap: https://www.criteo.com/es/sitemap_index.xml
Sitemap: https://www.criteo.com/it/sitemap_index.xml
Sitemap: https://www.criteo.com/ru/sitemap_index.xml
Sitemap: https://www.criteo.com/cn/sitemap_index.xml

# Bots list to exclude
# --------------------------------

User-agent: MSIECrawler
User-agent: WebCopier
User-agent: HTTrack
User-agent: Microsoft.URL.Control
User-agent: libwww
User-agent: Nuclei
User-agent: WikiDo
User-agent: Riddler
User-agent: PetalBot
User-agent: Zoominfobot
User-agent: Go-http-client
User-agent: Node/simplecrawler
User-agent: CazoodleBot
User-agent: dotbot/1.0
User-agent: Gigabot
User-agent: Barkrowler
User-agent: BLEXBot
User-agent: magpie-crawler
Disallow: /