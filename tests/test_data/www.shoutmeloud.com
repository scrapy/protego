User-agent:  *
Disallow: /cgi-bin/
Disallow: /wp-admin/
Disallow: /linkout/
Disallow: /recommended/
Disallow: /comments/feed/
Disallow: /trackback/
Disallow: /index.php
Disallow: /xmlrpc.php

User-agent: NinjaBot
Allow: /

User-agent: Mediapartners-Google*
Allow: /

User-agent: Googlebot-Image
Allow: /wp-content/uploads/

User-agent: Adsbot-Google
Allow: /
 
 
User-agent: Googlebot-Mobile
Allow: /

User-agent: MJ12bot
Disallow: /     
User-agent: SemrushBot
Disallow: /
User-agent: SemrushBot-SA
Disallow: /
User-agent: dotbot
Disallow:/ 
User-agent: AhrefsBot
Disallow: /
User-agent: Alexibot
Disallow: /
User-agent: SurveyBot
Disallow: /
User-agent: Xenu’s
Disallow: /
User-agent: Xenu’s Link Sleuth 1.1c
Disallow: /
User-agent: rogerbot
Disallow: /

# Block NextGenSearchBot
User-agent: NextGenSearchBot
Disallow: /
# Block ia-archiver from crawling site 
User-agent: ia_archiver
Disallow: /
# Block archive.org_bot from crawling site
User-agent: archive.org_bot
Disallow: /
# Block Archive.org Bot from crawling site
User-agent: Archive.org Bot
Disallow: /

# Block LinkWalker from crawling site
User-agent: LinkWalker
Disallow: /

# Block GigaBlast Spider from crawling site
User-agent: GigaBlast Spider
Disallow: /


# Block ia_archiver-web.archive.org_bot from crawling site
User-agent: ia_archiver-web.archive.org 
Disallow: /


# Block PicScout Crawler from crawling site 
User-agent: PicScout
Disallow: /


# Block BLEXBot Crawler from crawling site 
User-agent: BLEXBot Crawler
Disallow: /

# Block TinEye from crawling site 
User-agent: TinEye
Disallow: /


# Block SEOkicks
User-agent: SEOkicks-Robot
Disallow: /

# Block BlexBot
User-agent: BLEXBot
Disallow: /

# Block SISTRIX
User-agent: SISTRIX Crawler
Disallow: /

# Block Uptime robot
User-agent: UptimeRobot/2.0
Disallow: /

# Block Ezooms Robot
User-agent: Ezooms Robot
Disallow: /


# Block netEstate NE Crawler (+http://www.website-datenbank.de/)
User-agent: netEstate NE Crawler (+http://www.website-datenbank.de/)
Disallow: /

# Block WiseGuys Robot
User-agent: WiseGuys Robot
Disallow: /

# Block Turnitin Robot
User-agent: Turnitin Robot
Disallow: /

# Block Heritrix
User-agent: Heritrix
Disallow: /

# Block pricepi
User-agent: pimonster
Disallow: /
User-agent: Pimonster
Disallow: /
User-agent: Pi-Monster
Disallow: /

# Block Eniro
User-agent: ECCP/1.0 (search@eniro.com)
Disallow: /


# Block Psbot
User-agent: Psbot
Disallow: /

# Block Youdao
User-agent: YoudaoBot
Disallow: /

# BLEXBot
User-agent: BLEXBot
Disallow: /

# Block NaverBot
User-agent: NaverBot
User-agent: Yeti
Disallow: /


# Block ZBot
User-agent: ZBot
Disallow: /

# Block Vagabondo
User-agent: Vagabondo
Disallow: /

# Block LinkWalker
User-agent: LinkWalker
Disallow: /

# Block SimplePie
User-agent: SimplePie
Disallow: /

# Block Wget
User-agent: Wget
Disallow: /

# Block Pixray-Seeker
User-agent: Pixray-Seeker
Disallow: /

# Block BoardReader
User-agent: BoardReader
Disallow: /


# Block Quantify
User-agent: Quantify
Disallow: /

# Block Plukkie
User-agent: Plukkie
Disallow: /

# Block Cuam
User-agent: Cuam
Disallow: /

# https://megaindex.com/crawler
User-agent: MegaIndex.ru
Disallow: /

User-agent: megaindex.com
Disallow: /

User-agent: +http://megaindex.com/crawler
Disallow: /

User-agent: MegaIndex.ru/2.0
Disallow: /

User-agent: megaIndex.ru
Disallow: /

Sitemap: http://www.shoutmeloud.com/sitemap.xml
sitemap: http://www.shoutmeloud.com/sitemap-image.xml
sitemap: http://www.shoutmeloud.com/sitemap-video.xml