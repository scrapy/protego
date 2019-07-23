# Settings file for search engine crawlers
# Updated on 17 Feb 2014

User-agent: *
Allow: /
Allow: /home.na
Allow: */gcalendar/*
Allow: */icalendar/*

Disallow: /portal/
Disallow: /projadmin/
Disallow: /ziamutil/
Disallow: /sswintegdocs/
Disallow: /mailtemplates/
