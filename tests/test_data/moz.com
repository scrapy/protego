Sitemap: https://moz.com/sitemaps-1-sitemap.xml
Sitemap: https://moz.com/blog-sitemap.xml


User-agent: *
Allow: /researchtools/ose/$
Allow: /researchtools/ose/dotbot$
Allow: /researchtools/ose/links$
Allow: /researchtools/ose/just-discovered$
Allow: /researchtools/ose/pages$
Allow: /researchtools/ose/domains$
Allow: /researchtools/ose/anchors$
Allow: /products/
Allow: /local/
Allow: /learn/
Allow: /researchtools/ose/
Allow: /researchtools/ose/dotbot$

Disallow: /products/content/
Disallow: /local/enterprise/confirm
Disallow: /researchtools/ose/
Disallow: /page-strength/*
Disallow: /thumbs/*
Disallow: /api/user?*
Disallow: /checkout/freetrial/*
Disallow: /local/search/
Disallow: /local/details/
Disallow: /messages/
Disallow: /content/audit/*
Disallow: /content/search/*
Disallow: /marketplace/
Disallow: /cpresources/
Disallow: /vendor/
Disallow: /community/q/questions/*/view_counts
Disallow: /admin-preview/*


