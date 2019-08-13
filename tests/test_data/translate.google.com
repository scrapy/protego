User-agent: Mediapartners-Google*
Disallow:

User-agent: *
Disallow: /m?
Disallow: /m/?
Disallow: /community_s
Disallow: /translate_c
Disallow: /translate_dict
Disallow: /translate
Allow: /translate_a
Allow: /translate/releases
Disallow: /translate_f
Disallow: /translate_p
Disallow: /translate_static/
Disallow: /translate_suggestion
Disallow: /translate_t
Allow: /toolkit/
Disallow: /toolkit/apps/
Disallow: /manager/
Allow: /manager/website
Disallow: /manager/website/add
Disallow: /globalmarketfinder/
Allow: /globalmarketfinder/*.html
Sitemap: http://translate.google.com/sitemap.xml
