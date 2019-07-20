# robots

User-agent: *
Disallow: /account/
Disallow: /delete/
Disallow: /download/
Disallow: /logout/
Disallow: /removalrequest/
Disallow: /1/
Disallow: /2/
Allow:    /3/gallery
Allow:    /3/account
Allow:    /3/folders
Allow:    /3/tags
Disallow: /3/
Sitemap: https://imgur.com/imgur-assets/sitemap_gallery/gallery_images.xml
Sitemap: https://imgur.com/imgur-assets/sitemap_gallery/gallery_tags.xml
