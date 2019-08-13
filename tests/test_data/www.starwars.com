# Robots.txt for www.starwars.com

User-Agent: *
Disallow: /7046/
Disallow: /products/
Disallow: /_xd/
Disallow: /news/page/
Disallow: /wp-content/plugins/
Disallow: /search
Disallow: /watch/hls/stream/
Disallow: /watch/hls/master/
Disallow: /watch/captions/

User-agent: dotbot
Disallow: /

User-agent: rogerbot
Disallow: /
