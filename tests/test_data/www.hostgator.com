# Google AdSense
User-agent: Mediapartners-Google
Disallow: /

# Digg mirror
User-agent: duggmirror
Disallow: /

# Omni Explorer
User-Agent: OmniExplorer_Bot
Disallow: /

# SEO
User-agent: *
Disallow: /tag/*
Disallow: /author/*
Disallow: /blog/search*
Disallow: /tos*
Disallow: /privacy
Disallow: /copyright
Disallow: /dedicated-mailpolicy
Disallow: /mailpolicy
Disallow: /terms/affiliate
Disallow: /dmca

sitemap: https://www.hostgator.com/sitemap.xml
