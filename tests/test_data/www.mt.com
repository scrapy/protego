User-agent: *
Disallow: /*/elqNow/
Disallow: /dam/non-indexed/
Disallow: /dam/MT-RU/
Disallow: /dam/certificates/
Disallow: /*/*.fb.*
Disallow: /*/*.fbthx.*
Disallow: /*/*.form.html$
Disallow: /global/

# disallow visitor registration pages
Disallow: /*/home/registered_user_services/visitor_registration/
Disallow: /*/home/feedback_forms/
Disallow: /*/teasers/
Disallow: /*/banners/
Disallow: /*/chats/
Disallow: /*/attributes/
Disallow: /*/home/search/
Allow: /*/home/search/library.*

Host: https://www.mt.com/