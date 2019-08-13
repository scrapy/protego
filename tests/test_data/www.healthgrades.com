#    Robots.txt file HealthGrades.com
#    May 23, 2018

# XML Sitemap Root File
Sitemap: https://www.healthgrades.com/sitemapindex.xml

User-agent: *
Disallow: /ContentLic/
Disallow: /Contentlic/
Disallow: /contentlic/
Disallow: /Professional/
Disallow: /professional/
Disallow: /logos/
Disallow: /Logos/
Disallow: /sales/
Disallow: /Sales/
Disallow: /provider-search-directory/
Disallow: /ProviderSearchResults
Disallow: /providersearchresults
Disallow: /hospital-directory/search/
Disallow: /facility-search-directory/
Disallow: /review
Disallow: /promo
Disallow: /Folio
Disallow: /components
Disallow: /health-stories/submit
Disallow: /usearch
Disallow: /autosuggest
Disallow: /Appointment
Disallow: /stagealpha
Allow: /ucms/sitemap*
Disallow: /ucms
Disallow: /modules/slideshow
Disallow: /4925
Disallow: /guide?
#trying noindex vs disallow to avoid SEO blocking of versioned node page resources
Noindex: /node 

# Disallow certain directories for b2b site
Disallow: /ipac/
Disallow: /sneakpeek/
Disallow: /MHsneakpeek/
Disallow: /mhsneakpeek/
Disallow: /HLsneakpeek/
Disallow: /hlsneakpeek/
Disallow: /sneakpeekaccess/
Disallow: /TenetDemo/
Disallow: /tenetdemo/
Disallow: /ipacDemo/
Disallow: /ipacdemo/
Disallow: /ipacdemodoc/

# Disallow consumer javascript and css folders
# Commented out to test impact on ability of Google to crawl / rankings
# Disallow: /Consumer/styles/
# Disallow: /consumer/styles/
# Disallow: /Consumer/scripts/
# Disallow: /consumer/scripts/
Disallow: /sites/custom/Consumer/styles/
Disallow: /sites/custom/consumer/styles/
Disallow: /sites/custom/Consumer/scripts/
Disallow: /sites/custom/consumer/scripts/

User-agent: NextGenSearchBot
Disallow: /

User-agent: ShopWiki
Disallow: /

User-agent: Mediapartners-Google 
Disallow:


# End robots.txt file
