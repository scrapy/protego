## Allow for Googlebot access to Sitemap
User-agent: *

# Sitemap
Allow: /sitemap/
Allow: /sitemap-http/
Allow: /sitemap-pdp-seo-url/
Sitemap: https://www.saksfifthavenue.com/sitemap/index.xml
Sitemap: https://www.saksfifthavenue.com/sitemap-pdp-seo-url/index.xml


Disallow: /account/
Disallow: /include/
Disallow: /checkout/
Disallow: /checkoutNew/
Disallow: /condenet/
Disallow: /myaccount/
Disallow: /StrLocStrEvt/
Disallow: /win/

#Add a comment (per our bank Cap one request to take down) 11/16/18
#Disallow: /SaksFirst*?

Disallow: /main/ComposeTAF.jsp?
Disallow: /include/saksbaginsert.jsp?
Disallow: /main/contentpopup.jsp?
Disallow: /search
Disallow: /fashionfix/home.jsp?
Disallow: /cqc/shop_catalog.jsp?

# Don't parameterize the "static" pages
Disallow: /Gift-Cards?
Disallow: /GiftCertificates/gift_certificate.jsp?
Disallow: /About-US?
Disallow: /NoJavaScript.jsp?
Disallow: /Policies?
Disallow: /Customer-Service?
Disallow: /email_popup/EML1145Acollect.jsp?
Disallow: /main/skII_video.jsp?

# Stop old style product arrays
Disallow: /main/ProductArray.jsp?
