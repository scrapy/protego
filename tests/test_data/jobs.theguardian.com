
# Robot exclusion file
User-agent: *

# The following pages require registration and login

Disallow: /session-img/
Disallow: /invalid-request/
Disallow: /document/
Disallow: /apply-profile/

Disallow: */searchjobs/*
Disallow: */jobsrss/*
Disallow: /jobsrss/*
Disallow: */jbequicksignup/*
Disallow: /your-jobs/*
Disallow: /external-redirect-registration* 
Disallow: */emailjob/*

Disallow: */emailjob/*
Disallow: /logon/*
Disallow: /59666047/
Disallow: /jbequicksignup/ 

Disallow: /your-jobs/

Disallow: *=sort* 

Disallow: /jobs/*/*/*/*/*/
Noindex: /jobs/*/*/*/*/*/

Disallow: /*/*/*/*/*/*/*/

Sitemap: https://jobs.theguardian.com/sitemapindex.xml

