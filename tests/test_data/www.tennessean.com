# robots.txt for https://www.tennessean.com/

User-agent: Googlebot-News
Disallow: /story/sponsor-story/
Disallow: /picture-gallery/sponsor-story/
Disallow: /videos/sponsor-story/
Disallow: /longform/sponsor-story/
Disallow: /pages/interactives/sponsor-story/
Disallow: /videos/embed/

User-Agent: *
Disallow: /errors
Disallow: /interactive/
Disallow: /userauth/
Disallow: /ugc/
Disallow: /feeds/
Disallow: /services/
Disallow: /facebook/
Disallow: /version-info/
Disallow: /longform/draft/
Disallow: /story/draft/
Disallow: /topic/*/smart/
Disallow: /search
Disallow: /module-showcase/
Disallow: /newsletter/
Disallow: /blended-newsletter/
Disallow: /story/nletter/
Disallow: /sports/services/photos/

Disallow: /optimus

Disallow: /ux-train

Disallow: /story/advisory/


Disallow: /story/news/local/sumner/2016/05/02/police-man-stole-up-20k-drugs-ohio-hospital/83842984/

Disallow: /story/news/local/sumner/2016/05/26/ohio-man-cleared-drug-hospital-theft-charges/84996150/



Sitemap: https://www.tennessean.com/news-sitemap.xml
Sitemap: https://www.tennessean.com/web-sitemap-index.xml
Sitemap: https://www.tennessean.com/video-sitemap-index.xml


