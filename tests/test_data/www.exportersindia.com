#Robots.txt for ExportersIndia.com
User-agent: *

Disallow: /banner/
Disallow: /misc/
Disallow: /transfer-files/
Disallow: /iyp_ftp_connect_dir/
Disallow: /pro-invoice/
Disallow: /report/
Disallow: /tmp/
Disallow: /min/
Disallow: /dynamic/
Disallow: /market_panel/
Disallow: /search.php
Disallow: /products-search.php
Disallow: /catalog-popup.php
Disallow: /enquiry.htm 
Disallow: /inquiry_form_catg_page.php 
Disallow: /forgot_pass.php
Sitemap: https://www.exportersindia.com/sitemap_index.xml