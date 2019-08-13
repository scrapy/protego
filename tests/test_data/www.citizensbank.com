User-agent: *

Allow: .css
Allow: .js



Allow: /assets/sitemap/citibank/

# Files

Disallow: /custom/check-up-overview.aspx 
Disallow: /account-safeguards/zelle-terms-of-service.aspx

Sitemap: https://www.citizensbank.com/sitemap1.xml