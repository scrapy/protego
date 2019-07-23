#
# robots.txt for http://www.cvent.com/
#
# $Id: robots.txt,v 1.00 2003/04/28
#
# exclude all application areas

User-agent: *
Allow: /core/*.css$
Allow: /core/*.css?
Allow: /core/*.js$
Allow: /core/*.js?
Allow: /core/*.gif
Allow: /core/*.jpg
Allow: /core/*.jpeg
Allow: /core/*.png
Allow: /core/*.svg
Allow: /profiles/*.css$
Allow: /profiles/*.css?
Allow: /profiles/*.js$
Allow: /profiles/*.js?
Allow: /profiles/*.gif
Allow: /profiles/*.jpg
Allow: /profiles/*.jpeg
Allow: /profiles/*.png
Allow: /profiles/*.svg
Disallow: /core/
Disallow: /profiles/
Disallow: /lp/
Disallow: /campaign/
Disallow: /idconfirm/
Disallow: /promo/
Disallow: /sem/
Disallow: /README.txt
Disallow: /web.config
Disallow: /admin/*
Disallow: /pdf/*
Disallow: /comment/reply/
Disallow: /filter/tips/
Disallow: /node/add/
Disallow: /search/
Disallow: /user/register/
Disallow: /user/password/
Disallow: /user/login/
Disallow: /user/logout/
Disallow: /*/thank$
Disallow: /index.php/admin/
Disallow: /index.php/comment/reply/
Disallow: /index.php/filter/tips/
Disallow: /index.php/node/add/
Disallow: /index.php/search/
Disallow: /index.php/user/password/
Disallow: /index.php/user/register/
Disallow: /index.php/user/login/
Disallow: /index.php/user/logout/
Disallow: /*.pdf
Disallow: /csn-search-app/*
Disallow: /Events/_internal/
Disallow: /Events/APIs/
Disallow: /Events/APIs/CliqBook/
Disallow: /Events/APIs/GetThere/
Disallow: /Events/APIs/TouchNet/
Disallow: /Events/Barcode/
Disallow: /Events/Calendar/
Disallow: /Events/ClassLib/
Disallow: /Events/Email/
Disallow: /Events/ErrorPage/
Disallow: /Events/Fonts/
Disallow: /Events/images/
Disallow: /Events/includes/
Disallow: /Events/integrations/
Disallow: /Events/integrations/authorizenet_sim/
Disallow: /Events/integrations/paydotgov/
Disallow: /Events/JavaScriptLib/
Disallow: /events/mproc.aspx
Disallow: /Events/mproc.aspx
Disallow: /Events/NameBadge/
Disallow: /Events/OnSite/
Disallow: /Events/Ops/
Disallow: /Events/Popup/
Disallow: /Events/Register/
Disallow: /events/Register/
Disallow: /events/register/
Disallow: /Events/register/
Disallow: /Events/Registrations/
Disallow: /Events/Resources/
Disallow: /Events/SMMForm/
Disallow: /Events/SMMForm/MeetingRequest/
Disallow: /Events/SSO/
Disallow: /Events/stylesheets/
Disallow: /Events/UserControls/
Disallow: /Events/xml/
Disallow: /Pub/Emails/
Disallow: /Pub/Emails/Stylesheets/
Disallow: /Pub/eMarketing/ClassLib/
Disallow: /Pub/eMarketing/ErrorPage/
Disallow: /Pub/eMarketing/images/
Disallow: /Pub/eMarketing/JavaScriptLib/
Disallow: /Pub/eMarketing/Resources/
Disallow: /Pub/eMarketing/Stylesheets/
Disallow: /Pub/eMarketing/xml/
Disallow: /Pub/JavaScriptLib/
Disallow: /Pub/Popup/
Disallow: /Pub/UserRequests/
Disallow: /Pub/UserRequests/Stylesheets/
Disallow: /Pub/WebEmails/
Disallow: /Reports/
Disallow: /RFP/ClassLib/
Disallow: /RFP/ErrorPage/
Disallow: /RFP/includes/
Disallow: /RFP/JavaScriptLib/
Disallow: /RFP/NSO/
Disallow: /RFP/Popup/
Disallow: /RFP/stylesheets/
Disallow: /RFP/xml/
Disallow: /RFP/AutoCompleteWS.asmx
Disallow: /RFP/Venues.aspx
Disallow: /RFP/venues.aspx
Disallow: /rfp/Venues.aspx
Disallow: /rfp/venues.aspx
Disallow: /RFP/Services.aspx
Disallow: /RFP/services.aspx
Disallow: /rfp/Services.aspx
Disallow: /rfp/services.aspx
Disallow: /Surveys/
Disallow: /directory/
Disallow: /en/venues/
Disallow: /en/hotels/
Disallow: /en/restaurants/
Disallow: /rfp/rfpwizard/
Disallow: /RFP/rfpwizard/
Disallow: /rfp/RFPWizard/
Disallow: /RFP/TrackAdDetails.asmx
Disallow: /RFP/TrackAdDetails.asmx/LogClickDetails
Disallow: /directory/
Disallow: /Directory/
Disallow: *.pdf
Disallow: /hi/*
Disallow: /hi

User-agent: Wget
Disallow:/

User-agent: Wget/1.9
Disallow:/

User-agent: Wget/1.6
Disallow:/

User-agent: Wget/1.5.3
Disallow:/

user-agent: AhrefsBot
Disallow: /

#event
Sitemap: http://www.cvent.com/events/sitemap/sitemap.aspx?r=1

#emarketing
Sitemap: http://www.cvent.com/pub/sitemap/sitemap.aspx

Sitemap: http://www.cvent.com/en/sitemap.xml
Sitemap: http://app.wistia.com/sitemaps/247.xml

#csn venue profiles
Sitemap: https://www.cvent.com/api/csn-search-app/siteMap
#destination guide
Sitemap: http://www.cvent.com/rfp/destinationguide-sitemap.xml

#microsites
Sitemap: https://www.cvent.com/microsites/api/sitemap
