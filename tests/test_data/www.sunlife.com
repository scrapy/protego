User-agent: *
Disallow: /plan/v/index.jsp?vgnextoid=ec073dbaf83e4210VgnVCM100000abd2d09fRCRD
Disallow: /brandmanager*
Disallow: /Brandmanager*
Disallow: /static/brandmanager*
Disallow: /slfglobal*
Disallow: /slf/mssp*
Disallow: /static/slf/mssp*
Disallow: /static/MarCom/Welcome%20to%20Sun%20Life/PDFs/*
Disallow: /Canada/Welcome+to+Sun+Life+Financial*
Disallow: /Global/Investors/ch.Presentations+for+investors.mobile/*
Disallow: /us/mercer/
Disallow: /us/why-buy/
Disallow: /us/nsm/
Disallow: /us/Tools/Find+a+dentist
Disallow: /us/Tools/Find%20a%20dentist
Disallow: /static/slfeb/formembers/DentistSearch.html  
Disallow: /Canada/MMFL*
Disallow: */Site+Administration/*
Disallow: /Carolyn.Dicks
Disallow: /international/fp*
Disallow: /International/fp*
Disallow: /Canada/sunlifeCA/SEM+Financial+planning*
Disallow: /Canada/sunlifeCA/SEM+Financial+planning+products*
Disallow: /Canada/sunlifeCA/SEM+Life+insurance*
Disallow: /Canada/sunlifeCA/SEM+Mortgage*
Disallow: /Canada/sunlifeCA/SEM+Annuity*
Disallow: /Canada/sunlifeCA/SEM+Health+Insurance*
Disallow: /Canada/sunlifeCA/Financial+review+direct*
Disallow: /Canada/sunlifeCA/Financial+review*
Disallow: /Canada/sunlifeCA/Health+review+sem*
Disallow: /Canada/sunlifeCA/Health+review+social*
Disallow: /Canada/sunlifeCA/Insurance+review*
Disallow: /newglobal
Disallow: /slf/styleguide*
Disallow: /files/advisorabc*

# Disallow the Learn and Plan paginated pages.
Disallow: /ca/Learn+and+Plan/*pageNo=
Disallow: /ca/Learn%20and%20Plan/*pageNo=
Disallow: /ca/Learn and Plan/*pageNo=

Sitemap: https://www.sunlife.ca/ca/Sitemap/xml?vgnLocale=en_CA
Sitemap: https://www.sunlife.ca/ca/Sitemap/xml?vgnLocale=fr_CA
Sitemap: https://www.sunlife.ca/ca/Sitemap/xmlArticles?vgnLocale=en_CA
Sitemap: https://www.sunlife.ca/ca/Sitemap/xmlArticles?vgnLocale=fr_CA

#Allow google adbot
User-agent: AdsBot-Google
Disallow: /newglobal
Disallow: /slf/styleguide*
Disallow: 