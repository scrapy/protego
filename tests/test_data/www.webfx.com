User-agent: ia_archiver
Disallow: /

User-agent: *
Disallow: /referral/
Disallow: /old/
Disallow: /PDF/
Disallow: /PPT/
Disallow: /mobile/
Disallow: /jobs/
Disallow: /tools/read-able/check.php*
Disallow: /lp/
Noindex: /demo/

User-agent: twitterbot
Allow: /blog/wp-content/uploads/
Allow: /blog/images/

User-agent: Googlebot-Image
Allow: /blog/wp-content/uploads/
Allow: /blog/images/

Sitemap: https://www.webfx.com/blog/sitemap.xml
Sitemap: https://www.webfx.com/sitemaps/sitemap-index.xml