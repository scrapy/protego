#Robots.txt for blackberry.com

#blackberry.com
User-agent: *
Disallow: /profile/
Disallow: /sporders/
Disallow: /spsales/
Disallow: /test/
Disallow: /partnersupport/
Disallow: /imsupport/
Disallow: /emailers/ownerlounge/
Disallow: /emailers/itreseller/
Disallow: /newsletters/technicalsupport/
Disallow: /newsletters/channel/
Disallow: /developers/forum/
Disallow: /select/fr/soyezaudacieux/
Disallow: /select/pdfs/technicalreference/
Disallow: /support/tsupport/pdfs/noindex/
Disallow: /content/dam/blackberry-com/asset/enterprise/pdf/direct
Disallow: /content/dam/blackberry-com/asset/enterprise/webcast/direct

User-agent: Uptimebot
Disallow: /

Sitemap: https://www.blackberry.com/us/en/sitemap.xml
Sitemap: https://www.blackberry.com/ca/en/sitemap.xml
Sitemap: https://www.blackberry.com/uk/en/sitemap.xml
