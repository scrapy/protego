User-agent: *

Disallow: /yellowpages/*
Disallow: /realestate/*
Disallow: /classifieds/*
Disallow: /news/*
Disallow: */sendmail.asp
Disallow: */admin/*
Disallow: */plugins/feedback.php

Disallow: /*ekm*/
Disallow: /*map*/

Disallow: /error/*

Allow: /
