
# For all robots
User-agent: *

# Block access to specific groups of pages
Disallow: */cart/
Disallow: */checkout/
Disallow: */my-account/
Disallow: */school/


# Block common duplicate/low-value parameterized URLs
Disallow: /*?sessionid=
Disallow: /*?ref=
Disallow: /*?utm_

# Allow search crawlers to discover the sitemap
Sitemap: https://www.wiley.com/sitemap.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.products-sitemap1.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.products-sitemap2.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.products-sitemap3.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.products-sitemap4.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.products-sitemap5.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.products-sitemap6.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.categories-sitemap1.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/in/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/kr/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/hk/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/sg/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/nz/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/cn/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/jp/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/apac/au/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/na/us/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/ca/us/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/latam/br/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/latam/mx/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/ae/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/nl/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/no/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/dk/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/es/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/it/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/se/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/be/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/fr/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/ie/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/gb/en.sitemap.content.xml
Sitemap: https://www.wiley.com/content/wiley-com/emea/de/en.sitemap.content.xml


# Block unwanted crawlers
User-agent: CazoodleBot
Disallow: /

User-agent: MJ12bot
Disallow: /

User-agent: dotbot*
Disallow: /

User-agent: Gigabot
Disallow: /

User-agent: trendkite-akashic-crawler
Disallow: /

User-agent: AhrefsBot
Disallow: /

User-agent: MauiBot
Disallow: /

User-agent: Barkrowler
Disallow: /
