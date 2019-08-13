
# For all robots Block access to specific groups of pages

User-agent: *

Disallow: /*/cart
Disallow: /*/checkout
Disallow: /*/my-account
Disallow: /*/login/pw
Disallow: /*/powerreviews/*
