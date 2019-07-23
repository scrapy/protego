#
# robots.txt
#
# This file is to prevent the crawling and indexing of certain parts
# of your site by web crawlers and spiders run by sites like Yahoo!
# and Google. By telling these "robots" where not to go on your site,
# you save bandwidth and server resources.
#
# This file will be ignored unless it is at the root of your host:
# Used:    http://example.com/robots.txt
# Ignored: http://example.com/site/robots.txt
#
# For more information about the robots.txt standard, see:
# http://www.robotstxt.org/wc/robots.html
#
# For syntax checking, see:
# http://www.sxw.org.uk/computing/robots/check.html
#
User-agent: *
Crawl-delay: 10
# General
Disallow: /intlcpa/
Disallow: /404.html
# DAM
Disallow: /content/dam/bpe/
# cpa-review
Disallow: /cpa-review/checkout.html
Disallow: /cpa-review/my-account.html
Disallow: /cpa-review/my-account-edit.html
Disallow: /cpa-review/login.html
Disallow: /cpa-review/user-registration.html
Disallow: /cpa-review/order-confirmation.html
Disallow: /cpa-review/order-details.html
Disallow: /cpa-review/exchange.html
Disallow: /cpa-review/cpa-getting-started-overlay.html
Disallow: /cpa-review/forgot-password.html
Disallow: /cpa-review/reset-password.html
Disallow: /cpa-review/firms/
# homepage
Disallow: /homepage/usmle-author-page.html
Disallow: /homepage/usmle-author-page/
Disallow: /homepage/cpa-author-page.html
Disallow: /homepage/cpa-author-page/
Disallow: /homepage/b4b-author-page.html
Disallow: /homepage/b4b-author-page/
Disallow: /homepage/pmp-author-page.html
Disallow: /homepage/pmp-author-page/
# nclex
Disallow: /nclex/checkout.html
Disallow: /nclex/login.html
Disallow: /nclex/account.html
Disallow: /nclex/forgot-password.html
Disallow: /nclex/reset-password.html
Disallow: /nclex/order-confirmation.html
Disallow: /nclex/order-details.html
Disallow: /nclex/register.html
Disallow: /nclex/account-edit.html
Disallow: /nclex/_jcr_content/header/component_header.sfdc-pass-through.html
# usmle
Disallow: /usmle/bulk-order/
Disallow: /usmle/institutional-affiliations/
Disallow: /usmle/forgot-password.html
Disallow: /usmle/reset-password.html
Disallow: /usmle/my-account.html
Disallow: /usmle/my-account-edit.html
Disallow: /usmle/user-registration.html
Disallow: /usmle/login.html
Disallow: /usmle/checkout.html
Disallow: /usmle/order-confirmation.html
Disallow: /usmle/order-details.html
Disallow: /usmle/exchange.html
# Business
Disallow: /business/the-becker-difference/government/gsa-schedule.html
Disallow: /business/the-becker-difference/government/family-offer.html
Disallow: /business/_jcr_content/header/component_header.sfdc-pass-through.html
# PMP
Disallow: /pmp/_jcr_content/header/component_header_cop.sfdc-pass-through.html
# Leadership
Disallow: /leadership/_jcr_content/header/component_header.sfdc-pass-through.html
# CISSP
Disallow: /cissp/_jcr_content/header/component_header.sfdc-pass-through.html
# CPE
Disallow: /cpe/_jcr_content/header/component_header.sfdc-pass-through.html
# Lean Six Sigma
Disallow: /lean-six-sigma/_jcr_content/header/component_header.sfdc-pass-through.html