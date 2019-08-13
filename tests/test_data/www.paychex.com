# Robots.txt file for http://www.paychex.com
# Disallow all robots from the following directories:

User-agent: *
Disallow: /bin/
Disallow: /App_Code/
Disallow: /App_WebReferences/
Disallow: /Release/
Disallow: /formmail/
Disallow: /google/
Disallow: /master/
Disallow: /msn/
Disallow: /usercontrol/
Disallow: /a/d/retsrv/
Disallow: /a/d/roc/
Disallow: /a/d/ssae/
Disallow: /a/d/white-papers/
Disallow: /a/x/
Disallow: /accounting-professionals/resources/newsletters
Disallow: /iframe
Disallow: /shadowbox
Disallow: /*thankyou*
Disallow: /benetrac*
Disallow: /worx/webinars
Disallow: /assets/optimizely/
Disallow: /node*
Disallow: /includes/
Disallow: /misc/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

Disallow: /taxonomy*

Noindex: /newsroom/news-releases?page=*
Noindex: /newsroom/financial-releases?page=*
Noindex: /newsroom/awards?page=*
# XML sitemap
Sitemap: https://www.paychex.com/sitemap.xml