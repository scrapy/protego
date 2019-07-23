# robots.txt for https://www.volusion.com/

User-agent: *

Sitemap: https://www.volusion.com/sitemap.xml

# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /assets/images/pricing_page/

# Erin Directories
Disallow:  /content/

# Files
Disallow: /CHANGELOG.txt
Disallow: /cron.php
Disallow: /INSTALL.mysql.txt
Disallow: /INSTALL.pgsql.txt
Disallow: /INSTALL.sqlite.txt
Disallow: /install.php
Disallow: /INSTALL.txt
Disallow: /LICENSE.txt
Disallow: /MAINTAINERS.txt
Disallow: /update.php
Disallow: /UPGRADE.txt
Disallow: /xmlrpc.php

# Erin Files

# Paths (clean URLs)
Disallow: /admin/
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /merchant-account/application/Success.aspx

# Erin Paths (clean URLs)


# Paths (no clean URLs)
Disallow: /?q=admin/
Disallow: /?q=comment/reply/
Disallow: /?q=filter/tips/
Disallow: /?q=node/add/
Disallow: /?q=search/
Disallow: /?q=user/password/
Disallow: /?q=user/register/
Disallow: /?q=user/login/
Disallow: /?q=user/logout/

## Erin Paths (no clean URLs)
Disallow: /?inline=true
Disallow: /*?page=$
Disallow: /*?utm_source=$
Disallow: /?format=simple
Disallow: /*?format=simple&rel=0&autoplay=1
Disallow: /?tid=

sitemap: http://www.volusion.com/sitemap.xml
sitemap: http://www.volusion.com/video-sitemap.xml