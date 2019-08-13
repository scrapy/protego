Sitemap: https://www.pond5.com/sitemap/en-sitemaps-index-static-pages-1.xml
Sitemap: https://www.pond5.com/sitemap/en-sitemaps-index-other-pages-1.xml
Sitemap: https://www.pond5.com/sitemap/en-sitemaps-index-detail-pages-1.xml
Sitemap: https://www.pond5.com/sitemap/en-video-sitemaps-index-detail-1.xml
Sitemap: https://www.pond5.com/sitemap/en-sitemaps-index-search-results-bestselleres-1.xml
Sitemap: https://www.pond5.com/sitemap/en-sitemaps-index-tags-1.xml
Sitemap: https://www.pond5.com/sitemap/en-sitemaps-index-pd-1.xml

User-agent: *
Disallow: /es/
Disallow: /fr/
Disallow: /pl/
Disallow: /pt/
Disallow: /ru/
Disallow: *page=artists
Disallow: /community
Disallow: /*/mightlike
Disallow: /artist-directory
Disallow: *membership=1
Disallow: *page=thundercloud
Disallow: *page=lightbox_license
Disallow: *page=lightbox_terms

Disallow: /de/stock-footage/*
Disallow: /de/stock-music/*
Disallow: /de/sound-effect/*
Disallow: /de/after-effect/*
Disallow: /de/photo/*
Disallow: /de/illustration/*
Disallow: /de/photoshop-template/*
Disallow: /de/3d-model/*

Disallow: /fi/kuvapankki-video/*
Disallow: /fi/arkistomusiikki/*
Disallow: /fi/aanitehoste/*
Disallow: /fi/erikoistehoste/*
Disallow: /fi/kuva/*
Disallow: /fi/piirros/*
Disallow: /fi/psd-tiedosto/*
Disallow: /fi/3d-malli/*

Disallow: /ajax/recent/items/add
Disallow: /ajax/user/*
Disallow: /ajax/user-account/*
Disallow: /ajax/collections-bar
Disallow: /ajax/dashboard/*
Disallow: /ajax/cart/*
Disallow: /ajax/bin/*
Disallow: /ajax/item/*
Disallow: /ajax/search-filters/*
Disallow: /ajax/translation*

Disallow: /*/ajax/recent/items/add
Disallow: /*/ajax/user/*
Disallow: /*/ajax/user-account/*
Disallow: /*/ajax/collections-bar
Disallow: /*/ajax/dashboard/*
Disallow: /*/ajax/cart/*
Disallow: /*/ajax/bin/*
Disallow: /*/ajax/item/*
Disallow: /*/ajax/search-filters/*
Disallow: /*/ajax/translation*

User-agent: Slurp
Crawl-delay: 1

User-agent: rogerbot
Disallow: /

user-agent: sitebot
disallow: /

user-agent: coccoc
disallow: /

User-agent: facebookexternalhit/*
Crawl-delay: 1

User-agent: facebookexternalhit/1.1
Crawl-delay: 1

User-agent: baiduspider
Crawl-delay: 1

User-agent: JikeSpider
Disallow: /

User-Agent: twengabot
Disallow: /

User-agent: Blekkobot
Crawl-delay: 2

User-agent: Linguee
Disallow: /

User-agent: sistrix
Disallow: /

User-agent: YioopBot
Disallow: /

User-agent: BLEXBot
Disallow: /

User-agent: SemrushBot
Disallow: /
