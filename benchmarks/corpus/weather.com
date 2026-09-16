#
# /robots.txt
#

#
# Last updated by nick.hester 09/08/2026
#

#
# AI / AEO bot policy (CW-9994)
# We explicitly allow AI bots that fetch pages on behalf of a user's direct
# request (answer engines like ChatGPT-User, Brightbot) so our content can
# be cited in AI-generated answers. Bulk AI-training/indexing crawlers
# remain blocked below under "Block Bots" (e.g. YouBot, Google-CloudVertexBot).
#

# Explicit Allows

User-agent: ChatGPT-User
Allow: /

User-agent: AmazonAdBot
Allow: /

User-agent: Brightbot 1.0
Allow: /

User-agent: CriteoBot/0.1
Allow: /

# Disallowed for PhantomJS

User-agent: *
Crawl-delay: 10
# Directories
Disallow: /includes/
Disallow: /life/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /themes/
Disallow: /api/payload
Allow: /api/payload/v1/sitemaps
Disallow: /taxonomy/
# Files
Disallow: /appspromo
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /INSTALL.sqlite.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php
# Paths (clean URLs)
Disallow: /migration/
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
# Paths (no clean URLs)
Disallow: /*?apiKey=
Disallow: /*&apiKey=
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

Disallow: /sponsored
Disallow: /ugc
Disallow: /sponsored-content

Disallow: /api/v1/p/redux-dal
# International weather language URL paths (404s)
Disallow: /tiempo/
Disallow: /clima/
Disallow: /temps/
Disallow: /vreme/
Disallow: /idojaras/
Disallow: /pogoda/
Disallow: /wetter/
Disallow: /vejret/
Disallow: /pocasi/
Disallow: /cuaca/
Disallow: /weer/

#
# Block Bots
#

User-agent: Amazonbot
Disallow: /

User-agent: AwarioRssBot
User-agent: AwarioSmartBot
Disallow: /

User-agent: Bytespider
Disallow: /

User-agent: CCBot
Disallow: /

User-agent: DataForSeoBot
Disallow: /

User-agent: Diffbot
Disallow: /

User-agent: FacebookBot
Disallow: /

User-agent: FriendlyCrawler
Disallow: /

User-agent: Google-CloudVertexBot
Disallow: /

User-agent: ImagesiftBot
Disallow: /

User-agent: magpie-crawler
Disallow: /

User-agent: NewsNow
Disallow: /

User-agent: news-please
Disallow: /

User-agent: omgili
Disallow: /

User-agent: omgilibot
Disallow: /

User-agent: peer39_crawler
User-agent: peer39_crawler/1.0
Disallow: /

User-agent: Quora-Bot
Disallow: /

User-agent: Scrapy
Disallow: /

User-agent: TurnitinBot
Disallow: /

User-agent: YouBot
Disallow: /

#
# Sitemaps
#

Sitemap: https://weather.com/en-US/sitemaps/sitemap.xml
Sitemap: https://weather.com/pt-PT/sitemaps/sitemap.xml
Sitemap: https://weather.com/de-DE/sitemaps/sitemap.xml
Sitemap: https://weather.com/fr-FR/sitemaps/sitemap.xml
Sitemap: https://weather.com/es-US/sitemaps/sitemap.xml
Sitemap: https://weather.com/es-ES/sitemaps/sitemap.xml
Sitemap: https://weather.com/en-IN/sitemaps/sitemap.xml
Sitemap: https://weather.com/en-GB/sitemaps/sitemap.xml
Sitemap: https://weather.com/en-CA/sitemaps/sitemap.xml
Sitemap: https://weather.com/api/payload/v1/sitemaps/en-US/sitemap.xml
Sitemap: https://weather.com/api/location/sitemaps/en-US/sitemap.xml
