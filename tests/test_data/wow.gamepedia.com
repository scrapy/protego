#
# Please note: There are a lot of pages on this site, and there are
# some misbehaved spiders out there that go _way_ too fast. If you're
# irresponsible, your access to the site may be blocked.
#

# Crawlers that are kind enough to obey, but which we'd rather not have
# unless they're feeding search engines.
User-agent: UbiCrawler
Disallow: /

User-agent: DOC
Disallow: /

User-agent: Zao
Disallow: /

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

User-agent: sitebot
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

User-agent: *
Noindex: *&printable
Noindex: *&mobileaction
Noindex: *Special:UserLogin*
Noindex: *Special:CreateAccount*
Noindex: *&action=info*
Noindex: *&action=purge*
Noindex: *&redirect
Noindex: *&profile
Noindex: *&redlink
Noindex: *&group
Noindex: *&action=pagevalues*
Noindex: /*feed=rss*
Noindex: /*action=history*
Noindex: /*action=delete*
Noindex: /*action=watch*
Noindex: /*action=edit*
Noindex: /*action=visualeditor*
Noindex: /*veaction=edit*
Noindex: /*&curid=*
Noindex: /*&oldid=*
Noindex: /*&stableid=*
Noindex: /*&diff=*
Noindex: /*&limit=500*
Noindex: /*&from=*
Noindex: /*?curid=*
Noindex: /*?oldid=*
Noindex: /*?stableid=*
Noindex: /*?diff=*
Noindex: /*?limit=500*
Noindex: /*?from=*
# en wiki
Noindex: /wiki/UserProfile:*
Noindex: /wiki/UserProfile%3A*
Noindex: /wiki/Special:*
Noindex: /wiki/Special%3A*
Noindex: /wiki/Special:Random
Noindex: /wiki/Special%3ARandom
Noindex: /wiki/Special:Search
Noindex: /wiki/Special%3ASearch
Noindex: /wiki/Special:ExportRDF
Noindex: /wiki/Special%3AExportRDF
Noindex: /wiki/MediaWiki:Spam-blacklist
Noindex: /wiki/MediaWiki%3ASpam-blacklist
Noindex: /wiki/MediaWiki_talk:Spam-blacklist
Noindex: /wiki/MediaWiki_talk%3ASpam-blacklist
Noindex: /wiki/Category:Noindexed_pages
Noindex: /wiki/Category%3ANoindexed_pages
# en w
Noindex: /w/UserProfile:*
Noindex: /w/UserProfile%3A*
Noindex: /w/Special:*
Noindex: /w/Special%3A*
Noindex: /w/Special:Random
Noindex: /w/Special%3ARandom
Noindex: /w/Special:Search
Noindex: /w/Special%3ASearch
Noindex: /wiki/Special:ExportRDF
Noindex: /wiki/Special%3AExportRDF
Noindex: /w/MediaWiki:Spam-blacklist
Noindex: /w/MediaWiki%3ASpam-blacklist
Noindex: /w/MediaWiki_talk:Spam-blacklist
Noindex: /w/MediaWiki_talk%3ASpam-blacklist
Noindex: /w/Category:Noindexed_pages
Noindex: /w/Category%3ANoindexed_pages
# en root
Noindex: /UserProfile:*
Noindex: /UserProfile%3A*
Noindex: /Special:*
Noindex: /Special%3A*
Noindex: /Special:Random
Noindex: /Special%3ARandom
Noindex: /Special:Search
Noindex: /Special%3ASearch
Noindex: /Special:ExportRDF
Noindex: /Special%3AExportRDF
Noindex: /MediaWiki:Spam-blacklist
Noindex: /MediaWiki%3ASpam-blacklist
Noindex: /MediaWiki_talk:Spam-blacklist
Noindex: /MediaWiki_talk%3ASpam-blacklist
Noindex: /Category:Noindexed_pages
Noindex: /Category%3ANoindexed_pages
Disallow: *&printable
Disallow: *&mobileaction
Disallow: *Special:UserLogin*
Disallow: *Special:CreateAccount*
Disallow: *&action=info*
Disallow: *&action=purge*
Disallow: *&redirect
Disallow: *&profile
Disallow: *&redlink
Disallow: *&group
Disallow: *&action=pagevalues*
Disallow: /*feed=rss*
Disallow: /*action=history*
Disallow: /*action=delete*
Disallow: /*action=watch*
Disallow: /*action=edit*
Disallow: /*action=visualeditor*
Disallow: /*veaction=edit*
Disallow: /*&curid=*
Disallow: /*&oldid=*
Disallow: /*&stableid=*
Disallow: /*&diff=*
Disallow: /*&limit=500*
Disallow: /*&from=*
Disallow: /*?curid=*
Disallow: /*?oldid=*
Disallow: /*?stableid=*
Disallow: /*?diff=*
Disallow: /*?limit=500*
Disallow: /*?from=*
# en wiki
Disallow: /wiki/UserProfile:*
Disallow: /wiki/UserProfile%3A*
Disallow: /wiki/Special:*
Disallow: /wiki/Special%3A*
Disallow: /wiki/Special:Random
Disallow: /wiki/Special%3ARandom
Disallow: /wiki/Special:Search
Disallow: /wiki/Special%3ASearch
Disallow: /wiki/Special:ExportRDF
Disallow: /wiki/Special%3AExportRDF
Disallow: /wiki/MediaWiki:Spam-blacklist
Disallow: /wiki/MediaWiki%3ASpam-blacklist
Disallow: /wiki/MediaWiki_talk:Spam-blacklist
Disallow: /wiki/MediaWiki_talk%3ASpam-blacklist
Disallow: /wiki/Category:Noindexed_pages
Disallow: /wiki/Category%3ANoindexed_pages
# en w
Disallow: /w/UserProfile:*
Disallow: /w/UserProfile%3A*
Disallow: /w/Special:*
Disallow: /w/Special%3A*
Disallow: /w/Special:Random
Disallow: /w/Special%3ARandom
Disallow: /w/Special:Search
Disallow: /w/Special%3ASearch
Disallow: /wiki/Special:ExportRDF
Disallow: /wiki/Special%3AExportRDF
Disallow: /w/MediaWiki:Spam-blacklist
Disallow: /w/MediaWiki%3ASpam-blacklist
Disallow: /w/MediaWiki_talk:Spam-blacklist
Disallow: /w/MediaWiki_talk%3ASpam-blacklist
Disallow: /w/Category:Noindexed_pages
Disallow: /w/Category%3ANoindexed_pages
# en root
Disallow: /UserProfile:*
Disallow: /UserProfile%3A*
Disallow: /Special:*
Disallow: /Special%3A*
Disallow: /Special:Random
Disallow: /Special%3ARandom
Disallow: /Special:Search
Disallow: /Special%3ASearch
Disallow: /Special:ExportRDF
Disallow: /Special%3AExportRDF
Disallow: /MediaWiki:Spam-blacklist
Disallow: /MediaWiki%3ASpam-blacklist
Disallow: /MediaWiki_talk:Spam-blacklist
Disallow: /MediaWiki_talk%3ASpam-blacklist
Disallow: /Category:Noindexed_pages
Disallow: /Category%3ANoindexed_pages

User-agent: Mediapartners-Google*
Disallow: 