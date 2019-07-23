User-agent: *
Disallow: /AgentConnect1409
Disallow: /AgentConnect1503
Disallow: /AgentConnect*
Disallow: /Market/*
Disallow: /MGI/*
Disallow: /MGICorp/*
Disallow: /MGIRewards/*
Disallow: /MGI*/*
Disallow: /theme/*
Disallow: /WCM/*
Disallow: /WCS/*
Disallow: /wps/*
Disallow: /dynaTraceMonitor
Disallow: /us/en/dynaTraceMonitor
#recognize mirroring if possible
Host: www.moneygram.com
# Wait 5 second between successive requests. See ONBOARD-2698 for details.
Crawl-delay: 5

Sitemap: https://www.moneygram.com/sitemap.xml
