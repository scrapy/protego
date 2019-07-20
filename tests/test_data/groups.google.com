# robots.txt for Google Groups.  See this URL for documentation on robots.txt:
# https://developers.google.com/webmasters/control-crawl-index/docs/robots_txt
# Note in particular that "the most specific rule based on the length of the
# [path] entry will trump the less specific (shorter) rule."
User-agent: *

Disallow: /groups/search
Disallow: /groups/dir?*q=
Disallow: /a/*.*/groups/search
Disallow: /a/*.*/groups/dir?*q=

Disallow: /d/search*
Disallow: /d/topicsearch*
Disallow: /a/*.*/d/search*
Disallow: /a/*.*/d/topicsearch*

# Explicitly disallow indexing of pages that do not have valuable
# crawlable views (see b/21331185).
Disallow: /*_escaped_fragment_=aboutgroup
Disallow: /*_escaped_fragment_=forumsearch
Disallow: /*_escaped_fragment_=myforums
Disallow: /*_escaped_fragment_=newtopic
Disallow: /*_escaped_fragment_=search
Disallow: /*_escaped_fragment_=searchin
Disallow: /*_escaped_fragment_=starred

Allow: /$
Allow: /a/
Allow: /a/*.*/about
Allow: /a/*.*/browse_
Allow: /a/*.*/group
Allow: /a/*.*/groups
Allow: /a/*.*/images
Allow: /a/*.*/index
Allow: /a/*.*/messages
Allow: /a/*.*/msg/
Allow: /a/*.*/threads
Allow: /a/*.*/topics
Allow: /a/*.*/tree
Allow: /about
Allow: /browse_
Allow: /finance
Allow: /group
Allow: /groups
Allow: /images
Allow: /index
Allow: /messages
Allow: /msg/
Allow: /support
Allow: /threads
Allow: /topics
Allow: /tree
Allow: /googlegroups/

Allow: /a/*.*/d/
Allow: /a/*.*/forum$
Allow: /a/*.*/forum/
Allow: /d/
Allow: /forum$
Allow: /forum/

Allow: /?hl=
Disallow: /?hl=*&

Disallow: /
