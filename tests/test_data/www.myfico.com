# www.myFICO.com robots.txt

User-agent: *
Disallow: /Admin/
Disallow: /NAR/
Disallow: /MemberWorks/
Disallow: /KeyLogin/
Disallow: /Equifax/
Disallow: /TU/
Disallow: /XPN/
Disallow: /Include/*.asp
Disallow: /Include/*.xslt
Disallow: /CustomerService/
Disallow: /CustomErrors/
Disallow: /CS/
Disallow: /Disable/
Disallow: /itsdeductible/
Disallow: /MMI/
Disallow: /SaveAndInvest/
Disallow: /SandyRecovery/
Disallow: /Products/ScoreWatch/ 
Disallow: /offers/ 
Disallow: /PressRoom/ 
Disallow: /tv/ 
Disallow: /products/idfreeze/ 
Disallow: /goals/secured-credit-cards/ 
Disallow: /suze/CreditKit/
Disallow: /Suze/CreditKit/
Disallow: /suze/creditkit/
Disallow: /ficokit/
Disallow: /FicoKit/


Sitemap: https://www.myfico.com/static/sitemap.xml
