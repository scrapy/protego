# www.robotstxt.org/
# www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449

User-agent: *

Disallow: /user/*
Disallow: /members/
Disallow: /members/newsletters/
Disallow: /members/alerts/add/

Disallow: /search/?*

Disallow: *Xhr*
Disallow: */xhr*
Disallow: */ajax/*

Disallow: */fly/*/bundles/flyjs/*
Disallow: */libs/*
Disallow: */version!libs/*
Disallow: /.well-known/*

Disallow: /index.php/*

Disallow: *?beta=*

# News
Sitemap: https://www.zdnet.com/sitemaps/news.xml

# Topics
Sitemap: https://www.zdnet.com/sitemaps/topics.xml

# Article
Sitemap: https://www.zdnet.com/sitemaps/article/index.xml

# Gallery
Sitemap: https://www.zdnet.com/sitemaps/gallery/index.xml

# Video
Sitemap: https://www.zdnet.com/sitemaps/video/index.xml

# Downloads
Sitemap: https://www.zdnet.com/sitemaps/downloads/index.xml

# Review
Sitemap: https://www.zdnet.com/sitemaps/review/index.xml

User-agent: msnbot
Crawl-delay: 1
