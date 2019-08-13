User-Agent: *

Disallow: */search
Disallow: */tag
Disallow: */deals/compare

Disallow: /*/price-comparison
Disallow: /*/specification
Disallow: /*searchTerm
Disallow: /*sortBy
Disallow: /*productBrand

Allow: */tag/apple
Allow: */tag/amazon-prime-day

Sitemap: https://www.techradar.com/sitemap.xml
Sitemap: https://www.techradar.com/uk/sitemap.xml
Sitemap: https://www.techradar.com/au/sitemap.xml
Sitemap: https://www.techradar.com/sg/sitemap.xml
