# robots.txt for https://www.bettycrocker.com (delivery) - DO NOT REMOVE COMMENT
User-agent: *
Disallow: /register
Disallow: /register/
Disallow: /login
Disallow: /search
Disallow: /testing
Disallow: /Testing
Disallow: /sitecore/
Disallow: /home/
Disallow: /Home/
Disallow: /myaccount/
Disallow: /~/media/files/*
Disallow: /.well-known/apple-app-site-association
Disallow: /apple-app-site-association
Sitemap: https://www.bettycrocker.com/sitemap.xml