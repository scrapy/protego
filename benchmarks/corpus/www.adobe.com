# The use of robots or other automated means to access the Adobe site
# without the express permission of Adobe is strictly prohibited.
# Notwithstanding the foregoing, Adobe may permit automated access to
# access certain Adobe pages but solely for the limited purpose of
# including content in publicly available search engines. Any other
# use of robots or failure to obey the robots exclusion standards set
# forth at http://www.robotstxt.org/ is strictly prohibited.

# Details about Googlebot available at: http://www.google.com/bot.html
# The Google search engine can see everything
User-agent: gsa-crawler-www 
Allow: /assets/globalnav/v1.1.4/css/globalnav.css
Allow: /assets/globalnav/v1.1.4/*/globalnav.js
Allow: /au/special/symposium
Allow: /sea/special/symposium
Allow: /*special/products/marketing-cloud/*.css$
Allow: /*special/products/marketing-cloud/*.png$
Allow: /*special/products/marketing-cloud/*.js$
Allow: /www.adobe.com/special/ri/prod/assets/*.css$
Allow: /www.adobe.com/special/ri/prod/assets/*.jpg$
Allow: /www.adobe.com/special/ri/prod/assets/*.js$
Allow: /www.adobe.com/special/ri/prod/assets/*.png$
Allow: /www.adobe.com/special/retail-shopping-insights/
Allow: /uk/special/landing/student/digitaledgeaward/
Allow: /uk/special/landing/student/digitaledgeaward/
Allow: /uk/special/landing/student/lovethejourney
Allow: /fr/special/landing/student/lovethejourney
Disallow: /assets/globalnav/
Disallow: /*creativesuite/bridge
Disallow: /cfusion/gpr/
Disallow: /cfusion/search/
Disallow: /cfusion/partnerportal/
Disallow: /globalsearch
Disallow: /cgi-local/
Disallow: /de/products/index-notabs.html
Disallow: /de/products/index-tabs.html
Disallow: /devnet-archive/
Disallow: /devnet/archive
Disallow: /*devnet/tagsearch
Disallow: /emea/eemeachannel/
Disallow: /events/ciocouncil/
Disallow: /events/executivecouncil/
Disallow: /google_indexing/
Disallow: /*.html_
Disallow: /licensing/distribution/strategies/
Disallow: /*limited/
Disallow: /livedocs/
Disallow: /*Ljava.lang.Object*
Disallow: /products/acrobat/readstep2.html;JMICROSITE2SESSION*
Disallow: /*products/flashplayer/distribution3.html
Disallow: /*products/flashplayer/distribution4.html
Disallow: /*special/
Disallow: /*.sql$
Disallow: /*supportservice/
Disallow: /*.translate.html
Disallow: /*products/adobeconnect/enterprise/trial.html
Disallow: /*products/adobeconnect/enterprise/trial-check.html
Disallow: /*products/adobeconnect/enterprise/trial-thankyou.html
Disallow: /*products/adobeconnect/enterprise/trial-error.html
Disallow: /*products/photoshop/selector
Disallow: /*unsubscribe.html
Disallow: /content/dam/acom/en/marketing-cloud/offers/pdf
Disallow: /content/dam/www/us/en/adi/2020/pdfs/*
Disallow: /content/dotcom/*.html$
Disallow: /content/dam/www/us/en/offer/digital-trends-2020/digital-trends-2020-full-report.pdf
Disallow: /plans-fragments/
Disallow: /plans.modals*

# The Omniture search engine can see everything
User-agent: Atomz/1.0
Disallow: /devnet-archive/
Disallow: /devnet/archive
Disallow: /events/ciocouncil/
Disallow: /events/executivecouncil/
Disallow: /licensing/distribution/strategies/
Disallow: /*limited/
Disallow: /livedocs/
Disallow: /products/flashplayer/distribution3.html
Disallow: /products/flashplayer/distribution4.html
Disallow: /*special/
Disallow: /*.sql$
Disallow: /*supportservice/

User-agent: *
Allow: /assets/globalnav/v1.1.4/css/globalnav.css
Allow: /assets/globalnav/v1.1.4/*globalnav.js
Allow: /au/special/symposium
Allow: /sea/special/symposium
Allow: /*special/products/marketing-cloud/*.css$
Allow: /*special/products/marketing-cloud/*.js$
Allow: /*special/products/marketing-cloud/*.png$
Allow: /www.adobe.com/special/ri/prod/assets/*.css$
Allow: /www.adobe.com/special/ri/prod/assets/*.jpg$
Allow: /www.adobe.com/special/ri/prod/assets/*.js$
Allow: /www.adobe.com/special/ri/prod/assets/*.png$
Allow: /www.adobe.com/special/retail-shopping-insights/
Allow: /uk/special/landing/student/digitaledgeaward/
Allow: /uk/special/landing/student/lovethejourney
Allow: /fr/special/landing/student/lovethejourney
Allow: /community/gallery$
Allow: /community/gallery/assets$
Allow: /community/gallery/challenges$
Disallow: /assets/globalnav/
Disallow: /*creativesuite/bridge
Disallow: /cfusion/gpr/
Disallow: /cfusion/search/
Disallow: /cfusion/partnerportal/
Disallow: /globalsearch
Disallow: /cgi-local/
Disallow: /de/products/index-notabs.html
Disallow: /de/products/index-tabs.html
Disallow: /devnet-archive/
Disallow: /devnet/archive
Disallow: /*devnet/tagsearch
Disallow: /emea/eemeachannel/
Disallow: /events/ciocouncil/
Disallow: /events/executivecouncil/
Disallow: /google_indexing/
Disallow: /*.html_
Disallow: /licensing/distribution/strategies/
Disallow: /*limited/
Disallow: /livedocs/
Disallow: /*Ljava.lang.Object*
Disallow: /products/acrobat/readstep2.html;JMICROSITE2SESSION*
Disallow: /*products/flashplayer/distribution3.html
Disallow: /*products/flashplayer/distribution4.html
Disallow: /*special/
Disallow: /*.sql$
Disallow: /*supportservice/
Disallow: /*.translate.html
Disallow: /*products/adobeconnect/enterprise/trial.html
Disallow: /*products/adobeconnect/enterprise/trial-check.html
Disallow: /*products/adobeconnect/enterprise/trial-thankyou.html
Disallow: /*products/adobeconnect/enterprise/trial-error.html
Disallow: /*products/photoshop/selector
Disallow: /*unsubscribe.html
Disallow: /content/dam/acom/en/marketing-cloud/offers/pdf
Disallow: /content/dotcom/*.html$
Disallow: /plans-fragments/
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-DE.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-EN-US.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-EN.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-ES.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-FR.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-IT.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-JA.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-KR.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-zh-Hans.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital-trends-2020-in-media-and-entertainment-zh-Hant.pdf
Disallow: /content/dam/www/us/en/offer/digital-trends-2020-in-media-and-entertainment-html/digital_trends_21_core_report_TC_FA.pdf
Disallow: /content/dam/dx/us/en/resources/reports/digital-trends-2021-in-high-tech/2021_Digital_Trends_High_Tech_in_Focus.pdf
Disallow: /content/dam/dx/us/en/resources/digital-trends-2021-in-telecommunications-media-and-entertainment/Digital_Trends_2021_Media_Entertainment_and_Telecoms_Report.pdf
Disallow: /content/dam/dx/us/en/resources/digital-trends-2021-in-retail/2021_Digital_Trends_Retail_in_Focus.pdf
Disallow: /content/dam/dx/us/en/resources/digital-trends-2021-in-manufacturing/2021_Digital_Trends_Manufacturing_in_Focus.pdf
Disallow: /content/dam/www/us/en/offer/technology-trends-2021/eConsultancy_Digital_Trends_2021_IT_Report.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-financial-services.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-retail.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-media-and-entertainment.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-travel-and-hospitality.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-telecommunications.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-advertising.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-high-tech.pdf
Disallow: /content/dam/www/us/en/offer/pdf/digital-trends-2020-in-IT.pdf
Disallow: /content/dam/www/us/en/adi/2020/pdfs/*
Disallow: /content/dam/www/us/en/offer/digital-trends-2021-core/digital-trends-2021-full-report-*.pdf
Disallow: /*langmaster/
Disallow: /*express/*.mp4$
Disallow: /en-AE/learn/
Disallow: /en-BE/learn/
Disallow: /en-CY/learn/
Disallow: /en-GR/learn/
Disallow: /en-HK/learn/
Disallow: /en-ID/learn/
Disallow: /en-IL/learn/
Disallow: /en-LU/learn/
Disallow: /en-MT/learn/
Disallow: /en-MY/learn/
Disallow: /en-PH/learn/
Disallow: /en-SA/learn/
Disallow: /en-SG/learn/
Disallow: /en-TH/learn/
Disallow: /en-VN/learn/
Disallow: /en-x-MenA/learn/
Disallow: /en-ZA/learn/
Disallow: /*?searchId=
Disallow: /*?tasks=
Disallow: /*?campaignid=
Disallow: /*?skwcid=
Disallow: /products/photoshop/photoshop-brushes.h*
Disallow: /community/gallery

User-agent: Googlebot
Allow: /?promoid=RTQCN3LX
Disallow: /*promoid=
Disallow: /*trackingid=
Disallow: /*?searchId=
Disallow: /*?tasks=
Disallow: /*?campaignid=
Disallow: /*?skwcid=
Disallow: /products/photoshop/photoshop-brushes.h*

User-agent: AdsBot-Google
Allow: /

User-agent: AdsBot-Google-Mobile
Allow: /

User-agent: SearchmetricsBot
Disallow: /

# XML sitemaps
Sitemap: https://www.adobe.com/cc-product.index.xml
Sitemap: https://www.adobe.com/creativecloud/sitemap-index.xml
Sitemap: https://www.adobe.com/acrobat/sitemap-index.xml
Sitemap: https://www.adobe.com/home-sitemap.xml
Sitemap: https://www.adobe.com/plans-catalog-sitemap.xml
Sitemap: https://www.adobe.com/learn/sitemap_index.xml

# CC Express 
Sitemap: https://www.adobe.com/express/sitemap-index.xml

#Naver
Sitemap: https://www.adobe.com/naver.index.xml

#Education
Sitemap: https://www.adobe.com/edu/sitemap-index.xml
