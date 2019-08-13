User-agent: * 
 
Disallow: *?
Disallow: /*rss
Disallow: /auth.php
Disallow: /auth/*
Disallow: /bitrix/*
Disallow: /email/*
Disallow: /include/
Disallow: /merge/
Disallow: /register/*
Disallow: /search/*

Disallow: /free-social-intranet-for-startups.php 
Disallow: /subscription-management.php 
Disallow: /prices/vacation.php 
Disallow: /my/prices/vacation.php
Disallow: /th/prices/vacation.php
Disallow: /self-hosted/trial-key-request.php

Allow: */?product=
Allow: */?app=
Allow: /bitrix/cache/
Allow: /bitrix/images/
Allow: /bitrix/js/
Allow: /bitrix/panel/
Allow: /bitrix/templates/

Sitemap: http://www.bitrix24.com/sitemap.xml