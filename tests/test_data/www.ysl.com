# Disallow tricombot.
User-agent: Tricombot
Disallow: /

User-agent: *
Disallow: /yTos/
Disallow: /teaser.asp*
Disallow: /corporate/*?yoox_storelocator_action=*&action=*