# robots.txt for http://www.americanfunds.com

# Allow S&P
User-agent: Atomz/1.0
Disallow:

# exclude ia_archiver and VisWeb robots
User-agent: ia_archiver
Disallow: /
User-agent: VisWeb
Disallow: /

# exclude directories
User-agent: *
Disallow: /*/error
Disallow: /*/preferences
Disallow: /*/accounts
Allow: /*/accounts/login.htm
Disallow: /*/pardon
Disallow: /*/search
Disallow: /advisor/merrill-lynch.html

Disallow: /content
Allow: /content/dam/*/Images/*
Allow: /content/dam/*/images/*
Allow: /content/*.css
Allow: /content/*.js
Allow: /content/*.json

Disallow: /global-errors/*
Disallow: /*/_jcr_content/*
Allow: /etc/designs/default/canvas/content/sites/*


#index exclusions to reduce duplicate page indexing across experiences 
Disallow: /advisor/investments 
Allow: /advisor/investments/model/*

#index exclusion for all PDF files 
Disallow: *.pdf

# exclude advisor content from investor index
User-agent: Ultraseek
Disallow: /advisor
Disallow: /individual

#To enable Twitter and Linkedin access
User-agent: Twitterbot
Disallow:
User-agent: LinkedInBot
Disallow:

Sitemap:  https://www.americanfunds.com/sitemap_index.xml
