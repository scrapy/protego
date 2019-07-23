User-agent: *
Disallow: /?rc=embedpuzzle&
Disallow: /?rc=tags&
Disallow: /?rc=search&
Disallow: /*/?rc=embeduser$
Disallow: /api/

# --- allow ad bots
User-agent: Mediapartners-Google
Disallow:

User-agent: AdsBot-Google*
Disallow:
# ---

User-agent: Googlebot-Image
Disallow: /i/*/jp.jpg$
Disallow: /?rc=img&

User-agent: dotbot
Disallow: /

User-agent: Riddler
Disallow: /

User-agent: BLEXBot
Disallow: /

User-agent: AhrefsBot
Disallow: /

User-agent: MauiBot
Disallow: /

Sitemap: https://www.jigsawplanet.com/?rc=sitemap
