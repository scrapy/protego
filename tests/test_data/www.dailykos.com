User-agent: Mediapartners-Google*
Disallow:

User-Agent: Googlebot
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /stories/*/comments$
Disallow: /stories/*/full_content$
Disallow: /softlaunch

User-Agent: Cogger
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

# Alexa Archver, allow them
User-Agent: ia_archiver
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

# Internet Archives open source crawler
# Has gone nuts on us before.
User-Agent: os-heritrix
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-agent: YahooFeedSeeker
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-agent: BlogPulse
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-agent: kinjabot
Disallow: /comment
Disallow: /comments
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: Teoma
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: Sphere Scout
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: msnbot
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: archive.org_bot
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /softlaunch

# topsy.com's bot
User-Agent: Butterfly
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: Yandex
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: ScoutJet
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: cdlwas_bot
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: dk-bot
#Disallow: /
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: bingbot
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /stories/*/comments$
Disallow: /stories/*/full_content$
Disallow: /news
Disallow: /softlaunch
Crawl-delay: 1

User-Agent: special_archiver
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-Agent: Diffbot
Disallow: /comments
Disallow: /comment
Disallow: /user
Disallow: /poll
Disallow: /print
Disallow: /search
Disallow: /part
Disallow: /ajax
Disallow: /softlaunch

User-agent: Twitterbot
Disallow:

User-Agent: *
Disallow: /
