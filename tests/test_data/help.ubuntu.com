# https://help.ubuntu.com/robots.txt
#
# Notes:
#
# 2016.11.23: We, the docs team, do not actually have access to the
#	web server access logs, which would help in improving this
#	robots.txt file. Some things we do herein are based on experiences
#	from other web servers, where we do have access to the access logs.
#	Always keep in mind that crawlers, and google in particular, seem
#	to keep looking for deleted content for a very very long time after
#	it is gone.
#
# 2016.11.23: Canonical is moving the CloudDocs elsewhere.
#	A disallow lts/clouddocs is being added in order to assist
#	web crawlers to realize that they should delete that content.
#	It should be left for at least a year, probably two.
#	For this type of server, a crawl delay of 20 is too long,
#	changing to 5, which might still be a little long.

User-agent: *
Crawl-delay: 5
Disallow: /img/
Disallow: /libs/
Disallow: /14.04/
Disallow: /16.04/
Disallow: /16.10/
Disallow: /17.04/
Disallow: /17.10/
Disallow: /18.04/
Disallow: /18.10/
Disallow: /19.04/
Disallow: /19.10/
Disallow: /20.04/
Disallow: /20.10/
Disallow: /21.04/
Disallow: /21.10/
Disallow: /lts/ubuntu-help/
Disallow: /stable/installation-guide/
Disallow: /stable/serverguide/
Disallow: /dev/
# Leave the following two lines at least until 2017.12.01, perferrably 2018.12.01
Disallow: /stable/clouddocs/
Disallow: /lts/clouddocs/
Disallow: /community/*?action=
