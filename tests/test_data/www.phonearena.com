# www.robotstxt.org/
# www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449
#

User-agent: *
Disallow: /cp
Disallow: /search
Disallow: /login
Disallow: /more
Disallow: /*/action/
Disallow: /profile/
Disallow: /tests/
Disallow: /search/
Disallow: /user/
Disallow: /user/*

User-agent: AhrefsBot
Disallow: /

Sitemap: https://www.phonearena.com/sitemaps/website.xml
Sitemap: https://www.phonearena.com/sitemaps/googlenews.xml
Sitemap: https://www.phonearena.com/sitemaps/news/index.xml
Sitemap: https://www.phonearena.com/sitemaps/reviews/index.xml
Sitemap: https://www.phonearena.com/sitemaps/phones/index.xml
Sitemap: https://www.phonearena.com/sitemaps/compare/specifications.xml
Sitemap: https://www.phonearena.com/sitemaps/compare/size.xml
Sitemap: https://www.phonearena.com/sitemaps/compare/camera.xml
Sitemap: https://www.phonearena.com/sitemaps/compare/specifications-new.xml
Sitemap: https://www.phonearena.com/sitemaps/compare/size-new.xml
Sitemap: https://www.phonearena.com/sitemaps/compare/camera-new.xml