User-agent: Googlebot-News
Disallow: /feeds/
Disallow: /incoming/
Disallow: /test/
Disallow: /partners/

User-agent: AdsBot-Google
Disallow: /feeds/
Disallow: /incoming/
Disallow: /test/

User-agent: *
Disallow: /feeds/
Disallow: /incoming/
Disallow: /test/