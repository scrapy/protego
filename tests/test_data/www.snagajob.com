# robots.txt for http://www.snagajob.com/ (JobSeeker)

User-agent: Bixeebot
Disallow: /

User-Agent: OmniExplorer_Bot
Disallow: /

User-agent: Mediapartners-Google
Disallow: /click.aspx*
Disallow: /job-seeker/verify.aspx

User-agent: *
Disallow: /apply/
Disallow: /job-seeker/jobs/job-details-print.aspx*
Disallow: /job-seeker/jobs/send-job-to-friend.aspx*
Disallow: /job-search-engine.aspx?*
Disallow: /browse/browse-jobs.aspx*
Disallow: /browse/browse-jobs-by-criteria.aspx*
Disallow: /browse/browse-jobs-results.aspx*
Disallow: /companies/multiplebrand-employment.htm*
Disallow: /click.aspx*
Disallow: /job-search-map
Disallow: /job-seeker/apply/
Disallow: /job-seeker/jobs/job-details-adv-search.aspx*
Disallow: /job-seeker/jobs/job-overview.aspx*
Disallow: /job-seeker/jobs/employer-link-search.aspx*
Disallow: /job-seeker/jobs/employer-link-browse.aspx*
Disallow: /job-seeker/registration/*
Disallow: /job-seeker/login.aspx*
Disallow: /job-seeker/verify.aspx
Disallow: /companies/upsz-employment.htm?b=1997
Disallow: /home
Disallow: /ga.php*
Disallow: /savedjobs/
Disallow: /search/group/
Disallow: /5575/
Disallow: /member/
Disallow: /job/directapply*
Disallow: /job-search/c-*
Disallow: /job-search/s-*
Disallow: /job-search/t-*
Disallow: /job-search/i-*
Disallow: /job-search/j-*
Disallow: /job-search/u-*
Disallow: /job-search/q-kohls+minimum+age+16+years+old
Disallow: /job-search-group-by-jobs/*
# fix for GUID-appending urls
Disallow: /job-search:*
Disallow: /job-seeker/jobs/search-results.aspx:*
Disallow: /search_results.asp:*
Disallow: /save-search*
Disallow: /register/*

# Sitemap files
Sitemap: http://www.snagajob.com/sitemap_index.xml
