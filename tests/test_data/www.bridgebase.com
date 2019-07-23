User-agent: googlebot
host: www.bridgebase.com
Disallow: /mp/
Disallow: /myhands/
Disallow: /tourneyhistory/
Disallow: /arcade/splash_

User-agent: *
Crawl-delay: 10
host: www.bridgebase.com
Disallow: /mp/
Disallow: /myhands/
Disallow: /tourneyhistory/
Disallow: /arcade/splash_
