# Disallow all robots.
User-agent: *
Disallow: /account_settings
Disallow: /api/
Disallow: /blog/wp-content/uploads
Disallow: /discussions/get_more_discussion_participants
Disallow: /discussions/get_more_profiles_mentioned
Disallow: /documents
Disallow: /email_lander/
Disallow: /facebook/
Disallow: /family-tree
Disallow: /fwd
Disallow: /last-name
Disallow: /last-names/
Disallow: /media/delete_favorite
Disallow: /newsfeed/
Disallow: /people/private/
Disallow: /photo
Disallow: /photo/thumbnails
Disallow: /posted_items/
Disallow: /pro/collaborate/
Disallow: /profile/
Disallow: /profile_actions/
Disallow: /project/revisions_tab/
Disallow: /projects/revisions_tab/
Disallow: /report
Disallow: /register
Disallow: /revisions
Disallow: /search
Disallow: /threads/
Disallow: /timeline/profile_module
Disallow: /timeline/view_all
Disallow: /tree
Disallow: /trivia
Disallow: /wiki

# Adding sitemap reference per http://www.google.com/support/webmasters/bin/answer.py?answer=64748
Sitemap: https://www.geni.com/sitemap_index.xml
