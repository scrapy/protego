User-agent: *

Disallow: /bbms/
Disallow: /files/bbms/
Disallow: /files/bbms/
Disallow: /files/agreements/
Disallow: /scopes/
Disallow: /files/support/helpfiles/bluebird
Disallow: /files/support/helpfiles/education/k8
Disallow: /files/support/helpfiles/crm/help
Disallow: /files/corpmar/
Disallow: /customer-stories?
Disallow: /customer-showcase?
Disallow: /partners/find-partners?
Disallow: /kb/
Disallow: /*?*ReturnUrl=
Allow: /customer-stories?*pager=
Allow: /customer-showcase?*pager=
Allow: /partners/find-partners?*pager=

# Allow MOZ to crawl everything
User-agent: rogerbot
Disallow:
 
User-agent: dotbot
Disallow:

# Update the path to the file(s) and remove this comment when the site goes live
Sitemap: https://www.blackbaud.com/sitemap-index.xml

# Allow Siteimprove to access the site while in development
User-agent: SiteCheck-sitecrawl by Siteimprove.com
Disallow:

# Allow Siteimprove to access the site while in development
User-agent: LinkCheck by Siteimprove.com
Disallow:

# Allow Siteimprove to access the site while in development
User-agent: Image size by Siteimprove.com
Disallow:
