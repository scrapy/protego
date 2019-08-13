User-agent: *
# Directories
Disallow: /includes/
Disallow: /misc/
Disallow: /modules/
Disallow: /profiles/
Disallow: /scripts/
Disallow: /sites/default/files/webform/
Disallow: /themes/
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
# Paths (clean URLs)
Disallow: /admin/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /node/
Disallow: /*/node/
Disallow: /comment/
Disallow: /*/comment/
Disallow: /search/
Disallow: /*/search/
Disallow: /taxonomy/
Disallow: /*/taxonomy/
Disallow: /user
Disallow: /user/*
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

# Tableau Extras
Disallow: /esdalt
Disallow: /tpep/
Disallow: /webconversion
# Intentional callbacks
Disallow: /cause-error
Disallow: /*/cause-error
# Email only downloads
Disallow: /products/desktop/download-now
Disallow: /products/desktop/alternate-download
Disallow: /products/desktop/download-academic
# Events calendar files
Disallow: /*addtocal.ics$
Disallow: /*addtocal-google
Disallow: /*addtocal-yahoo
# Embeddables
Disallow: /embed/*

# BingBot can be overzealous, calm down.
User-Agent: bingbot
Crawl-delay: 5

# Bots without value
User-agent: AhrefsBot
Disallow: /

User-agent: BLEXBot
Disallow: /

# re #7789 - temporarily unblock search vendor
# User-agent: SemrushBot
# Disallow: /

Sitemap: https://www.tableau.com/sitemap_index.xml