User-agent: *
Disallow: /print/
Disallow: /printPreview/
Disallow: /cgi-extern/
Disallow: /cgi-bin/ 
Disallow: /cgi-extern-ssl/
Disallow: /cgi-intern-ssl/ 
Disallow: /wcms3/custom/OSSPAD3/ote/
Disallow: /mdm/PdfTopicDownload.aspx
Disallow: /mdm/XmlDownload.aspx
Disallow: /mdm/Image.aspx

Disallow: /WW/forum/members/
Disallow: /WW/forum/moderators/
Disallow: /WW/forum/experts/
Disallow: /WW/forum/editors/ 
Disallow: /WW/forum/members/ConferenceMembers.aspx
Disallow: /WW/forum/guests/UserProfile.aspx
Disallow: /WW/forum/guests/CompetitionRewardList.aspx
Disallow: /WW/forum/guests/CompetitionScoreboard.aspx

User-agent: TechnoSearchCrawler
Disallow: /WW/forum/

#default robots.txt for sharepoint sites
Disallow: /*.ico 
Disallow: /ote 
Disallow: /webresource.axd
Disallow: /scriptresource.axd
Disallow: /search2009
Disallow: /redirects
Disallow: /config
Disallow: /sitecollectionimages
Disallow: /apple-touch-icon-precomposed.png
Disallow: /apple-touch-icon.png
Disallow: /admin
Disallow: /asindex/
Allow: /  
