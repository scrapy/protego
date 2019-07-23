# For more information about the robots.txt standard, see:
    # http://www.robotstxt.org/orig.html
#
# For syntax checking, see:
# http://www.sxw.org.uk/computing/robots/check.html

User-agent: *
Disallow: /intstl/*
Disallow: /thankyou_login.htm
Disallow: /help/*
Noindex: /help/*
Noindex: /pds-api/*
Allow: /help/$

Sitemap: https://www.practicefusion.com/sitemap.xml
