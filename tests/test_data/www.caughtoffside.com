Sitemap: http://www.caughtoffside.com/sitemapindex.xml

User-agent: Googlebot
User-agent: Googlebot-Image
User-agent: Googlebot-News
User-agent: Googlebot-Mobile
User-agent: Mediapartners-Google
User-agent: Twitterbot
User-agent: NewsNow
Disallow:
Allow: /*

# digg mirror
User-agent: duggmirror
Disallow: /

# global
User-agent: *
Disallow: /cgi-bin
Disallow: /wp-admin
Disallow: /xmlrpc.php
Disallow: /wp-includes
Disallow: /wp-content/plugins
Disallow: /wp-content/cache
Disallow: /wp-content/themes
Disallow: /trackback
Disallow: /comments
Disallow: /category/*/*
Disallow: */trackback
Disallow: */comments
Disallow: */amp/
#not sure why the below two were here so have commented them as they were causing issues with image previews being scraped by e.g. twitter
#Disallow: /*?*
#Disallow: /*?
Allow: /wp-content/uploads
