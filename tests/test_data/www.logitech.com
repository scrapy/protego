# Logitech
# Modified Apr 6. 2018

User-agent: Ocelli
Disallow: /
User-agent: oBot
Disallow: /
User-agent: QXW03018
Disallow: /
User-agent: wespe.de
Disallow: /
User-agent: ADmantX
Disallow: /


User-agent: *
Disallow: /api/
Disallow: /apps/
Disallow: /bin/
Disallow: /content/
Disallow: /etc/
Disallow: /home/
Disallow: /libs/
Disallow: /tmp/
Disallow: /var/
Disallow: /system/
Disallow: /pdf/
Disallow: /change-location/
Disallow: /sifr/
Disallow: https://buy.logitech.com/
Disallow: https://assets.logitech.com/
Disallow: http://channel.logitech.com/
Disallow: http://origin2.logitech.com/
Disallow: https://origin2.logitech.com/
Disallow: /k600.html
Disallow: https://www.logitech.com/k600.html

Sitemap: https://www.logitech.com/sitemap/logitech_sitemapIndex.xml