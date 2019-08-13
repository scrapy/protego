Sitemap: https://www.kaspersky.com/sitemap.xml

User-agent: *
Disallow: /acq/
Disallow: /search
Disallow: /rss-feeds
Disallow: /components/
Disallow: /b2c-tools/
Disallow: /entp/
Disallow: /feeds/
Disallow: /lp/
Disallow: /_svc/
Disallow: /advert/
Disallow: /small-to-medium-business-security/resources/*
Disallow: /embed/
Disallow: /?slow=*
Disallow: /small-to-medium-business-security/downloads/thank-you

Disallow:	/about/press-releases/1998*
Disallow:	/about/press-releases/1999*
Disallow:	/about/press-releases/2000*
Disallow:	/about/press-releases/2001*
Disallow:	/about/press-releases/2002*
Disallow:	/about/press-releases/2003*
Disallow:	/about/press-releases/2004*
Disallow:	/about/press-releases/2005*
Disallow:	/about/press-releases/2006*
Disallow:	/about/press-releases/2007*
Disallow:	/about/press-releases/2008*
Disallow: /templates/site-header_main-nav.html

Disallow: /templates/site-header_mega-menu__b2c.html

Disallow: /templates/site-header_mega-menu__res.html
Noindex: /?slow=*

