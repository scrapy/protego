#  robots.txt  2005/09/1
# www.tradeindia.com
# Format is:
#       User-agent: <name of spider>
#       Disallow: <nothing> | <path>

User-agent: *
Disallow: /banner/
Disallow: /inquiry_basket/
Disallow: /my-tradeindia/
Disallow: /registration/
Disallow: /Homepage/
Disallow: /video/
Disallow: /credit_reports/
Disallow: /search/
Disallow: /TradeLeads/send_inquiry.html
Disallow: /TradeLeads/rating_all.html
Disallow: /TradeLeads/buy/access_denied.html
Disallow: /Buyer/access_denied.html
Disallow: /FeaturedProducts/rfi_form.html
Disallow: /TradeShows/comment.html
Disallow: /communities/topic_search.html
Disallow: /advance_search.html
Disallow: /contact-us.html
Disallow: /Directory/all_cats.html
Disallow: /Seller/prod_search.html 
Disallow: /Seller/company_search.html
Disallow: /Seller/search_no.html
Disallow: /Exporters_Suppliers/

User-agent: Mediapartners-Google
Allow: /


Sitemap: https://www.tradeindia.com/seller_sitemap.xml
Sitemap: https://www.tradeindia.com/services_sitemap.xml
Sitemap: https://www.tradeindia.com/tradeleads_sitemap.xml
Sitemap: https://www.tradeindia.com/sitemap_manufacturers_index.xml
Sitemap: https://www.tradeindia.com/sitemap_city_index.xml
Sitemap: https://www.tradeindia.com/sitemap_fp_index.xml
Sitemap: https://www.tradeindia.com/sitemap_sp_index.xml

