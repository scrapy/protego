User-agent: *
Disallow: /?s=
Disallow: /search
Disallow: /api
Disallow: /*?*
Disallow: /pixels
Disallow: /lp
Disallow: /SEM
Disallow: /img/icons
Disallow: /thankyou/
Disallow: /managed-services-thanks
Disallow: /thanks
Disallow: /signup-thanks
Disallow: /a.pl
Disallow: /www/signup
Disallow: /signup-error
Disallow: /p/
Disallow: /users
Allow: /*?*ver=*
Allow: /search/define


Sitemap: https://www.icontact.com/sitemap2.xml
Sitemap: https://www.icontact.com/sitemap-media2.xml
