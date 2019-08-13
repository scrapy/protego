User-Agent: *
Disallow: /test
Disallow: /widgets
Disallow: /fscom
Allow: /foxbox/Static
Allow: /foxbox/*/API/League/
Allow: /foxbox/*/API/Team/
Allow: /foxbox/component/scorestrip
Allow: /foxbox/scorestrip
Allow: /foxbox/ScoreStrip/
Allow: /foxbox/*/player/*/stats$
Disallow: /foxbox

Sitemap: https://www.foxsports.com/sitemap.xml
Sitemap: https://www.foxsports.com/sitemap-news.xml
Sitemap: https://www.foxsports.com/sitemap-fastchanging.xml
