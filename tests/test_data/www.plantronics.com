# Robots.txt file for https://www.plantronics.com/

# Adobe Search 
User-agent: Atomz/1.0
Disallow:

User-agent: *
Disallow: /content/plantronics/
Disallow: /content/plantronics-blueprints/
Disallow: /content/plantronics/partner/
Disallow: /content/plantronics/reference-information/
Disallow: /content/plantronics/design-library/
Disallow: /content/dam/plantronics/software
Disallow: /content/dam/plantronics/videos

Sitemap: https://www.plantronics.com/sitemap.xml