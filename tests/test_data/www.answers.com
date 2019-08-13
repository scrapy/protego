Sitemap: https://www.answers.com/question_sitemap_index.xml

User-agent: *
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

User-Agent: Applebot
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

User-Agent: Googlebot
Allow: /
Disallow: /search?
Disallow: /http://
Disallow: /api/
Disallow: /nova/

User-agent: bingbot
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

User-agent: msnbot
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

User-agent: Slurp
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

User-agent: Facebot
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

UserAgent: baiduspider
Allow: /
Disallow: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

Useragent: sosobot
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

Useragent: exabot
Allow: /
noindex: /search?
noindex: /http://
Disallow: /api/
Disallow: /nova/

