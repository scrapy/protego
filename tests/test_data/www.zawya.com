# Zawya.com robots.txt file.
#
# Please contact us directly if you have any questions or suggestions to help you index our site.
#
# husain.hakim@tr.com - product manager
#================================================================================================

User-agent: *
User-Agent: magnetbot
Allow: /

User-Agent: Twitterbot
Allow: /

User-agent: Alexabot
Disallow:

#Block all robots from cm and mobile directories
User-agent: *

Disallow: /mobile/
Disallow: /cs/
Disallow: /en/
Disallow: /4735792/
Disallow: /users/
Disallow: */Story.cfm
Disallow: */story.cfm
Disallow: /arabic/
Disallow: /providertracker.cfm*
Disallow: /websiteFiles/


User-Agent: Googlebot-News
Disallow: /companies
Disallow: /marketing
Disallow: /company
Disallow: */multimedia
Disallow: /auth
Disallow: /login

