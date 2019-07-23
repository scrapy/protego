#80legs
User-agent: 008
Crawl-delay: 10
Disallow: /

User-agent: AhrefsBot
Disallow: /

User-agent: MJ12bot
Disallow: /

User-agent: *
Crawl-delay: 5
Disallow: /ads
Disallow: /popularity/track
Disallow: /content/countGoogleRedditAjax
Disallow: /national/ticketmaster
Disallow: /promotions-lsbb-blog
Disallow: /restaurants-slideshow
Disallow: /music-slideshow
Disallow: /news-sex-slideshow
Disallow: /home
Disallow: /news-slideshow
Disallow: /arts-slideshow
Disallow: /news-blog-pot
Disallow: /news-pot-slideshow
Disallow: /movies-slideshow
Disallow: /profile/mobileSubscribe

User-agent: *
Allow: /ads.txt

Sitemap: http://www.westword.com/sitemap
