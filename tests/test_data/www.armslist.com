# robots.txt
User-agent: *
Disallow:/sponsors/
Disallow:/classifieds/search
Disallow:/classifieds/usa
Disallow:/classifieds/extratags
Disallow:/images/
Disallow:/posts/new
Disallow:/posts/create
Disallow:/posts/*/edit
Disallow:/posts/*/save
Disallow:/posts/*/delete
Disallow:/posts/*/activate
Disallow:/posts/*/deactivate
Disallow:/posts/*/flag
Disallow:/posts/resendactivation
Disallow:/currency/change
Disallow:/currency/picker