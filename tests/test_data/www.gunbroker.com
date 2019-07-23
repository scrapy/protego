# robots.txt 
User-agent: *

Disallow: /AA/
Disallow: /Admin/
Disallow: /App_Data/
Disallow: /bin/
Disallow: /casgi/
Disallow: /Checkout/
Disallow: /Config/
Disallow: /Controls/
Disallow: /MySite/
Disallow: /a/my-gunbroker
Disallow: /Registration/
Disallow: /Test/
Disallow: /Tools/
Disallow: /User/images/
Disallow: /webhandler/
Disallow: /Auction/BrowseItems.aspx
Disallow: /Auction/SearchResults.aspx
Disallow: /BMP/
Disallow: /BannerAdTestDefault.aspx
Disallow: /Auction/BannerAdTestBrowseItems.aspx
Disallow: /Auction/Browse.aspx
Disallow: /Auction/AddToWatchList.aspx
Disallow: /Auction/SendMailToUser.aspx
Disallow: /Auction/SendMailToFriendForm.aspx
Disallow: /Auction/EditFeedbackForm.aspx
Disallow: /Auction/DeleteFeedbackForm.aspx
Disallow: /Auction/ReplyToFeedbackForm.aspx
Disallow: /Auction/searchform.aspx
Disallow: /Auction/ViewUserContactInfo.aspx
Disallow: /ConfirmBuyNow.aspx
Disallow: /LogoutClearCookies.aspx
Disallow: /FFL/ContactDealer.aspx
Disallow: /ShowLogin.aspx
Disallow: /Auction/ViewBidHistory.aspx
Disallow: /Auction/SendMailToUser.aspx

Sitemap: http://www.gunbroker.com/gsmi.xml

# MSN/BING sometimes hammers us. 
# Crawl-delay setting 1=Slow, 5=Very slow, 10=Extremely slow
User-agent: msnbot 
Crawl-delay: 1

# TurninBot is some crawler that searches the web for 'plagarism'
# This does not seem like a legitimate reason to waste our bandwidth and CPU time
User-agent: TurnitinBot
Disallow: /

