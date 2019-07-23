# See http://www.robotstxt.org/wc/norobots.html for documentation on how to use the robots.txt file
User-agent: *
Allow: /api/products/*/reviews
Disallow: /referral/
Disallow: /admin/
Disallow: /1/
Disallow: /user/
Disallow: /u/favourites
Disallow: /save_for_later/
Disallow: /*/product/*/enquiries/new
Disallow: /*?filter*
Disallow: /*&filter*
Disallow: /api/
Disallow: /*=$
Sitemap: http://noths-prod-eu-west-1-notonthehighstreet.s3-website-eu-west-1.amazonaws.com/feeds/sitemaps/sitemap.xml.gz