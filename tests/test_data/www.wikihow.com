# robots.txt for http://www.wikihow.com
# based on wikipedia.org's robots.txt
#
# Crawlers that are kind enough to obey, but which we'd rather not have
# unless they're feeding search engines.
#Sitemap: http://www.wikihow.com/sitemap_index.xml
#
# If your bot supports such a thing using the 'Crawl-delay' or another
# instruction, please let us know.  We can add it to our robots.txt.
#
# Friendly, low-speed bots are welcome viewing article pages, but not
# dynamically-generated pages please. Article pages contain our site's
# real content.

User-agent: archive.org
Disallow: /api.php
Disallow: /index.php
Disallow: /Special:

User-agent: DOC
Disallow: /

User-agent: Download Ninja
Disallow: /

User-agent: Fetch
Disallow: /

User-agent: HMSE_Robot
Disallow: /

User-agent: HTTrack
Disallow: /

# Doesn't follow robots.txt anyway, but...
User-agent: k2spider
Disallow: /

User-agent: larbin
Disallow: /

User-agent: libwww
Disallow: /

User-agent: linko
Disallow: /

User-agent: Microsoft.URL.Control
Disallow: /

User-agent: MSIECrawler
Disallow: /

# Requests many pages per second
# http://www.nameprotect.com/botinfo.html
User-agent: NPBot
Disallow: /

User-agent: Offline Explorer
Disallow: /

# Some bots are known to be trouble, particularly those designed to copy
# entire sites. Please obey robots.txt.
User-agent: sitecheck.internetseer.com
Disallow: /

User-agent: SiteSnagger
Disallow: /

User-agent: Teleport
Disallow: /

User-agent: TeleportPro
Disallow: /

User-agent: UbiCrawler
Disallow: /

User-agent: WebCopier
Disallow: /

# A capture bot, downloads gazillions of pages with no public benefit
# http://www.webreaper.net/
User-agent: WebReaper
Disallow: /

User-agent: WebStripper
Disallow: /

User-agent: WebZIP
Disallow: /

# wget in recursive mode uses too many resources for us.
# Please read the man page and use it properly; there is a
# --wait option you can use to set the delay between hits,
# for instance.  Please wait 3 seconds between each request.
User-agent: wget
Disallow: /

User-agent: Xenu
Disallow: /

User-agent: Zao
Disallow: /

User-agent: Zealbot
Disallow: /

User-agent: ZyBORG
Disallow: /

User-agent: *
Allow: /Special:AllPages
Allow: /Special:Block
Allow: /Special:BlockList
Allow: /Special:Categorylisting
Allow: /Special:CategoryListing
Allow: /Special:Charity
Allow: /Special:EmailUser
Allow: /Special:LSearch
Allow: /Special:NewPages
Allow: /Special:ReindexedPages
Allow: /Special:PopularPages
Allow: /Special:QABox
Allow: /Special:SearchAd
Allow: /Special:Sitemap
Allow: /Special:ThankAuthors
Allow: /Special:UserLogin
Allow: /index.php?*action=credits
Allow: /index.php?*MathShowImage
Allow: /index.php?*printable
Disallow: /w/
Disallow: /forum/
Disallow: /index.php
Disallow: /*feed=rss
Disallow: /*action=delete
Disallow: /*action=history
Disallow: /Special:
Disallow: /images/samplepdfs
Disallow: /images/sampledocs*doc
Disallow: /images/sampledocs*pdf
Disallow: /images/sampledocs*txt
Disallow: /*platform=
Disallow: /*variant=
Noindex: /w/
Noindex: /forum/
Noindex: /index.php
Noindex: /*feed=rss
Noindex: /*action=delete
Noindex: /*action=history
Noindex: /Special:
Noindex: /images/samplepdfs
Noindex: /images/sampledocs*doc
Noindex: /images/sampledocs*pdf
Noindex: /images/sampledocs*txt
Noindex: /*platform=
Noindex: /*variant=
