User-agent: *
Disallow: /pensioners
Disallow: /pensionnes
Disallow: /retiree
Disallow: /retraites
Disallow: /credit-cards/bmo-world-elite-mastercard/golf/
Disallow: /gam/ca/advisor/advisor-support
Disallow: /gma/ca/conseiller/soutien-conseiller
Disallow: /gam/ca/advisor/advisor-support/practice-management
Disallow: /gma/ca/conseiller/soutien-conseiller/gestion-exercice-professionnel
Disallow: /gam/ca/advisor/advisor-support/fee-disclosure
Disallow: /gma/ca/conseiller/soutien-conseiller/divulgation-des-frais
Disallow: /applepayconditions
Disallow: /creditcards/pdf/applepayconditions.pdf
Disallow: /smallbusinesstoolkit
Disallow: /main/business/smallbusinesstoolkit
Disallow: /main/search#q=?
Disallow: /main/search?query=
Disallow: /insurance/search?query=
Disallow: /gam/uk/etf/search
Disallow: /privatebank/asia/en/search/results
Disallow: /home/search/results
Disallow: /home/about/banking/corporate-info/about-us/canadapost
Disallow: /accueil/a-propos-de-bmo/services-bancaires/information-entreprise/de-nous/postescanada

Disallow: /pccgprefix

Disallow: /*/dp-*

Disallow: /nesbittburns/yourwealth
Disallow: /nesbittburns-francais/votrepatrimoine

Disallow: /img/private-banking/hpb/uk-eu-referendum-leave-june-23-2016.pdf
Disallow: /img/private-banking/hpb/Global-Counsel-Impact-of-Brexit.pdf
Disallow: /img/private-banking/hpb/Le-Brexit-Une-Surprise-Globale.pdf

Disallow: /main/personal/bank-accounts/bankup/*
Disallow: /principal/particuliers/comptes-bancaires/illimite/*

Disallow: /dst
Disallow: /dst/*
Disallow: /astack/*

Allow: /

User-agent: gsa-crawler
Allow: /pensioners/
Allow: /pensionnes/
Disallow: /olb/help-centre/en/my-accounts/investment/
Disallow: /olb/help-centre/en/my-accounts/investment/objectives.html
Disallow: /olb/help-centre/en/my-accounts/investment/purchase/
Disallow: /olb/help-centre/en/my-accounts/investment/exchange/
Disallow: /olb/help-centre/en/my-accounts/investment/redeem/
Disallow: /olb/help-centre/en/my-accounts/investment/set-up/
Disallow: /olb/help-centre/en/my-accounts/investment/pending-transactions.html
Disallow: /olb/help-centre/en/my-accounts/investment/disbursement.html
Disallow: /olb/help-centre/en/my-accounts/investment/fees.html
Disallow: /olb/help-centre/en/my-accounts/investment/products.html
Disallow: /olb/help-centre/fr/my-accounts/investment/
Disallow: /olb/help-centre/fr/my-accounts/investment/objectives.html
Disallow: /olb/help-centre/fr/my-accounts/investment/purchase/
Disallow: /olb/help-centre/fr/my-accounts/investment/exchange/
Disallow: /olb/help-centre/fr/my-accounts/investment/redeem/
Disallow: /olb/help-centre/fr/my-accounts/investment/set-up/
Disallow: /olb/help-centre/fr/my-accounts/investment/pending-transactions.html
Disallow: /olb/help-centre/fr/my-accounts/investment/disbursement.html
Disallow: /olb/help-centre/fr/my-accounts/investment/fees.html
Disallow: /olb/help-centre/fr/my-accounts/investment/products.html