User-agent: Googlebot
Disallow: /trex/
Disallow: /mthinking/
Disallow: *track_aor.html

User-agent: Googlebot-Image # Googlebot
Disallow:

User-agent: MSNBot
Disallow: 

User-agent: Slurp
Disallow:

User-agent: googlebot-mobile
Disallow:

User-Agent: YahooSeekerM1A1-R2D2
Disallow:

User-Agent: MSNBOT_Mobile
Disallow:

User-agent: *
Disallow: /seeker/dashboard
Disallow: /seeker/profile 
Disallow: /pwa/
Disallow: /trex/*/

Sitemap: https://www.monsterindia.com/xmlsitemap/sitemap-index.xml
Sitemap: https://www.monsterindia.com/commonsitemaps/careercenter-in.xml
Sitemap: https://www.monsterindia.com/commonsitemaps/internationaljobs-in.xml
Sitemap: https://www.monsterindia.com/commonsitemaps/recruiter-in-index.xml
Sitemap: https://www.monsterindia.com/companysitemaps/companyurls-in-index.xml
Sitemap: https://www.monsterindia.com/jdsitemaps/activejobs-in-index.xml
Sitemap: https://www.monsterindia.com/jdsitemaps/todayjobs-in.xml
Sitemap: https://www.monsterindia.com/sitemapurl/sitemap-i-in-index.xml
Sitemap: https://www.monsterindia.com/commonsitemaps/govtjobs-in-index.xml
Sitemap: https://www.monsterindia.com/commonsitemaps/monstereducation-in-index.xml
