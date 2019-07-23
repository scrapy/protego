# Homes Media Solutions Web Site robots.txt file.
# Put in root folder of all web sites.
# Note that "robots.txt " file name must be all lower-case.
# Mail webmaster@homes.com for questions

User-agent: BLEXBot*
Disallow: /

User-Agent: MJ12bot
Disallow: /

User-agent: *
Disallow: /default.aspx?*
Disallow: /?*

#offices
Sitemap: https://www.remax.com/sitemapofficesindex.xml

#agents 
Sitemap: https://www.remax.com/sitemaplistingagentsindex.xml

#for sale properties 
Sitemap: https://www.remax.com/sitemapforsalepropertiesindex.xml

#deltas 
Sitemap: https://www.remax.com/sitemapforsalenewindex.xml

#home values  
Sitemap: https://www.remax.com/sitemaphomevaluesindex.xml

#foreclosures  
Sitemap: https://www.remax.com/sitemapforeclosurepropertiesIndex.xml

#communities 
Sitemap: https://www.remax.com/communities/community-sitemap.xml  

#remax blog
Sitemap: https://www.remax.com/blog/sitemap_index.xml