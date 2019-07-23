#
# Production
#

User-agent: *
Disallow: /error

# Checkout pages
Disallow: /cart
Disallow: /order

# Account
Disallow: /account
Disallow: /custom-logout
Disallow: /logout
Disallow: /reset-password
Disallow: /social-contact-us
Disallow: /status-report

# Hidden menu items
Disallow: /menu/10-bestseller
Disallow: /menu/promo
Disallow: /menu/specials
Disallow: /menu/dinner-for-2
Disallow: /promo/

# In-store WiFi
Disallow: /accesswifi
Disallow: /wifi
Disallow: /teamwifi

# CMS pages
Disallow: /better-burgers-ribs-fajitas
Disallow: /free
Disallow: /media/
Disallow: /style-guide

# Google Pay
Disallow: /s2gp

Sitemap: https://www.chilis.com/sitemap.xml