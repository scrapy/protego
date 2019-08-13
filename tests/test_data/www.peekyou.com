User-agent: *
Disallow: /showprofile.php?action=get_history&id=*
Disallow: /gallery.php*
Disallow: /results.php
Disallow: /*layout=grid*
Disallow: /ext/
Disallow: /track_spokeo.php
Disallow: /outgoing/*
Disallow: /addineyeV2.html
Disallow: /DARTIframe.html
Disallow: /provider/*

Disallow: /blog/cgi-bin/
Disallow: /blog/wp-admin/
Disallow: /blog/wp-content/
Disallow: /blog/wp-includes/
Disallow: /blog/trackback/
Disallow: /blog/xmlrpc.php
Disallow: /blog?wptheme=
Disallow: /blog/transfer/
Disallow: /blog/tweets/
Disallow: /blog/mint/
Disallow: /web_results/*
Disallow: /tools/

Allow: /blog/tag/mint/
Allow: /blog/tag/feed/
Allow: /blog/wp-content/online/

User-agent: Exabot
Crawl-delay: 5

User-agent: 008
Disallow: /

User-agent: Baiduspider
Disallow: /

User-agent: Yandex
Disallow: / 

User-agent: Slurp
Crawl-delay: 30