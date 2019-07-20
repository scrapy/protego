# For all robots
User-agent: *

# Block access to specific groups of pages
Disallow: /au/en/auweb/
Disallow: /ca/en/webca/
Disallow: /us/en/usweb/
Disallow: /us/en/webus/
Disallow: /le/
Disallow: */fastsearch
Disallow: */newhome
Disallow: */newdeals

#global sitemap
Sitemap: https://www.lenovo.com/sitemap.xml

# Allow search crawlers to discover the sitemap
Sitemap: https://www.lenovo.com/au/en/googlesitemap.xml
Sitemap: https://www.lenovo.com/nz/en/googlesitemap.xml
Sitemap: https://www.lenovo.com/sitemaps/sitemap-sg.xml

# Block access to below CA country directories
Disallow: /ca/en/corpeppca/

# Block access to below private stores
Disallow: /us/en/csc/
Disallow: /us/en/fepp/
Disallow: /us/en/csus/
Disallow: /us/en/nscs/
Disallow: /us/en/cepp/
Disallow: /us/en/army/
Disallow: /us/en/gates/
Disallow: /us/en/m1isaca/
Disallow: /us/en/usstudents/
Disallow: /us/en/calchamber/
Disallow: /aviata/us/en/

# Block access to below EMEA country directories
Disallow: /gb/en/gbweb/
Disallow: /ie/en/ieweb/
Disallow: /de/de/deweb/
Disallow: /nl/nl/nlweb/
Disallow: /at/de/atweb/
Disallow: /ch/fr/chweb/
Disallow: /ch/de/chweb/

# Block access to below AU pages
Disallow: /au/en/consumer-all-in-one/
Disallow: /au/en/commercial-desktop/