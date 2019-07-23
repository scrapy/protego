# global
User-agent: *
Allow:  /

Disallow: /wp/
Disallow: /wp-content/plugins/
Disallow: /wp-content/cache/
Disallow: /wp-content/themes/

Disallow: */trackback/
Disallow: */comments/

Disallow: *redirect_url*
NoIndex: *redirect_url*

Disallow: *{{ thumb }}*
NoIndex: *{{ thumb }}*
Disallow: *{{ url }}*
NoIndex: *{{ url }}*
Disallow: *<*
NoIndex: *<*

Disallow: *?hg=0
Disallow: *?refsite=
Disallow: *ModPagespeed=off

Disallow: *?s=*
Disallow: /search/

Disallow: *preview=true*
Disallow: *?ad_*
Disallow: *?adm*
Disallow: *&adm*
Disallow: *?use_*
Disallow: *&use_*
Disallow: *&option_set*

Disallow: *fallback?noscript*
Disallow: *?p=*
NoIndex:  *?p=*

Disallow: /wp-content/uploads/2010
Disallow: /wp-content/uploads/2011
Disallow: /wp-content/uploads/2012
Disallow: /wp-content/uploads/2013
Disallow: /wp-content/uploads/2014
Disallow: /wp-content/uploads/2015

NoIndex: /wp-content/uploads/2010
NoIndex: /wp-content/uploads/2011
NoIndex: /wp-content/uploads/2012
NoIndex: /wp-content/uploads/2013
NoIndex: /wp-content/uploads/2014
NoIndex: /wp-content/uploads/2015

User-agent: Mediapartners-Google
 Allow: /
 Disallow: *preview=true*

User-agent: Adsbot-Google
 Allow: /
 Disallow: *preview=true*

Sitemap: https://www.inquisitr.com/sitemaps/googlenews.xml
Sitemap: https://www.inquisitr.com/sitemaps/most-recent.xml
Sitemap: https://www.inquisitr.com/sitemaps/index.xml
