# See http://www.robotstxt.org/robotstxt.html for documentation on how to use the robots.txt file
User-agent: *
Disallow: /member/
Disallow: /new/
Disallow: /ads_test_page
Sitemap: https://www.fastweb.com/sitemap.xml.gz
