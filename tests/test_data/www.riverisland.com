#UK
User-agent: *
Disallow: /Online/secure/*
Disallow: /Print/
Disallow: /error
Disallow: /search?keyword
Disallow: /checkout/*
Disallow: /myaccount/*
Disallow: /*f_parent_category_names*
Disallow: /*f_sizes*
Disallow: /*f_colours_attr_fac*
Disallow: /*f_list_price_wer*
Disallow: /search?Ntt=
Disallow: /origin-*

Disallow: /*?*sort_by=
Disallow: /*?*sort=
Disallow: /*?*view_type=
Disallow: /*?*f-sizes=
Disallow: /*?*f-cat=*f-cat=
Disallow: /*?*f-brands=*f-brands=
Disallow: /*?*f-design=*f-design=
Disallow: /*?*f-fabric=*f-fabric=
Disallow: /*?*f-fit=*f-fit=
Disallow: /*?*f-length=*f-length=
Disallow: /*?*f-occasion=*f-occasion=
Disallow: /*?*f-style=*f-style=
Disallow: /*?*f-type=*f-type=
Disallow: /*?*f-colour=*f-colour=
Disallow: /*?*f-division=*f-division=
Disallow: /*?*f-womens-style=*f-womens-style=
Disallow: /*?*f-mens-style=*f-mens-style=
Disallow: /*?*f-girls-style*f-girls-style
Disallow: /*?*f-boys-style=*f-boys-style=
Disallow: /*?*f-patterns=*f-patterns=
Disallow: /*?*f-*&f-*&f-*&f-
Disallow: /*?*keyword=
Disallow: /*?*pgsz
Disallow: /*?*istCompanyId=

Disallow: /*http://www.riverisland.com/bag
Disallow: /c/women/gifts?f-cat=mothers-day-gift&f-colour=*


#additions {31/10/16}
# price - disallow any URL with price
disallow: /*price-min
disallow: /*price-max

# sizes - disallow URLs with any size
disallow: /*Zc
disallow: /*Zd
disallow: /*Zn
disallow: /*Zm

# combination of four facets
disallow: /*Z*Z*Z*Z

Disallow: /*?*cmpid=
Disallow: /*?*Ns=
Disallow: /*?*Nrpp
Disallow: /*?*Ntt=
Disallow: /*?*ntt=
Disallow: /*?*print=
Disallow: /*?*productId=
Disallow: /*?*javascript=
Disallow: /*?*Query=
Disallow: /*?*startindex=
Disallow: /*?*Nf=
Disallow: /*?*location=
Disallow: /*?*clicrdv_params=
Disallow: /*?*sortoptions=
Disallow: /*?*Latitude=
Disallow: /MyAccount

Allow: /c/baby?f-sizes=0-3-mths
Allow: /c/baby?f-sizes=3-6-mths
Allow: /c/baby?f-sizes=6-9-mths
Allow: /c/baby?f-sizes=9-12-mths
Allow: /c/baby?f-sizes=12-18-mths
Allow: /c/baby?f-sizes=18-24-mths
Allow: /c/baby?f-sizes=1-2-yrs

Sitemap: https://www.riverisland.com/sitemaps/sitemap_uk.xml

User-agent: Yandex
Crawl-delay: 1

User-agent: bingbot
Crawl-delay: 1

User-agent: msnbot
Crawl-delay: 1

User-agent: charlotte
Crawl-delay: 1

User-agent: opsh
Crawl-delay: 1