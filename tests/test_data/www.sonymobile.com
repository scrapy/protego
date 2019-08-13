# This file is managed through WordPress - master site - robots_txt page

User-agent: *
Disallow: /wp-admin/
Disallow: /wp-includes/
Disallow: /global-en/dotcom/
Disallow: /*/quickstart/$
Disallow: /*/search/
Disallow: /mobile-z5/
Disallow: /*/mobile-z5/
Disallow: /services/footer
Disallow: /services/example
Disallow: /spg.jsp
Disallow: /global-en/spg.jsp
Disallow: /se/spg.jsp
Disallow: /ch-fr/spg.jsp
Disallow: /au/spg.jsp
Disallow: /it/spg.jsp

User-agent:
User-agent: Nutch
Disallow: /