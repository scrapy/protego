<!DOCTYPE html>
<html xmlns:ng="http://angularjs.org">
  <head>
    <meta content='IE=Edge' http-equiv='X-UA-Compatible'>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=0' name='viewport'>
    <meta name="twitter:widgets:csp" content="on">
    <meta charset="utf-8">

    <title>
      GroupMe
      |
      Group text messaging with GroupMe
    </title>

    <meta name='description'
          content='GroupMe brings group text messaging to every phone. Group message with the people in your life that are important to you.' >
    <meta name='keywords'
          content='GroupMe, group, group.me, group text, group sms, twilio, app, iphone, windows mobile, android, group texting, text messaging, start-up, unique phone numbers, New York'>

    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/json3/3.2.4/json3.min.js" type="text/javascript"></script>
    <![endif]-->


    <link rel="stylesheet" href="/fonts/segoeWP.css" >
    <link rel="stylesheet" href="/stylesheets/jquery-ui.css" >
    <link href="/stylesheets/brochure.css" media="screen" rel="stylesheet" type="text/css" />

    
      <script src="/javascripts/brochure.js" type="text/javascript"></script>
      <script>
        //<![CDATA[
          window.ISO_COUNTRY_CODE = $.cookie("country_code")
          window.GROUPME_HOST = "";
        //]]>
      </script>
    

    <meta content='GroupMe' property='og:site_name'>
    <meta content='102195' property='fb:admins'>
    <meta content='https://groupme.com/images/logo.png' property='og:image'>
  </head>

  <body class="en-US en-US_404  pages brochure">

    <div class='brochure' id='hd'>
      <div class='top container'>
        <a href="/" id="logo">
          <img alt="Logo" width="183" src="/images/brochure/logo.png" />
        </a>
        <div class='login'>
          <p>
          <span>
          Chat with your groups online:
          </span>
          <a href="/signin" class="login button gray">Log in</a>
          </p>
        </div>
      </div>
    </div>

    <div id='flash'>
      <div class='flash notice'></div>
      <div class='flash error'></div>
    </div>

    <div id='bd' ng-app="GM">
      <div class='top shadow'></div>
      <div class="container">
  <h1>Sorry, there is no page at this URL.</h1>
  <p>Please email <a href="mailto:support@groupme.com">support@groupme.com</a> if you think this is an error.</p>
</div>
    </div>

    <div id='ft'>
      <div class='container'>
        <ul>
          <li class='home'><a href="/">Home</a></li>
          <li><a href="/about">About</a></li>
          <li><a href="http://blog.groupme.com">Blog</a></li>
          <li><a href="https://help.groupme.com">Help</a></li>
          <li><a href="/terms">Terms</a></li>
          <li><a href="/privacy">Privacy &amp; Cookies</a></li>
          <li><a href="https://status.groupme.com">Status</a></li>
          <li><a href="https://dev.groupme.com">Developers</a></li>
          
          <li class="language-picker">
            <a>English</a>
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            <ul>
              <li data-lang="en-US">English</li>
              <li data-lang="en-GB">English (United Kingdom)</li>
              <li data-lang="de-DE">Deutsch (German)</li>
              <li data-lang="es-ES">Español (Spanish)</li>
              <li data-lang="es-MX">Español (México) (Spanish Mexico)</li>
              <li data-lang="fr-FR">Français (French)</li>
              <li data-lang="hi-IN">हिन्दी (Hindi)</li>
              <li data-lang="id-ID">Bahasa Indonesia (Indonesian)</li>
              <li data-lang="it-IT">Italiano (Italian)</li>
              <li data-lang="ja-JP">日本語 (Japanese)</li>
              <li data-lang="ko-KR">한국어 (Korean)</li>
              <li data-lang="pl-PL">Polski (Polish)</li>
              <li data-lang="pt-BR">Português (Brasileiro) (Portuguese Brazil)</li>
              <li data-lang="ru-RU">Русский (Russian)</li>
              <li data-lang="zh-CN">中文（简体) (Chinese Simplified)</li>
              <li data-lang="zh-TW">中文 (繁體) (Chinese Traditional)</li>
            </ul>
          </li>
          
        </ul>
     </div>

     <div class='container'>
        <div class="social-button">
          <a href="https://twitter.com/share" class="twitter-share-button" data-url="https://groupme.com/apps" data-text="I use GroupMe to stay connected with my groups and you should too! (Share photos, send emoji, & likes) Get the app:">Tweet</a>
        </div>
        <div class="social-button">
          <div class="fb-like" data-href="https://facebook.com/groupme" data-send="false" data-layout="button_count" data-width="450" data-show-faces="true" data-font="arial"></div>
        </div>
        <div class="copyright">
        &copy; <span class='year'></span> GroupMe Inc. &mdash; part of the Skype Family
        </div>
      </div>
    </div>

    

    <div id="fb-root" data-appid=""></div>
  </body>
</html>
