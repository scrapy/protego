# robots.txt for https://www.daveramsey.com/
Sitemap: https://www.daveramsey.com/sitemap.xml

# Disallow all crawlers access to certain folders.
User-agent: *
Disallow: /admin/
Disallow: /CFIDE/
Disallow: /fuseads/
Disallow: /a/
Disallow: /search
Disallow: /sitedown
Disallow: /scheduledtasks
Disallow: /config
Disallow: /morningstar
Disallow: /morningstar-support
Disallow: /ppv/
Disallow: /elp/roadmap/
Disallow: /fpu/registration-thank-you/
Disallow: /legacy/registration-thank-you/
Disallow: /etc/
