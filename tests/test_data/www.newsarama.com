# www.robotstxt.org/
# www.google.com/support/webmasters/bin/answer.py?hl=en&answer=156449

User-agent: *
# Disallow all beta and development subdomains, completely.
User-Agent: *
Disallow: /search*
Disallow: /social.php
Disallow: /newsletter-signup
Disallow: /_*
Sitemap: http://www.newsarama.com/sitemap.xml