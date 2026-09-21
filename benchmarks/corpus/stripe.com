Sitemap: https://stripe.com/sitemap/sitemap.xml

User-agent: ia_archiver
Allow: /docs/api
Allow: /docs/api$
Disallow: /docs
Disallow: /docs$
Disallow: /bitcoin/refund
Disallow: /sources/refund
Disallow: /sources/sepa_mandate
Disallow: /sources/test_source
Disallow: /sources/test_klarna
Disallow: /handoff-healthcheck
Disallow: /handoff

User-agent: *
Allow: /docs
Allow: /docs$
Disallow: /bitcoin/refund
Disallow: /sources/refund
Disallow: /sources/sepa_mandate
Disallow: /sources/test_source
Disallow: /sources/test_klarna
Disallow: /unsupported-browser
Disallow: /handoff-healthcheck
Disallow: /handoff

User-agent: rogerbot
Crawl-delay: 2
