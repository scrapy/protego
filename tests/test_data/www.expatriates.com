User-agent: Mediapartners-Google
Disallow:

User-agent: *
Disallow: /scripts/
Allow: /scripts/assets/
Disallow: /cgi-local/
Disallow: /data/
