User-agent: Mediapartners-Google
Disallow:

User-agent: Googlebot
Crawl-delay: 5
Disallow: /*rss$ 
Disallow: /trash/
Disallow: /friendsfavorites/
Disallow: /favorited/
Disallow: /activity/

User-agent: Slurp
Crawl-delay: 5
Disallow: /user.mefi/
Disallow: /username.mefi/
Disallow: /user/
Disallow: /username/
Disallow: /trash/
Disallow: /friendsfavorites/
Disallow: /favorited/

User-agent: Teoma
Crawl-delay: 5
Disallow: /user.mefi/
Disallow: /username.mefi/
Disallow: /user/
Disallow: /username/
Disallow: /trash/
Disallow: /friendsfavorites/
Disallow: /favorited/

User-agent: bingbot
Crawl-delay: 5
Disallow: /user.mefi/
Disallow: /username.mefi/
Disallow: /user/
Disallow: /username/
Disallow: /trash/
Disallow: /friendsfavorites/
Disallow: /favorited/

User-agent: msnbot
Crawl-delay: 5
Disallow: /user.mefi/
Disallow: /username.mefi/
Disallow: /user/
Disallow: /username/
Disallow: /trash/
Disallow: /friendsfavorites/
Disallow: /favorited/

User-agent: Exabot
Crawl-delay: 5
Disallow: /user.mefi/
Disallow: /username.mefi/
Disallow: /user/
Disallow: /username/
Disallow: /trash/
Disallow: /friendsfavorites/
Disallow: /favorited/

User-agent: Charlotte
Disallow: /

User-agent: R6_FeedFetcher(www.radian6.com/crawler)
Disallow: /

User-agent: R6_FeedFetcher
Disallow: /

User-agent: 008
Disallow: /

User-agent: Yahoo Pipes 1.0
Disallow: /tags/

User-agent: ScoutJet
Crawl-delay: 5

User-agent: Yandex
Crawl-delay: 5

User-agent: voyager
Crawl-delay: 5

User-agent: Baiduspider
Disallow: /

User-agent: AppleNewsBot
Crawl-delay: 5

User-agent: Applebot
Crawl-delay: 5

User-agent: *
Disallow: /user.mefi/
Disallow: /username.mefi/
Disallow: /user/
Disallow: /username/
Disallow: /trash/
Disallow: /friendsfavorites/
Disallow: /favorited/
Disallow: /12th/vote-remove.mefi
Disallow: /vote-remove.mefi
Disallow: /tags/
Disallow: /activity/
Crawl-delay: 5
