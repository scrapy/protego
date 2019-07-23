## Allow for Googlebot access to Sitemap
User-agent: *

# Sitemap
Allow: /sitemap/
Allow: /sitemap-http/
Allow: /sitemap-pdp-seo-url/
Sitemap: https://www.lordandtaylor.com/sitemap/index.xml
Sitemap: https://www.lordandtaylor.com/sitemap-pdp-seo-url/index.xml


###### per our bank (cap one) request to discourage these from being indexed.  #######
Disallow:  /SaksFirst/world_elite.jsp?
Disallow:  /SaksFirst/store_card.jsp?

Disallow: /account/
Disallow: /include/
Disallow: /checkout/
Disallow: /checkoutNew/
Disallow: /condenet/
Disallow: /myaccount/
Disallow: /StrLocStrEvt/
Disallow: /win/

Disallow: /SaksFirst*?

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
