#-- LAST MODIFIED DATE 11-13-2018 by RM --#

User-agent: *
Disallow: /*downloadURL=
Disallow: /*InternalSearch/
Disallow: /*internalsearch/
Disallow: /NetPerfMon/
Disallow: /netperfmon/
Disallow: /cirrusdocs/
Disallow: /WorkArea/
Disallow: /workarea/
Disallow: /resources/tags/
Disallow: /recent-searches/
Disallow: /search/
Disallow: /uploadedFiles/
Disallow: /Templates/
Disallow: /templates/
Disallow: /*sort=type$
Disallow: /*sitecore/
Disallow: /*documentation/

User-agent: AdsBot-Google
User-agent: AdsBot-Google-Mobile
User-agent: Adidxbot
Allow:
User-agent: Megaindex.ru
Disallow: /

Sitemap: https://www.solarwinds.com/sitemap.xml
Sitemap: https://secure.vidyard.com/sitemaps/sitemap-UUrfDJSe2JNunL_FOX9K7g.xml
Sitemap: https://secure.vidyard.com/sitemaps/sitemap-gISEwhzqpW0qD78SNKAjyg.xml
#--------------------------------