# Robots.txt file from https://www.easeus.com
#
# All robots will spider the domain

User-agent: *
Disallow:/ptddweb/
Disallow:/www.ptdd.com/
Disallow:/jp.easeus.com/
Disallow:/de.easeus.com/
Disallow:/easeusweb.easeus.com/
Disallow:/blog/
Disallow:/cgi-bin/
Disallow:/crm/
Disallow:/update/
Disallow:/ad/
Disallow:/purchase/
Disallow:/link/
Disallow:/App/
Disallow:/admin.php
Disallow:/popup/
Disallow:/reseller/
Disallow:/statictics.txt
Disallow:/statistics.php
Disallow:/language/
Disallow:/languages/
Disallow:/data-recovery-faq/
Disallow:/datarecoverywizardpro/help/
Disallow:/giveaways/
Disallow:/landing/seo/
Disallow:/landing/article/