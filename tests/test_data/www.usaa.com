# robots.txt - for USAA
# updated 08/28/2018
# served from ns

User-agent: *

sitemap: https://www.usaa.com/sitemap.xml


Disallow: *lookAndFeel*
Disallow: *usp=EC_WAS_SERVER_NAME_EXT*
Disallow: *ucsp=wa_*
Disallow: *SearchRanking=*
Disallow: *lookAndFeel?*
Disallow: *location=*