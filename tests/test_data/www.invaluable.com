### BEGIN FILE ###
#
# The use of robots or other automated means to access the Invaluable site
# without the express permission of Invaluable is strictly prohibited.
# Notwithstanding the foregoing, Invaluable may permit automated access to
# access certain Invaluable pages but soley for the limited purpose of
# including content in publicly available search engines. Any other
# use of robots or failure to obey the robots exclusion standards set
# forth at <http://www.robotstxt.org/ wc/ exclusion.html> is strictly
# prohibited.
#

User-agent: *
Crawl-delay: 10
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: Googlebot
User-agent: Googlebot-Mobile
User-agent: Googlebot-Image
User-agent: Googlebot-Video
User-agent: Googlebot-News
User-agent: Mediapartners-Google
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: Adsbot-Google
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm

Noindex: /artfact/
Noindex: /AuctionClient/
Noindex: /login/
Noindex: /my-account/
Noindex: /myInvaluable/
Noindex: /myLive/
Noindex: /users/
Noindex: /photoPopup.cfm
Noindex: /consoleURL.cfm
Noindex: /*?scp=p
Noindex: /*?scp=u
Noindex: /*?scp=m

User-agent: Baiduspider 
Crawl-delay: 1
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: Bingbot 
User-agent: Bingbot Mobile
Crawl-delay: 1
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: Apple Bot 
Crawl-delay: 1
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: msnbot 
Crawl-delay: 1
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: Yandex
Crawl-delay: 3
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: Slurp
Crawl-delay: 3
Disallow: /artfact/
Disallow: /AuctionClient/
Disallow: /login/
Disallow: /my-account/
Disallow: /myInvaluable/
Disallow: /myLive/
Disallow: /users/
Disallow: /photoPopup.cfm
Disallow: /consoleURL.cfm
Disallow: /*?scp=p
Disallow: /*?scp=u
Disallow: /*?scp=m

User-agent: Flipboard
Disallow: /

User-agent: FlipboardProxy
Disallow: /

Sitemap: https://www.invaluable.com/sitemap_inv_com-index.xml

#updated: 06/12/2019
### END FILE ###
