Sitemap: https://www.seattletimes.com/?sitemap=true
Sitemap: https://s3-us-west-2.amazonaws.com/st-sitemaps-production/sitemaps/video/video-sitemap1.xml
Sitemap: https://s3-us-west-2.amazonaws.com/st-sitemaps-production/sitemaps/video/video-sitemap2.xml

User-agent: Magnetbot
Allow: /

User-agent: *
Disallow: /cgi-bin
Disallow: /st_above_fold_block/
Disallow: /st_below_fold_block/
Disallow: /81279359/
Disallow: /DONOTMIGRATE/
Disallow: /header.html
Disallow: /footer.html
Disallow: /life-top-stories/
Disallow: /cap-ami-bentov/
Disallow: /survey-confirmation/
Disallow: /search/?similarto=
Disallow: */page/
Disallow: /wall-mobile/
Disallow: /subscription/

Disallow: /*?attachment_id

