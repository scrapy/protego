<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Mix</title>
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta name="referrer" content="always">
  <link href="/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="/css/base.css" rel="stylesheet" type="text/css">
  <link href="/css/main.css" rel="stylesheet" type="text/css">
  <script async src="https://www.googletagmanager.com/gtag/js?id=UA-16124905-1"></script>
  <style>
    .learn-more-text { text-decoration: none; color: white; }
    .learn-more-text:hover { text-decoration: underline; }
  </style>
  <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());

    gtag('config', 'UA-16124905-7');

  </script>

  <!-- [if lt IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js" type="text/javascript"></script><![endif] -->
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>
  <link href="/images/favicon.ico" rel="shortcut icon" type="image/x-icon">
</head>
<body>
  <div class="body-background">
    <div class="div-block">
      <div class="div-block-2"><img src="/images/SU-Icon.png"></div>
      <h1 class="heading">Hi. StumbleUpon moved to Mix. Come Join us.</h1>
      <p id="join-mix-blurb" class="paragraph">New from our team, Mix lets you curate and discover the best of the web. The more you use it, the more it knows what you’ll love. Get started below.</p>
      <a id="join-mix-button" href="https://mix.com/signup?su=home-join-1-signup" class="link-2 w-button">Join Mix</a>
      <a id="learn-more-button" href="https://mix.com/learn-more?su=home-learn" class="link-3 w-button">Learn More</a>
    </div>
  </div>

<script>
// Test 1 - signup?su=home-join-1-signup wins
//document.getElementById('join-mix-button').href = "https://mix.com/"
//	+ (Math.floor(Math.random() * 2) ? "signup?su=home-join-1-signup" : "?su=home-join-1-default");

if (Math.floor(Math.random() * 2)) {
	document.getElementById('join-mix-blurb').innerHTML += ' <a class="learn-more-text" href="https://mix.com/learn-more?su=home-learn-2B">What is Mix?  Learn more.</a>'
	document.getElementById('learn-more-button').style.display = 'none';
	document.getElementById('join-mix-button').href = "https://mix.com/signup?su=home-join-2B";
} else {
	document.getElementById('join-mix-button').href = "https://mix.com/signup?su=home-join-2A";
	document.getElementById('learn-more-button').href = "https://mix.com/learn-more?su=home-learn-2A";
}
</script>
</body>
</html>
