#robots2.txt
User-agent: *
Allow: /
Disallow: /*.php*
Disallow: /whatshot.html
Disallow: /whatshot/*
Disallow: /mxp_ucweb/*
Disallow: /highlights.html
Disallow: /highlights/*
Disallow: /7176/MensXP/*
Disallow: /7176/MensXP_Mweb/*
Disallow: /mxcat/notify.html
Disallow: /user/*
Disallow: /search.html*