User-agent: *
Disallow: /wp-content/upgrade/
Disallow: /wp-admin/
Disallow: /.inc$
Disallow: /*.php$
Disallow: /?s=

User-agent: All
Allow: /

User-agent: NinjaBot
Allow: /