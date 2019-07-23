User-Agent: Mediapartners-Google
Allow: /
Sitemap: https://123greetings.com/sitemap.xml
Disallow: /rd1
Disallow: /rd2
Disallow: /usr-bin

User-agent: grapeshot
Disallow: /

User-agent: Clickagy Intelligence Bot v2
Disallow: /

User-agent: *
Disallow: /rd1
Disallow: /rd2
Disallow: /aff-bin
Disallow: /send
Disallow: /usr-bin
Disallow: /sendcard
Disallow: /createcard
