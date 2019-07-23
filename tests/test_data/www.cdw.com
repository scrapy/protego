# Disallow all crawlers access to certain pages.

User-agent: *
Disallow: /sh*/car*/
Disallow: /sh*/ea*/a*
Disallow: /sh*/ea*/b*
Disallow: /sh*/ea*/c*
Disallow: /sh*/ea*/d*
Disallow: /sh*/ea*/e*
Disallow: /sh*/ea*/f*
Disallow: /sh*/ea*/g*
Disallow: /sh*/ea*/h*
Disallow: /sh*/ea*/logoff*
Disallow: /sh*/ea*/m*
Disallow: /sh*/ea*/p*
Disallow: /sh*/ea*/r*
Disallow: /sh*/ea*/se*
Disallow: /sh*/ea*/sh*
Disallow: /sh*/ea*/u*
Disallow: /sh*/ch*/
Disallow: /sh*/order*/
Disallow: /sh*/pu*/
Disallow: /sh*/se*/res*.asp
Disallow: /sh*/EPP*/
Disallow: /sh*/cu*/
Disallow: /sh*/to*/su*/
Disallow: /fo*/
Disallow: /webcont*/inc*/
Disallow: /webcont*/hubp*/
Disallow: /webcont*/te*/
Disallow: /webcont*/ui_*/
Allow: /sh*/se*/res*.aspx

# Sitemap files
Sitemap: https://www.cdw.com/content/sitemap/cdw-sitemap-product-index.xml
Sitemap: https://www.cdw.com/content/sitemap/serp-sitemap.xml
Sitemap: https://www.cdw.com/content/sitemap/cloud-sitemap.xml
Sitemap: https://www.cdw.com/content/sitemap/thematic-sitemap.xml
