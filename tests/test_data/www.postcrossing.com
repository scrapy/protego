###
# postcrossing.com robots.txt file
#
# NOTE: Entries in robots.txt don't seem to inherit from '*'. Or not all bots know how to anyway, hence the repetition
###

User-Agent: *
# only the right user can open it, so stop doing 403's
Disallow: /travelingpostcard/*
Disallow: /user/*/traveling
Disallow: /user/*/gallery/popular
Disallow: /user/*/map
Allow: /



#
# Don't need the extra load
#
User-agent: Googlebot-Image
# only the right user can open it, so stop doing 403's
Disallow: /travelingpostcard/*
Disallow: /user/*/traveling
Disallow: /user/*/gallery/popular
Disallow: /user/*/map
# extra
Disallow: /postcards/*
Disallow: /user/*/gallery
Disallow: /gallery
Disallow: /country/*
Allow: /


#
# AdSense crawler
#
User-agent: Mediapartners-Google
Allow: /



#
# Wayback machine: don't overdue it
#
User-agent: ia_archiver
Disallow: /user/*
Disallow: /postcards/*
Disallow: /gallery
Allow: /


#
# Browser pipelining/pre-fetching is not always a good idea
#
User-agent: Fasterfox
Disallow: /


#
# Unidentified misbehaving bot
#
User-agent: bhc.collectionBot
Disallow: /


#
# Please respect our Terms of Service: spiders/scrappers are only allowed with explicit permission
#
User-agent: Scrapy
Disallow: /
User-agent: scrapybot
Disallow: /


#
# below here is from wikipedia's robots.txt
#


# Some bots are known to be trouble, particularly those designed to copy
# entire sites. Please obey robots.txt.
User-agent: sitecheck.internetseer.com
Disallow: /

User-agent: Zealbot
Disallow: /

User-agent: MSIECrawler
Disallow: /

User-agent: SiteSnagger
Disallow: /

User-agent: WebStripper
Disallow: /

User-agent: WebCopier
Disallow: /

User-agent: Fetch
Disallow: /

User-agent: Offline Explorer
Disallow: /

User-agent: Teleport
Disallow: /

User-agent: TeleportPro
Disallow: /

User-agent: WebZIP
Disallow: /

User-agent: linko
Disallow: /

User-agent: HTTrack
Disallow: /

User-agent: Microsoft.URL.Control
Disallow: /

User-agent: Xenu
Disallow: /

User-agent: larbin
Disallow: /

User-agent: libwww
Disallow: /

User-agent: ZyBORG
Disallow: /

User-agent: Download Ninja
Disallow: /

# Misbehaving: requests much too fast:
User-agent: fast
Disallow: /

#
# Sorry, wget in its recursive mode is a frequent problem.
# Please read the man page and use it properly; there is a
# --wait option you can use to set the delay between hits,
# for instance.
#
User-agent: wget
Disallow: /

#
# The 'grub' distributed client has been *very* poorly behaved.
#
User-agent: grub-client
Disallow: /

#
# Doesn't follow robots.txt anyway, but...
#
User-agent: k2spider
Disallow: /

#
# Hits many times per second, not acceptable
# http://www.nameprotect.com/botinfo.html
User-agent: NPBot
Disallow: /

# A capture bot, downloads gazillions of pages with no public benefit
# http://www.webreaper.net/
User-agent: WebReaper
Disallow: /
