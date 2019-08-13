User-agent: *
Disallow: /cart$
Disallow: /user
Disallow: /*pageSize=
Disallow: /*sortBy=
Disallow: /search
Noindex: /search
Disallow: /*facetValueFilter
Noindex: /*facetValueFilter
Disallow: /*undefined$
Noindex: /*undefined$
Disallow: /write-a-review

Sitemap: https://www.acehardware.com/sitemap.xml
