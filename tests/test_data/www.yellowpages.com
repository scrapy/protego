User-agent: Mediapartners-Google
Disallow:

User-Agent: *
Disallow: /*images/li.gif
Disallow: /*images/logging_requests.gif
Disallow: /relevance_feedback
Disallow: /listings/
Disallow: /listing_feedback/
Disallow: */report_abuse
Disallow: /gallery/*/copyright
Disallow: /gallery/*/flag
Disallow: /contribute/businesses/*/photos/*/copyright
Disallow: /contribute/businesses/*/photos/*/flag
Disallow: /reservations/
Disallow: */print_ad?*
Disallow: */audio_ad?*
Disallow: */map_locations
Disallow: /reviews/*/up
Disallow: /reviews/*/down
Disallow: /reviews/*/follow
Disallow: /reviews/*/unfollow
Disallow: /semp/*
Disallow: */no-internet-heading-assigned
Disallow: */no-internet-heading-assisted
Disallow: /login
Disallow: /register
Disallow: /feedback/new
Disallow: /user/
Disallow: /ypu/js/compiled/tripadvisor*
Disallow: /ypu/apps/ypm-core/ypm/javascripts/bundle_tripadvisor*
Disallow: /undefined/

User-agent: 008
Disallow: /

User-agent: scrapy
Disallow: /

User-agent: Twitterbot
Allow: *

Host: www.yellowpages.com
