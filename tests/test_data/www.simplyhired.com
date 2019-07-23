User-agent: *
Disallow: /a/job-details/
Disallow: /a/job-alerts/
Disallow: /serp$
Disallow: /serp?
Disallow: /a/special-searches/
Disallow: /a/trends/
Disallow: /account/
Disallow: /ask/questions/
Disallow: /ask/users/
Disallow: /job-id/
Disallow: /job-post/
Disallow: /c/jobs-api/
Disallow: /c/jobs-widget/
Disallow: /a/jobtrends/

User-agent: 008
Disallow: /

User-agent: dotbot
Disallow: /
