#
# Bulk downloading of these pages is not permitted for the purposes of
# making archival copies.  This includes browsers such as IE which normally
# permit "off-line viewing" (i.e., bulk downloading).  Please read the
# page http://mathworld.wolfram.com/about/terms.html for additional explanation.
# 

User-agent: *
Disallow: /

# www.google.com
User-agent: googlebot
Disallow:

# Local lucene indexer
User-agent: nutch-crawler
Disallow:

# alexa
User-agent: ia_archiver
Disallow:

# MSNBot
User-Agent: MSNBot
Disallow:

# disable indexing of random page
User-Agent: *
Disallow: /random.html
