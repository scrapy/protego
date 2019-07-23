# robots.txt for https://www.jsonline.com/

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


Disallow: /insider/2017/10/23/blake-shelton-presale-tickets-available-now/790217001/

Disallow: /story/insider/2017/10/23/blake-shelton-presale-tickets-available-now/790217001/



Sitemap: https://www.jsonline.com/news-sitemap.xml
Sitemap: https://www.jsonline.com/web-sitemap-index.xml
Sitemap: https://www.jsonline.com/video-sitemap-index.xml


