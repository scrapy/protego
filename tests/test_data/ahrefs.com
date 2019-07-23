User-agent: *
Disallow: /keywords/
Disallow: /v2/users/login/
Disallow: /site-explorer/ajax/
Allow: /site-explorer/$
Disallow: /site-explorer/*
Allow: /link-intersect/$
Disallow: /link-intersect/*