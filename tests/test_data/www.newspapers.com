user-agent: *
Disallow: /busy.html
Disallow: /error.html
Disallow: /error.php
Disallow: /download/
Disallow: /clippings/download/
Allow: /newspage/

# Slow Bots see https://ahrefs.com/robot for more info
User-Agent: AhrefsBot
Disallow: /busy.html
Disallow: /error.html
Disallow: /error.php

user-agent: Googlebot-Image
Allow: /*

user-agent: Applebot
Allow: /*

user-agent: Facebot
Allow: /*

# Updated 2/25/2019