# Whitelisted user-agents are allowed 
User-agent: *

Allow: .js 
Allow: .css

Disallow: /admin/
Disallow: /cgi-bin/
Disallow: /ffdemo/
Disallow: /ajaxactions/
Disallow: /utils/
Disallow: /lic/
Disallow: /licenses_text/
Disallow: /licenses_pdf/
Disallow: /error404/
Disallow: /search/
Disallow: /search
Disallow: /400.shtml
Disallow: /down_for_maintenance
Disallow: /account/download_demo/
Disallow: /cart
Disallow: /tools

#disallows language and tag pages with pagination
Disallow: /language/*/* 
Disallow: /tag/*/* 
Disallow: /classification/*/*
Disallow: /modal/
Disallow: /modal
Disallow: /fnt_imgs


Sitemap: https://www.fontspring.com/sitemap.xml
Sitemap: https://www.fontspring.com/sitemaps/new_products_sitemap.xml
Sitemap: https://www.fontspring.com/sitemaps/landing_pages.xml
Sitemap: https://www.fontspring.com/sitemaps/product_sitemap.xml
Sitemap: https://www.fontspring.com/sitemaps/content_sitemap.xml 
Sitemap: https://www.fontspring.com/sitemaps/lists_sitemap.xml
Sitemap: https://www.fontspring.com/sitemaps/tags_sitemap.xml
Sitemap: https://www.fontspring.com/sitemaps/similar_fonts_sitemap.xml
Sitemap: https://www.fontspring.com/sitemaps/foundry_sitemap.xml