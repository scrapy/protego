User-agent: *
Disallow: */account/
Disallow: */blog/ghost/
Disallow: */blog/author/
Disallow: */adguard-report/
Disallow: */privacy
Disallow: */distribution.html
Disallow: */renew.html
Disallow: */upgrade.html
Disallow: */payment-success.html
Disallow: */discuss.html
Disallow: */site.html
Disallow: */uninstall.html
Disallow: */eula.html
Disallow: */license.html
Disallow: */terms-of-sale.html
Disallow: */versions.html

Clean-param: order_id&domain&domainToCheck&utm_campaign&utm_medium&utm_source&utm_term&utm_content&c&aid&ref&app_id&rebill&webmaster_id&url&tmpbrid&app_key&email&period&action&keys&type&added&block&pos&key&campaign&ad&phrase&gbid&region&region_name&source&campaignid&adgroupid&creative&adposition&keyword&matchtype&device&devicemodel&network&loc_physical_ms&msclkid /*

Host: https://adguard.com

Sitemap: https://adguard.com/sitemap.xml
