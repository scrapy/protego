# robots.txt for https://www.bseindia.com/
User-agent: *
Disallow: /dropdowns/
Disallow: /bseplus/StockReach/
Disallow: /stockinfo/
Disallow: /xml-data/
Disallow: /qresann/
Disallow: /sensexview/
Disallow: /SiteCache/
Disallow: /sitecache/
Disallow: /Msource/SNPSensexData.aspx
Disallow: /Msource/IndexMovers.aspx
Sitemap : https://www.bseindia.com/sitemap.xml

