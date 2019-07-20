# You know, for robots
#
# robots@vimeo.com

Sitemap: https://vimeo.com/sitemap/master.xml.gz
Sitemap: https://vimeo.com/sitemap/latest.xml.gz
Sitemap: https://vimeo.com/sitemap/stock.xml.gz
Sitemap: https://vimeo.com/blog/sitemap_index.xml

User-agent: Mediapartners-Google
Disallow:

User-agent: *
Disallow: */format:thumbnail
Disallow: /download/
Disallow: /*/download?
Disallow: /couchmode/
Disallow: /groups/*/forum/*
Disallow: /log_in
Disallow: /musicstore/preview
Disallow: /musicstore/download
Disallow: /forgot_password
Disallow: /help/forgot_login
Disallow: /help/verify_email
Disallow: /user/verify
Disallow: /search
Disallow: /_*

User-agent: SeznamBot
Request-rate: 1/10s
Disallow: */format:thumbnail
Disallow: /download/
Disallow: /*/download?
Disallow: /couchmode/
Disallow: /musicstore/preview
Disallow: /musicstore/download
Disallow: /forgot_password
Disallow: /help/forgot_login
Disallow: /help/verify_email
Disallow: /api/
Disallow: /user/verify
Disallow: /search/
Disallow: /search?
Disallow: /search\?
Disallow: /_*
