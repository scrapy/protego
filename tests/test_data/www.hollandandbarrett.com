# robots.txt generated for https://www.hollandandbarrett.com/

# Crawlers Setup
User-agent: *

Disallow: /basket/
Disallow: /checkout/
Disallow: /common/
Disallow: /modules/
Disallow: /template/
Disallow: /emailtemplates/

# Paths (no clean URLs)
Disallow: /*browse*
Disallow: /*rating_*
Disallow: /*gender_*
Disallow: /*price_*
Disallow: /*size_*
Disallow: /*strength-mg*
Disallow: /*strength-iu*
Disallow: /*showAll=*
Disallow: /*skupromo_*
Disallow: /*strength-g_less-than*
Disallow: /*strength-c_less-than*
Disallow: /*strength-ml_less-than*
Disallow: /*sort_ratings*
Disallow: /*sort_high-low*
Disallow: /*sort_low-high*
Disallow: /*sort_a-to-z*
Disallow: /*sort_z-to-a*
Disallow: /*sort_topseller*
Disallow: /*N=*
Disallow: /*q=*

# Website Sitemap
Sitemap: https://www.hollandandbarrett.com/index.xml
