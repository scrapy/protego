# Please refer to the robots.txt spec by Google (https://developers.google.com/search/reference/robots_txt) if you are modifying this file

User-agent: *
# All crawlers keep out of 8 Day flash directory and flash tutorials
Disallow: /learn/8day/flash/
Disallow: /learn/8day/bollingerbandslessonM.html
Disallow: /learn/8day/macdlesson2M.html
Disallow: /learn/8day/MACDlessonM.html
Disallow: /learn/8day/movingaveragesII.html
Disallow: /learn/8day/postingchartsanimated.html
Disallow: /learn/8day/rangeboundandtrendingmarketsM.html
Disallow: /learn/8day/rsiIIIM.html
Disallow: /learn/8day/rsiIIM.html
Disallow: /learn/8day/rsilessonIM.html
Disallow: /learn/8day/stochasticIIM.html
Disallow: /learn/8day/TradingwithFibonacci.html

Disallow: /travel/bookyourtrip/beach/
Disallow: /travel/bookyourtrip/family/
Disallow: /travel/bookyourtrip/ski/
Disallow: /test/
Disallow: /fxwidgets/

Disallow: /currencytransfers/
Disallow: /xetradebusiness/
Disallow: /migration/

Disallow: /auth/

Disallow: /newsletteroptinconfirmation/

# Don't let crawlers into the syndication widgets
Disallow: /syndication/currencychartswidget.php
Disallow: /*/syndication/currencychartswidget.php
Disallow: /syndication/currencyconverterwidget.php
Disallow: /*/syndication/currencyconverterwidget.php
Disallow: /syndication/ratestablewidget.php
Disallow: /*/syndication/ratestablewidget.php

Disallow: /currencyemail/consent.php

Disallow: /moneytransfer/

Disallow: /themes/xeidevent.php

# Crawlers should stay out of the /api endpoints, and the language variants of those pages
Disallow: /a/
Disallow: /*/a/
Disallow: /api/
Disallow: /*/api/
Disallow: /currencycharts/currates.php
Disallow: /currencycharts/ucccurrates.php

# Prevent crawlers from trying to access ratealerts with params
# Since ratealerts content is behind a login, the crawlers get no value out of params but it bloats prerender cache
Disallow: /ratealerts/?
Disallow: /*/ratealerts/?

# Prevent crawlers from hitting the buggy version of a certain FAQ page
Disallow: /apps/*/faq/?
Disallow: /*/apps/*/faq/?
Allow: /apps/*/faq/?q=
Allow: /*/apps/*/faq/?q=
Allow: /apps/*/faq/?mobile
Allow: /*/apps/*/faq/?mobile

Disallow: /travel-expenses-calculator/?

Disallow: /tmi/

Disallow: /ga.php

# We noticed a series of mysterious homepage URLs being hit by bingbot of the form https://www.xe.com/?0.xxxx...
Disallow: /?0.
Disallow: /*/?0.

# New sitemap xml except for sitemap-index.xml.
Sitemap: https://www.xe.com/sitemap-general.xml
Sitemap: https://www.xe.com/sitemap-currencies.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-ar-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-ar-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-de-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-de-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-en-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-en-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-es-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-es-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-fr-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-fr-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-it-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-it-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-ja-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-ja-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-pt-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-pt-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-sv-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-sv-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-zh-CN-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-zh-CN-2.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-zh-HK-1.xml
Sitemap: https://www.xe.com/sitemap-currency-converter-zh-HK-2.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-ar.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-de.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-en.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-es.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-fr.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-it.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-ja.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-pt.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-sv.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-zh-CN.xml
Sitemap: https://www.xe.com/sitemap-currency-charts-zh-HK.xml