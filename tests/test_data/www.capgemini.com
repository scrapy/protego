User-agent: *
Disallow: /wp-admin/

User-agent: *
Disallow: /2015/11/technovision-2016-orchestrate-for-simple/amp/azure.microsoft.com
Disallow: /news/capgemini-launches-cloud-assessment-solution-at-dreamforce-2013/amp/application-lifecycle-services
Disallow: /news/capgemini-launches-cloud-assessment-solution-at-dreamforce-2013/amp/experts
Disallow: /news/capgemini-launches-cloud-assessment-solution-at-dreamforce-2013/amp/cloud-services
Disallow: /news/capgemini-launches-cloud-assessment-solution-at-dreamforce-2013/amp/social-business

# Sitemap archive
Sitemap: https://www.capgemini.com/sitemap.xml


# Media
User-agent: *

# Restricted media*
User-agent: *

# Robots.txt Manager
User-agent: *
Disallow: /we-are-rugby-7*
Disallow: /gb-en/get-the-best-out-of-sap*
Disallow: /*&preview_id=*
Disallow: /*offline*
Disallow: /*&preview=*
Disallow: *ditxxx*
Disallow: *xxxdit*
