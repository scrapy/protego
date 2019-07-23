# https://www.skechers.com robots.txt

User-Agent: *
Disallow: /assets/
Disallow: /search*
Disallow: /direct/*
Allow: /direct/$
Allow: /assets/*.js
Allow: /assets/*.css
Allow: /assets/*.png
Allow: /assets/*.jpg
Allow: /assets/*.gif

Sitemap: https://www.skechers.com/sitemap-index.xml

# _____ __ __ ______________ ____________ _____
# / __// //// ____/ ____/ / / / ____/ __ \/ ___/
# __ \/ ,< / _/ / / / // / _/ / // /__ \
# __/ / /| |/ /_/ /_/ __ / /_/ _, _/__/ /
# /___// |/___/__// //___// ||/___/
#