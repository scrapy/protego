# Robots_Production.txt for wipro.com
# robots.txt for wipro.com
User-agent: *
Disallow: 

Disallow: /en-asean/
Disallow: /en-africa/
Disallow: /en-benelux/
Disallow: /en-nordic/
Disallow: /en-dach/ 
Disallow: /en-JP/
Disallow: /ja-JP/
Disallow: /zh-CN/
Disallow: /de-dach/
Disallow: /en-ME/
Disallow: /en-KR/
Disallow: /en-UKI/
Disallow: /en-latam/

Disallow: /search/
Disallow: /en-IN/search/
Disallow: /en-KR/search/
Disallow: /en-CN/search/
Disallow: /en-AU/search/
Disallow: /en-FR/search/
Disallow: /en-CA/search/
Disallow: /en-BR/search/
Disallow: /en-US/search/
Disallow: /en-UKI/search/
Disallow: /en-CN/search/

Disallow: /en-IN/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-CA/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-FR/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-BR/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-US/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-UKI/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-AU/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-KR/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-CN/applications/how-to-drive-effective-digital-strategy-with-intelligent-process-automation/
Disallow: /en-IN/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-CA/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-FR/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-BR/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-US/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-UKI/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-AU/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-KR/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /en-CN/holmes/enhancing-sdlc-traceability-using-nlp/
Disallow: /content/dam/nexus/en/service-lines/applications/latest-thinking/how-to-drive-effective-digital-strategy-with-intelligent-process-automation.pdf 
Disallow: /content/dam/nexus/en/holmes/pdfs/enhancing-sdlc-traceability-using-nlp.pdf 
Disallow: /content/dam/nexus/en/analyst-speak/pdfs/business-strategy-clk-enerji-sets-an-ambitious-tone-for-business-transformation-in-the-turkish-energy-industry.pdf
Disallow: /content/dam/nexus/en/analyst-speak/pdfs/canvassing-utilities-digital-transformation.pdf
Disallow: /content/dam/nexus/en/analyst-speak/pdfs/digital-utility-as-a-service-nrgi-experience.pdf 

Disallow: /*?*
Disallow: /*.html/$
Disallow: /lp/
Disallow: /landingpages/
Disallow: /mailers/
Disallow: /ftob/
Disallow: /mailer2/
Disallow: /mailer/
Disallow: /home-new-accessib/
Disallow: /microsite/.pdf

Sitemap: https://www.wipro.com/content/dam/nexus/sitemap/sitemap.xml
Sitemap: https://www.wipro.com/sitemap-assets.xml