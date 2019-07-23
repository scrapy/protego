

# robots.txt for http://www.aetna.com
#
# Owner - Aetna.com User Interface Design and Development Team / AIS ADS Web Services
#
# List of Orphan urls - not linked from site - not part of search:
# http://www.aetna.com/employer/AetnaLink/
# http://www.aetna.com/producer/marsh_broker.html
# 
# http://www.aetna.com/TIBRF.html 
# http://www.aetna.com/about/AetnaHealthFund/
# http://www.aetna.com/about/AetnaHealthFund/before_fund_deductible/ 
# http://www.aetna.com/about/MemberRights/  
# http://www.aetna.com/about/pdf/draft_privacy_notice.pdf 
# http://www.aetna.com/about/pdf/Aetna_MCP.pdf
# http://www.aetna.com/about/dolregs.html 
# 
# http://www.aetna.com/help/logo/index.html
# http://www.aetna.com/info/nextel.html
# http://www.aetna.com/info/citibusiness.html
#
# http://www.aetna.com/provider/eob/
#
# 
# keep these allows out of all main catalogs
# Allow: /inyourstate/employer.html
# Allow: /inyourstate/member.html
# Allow: /inyourstate/producer.html



User-agent: Mozilla/4.0 (compatible; MSIE 4.0; Windows NT; Site Server 3.0 Robot) Aetna
Allow: /sitesearch/navlinks.html
Allow: /info/aetnahsa.html
Disallow: /inyourstate/
Disallow: /cpb/medical/data/disclaimer/
Disallow: /creativeservices/
Disallow: /externalweb/
Disallow: /groupinsurance/employers.htm
Disallow: /groupinsurance/producers.htm
Disallow: /info/
Disallow: /about-aetna-insurance/tools/info.html 
Disallow: /group/
Disallow: /employer/AetnaLink/index.html
Disallow: /investor/annualrpt/
Disallow: /prototype/
Disallow: /members/ers2004/
Disallow: /members/gettinghealthy/
Disallow: /email_communications/
Disallow: /members/individuals/medicare/
Disallow: /insurance-producer/sas/
Disallow: /insurance-producer/nbac-fall-2011/ 
Disallow: /about-aetna-insurance/sas/conference/
Disallow: /employer-plans/sas/hospital-user-group-forum/ 
Disallow: /2010annualreport/
Disallow: /index-test.html
Disallow: /index-ie6.html
Disallow: /docfind/custom/*
Disallow: /docfind/nslij
Disallow: /docfind/jsp/rdIndex.jsp?site_id=bshsi&langpref=en
Disallow: /docfind/home.do?site_id=bshsi&langpref=en
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab2
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab3
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link2
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link3&staticPages=Yes&fromPage=home&lastProvRow=0&tabKey=tab1&langpref=en&&site_id=bshsi&&button_flag=S&&groups=25&&psid=null&prefilledPlan=null&prefilledProductCode=null
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link4&staticPages=Yes&fromPage=home&lastProvRow=0&tabKey=tab1&langpref=en&&site_id=bshsi&&button_flag=S&&groups=25&&psid=null&prefilledPlan=null&prefilledProductCode=null&prefilledPlan=null&prefilledProductCode=null
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab4
Disallow: /employer-plans/sas/engage-and-save/
Disallow: /search/
Disallow: http://xsearch.aetna.com/
Disallow: /individuals-families/search-results.html
Disallow: /individuals-families/document-library/pdd/
Disallow: /health-care-professionals/clinical-policy-bulletins/medical-clinical-policy-bulletins/medical-clinical-policy-bulletins-search-results.html 
Disallow: /health-care-professionals/clinical-policy-bulletins/pharmacy-clinical-policy-bulletins/pharmacy-clinical-policy-bulletins-search-results.html 
Disallow: /health-care-professionals/precertification/precertification-lists-results.html
Disallow: /members/fsa/ManageyourAccount/aetnaNavigator/aetnanavigator.html
Disallow: /healthcare-professionals/documents-forms/abh-locat-assessment.pdf
Disallow: /healthcare-professionals/documents-forms/applied-behavioral-analysis.pdf
Disallow: /pharmacy-insurance/healthcare-professional/documents/hepc-medication-precert-request.pdf
Disallow: /provider/data/


User-agent: Mozilla/4.0 (compatible; MSIE 6.0; Windows NT; MS Search 4.0 Robot)
Allow: /sitesearch/navlinks.html
Allow: /info/aetnahsa.html
Allow: /members/health_coverage/forms/forms.html
Disallow: /inyourstate/
Disallow: /cpb/medical/data/disclaimer/
Disallow: /creativeservices/
Disallow: /externalweb/
Disallow: /groupinsurance/employers.htm
Disallow: /groupinsurance/producers.htm
Disallow: /info/
Disallow: /about-aetna-insurance/tools/info.html 
Disallow: /group/
Disallow: /employer/AetnaLink/index.html
Disallow: /investor/annualrpt/
Disallow: /prototype/
Disallow: /sharedsvcs/
Disallow: /foundationservices/
Disallow: /members/ers2004/
Disallow: /members/gettinghealthy/
Disallow: /email_communications/
Disallow: /members/individuals/medicare/
Disallow: /insurance-producer/sas/
Disallow: /insurance-producer/nbac-fall-2011/ 
Disallow: /about-aetna-insurance/sas/conference/
Disallow: /employer-plans/sas/hospital-user-group-forum/ 
Disallow: /2010annualreport/
Disallow: /index-test.html
Disallow: /index-ie6.html 
Disallow: /docfind/custom/*
Disallow: /docfind/nslij
Disallow: /docfind/jsp/rdIndex.jsp?site_id=bshsi&langpref=en
Disallow: /docfind/home.do?site_id=bshsi&langpref=en
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab2
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab3
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link2
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link3&staticPages=Yes&fromPage=home&lastProvRow=0&tabKey=tab1&langpref=en&&site_id=bshsi&&button_flag=S&&groups=25&&psid=null&prefilledPlan=null&prefilledProductCode=null
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link4&staticPages=Yes&fromPage=home&lastProvRow=0&tabKey=tab1&langpref=en&&site_id=bshsi&&button_flag=S&&groups=25&&psid=null&prefilledPlan=null&prefilledProductCode=null&prefilledPlan=null&prefilledProductCode=null
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab4
Disallow: /employer-plans/sas/engage-and-save/
Disallow: /search/
Disallow: http://xsearch.aetna.com/
Disallow: /individuals-families/search-results.html
Disallow: /individuals-families/document-library/pdd/
Disallow: /health-care-professionals/clinical-policy-bulletins/medical-clinical-policy-bulletins/medical-clinical-policy-bulletins-search-results.html 
Disallow: /health-care-professionals/clinical-policy-bulletins/pharmacy-clinical-policy-bulletins/pharmacy-clinical-policy-bulletins-search-results.html 
Disallow: /health-care-professionals/precertification/precertification-lists-results.html 
Disallow: /members/fsa/ManageyourAccount/aetnaNavigator/aetnanavigator.html
Disallow: /healthcare-professionals/documents-forms/abh-locat-assessment.pdf
Disallow: /healthcare-professionals/documents-forms/applied-behavioral-analysis.pdf
Disallow: /pharmacy-insurance/healthcare-professional/documents/hepc-medication-precert-request.pdf
Disallow: /provider/data/


User-agent: *
Allow: /sitesearch/navlinks.html
Allow: /members/health_coverage/forms/forms.html
Disallow: /inyourstate/
Disallow: /cpb/medical/data/disclaimer/
Disallow: /creativeservices/
Disallow: /externalweb/
Disallow: /groupinsurance/employers.htm
Disallow: /groupinsurance/producers.htm
Disallow: /info/
Disallow: /about-aetna-insurance/tools/info.html 
Disallow: /group/
Disallow: /members/ers2004/
Disallow: /members/gettinghealthy/
Disallow: /email_communications/
Disallow: /members/individuals/medicare/
Disallow: /insurance-producer/sas/
Disallow: /about-aetna-insurance/sas/conference/
Disallow: /employer-plans/sas/hospital-user-group-forum/ 
Disallow: /2010annualreport/
Disallow: /index-test.html
Disallow: /index-ie6.html 
Disallow: /insurance-producer/nbac-fall-2011/ 
Disallow: /docfind/custom/*
Disallow: /docfind/nslij
Disallow: /docfind/jsp/rdIndex.jsp?site_id=bshsi&langpref=en
Disallow: /docfind/home.do?site_id=bshsi&langpref=en
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab2
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab3
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link2
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link3&staticPages=Yes&fromPage=home&lastProvRow=0&tabKey=tab1&langpref=en&&site_id=bshsi&&button_flag=S&&groups=25&&psid=null&prefilledPlan=null&prefilledProductCode=null
Disallow: /docfind/rdStaticRouting.do?site_id=bshsi&langpref=en&link=link4&staticPages=Yes&fromPage=home&lastProvRow=0&tabKey=tab1&langpref=en&&site_id=bshsi&&button_flag=S&&groups=25&&psid=null&prefilledPlan=null&prefilledProductCode=null&prefilledPlan=null&prefilledProductCode=null
Disallow: /docfind/home.do?site_id=bshsi&langpref=en&tabKey=tab4
Disallow: /members/fsa/ManageyourAccount/aetnaNavigator/aetnanavigator.html
Disallow: /healthcare-professionals/documents-forms/abh-locat-assessment.pdf
Disallow: /healthcare-professionals/documents-forms/applied-behavioral-analysis.pdf
Disallow: /employer-plans/sas/engage-and-save/
Disallow: /search/
Disallow: /individuals-families/search-results.html
Disallow: http://xsearch.aetna.com/
Disallow: /individuals-families/search-results.html
Disallow: /individuals-families/document-library/pdd/
Disallow: /health-care-professionals/clinical-policy-bulletins/medical-clinical-policy-bulletins/medical-clinical-policy-bulletins-search-results.html 
Disallow: /health-care-professionals/clinical-policy-bulletins/pharmacy-clinical-policy-bulletins/pharmacy-clinical-policy-bulletins-search-results.html 
Disallow: /health-care-professionals/precertification/precertification-lists-results.html
Disallow: /healthcare-professionals/documents-forms/abh-locat-assessment.pdf
Disallow: /healthcare-professionals/documents-forms/applied-behavioral-analysis.pdf
Disallow: /pharmacy-insurance/healthcare-professional/documents/hepc-medication-precert-request.pdf
Disallow: /provider/data/
Disallow: /data/forms_library/medical_claim_form.pdf
Disallow: /employer/forms/w_indem_ppo_reim.pdf



sitemap: http://www.aetna.com/sitemap.xml
sitemap: http://www.aetna.com/insurance-producer/sitemap.xml 
sitemap: http://www.aetna.com/individuals-families/sitemap.xml
sitemap: http://www.aetna.com/employers-organizations/sitemap.xml 
sitemap: http://www.aetna.com/health-care-professionals/sitemap.xml
sitemap: http://www.aetna.com/about-us/sitemap.xml
sitemap: http://www.aetna.com/legal-notices/sitemap.xml
sitemap: http://www.aetna.com/faqs-health-insurance/sitemap.xml
sitemap: http://www.aetna.com/success-stories/sitemap.xml




