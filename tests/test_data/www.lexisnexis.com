User-agent: 008
Disallow: /
User-agent: *
# Ignore FrontPage files
Disallow: /_borders
Disallow: /_derived
Disallow: /_fpclass
Disallow: /_overlay
Disallow: /_private
Disallow: /_themes
Disallow: /_vti_bin
Disallow: /_vti_cnf
Disallow: /_vti_log
Disallow: /_vti_map
Disallow: /_vti_pvt
Disallow: /_vti_txt 
Disallow: /atvantagelearning 
# Ignore Other Files
Disallow: /_meta
Disallow: /_notes
Disallow: /_old
Disallow: /_ScriptLibrary
Disallow: /about/releases/
# Ignore some forms
Disallow: /trial
Disallow: /trial/contactrepCFM.asp
Disallow: /trial/contactrepNALM.asp
Disallow: /trial/contactrepintl.asp
# Ignore Law School test dir
Disallow: /lsportal
# Ignore Other folders
Disallow: /bars/
# Ignore clients
Disallow: /clients/controls
Disallow: /clients/asplib
Disallow: /clients/jslib
# Ignore au communities
Disallow: /Community/lwau
Disallow: /government/solutions/intelligence/clearance.pdf
# Include sitemap
Sitemap: http://www.lexisnexis.com/sitemap__index.xml 
# Ignore search.aspx
Disallow: /search.aspx
Disallow: /em
# Ignore Martindale-Hubbell
Disallow: /martindale-hubbell/
# Ignore flash
Disallow: /flash/IPTraining/
# Ignore support
Disallow: /support/
#store pages
Disallow: /store/catalog/booktemplate/printProductDetails.jsp
Disallow: /store/catalog/printProductDetailInfo.jsp
# Ignore Webcasting
Disallow: /webcasting/
# Ignore LSBO
Disallow: /lawschoolbookorders/
#Ignore Accurint
Disallow: /docs/Accurint/
#Ignore ppc pages
Disallow: /sites/en-us/ppc/
Disallow: /en-us/ppc/
Disallow: /clients/
Disallow: /firm_webinars/
Disallow: /docs/accurint/accurint_price_2007_ll_trans_legal.pdf
Disallow: /docs/accurint/accurint_price_2013.pdf
Disallow: /AccurintForCollectionsLP/
Disallow: /supp/lawschool/texts/pdf/
Disallow: /supp/lawschool/Zaption/
Disallow: /supp/lawschool/LAReports/
Disallow: /supp/lawschool/Tutorials/
Disallow: /supp/lawschool/class/publications/pdf/
Disallow: /internationalorderform/
#Ignore downloads
Disallow: /downloads/lawschool/Legal_Research_Supplement_Exercises_on_Lexis_Advance_Teacher/03379_3ETM_2014.epub 
Disallow: /documents/pdf/20141003091717_large.pdf
Disallow: /preferencecenter/
#Ignore lexisONE
Disallow: /lx1/
Disallow: /lexisonehelp/
Disallow: /balancing/
Disallow: /newattorneys/
#Ignore campaign Ravel View
Disallow: /en-us/campaign/
#Ignore old newsroom
Disallow: /portal*
#Ignore old lawschool page
Disallow: /supp/lawschool/resources/barbri/
#Ignore members pages
Disallow: /community/members/*
Disallow: /communities/members/*
Disallow: /saleslink/*
Disallow: /lextalk/members/*
Disallow: /LegalNewsRoom/members/*