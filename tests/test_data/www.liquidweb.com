# robots.txt for https://www.liquidweb.com/
# 23 April 2019
#
# Greetings human user.
#
# This is robot territory.
#
# To join our human team please visit www.liquidweb.com/careers/


sitemap: https://www.liquidweb.com/sitemap.xml

User-agent: *

Disallow: /wp-admin/
Disallow: xmlrpc.php

#Misc pages
Disallow: /sso/
Disallow: /delegate-www.html
Disallow: /bingsiteauth.xml
Disallow: /rigor/

#PDF Files
Disallow: *.pdf$  # Block pdf files from all bots.

#Affiliate portal
Disallow: /affiliate/home/

#KB pages
Disallow: /kb/wp-admin/
Disallow: /kb/xmlrpc.php

#Texas A&M research bot
User-agent: IRLbot
Disallow: /

#NerdyBot for Nerdy Data dotcom
User-agent: NerdyBot
Disallow: /

#Trendiction Bot - market research
User-agent: trendictionbot
Disallow: /

#MJ12Bot
User-agent: MJ12Bot
Disallow: /

#Dugg content scraper
User-agent: duggmirror
Disallow: /