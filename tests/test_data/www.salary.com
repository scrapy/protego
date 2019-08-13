# robots.txt for https://www.salary.com/

User-agent: *
Disallow: /dist/
Disallow: /dist-biz/
Disallow: /dist-frm/
Disallow: /dist-prd/
Disallow: /dist-psn/


Disallow: /wp-content/
Disallow: /wp-content-biz/
Disallow: /wp-content-frm/
Disallow: /wp-content-prd/
Disallow: /wp-content-psn/

Disallow: /wp-includes/
Disallow: /wp-includes-biz/
Disallow: /wp-includes-frm/
Disallow: /wp-includes-prd/
Disallow: /wp-includes-psn/

Disallow: /wp-json/
Disallow: /wp-json-biz/
Disallow: /wp-json-frm/
Disallow: /wp-json-prd/
Disallow: /wp-json-psn/

User-agent: Twitterbot
Disallow: /dist/
Disallow: /dist-biz/
Disallow: /dist-frm/
Disallow: /dist-prd/
Disallow: /dist-psn/


Disallow: /wp-content/
Allow: /wp-content/*.jpg$
Disallow: /wp-content-biz/
Allow: /wp-content-biz/*.jpg$
Disallow: /wp-content-frm/
Allow: /wp-content-frm/*.jpg$
Disallow: /wp-content-prd/
Allow: /wp-content-prd/*.jpg$
Disallow: /wp-content-psn/
Allow: /wp-content-psn/*.jpg$

Disallow: /wp-includes/
Disallow: /wp-includes-biz/
Disallow: /wp-includes-frm/
Disallow: /wp-includes-prd/
Disallow: /wp-includes-psn/

Disallow: /wp-json/
Disallow: /wp-json-biz/
Disallow: /wp-json-frm/
Disallow: /wp-json-prd/
Disallow: /wp-json-psn/

User-agent: Facebot
Disallow: /dist/
Disallow: /dist-biz/
Disallow: /dist-frm/
Disallow: /dist-prd/
Disallow: /dist-psn/


Disallow: /wp-content/
Allow: /wp-content/*.jpg$
Disallow: /wp-content-biz/
Allow: /wp-content-biz/*.jpg$
Disallow: /wp-content-frm/
Allow: /wp-content-frm/*.jpg$
Disallow: /wp-content-prd/
Allow: /wp-content-prd/*.jpg$
Disallow: /wp-content-psn/
Allow: /wp-content-psn/*.jpg$

Disallow: /wp-includes/
Disallow: /wp-includes-biz/
Disallow: /wp-includes-frm/
Disallow: /wp-includes-prd/
Disallow: /wp-includes-psn/

Disallow: /wp-json/
Disallow: /wp-json-biz/
Disallow: /wp-json-frm/
Disallow: /wp-json-prd/
Disallow: /wp-json-psn/

Sitemap: https://www.salary.com/sitemap_index.xml
Sitemap: https://www.salary.com/sitemap_wp_index.xml
Sitemap: https://www.salary.com/sitemap/sitemap_cl_index.xml