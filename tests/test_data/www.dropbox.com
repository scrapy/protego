User-agent: Twitterbot
Disallow:

User-agent: *
Allow: /static/css/
Allow: /static/images/
Allow: /static/compiled/
Disallow: /static/
Disallow: /password_expired
Disallow: /help/sl
Disallow: /help/vodafone
Disallow: /home*
Disallow: /package_files_uploaded_via_chrome
Disallow: /photos/app_store_link/
Disallow: /recover*
Disallow: /sharing/*
Disallow: /sharing/folders*
Disallow: /sharing/files*
Disallow: /requests*
Disallow: /account*
Disallow: /referrals*
Disallow: /downgrade*
Disallow: /developers-v1
Disallow: /developers/downloads/sdks/
Disallow: /developers/whats_new
Disallow: /reengageoptout/*


Sitemap: https://www.dropbox.com/sitemapindex.xml