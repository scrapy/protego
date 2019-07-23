User-agent: *
# Directories
Disallow: /multisite_files/fastcompany/imagecache/
Disallow: /admin/
Disallow: /4160/
Disallow: /bookclub/
Noindex: /search*

User-agent: BomboraBot
Allow: /

# Sitemap
Sitemap: https://www.fastcompany.com/sitemap.xml
Sitemap: https://www.fastcompany.com/sitemap-video.xml
Sitemap: https://www.fastcompany.com/googlenews.xml