User-Agent: *
Disallow: /*.json
Disallow: /*.xml
Disallow: /*.php
Disallow: /*.vcf
Disallow: /*.qr
Disallow: /*.card
Disallow: /accounts/activate/*
Disallow: /accounts/force-by-email/*
Disallow: /account/
Allow: /sitemap.xml
Allow: /sitemap-*.xml

# Do not allow indexing most API endpoints.
Disallow: /v1/
Disallow: /v2/
Disallow: /v3/
Allow: /v3/openapi

User-agent: GPTBot
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: CCBot
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: SentiBot
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: sentibot
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: Google-Extended
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: FacebookBot
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: omgili
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: omgilibot
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: Amazonbot
Allow: /v3/openapi
Allow: /*.md
Disallow: /

User-agent: Bytespider
Allow: /v3/openapi
Allow: /*.md
Disallow: /