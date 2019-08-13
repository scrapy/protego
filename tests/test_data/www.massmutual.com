User-agent: *
Disallow: /sem/
Disallow: /header
Disallow: /footer
Disallow: /authheader
Disallow: /pkmslogout
Disallow: /pkmslogin.form

User-agent: Adsbot-Google
Allow: /sem/

User-agent: AdIdxBot
Allow: /sem/

Sitemap: https://www.massmutual.com/sitemap_site.xml

