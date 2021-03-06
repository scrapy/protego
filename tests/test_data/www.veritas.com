User-agent: Twitterbot
Allow: /content/dam/Veritas/images/social/
Allow: /bin/support/docRepoServlet
Disallow: /apps
Disallow: /bin
Disallow: /etc
Disallow: /libs
Disallow: /content/veritas/english/en/product/brightcove-test.html
Disallow: /product/brightcove-test
Disallow: /content/veritas/english/en/product/brightcove-test1.html
Disallow: /product/brightcove-test1
Disallow: /content/veritas/english/en/product/brightcove-test2.html
Disallow: /product/brightcove-test2
Disallow: /atlassian-domain-verification.html
Sitemap: https://www.veritas.com/sitemap.xml
Sitemap: https://www.veritas.com/content/dam/support/sitemap/article-sitemap.xml
Sitemap: https://www.veritas.com/content/dam/support/sitemap/doc_repo-sitemap.xml
Sitemap: https://www.veritas.com/sitemap.xml
Sitemap: https://www.veritas.com/en-us-sitemap.xml
Sitemap: https://www.veritas.com/en-aa-sitemap.xml
Sitemap: https://www.veritas.com/en-au-sitemap.xml
Sitemap: https://www.veritas.com/en-ca-sitemap.xml
Sitemap: https://www.veritas.com/en-uk-sitemap.xml
Sitemap: https://www.veritas.com/fr-fr-sitemap.xml
Sitemap: https://www.veritas.com/fr-ca-sitemap.xml
Sitemap: https://www.veritas.com/fr-ch-sitemap.xml
Sitemap: https://www.veritas.com/zh-cn-sitemap.xml
Sitemap: https://www.veritas.com/ko-kr-sitemap.xml
Sitemap: https://www.veritas.com/de-de-sitemap.xml
Sitemap: https://www.veritas.com/de-ch-sitemap.xml
Sitemap: https://www.veritas.com/pt-br-sitemap.xml
Sitemap: https://www.veritas.com/ja-jp-sitemap.xml
Disallow: /en/ae
Disallow: /en/be
Disallow: /en/nl
Disallow: /en/se
Disallow: /en/za
Disallow: /fr/be
Disallow: /es/es
Disallow: /es/mx
Disallow: /it/ch
Disallow: /it/it
Disallow: /ru/ru
Disallow: /content/veritas/english/en-ae
Disallow: /content/veritas/english/en-be
Disallow: /content/veritas/english/en-nl
Disallow: /content/veritas/english/en-se
Disallow: /content/veritas/english/en-za
Disallow: /content/veritas/french/fr-be
Disallow: /content/veritas/spanish/es-es
Disallow: /content/veritas/spanish/es-mx
Disallow: /content/veritas/italian/it-ch
Disallow: /content/veritas/italian/it-it
Disallow: /content/veritas/russian/ru-ru
Disallow: /content/veritas/english/en/carlyle-group-tech-forum.html
Disallow: /carlyle-group-tech-forum
Disallow: /content/veritas/english/en/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/uk/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/aa/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/ca/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/au/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/french/fr/fr/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/french/fr/ch/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/french/fr/ca/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/german/de/de/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/german/de/ch/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/portuguese/pt/br/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/simplifiedchinese/zh/cn/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/japanese/jp/ja/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/korean/ko/kr/form/trialware/cloudpoint-download/thank-you.html
Disallow: /form/trialware/cloudpoint-download/thank-you
Disallow: /en/uk/form/trialware/cloudpoint-download/thank-you
Disallow: /en/aa/form/trialware/cloudpoint-download/thank-you
Disallow: /en/ca/form/trialware/cloudpoint-download/thank-you
Disallow: /en/au/form/trialware/cloudpoint-download/thank-you
Disallow: /fr/fr/form/trialware/cloudpoint-download/thank-you
Disallow: /fr/ch/form/trialware/cloudpoint-download/thank-you
Disallow: /fr/ca/form/trialware/cloudpoint-download/thank-you
Disallow: /de/de/form/trialware/cloudpoint-download/thank-you
Disallow: /de/ch/form/trialware/cloudpoint-download/thank-you
Disallow: /pt/br/form/trialware/cloudpoint-download/thank-you
Disallow: /zh/cn/form/trialware/cloudpoint-download/thank-you
Disallow: /jp/ja/form/trialware/cloudpoint-download/thank-you
Disallow: /ko/kr/form/trialware/cloudpoint-download/thank-you
Disallow: /content/veritas/english/en/company/legal/embargoed-country-blocking.html
Disallow: /company/legal/embargoed-country-blocking
Disallow: /content/veritas/english/en/company/careers/why-join-us/welcome.html
Disallow: /company/careers/why-join-us/welcome

User-Agent: *
Allow: /bin/support/docRepoServlet
Disallow: /apps
Disallow: /bin
Disallow: /etc
Disallow: /libs
Disallow: /content/dam/Veritas/
Allow: /etc/clientlibs/foundation/*.css
Allow: /etc/designs/veritas.css
Allow: /etc/designs/veritas/clientlib/*.css
Allow: /content/dam/Veritas/docs/*.css
Allow: /content/dam/Veritas/images/flags/*.css
Allow: /etc/clientlibs/granite/*.css
Allow: /etc/designs/veritas/componentClientlib/*.css
Allow: /etc/clientlibs/granite/*.js
Allow: /etc/designs/veritas/clientlib/*.js
Allow: /etc/clientlibs/foundation/*.js
Allow: /content/dam/Veritas/docs/*.js
Allow: /etc/designs/veritas/componentClientlib/*.js
Allow: /content/dam/Veritas/images/*.png
Allow: /content/dam/Veritas/images/*.jpg
Allow: /content/dam/Veritas/images/*.jpeg
Allow: /content/dam/Veritas/images/*.svg
Allow: /content/dam/Veritas/images/*.gif
Allow: /etc/clientlibs/granite/*.png
Allow: /etc/designs/veritas/clientlib/*.otf
Allow: /content/dam/Veritas/*.woff
Allow: /libs/granite/csrf/token.json
Allow: /libs/cq/i18n/dict.en.json
Allow: /content/dam/Veritas/*.ttf
Disallow: /content/veritas/english/en/product/brightcove-test.html
Disallow: /product/brightcove-test
Disallow: /content/veritas/english/en/product/brightcove-test1.html
Disallow: /product/brightcove-test1
Disallow: /content/veritas/english/en/product/brightcove-test2.html
Disallow: /product/brightcove-test2
Disallow: /atlassian-domain-verification.html
Sitemap: https://www.veritas.com/sitemap.xml
Sitemap: https://www.veritas.com/content/dam/support/sitemap/article-sitemap.xml
Sitemap: https://www.veritas.com/content/dam/support/sitemap/doc_repo-sitemap.xml
Sitemap: https://www.veritas.com/sitemap.xml
Sitemap: https://www.veritas.com/en-us-sitemap.xml
Sitemap: https://www.veritas.com/en-aa-sitemap.xml
Sitemap: https://www.veritas.com/en-au-sitemap.xml
Sitemap: https://www.veritas.com/en-ca-sitemap.xml
Sitemap: https://www.veritas.com/en-uk-sitemap.xml
Sitemap: https://www.veritas.com/fr-fr-sitemap.xml
Sitemap: https://www.veritas.com/fr-ca-sitemap.xml
Sitemap: https://www.veritas.com/fr-ch-sitemap.xml
Sitemap: https://www.veritas.com/zh-cn-sitemap.xml
Sitemap: https://www.veritas.com/ko-kr-sitemap.xml
Sitemap: https://www.veritas.com/de-de-sitemap.xml
Sitemap: https://www.veritas.com/de-ch-sitemap.xml
Sitemap: https://www.veritas.com/pt-br-sitemap.xml
Sitemap: https://www.veritas.com/ja-jp-sitemap.xml
Disallow: /en/ae
Disallow: /en/be
Disallow: /en/nl
Disallow: /en/se
Disallow: /en/za
Disallow: /fr/be
Disallow: /es/es
Disallow: /es/mx
Disallow: /it/ch
Disallow: /it/it
Disallow: /ru/ru
Disallow: /content/veritas/english/en-ae
Disallow: /content/veritas/english/en-be
Disallow: /content/veritas/english/en-nl
Disallow: /content/veritas/english/en-se
Disallow: /content/veritas/english/en-za
Disallow: /content/veritas/french/fr-be
Disallow: /content/veritas/spanish/es-es
Disallow: /content/veritas/spanish/es-mx
Disallow: /content/veritas/italian/it-ch
Disallow: /content/veritas/italian/it-it
Disallow: /content/veritas/russian/ru-ru
Disallow: /content/veritas/english/en/carlyle-group-tech-forum.html
Disallow: /carlyle-group-tech-forum
Disallow: /content/veritas/english/en/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/uk/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/aa/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/ca/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/english/en/au/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/french/fr/fr/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/french/fr/ch/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/french/fr/ca/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/german/de/de/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/german/de/ch/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/portuguese/pt/br/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/simplifiedchinese/zh/cn/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/japanese/jp/ja/form/trialware/cloudpoint-download/thank-you.html
Disallow: /content/veritas/korean/ko/kr/form/trialware/cloudpoint-download/thank-you.html
Disallow: /form/trialware/cloudpoint-download/thank-you
Disallow: /en/uk/form/trialware/cloudpoint-download/thank-you
Disallow: /en/aa/form/trialware/cloudpoint-download/thank-you
Disallow: /en/ca/form/trialware/cloudpoint-download/thank-you
Disallow: /en/au/form/trialware/cloudpoint-download/thank-you
Disallow: /fr/fr/form/trialware/cloudpoint-download/thank-you
Disallow: /fr/ch/form/trialware/cloudpoint-download/thank-you
Disallow: /fr/ca/form/trialware/cloudpoint-download/thank-you
Disallow: /de/de/form/trialware/cloudpoint-download/thank-you
Disallow: /de/ch/form/trialware/cloudpoint-download/thank-you
Disallow: /pt/br/form/trialware/cloudpoint-download/thank-you
Disallow: /zh/cn/form/trialware/cloudpoint-download/thank-you
Disallow: /jp/ja/form/trialware/cloudpoint-download/thank-you
Disallow: /ko/kr/form/trialware/cloudpoint-download/thank-you
Disallow: /content/veritas/english/en/company/legal/embargoed-country-blocking.html
Disallow: /company/legal/embargoed-country-blocking
Disallow: /content/veritas/english/en/company/careers/why-join-us/welcome.html
Disallow: /company/careers/why-join-us/welcome