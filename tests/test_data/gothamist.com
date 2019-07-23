# http://www.robotstxt.org
User-agent: Googlebot
Disallow: /mt/
Disallow: /*.jpg$
Disallow: /*.jpeg$
Disallow: /*.gif$
Disallow: /*.png$

User-agent: Applebot
Disallow: /mt/
Disallow: /*.jpg$
Disallow: /*.jpeg$
Disallow: /*.gif$
Disallow: /*.png$

User-agent: AppleNewsBot
Disallow: /mt/

User-agent: TackBot
Disallow:

User-agent: Mediapartners-Google
Disallow:

User-agent: Googlebot-Image
Disallow: /

User-agent: bingbot
User-agent: msnbot
Disallow: /profile/
Disallow: /mt/
Crawl-delay: 20

User-agent: Slurp
User-agent: Teoma
User-agent: ia_archiver
Disallow: /profile/
Disallow: /mt/
Disallow: /tags/
Disallow: /*.jpg$
Disallow: /*.jpeg$
Disallow: /*.gif$
Disallow: /*.png$
Crawl-delay: 20

User-agent: Twitterbot
Allow: /

User-agent: *
Disallow: /
Sitemap: /sitemap.xml