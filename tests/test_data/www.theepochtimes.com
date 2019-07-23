User-agent: *
Crawl-delay: 10
# Directories
Disallow: */uncategorized/*
Disallow: /wp-includes/*
Disallow: /wp-admin/*
Disallow: /wp-content/plugins/*
Disallow: /assets/plugins/*
Disallow: /search/*
Disallow: /feedback/*

User-Agent: omgilibot
Disallow: /

User-Agent: omgili
Disallow: /

Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap.xml.gz
Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap_news.xml.gz
Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap_pages.xml.gz
Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap_category.xml.gz
Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap_m.xml.gz
Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap_news_m.xml.gz
Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap_pages_m.xml.gz
Sitemap: https://www.theepochtimes.com/assets/uploads/sitemap/sitemap_category_m.xml.gz
