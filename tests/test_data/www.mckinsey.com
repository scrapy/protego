User-agent: *
Disallow: /*.axd
Disallow: /sitecore modules/
Disallow: /sitecore/
Disallow: /layouts/
Disallow: /Sublayouts/
Disallow: /sitecore_files/
Disallow: /upload/
Disallow: /NotFound.aspx
Disallow: /InternalError.html
# undefined
Disallow: /*undefined$
# jsdebug
Disallow: /services/forms/formapi.asmx/jsdebug
Disallow: /services/forms/formapi.asmx/js
Disallow: /error
Disallow: /ClientLink/
Disallow: /clientlink/
Disallow: /AppData
Disallow: /McKinsey/
Disallow: /content/
Disallow: /tools/Wrappers
Disallow: /user_registration/
Disallow: /user-registration
Disallow: /search
# Miscellaneous exclusions
Disallow: /RSS/
Disallow: /insights/rss.aspx
Disallow: /nocookie
Disallow: /noaccess
Disallow: /html/
Disallow: /assets/dotcom/staging/
Disallow: /gsa/
Disallow: /practice-clients/
Disallow: /Practice-Clients/
Disallow: /alumniac3testing
Disallow: /alumniac3testing/
Disallow: /Alumniac3testing
Disallow: /Alumniac3testing/
Disallow: /ac3alumnitesting
Disallow: /ac3alumnitesting/
Disallow: /Ac3alumnitesting
Disallow: /Ac3alumnitesting/



User-agent: gsa-crawler
Allow: /clientlink/
Allow: /gsa/
Allow: /practice-clients/

# Google News
User-agent: Googlebot-News
Disallow: /
Allow: /industries/*/our-insights/
Allow: /business-functions/*/our-insights/
Allow: /global-themes/
Allow: /featured-insights
Sitemap: http://www.mckinsey.com/sitemap.xml
