User-agent: *

Disallow: /*web-assets*
Noindex: /*web-assets*
Disallow: /register
Disallow: /*update-payment*
Disallow: /*edit-my-profile*
Disallow: /*order-history*
Disallow: /*manage-subscriptions*
Disallow: /*reset-password*
Disallow: /*order-authorization*
Disallow: /account
Disallow: /*Wishlist-Add*
Disallow: /*pmax=
Disallow: /*pmin=
Disallow: /*on/demandware.store*
Noindex: /*on/demandware.store*

User-agent: PowerMapper
Allow: /

Sitemap: https://www.partycity.com/sitemap_index.xml
Sitemap: https://www.partycity.com/ca/sitemap_index.xml