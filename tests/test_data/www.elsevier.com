# Robots.txt file for https://www.elsevier.com
# Do Not Delete This File

User-agent: FAST Enterprise Crawler 6 / Scirus
Disallow:

User-agent: innosense/Nutch-1.0
Disallow: /

User-agent: Sogou web spider/4.0
Disallow: /

User-agent: Xenu Link Sleuth/1.3.8
Disallow: /

User-agent: discoverybot/2.0
Disallow: /

User-agent: YoudaoBot/1.0
Disallow: /

User-agent: Sogou web spider/3.0
Disallow: /

User-agent: *
Disallow: /_dynamic-products/
Disallow: /administration/
Disallow: /_squiz-test/
Disallow: /test-folder/
Disallow: /ajax-content/
Disallow: /fb-search/
Disallow: /_Test folder/
Disallow: /infermed-community/
Disallow: /PII/
Disallow: /gej-ng/
Disallow: /cgi-bin/
Disallow: /__returned/
Disallow: /ctx/
Disallow: /s/
Disallow: /wps/find/
Disallow: /wps/inca/
Disallow: /wps/subject/
Disallow: /wps/product/cws_home/
Disallow: /pub/
Disallow: /IVP/
Disallow: /febs/
Disallow: /framework_librarians/
Disallow: /framework_aboutus/
Disallow: /elsevier-products/
Disallow: */homepage/
Disallow: */_dynamic/
Disallow: */books-and-journals/book-companion/
Disallow: */rd-solutions/industry-insights/pharma-and-life-sciences/ty
Disallow: */about/our-business?a=568780
Disallow: */clinical-solutions/contact/business-development-contact-us/drug-information-busdevform*
Noindex: */promo/
Noindex: /io/
Noindex: /_rest_magic/

User-Agent: *
Sitemap: https://www.elsevier.com/sitemaps/sitemap_index.xml