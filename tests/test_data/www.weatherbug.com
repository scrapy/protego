# robots.txt for https://www.weatherbug.com/
user-agent: *
# Disallow: /ad/ #Container for ad files
Disallow: /O.*Z #Fix for robots thinking alert IDs are links
# Disallow: /api/ #block Api crawling
Disallow: /corporate/ #Fix for old corporate links
