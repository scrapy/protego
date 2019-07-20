# If you are regularly crawling WordPress.com sites, please use our firehose to receive real-time push updates instead.
# Please see https://developer.wordpress.com/docs/firehose/ for more details.

Sitemap: https://indianexpress.com/news-sitemap.xml

User-agent: *
Disallow: /1050432/

Disallow: /dummy/

Disallow: /homepage/

Disallow: /prime-suspect/

Disallow: /ie/daily/

Disallow: /static-home-ad-template/

Disallow: /static-article-ad-template/

Disallow: /entertainment/wallpapers/

Disallow: /entertainment/section/Television/617/

Disallow: /entertainment/old/screenawards08/best-editing.html

Disallow: /entertainment/fullstory.php

Disallow: /citiesfullstory.php

Disallow: /citiesarticle/

Disallow: /Blog-IE/

Disallow: /ajax/

Disallow: /ramnath-goenka-foundation/dump

Disallow: /entertainment/old/

Disallow: /citiesfullstory.php?newsid=*

Disallow: /inner_video.php?videoId=*

Disallow: /storyOld.php?storyId=*

Disallow: /entertainment/old/fullstory.php?content_id=*

Disallow: /entertainment/old/*

Disallow: /*?s

Disallow: /quote/*

Disallow: /article/jobs/railway-jobs/rrb-group-d-admit-card-2018-websites-down-candidates-complain-rrbald-gov-in-5360413/*

User-agent: *
Disallow: /wp-admin/
Allow: /wp-admin/admin-ajax.php
# Sitemap archive
Sitemap: https://indianexpress.com/sitemap.xml

Disallow: /wp-login.php
Disallow: /wp-signup.php
Disallow: /press-this.php
Disallow: /remote-login.php
Disallow: /activate/
Disallow: /cgi-bin/
Disallow: /mshots/v1/
Disallow: /next/
Disallow: /public.api/

# This file was generated on Wed, 21 Nov 2018 15:41:41 +0000
