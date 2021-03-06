# Robots.txt file for https://9gag.com
# All robots will spider the domain

User-agent: Mediapartners-Google
Disallow:

User-agent: *
Disallow: /u/
Disallow: /read/
Disallow: /gag-in-app/*
Disallow: /views?*
Disallow: /search*
Disallow: /search?query=*
Disallow: /pref/*
Disallow: /settings*
Disallow: /notifications*
Disallow: /views*
Disallow: /connect/*
Disallow: /others/*
Disallow: /static/*
Disallow: /static/ads/*
Disallow: /l.php
Disallow: /?

Crawl-delay: 1

