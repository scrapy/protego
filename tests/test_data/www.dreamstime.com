###################################
# https://www.dreamstime.com/robots.txt and country subdomains
User-agent: *
Allow: /css/mainjs-v29.js
Allow: /css/styles2013-v41.css
Allow: /css/splash-v5.css
Allow: /css/google1.11.1.themes.smoothness.jquery-ui.css
Allow: /css/owl.carousel.css
Allow: /css/newsplash2016.css
Allow: /css/newsplash2016v1.css
Disallow: /testfl/
Disallow: /ajax/
Disallow: /templates/
Disallow: /*jump_to
Disallow: /lightbox-controller.php
Disallow: /lightbox-model.php
Disallow: /confirm.php
Sitemap: https://www.dreamstime.com/search.xml
Sitemap: https://www.dreamstime.com/sitemap2-en-index.xml.gz
Sitemap: https://www.dreamstime.com/sitemap2-en-categories-index.xml.gz  
Sitemap: https://www.dreamstime.com/sitemap2-en-collections-index.xml.gz  
Sitemap: https://www.dreamstime.com/sitemap2-en-contributors-index.xml.gz  
Sitemap: https://www.dreamstime.com/sitemap2-en-images-index.xml.gz 
Sitemap: https://www.dreamstime.com/sitemap2-en-index.xml.gz 
Sitemap: https://www.dreamstime.com/sitemap2-en-profiles-index.xml.gz 
###################################

# Disallow for outdated design pages
Disallow: /cameras*
Disallow: /uploaded_files*
Disallow: /*ftpinstructions*
Disallow: /tax_countries.php
Disallow: /assignments.php
Disallow: /assignments_archive.php
Disallow: /boards
Disallow: /thread_*
Disallow: /forum_*
Disallow: /forumm_*
Disallow: /forumn_*
Disallow: /*_winners-*
Disallow: /merchandise
Disallow: /community.php
Disallow: /level.php
Disallow: /*_blog_rss
Disallow: /extensionstable.htm

# Disallow for php pages
Disallow: /srprices.php
Disallow: /unfinished.php
Disallow: /ftp_instructions.php
Disallow: /tax.php
Disallow: /uploadhistory.php
Disallow: /pendings.php
Disallow: /collections.php
Disallow: /card_management.php
Disallow: /srprices.php
Disallow: /faq_search.php*
Disallow: /blog/search-tag-*
Disallow: /blog/add
Disallow: /blog/hot
Disallow: /blog/add
Disallow: /contest.php?pg=*
Disallow: /featured-stock-photographers_*
Disallow: /collections?srh_coll=*
Disallow: /collections_list?srh_coll=*
Disallow: /_ajax_collection_share.php

Disallow: /search.php*
#Disallow: /*?view=best-selling
Disallow: /samemodel.php?imageid=*&pg=*&sortcriteria=6
Disallow: /*_more-popular-photos_pg*
Disallow: /*_best-stock-photos_pg*
Disallow: /*-latest-best-stock-photos-pg*
Disallow: /*-best-illustrations-vectors-clipart-pg*
Disallow: /*_exclusive-photos_pg*
Disallow: /*-latest-exclusive-photos-pg*
Disallow: /*_more-popular-videos_pg*

# Disallow for private pages
Disallow: /uploadfile
Disallow: */uploadfile.php*
Disallow: /tax-center
Disallow: /*jump_to
Disallow: /lightbox
Disallow: /downloads
Disallow: /downloads.php
Disallow: /user_modify.php
Disallow: /chistory.php
Disallow: /payment_requests.php
Disallow: /uploads
Disallow: /earnings
Disallow: /comments

# Disallow by file type
Disallow: /*.pdf