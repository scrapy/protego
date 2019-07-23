
<!DOCTYPE html>
<html class=" en en-gb  sports-plugin default-layout" lang="en" data-srvid="140.138.45" data-domain=".sportingbet.com" data-env="prod">
<head>
    <meta charset="utf-8" />
    <title>Sports Betting Odds | Bet on a wide range of Sports | Sportingbet</title>
    <meta name="description" content="Check our latest odds and bet online on all major sports at Sportingbet: top UK sports betting website. We offer you the best betting odds on most popular sports, leagues, games and tournaments, including football Premier League, World Cup, tennis Wimbledon, Cricket and Darts matches. Win big with Sportingbet!" />

    <link rel="icon" type="image/png" href="/assets/images/favicon.PBdsUk.png" />
    <link rel="shortcut icon" type="image/x-icon" href="/assets/images/favicon.vBY8Mp.ico" />

    <script src="/en/client-config.js?browserUrl=http%3a%2f%2fsports.sportingbet.com%2fen%2fsports&amp;nonce=636994296825919669" id="client-config"></script>
    
    <link href="https://sports.sportingbet.com/en/sports" rel="canonical" />
    
    
    <script type="text/javascript" src="//script.crazyegg.com/pages/scripts/0034/7345.js" async="async"></script>
<style>
.container-bg #post-login-error a {
    display: block;
}

    @media only screen and (min-width: 992px) {
        .show-in-desktop {
            display: block !important;
        }

        .hide-in-desktop {
            display: none !important;
        }
    }
    @media only screen and (max-width: 991px) {
        .show-in-desktop {
            display: none !important;
        }

        .hide-in-desktop {
            display: block !important;
        }
    }

.spin-result-dialog .winningIcon img {
    width: 80px;
    height: 80px;
    margin-top: 10px;
}

a.btn-s2.ghost-btn, a.btn-l2.ghost-btn, a.btn-t2.ghost-btn {
    color: #446376 !important;
}
</style>
<style>
.content-message.cookie-consent-message {
	width: 100% !important;
	max-width: 100% !important;
}
</style>
<style>
.menu .ui-icon-triangle-1-s:before {content: "\e903" !important;}
.menu .ui-icon-triangle-1-e:before {content: "\e909" !important;}
#playerinbox .pc-toggle-component.showtnc .toggle .ui-icon.ui-icon-triangle-1-e:before {content: "\e909" !important;}
#playerinbox .pc-toggle-component.showtnc .toggle .ui-icon.ui-icon-triangle-1-s:before {content: "\e903" !important;}
.pc-toggle-component .toggle .ui-icon.ui-icon-triangle-1-e:before {content: "\e909" !important;}
.pc-toggle-component .toggle .ui-icon.ui-icon-triangle-1-s:before {content: "\e903" !important;}
.ui-icon-plus:before {content: "\e909" !important;}
.ui-icon-minus:before {content: "\e903" !important;}
</style>
<script id='QuickDepositOnGameOverlay' type="text/javascript">
    document.addEventListener("DOMContentLoaded", function () {
        $('.overlaywithpanel.outerOverlayDiv .gameOverlay .deposit.btn-s3').on('click', function () {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        });
    });
    console.log('Quick Deposit On Game Overlay hotfix loaded');
</script>
<style>
#racing-wrapper .futures-and-specials-details .futures-and-specials-participants .futures-and-specials-price:only-child {
    width: 100%;
}
</style>
<script id="SportRegPopUpHotFix">
window.onload = function () {
  var regPopFix = document.getElementsByClassName('NotLoggedInMsgFix');
  for (var i = 0; i < regPopFix.length; i++) {
    regPopFix[i].setAttribute('data-registration-in-popup', 'true');
  }
}
</script>
<script id="VerifyPinHotfix">
  document.addEventListener("DOMContentLoaded", function () {
        console.log('Verify Pin Code Hotfix Loaded')
        $(document).delegate('#VerifyPin-overlay-form #Input_PinCode',"keyup",
            function () {
                if ($(this).val().length === 6) {
                    $('#VerifyPinCodesubmit').removeAttr("disabled");
                } else {
                    $('#VerifyPinCodesubmit').attr("disabled", "disabled");
                }
            });
    });
</script>
<style>
#account-bonuses .bonus-table-post-text:before {
  content: "" !important;
}
#account-bonuses .bonus-table-post-text {
  padding-left: 0px !important;
}
</style>
<style>
.live-chat-section.live-chat-disabled {
    display: none !important;
}

.live-contact-section.live-chat-disabled {
    display: block !important;
}

.live-contact-section {
    display: none !important;
}

.live-chat-flexsection.live-chat-disabled {
    display: none !important;
}

.live-chat-flexsection {
    display: flex !important;
}

.live-contact-flexsection.live-chat-disabled {
    display: flex !important;
}

.live-contact-flexsection {
    display: none !important;
}
</style>
<style>
.livewidget__event-time-period {
    display:inline-block !important;
    vertical-align:inherit !important;
}

.livewidget__event-video {
    display:inline-block !important;
    vertical-align:inherit !important;
}
</style>
<style>
.msg-box.Error{
color:#FF3B30;
}

.msg-box li:first-child, .msg-box p:first-child{
font-weight: normal;
}
</style>
<meta name="robots" content="index,follow">
<style>
/*! Real Time Communications */
html #rtmsNotify .real-time-toast {
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    -webkit-box-shadow: 0 5px 20px 0 rgba(0, 0, 0, 0.4);
    -moz-box-shadow: 0 5px 20px 0 rgba(0, 0, 0, 0.4);
    box-shadow: 0 5px 20px 0 rgba(0, 0, 0, 0.4);
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -o-box-sizing: border-box;
    box-sizing: border-box;
    padding: 7px 33px 7px 80px;
    position: fixed;
    font-size: 13px;
    height: 72px;
    line-height: 1.1;
    overflow: hidden;
    right: 22px;
    width: 287px;
    z-index: 9000;
    /* temp overrides to fix current css o production */
  }
  html #rtmsNotify .real-time-toast h1,
  html #rtmsNotify .real-time-toast h2,
  html #rtmsNotify .real-time-toast h3,
  html #rtmsNotify .real-time-toast h4,
  html #rtmsNotify .real-time-toast h5,
  html #rtmsNotify .real-time-toast h6 {
    font-size: inherit;
    font-weight: 700;
  }
  html #rtmsNotify .real-time-toast p {
    font-size: inherit;
  }

  html #rtmsNotify .real-time-toast img {
    bottom: 0;
    height: auto;
    left: 11px;
    margin: auto;
    position: absolute;
    top: 0;
    width: 58px;
  }
  html #rtmsNotify .real-time-toast [class*="ui-icon"] {
    position: absolute;
    right: 6px;
    top: 6px;
  }
  html #rtmsNotify .real-time-toast [class*="ui-icon"]:before {
    color: #7a7a7a;
    font-size: 11px;
  }
  html #rtmsNotify .real-time-toast .content {
    overflow: hidden;
    margin-bottom: 2px;
  }
  html #rtmsNotify .real-time-toast img {
    padding: 0;
  }
  html #rtmsNotify .real-time-toast .content {
    display: block;
    width: auto;
  }
  html #rtmsNotify .real-time-toast > div p {
    position: static;
    text-transform: none;
    font-weight: normal;
    margin: 0;
  }
  html #rtmsNotify .real-time-toast h1,
  html #rtmsNotify .real-time-toast h2,
  html #rtmsNotify .real-time-toast h3,
  html #rtmsNotify .real-time-toast h4,
  html #rtmsNotify .real-time-toast h5 {
    position: static;
  }
  html #rtmsNotify .real-time-popup {
    position: fixed;
    width: 420px;
    margin: auto;
    left: 0;
    right: 0;
    z-index: 10000;
  }
  html #rtmsNotify .real-time-popup [class*="ui-icon"] {
    color: #aebfc9;
    position: absolute;
    right: 5.5px;
    top: -33px;
  }
  html #rtmsNotify .real-time-popup .wrapper {
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px;
    border-radius: 5px;
    -webkit-box-shadow: 0 5px 20px 0 rgba(0, 0, 0, 0.4);
    -moz-box-shadow: 0 5px 20px 0 rgba(0, 0, 0, 0.4);
    box-shadow: 0 5px 20px 0 rgba(0, 0, 0, 0.4);
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    -o-box-sizing: border-box;
    box-sizing: border-box;
    padding: 0;
    position: relative;
    /*.spacing-float-reset();*/
    overflow: hidden;
    width: 420px;
  }

</style>
<style>
#socialmedia .theme-playbutton:before {
    font-size: 115%;
    margin-right: 10px;
    margin-top: 2px;
    vertical-align: top;
    content: "\e90c" !important;
    position: static !important;
    margin-left: 0;
}
</style>

    
    <link href="/assets/betting/styles/bundles/betting.min._P6zv0.css" media="screen, print, projection" rel="stylesheet" type="text/css" />
<link href="/assets/sports/styles/bundles/sports.bundle.Rou1zA.css" media="screen, print, projection" rel="stylesheet" type="text/css" />
<link href="/assets/sports/styles/layouts/screen-l.min.E40WYf.css" id="screen-l" media="only screen and (min-width: 1242px) and (max-width: 1559px)" rel="stylesheet" type="text/css" />
<link href="/assets/sports/styles/layouts/screen-xl.min.rq5uDE.css" id="screen-xl" media="only screen and (min-width: 1560px)" rel="stylesheet" type="text/css" />

    

    <script src="/assets/scripts/lib/modernizr-2.7.1.min.vr_B_k.js" type="text/javascript"></script>
    

</head>
<body>
    
<script type="text/javascript">var dataLayer = [{'browser.userAgent':'Scrapy/1.7.1 (+https://scrapy.org)','component.cmsLinkID':'','component.cmsLinkName':'','component.cmsLinkZone':'','page.betfinderResults':'','page.cmsGuid':'','page.culture':'en','page.domain':'.sportingbet.com','page.externalLink':'','page.frontend':'desktop','page.host':'sports.sportingbet.com','page.language':'en','page.name':'sports','page.redirectedFrom':'','page.referrer':'','page.siteSection':'Sports','page.trackerID':'','user.hasPositiveBalance':false,'user.isAuthenticated':false,'user.isExisting':false,'user.profile.accountID':'','user.profile.chid':0.0,'user.profile.country':'IN','user.profile.currency':'EUR','user.profile.fvid':0.0,'user.profile.loyaltyStatus':'Undefined','user.profile.mid':0,'user.profile.opid':0,'user.profile.prestage':'','user.profile.pvid':0.0,'user.profile.stage':'','user.profile.vid':0,'user.session.abTestGroup':'','user.session.geoIPCountry':'IN','user.session.internalCampaign':'','user.state.liveBettingUserState':''},{'page.redirectedFrom':'http://www.sportingbet.com:80/robots.txt'}];</script><script>
            (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
            j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
            '//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
            })(window,document,'script','dataLayer','GTM-54HCBN');
            </script><noscript><iframe height="0" src="//www.googletagmanager.com/ns.html?id=GTM-54HCBN" style="display:none;visibility:hidden" width="0"></iframe></noscript>    <noscript style="display: none;">
        <style type="text/css">
            .show-if-nojs {
                display: block !important;
            }
        </style>
    </noscript>
    <style type="text/css">
        div#flash.hide {
            display: none;
        }
    </style>
    <div id="top" class="container">
        
        <div class="preheader">
            
<div class="disclaimer">
    
</div>            
    <div class="info-message " data-item="mSQYrM+hI0m6NNy/ObZLQw==">
        <ul>
            <li>
                <span class="icon Information"></span>
                <noscript>
<div data-item="R4NO4H6dxE6ZQvAE9rJ0wA==" class="info-message summaries">
<ul>
    <li style="list-style-type: none;">
    <span class="icon Error" style="margin-top: 5px;"></span>
    </li>
    <p style="margin: 0 0 5px 40px; font-size: 12px;">
    <strong>Attention: JavaScript Required!</strong></p>
    <p style="margin: 0 0 5px 40px; font-weight: normal;">
    For full functionality of this website it is necessary to enable JavaScript. Please check your browser settings or <a target="_blank" href="https://enable-javascript.com/" rel="nofollow">click here</a> for further instructions.
    </p>
</ul>
</div>
</noscript>
<style>
    .info-message ul {
    list-style-type: none;
    }
    .info-message ul {width: 100%;}
</style>
            </li>
        </ul>
    </div>
    <div class="info-message display-none" data-item="aSfnEi0ZM0qGKdKIm9Aa6w==">
        <ul>
            <li>
                <span class="icon Information"></span>
                <style>
.info-message ul {width: 100%;}.info-message li {list-style: none;}
.countdown-teasers-container__body {background-image: url(https://scmedia.sportingbet.com/$-$/d953a1d342a041d8af69316574e9dfbd.png) !important;}
</style>
            </li>
        </ul>
    </div>


            

            


        </div>
        
            <div id="flash" class="hide" data-close-message="close">
                <ul class="message-viewer">
                </ul>
            </div>

        
            <div id="header">


<div class="header-row header-row-primary clear-fix">
    <div class="meta-navigation" data-trid-zone="TopLeftNav">
        
<ul>
            <li>
                <a data-popup-params="resizable=1, toolbar=1, status=1, scrollbars=1, width=1000, height=700" href="https://service.sportingbet.com/en/" id="HeaderMenuHelpLink" rel="popup" target="help">Help</a>
                
            </li>
            <li>
                <a href="https://my.sportingbet.com/en/account/contact" id="HeaderMenuContactLink">Contact</a>
                
            </li>
            <li>
                <a class="activatetour" href="https://my.sportingbet.com/en" id="activatetour"></a>
                
            </li>

</ul>

    </div>
    <div class="user-state" data-trid-zone="USC">

<ul>
            <li>
                <a class="btn-s3 register registration-in-popup" data-registration-in-popup="true" href="https://my.sportingbet.com/en/registration?_layout=layouts%2fportaloverlaylayout&amp;.box=1">REGISTER NOW</a>
                
            </li>
            <li>
                <a class="btn-s1" data-loading="Loading..." href="https://my.sportingbet.com/en/authentication/loginoverlay/index" id="login-overlay-button" onclick="return false;">LOG IN</a>
                
            </li>
<li class="usr-bonus-btn">
<div id="bonus-reminder" class="reminder-button" style="display: none">
    <a href="#">Your Bonus is waiting<span class="ui-icon ui-icon-triangle-1-e">&#160;</span></a>
</div>

</li>
</ul>
    </div>
</div>
<div class="header-row header-row-product clear-fix">
    <div class="header-logo">
        <p><a href="https://my.sportingbet.com/en" title="Home" class="logo">sportingbet</a></p>
    </div>
    <div class="header-bar">
        <div class="product-navigation" data-trid-zone="ProductNav">
            
<ul>
            <li>
                <span></span>
                
            </li>
            <li>
                <a class="activeItem sports" href="https://sports.sportingbet.com/en/sports">Sports Betting</a>
                
            </li>
            <li>
                <a href="https://livebetting.sportingbet.com/en/live" title="Sports, bets, videos - live 24 hours a day">Live Betting</a>
                
            </li>
            <li>
                <a href="https://casino.sportingbet.com/en" title="Get the real casino feeling with our fantastic games">Casino</a>
                
            </li>
            <li>
                <a href="https://casino.sportingbet.com/en/livedealer" title="Live Casino ">Live Casino</a>
                
            </li>
            <li>
                <a href="https://my.sportingbet.com/en/mobile/mobilehome" title="Mobile Home">Mobile</a>
                
            </li>
            <li>
                <a href="https://sports.sportingbet.com/en/sports/p/promotions" title="All of the info about our current promotions!">Promotions</a>
                
            </li>

</ul>

        </div>
    </div>
</div>
            </div>

        <div id="plugin-wrapper">

                <div class="sub-header-row">
                    <div class="sub-navigation" data-trid-zone="ProductSubNav">
            <ul>
	<li><a class="activeItem" href="https://sports.sportingbet.com/en/sports" title="Up to 45,000 simultaneous bets on more than 90 different sports">Sports Betting</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/4/betting/football">Football</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/5/betting/tennis">Tennis</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/7/betting/basketball">Basketball</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/18/betting/volleyball">Volleyball</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/16/betting/handball">Handball</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/12/betting/ice-hockey">Ice hockey</a>
	</li>
	<li><a href="https://livebetting.sportingbet.com/en/live#/overview" title="All live scores and events at a glance">Overview</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/p/articles">Blog</a>
	</li>
        </ul>

    <div id="bet-search-container" class="search-box"
     data-suggestion-url="/en/sports/search/suggestion"
     data-request-wait-interval="350"
     data-min-query-length="3"
     data-max-query-length="17"
     data-live-results-url="/en/sports/search/livesearchresults">
<form action="/en/sports/search" method="get">        <input type="text" id="searchQuery" class="search-box__input search-box__input--1 rounded" name="query" value="" placeholder="Search" autocomplete='off' maxlength="35" />
        <button id="search-button" type="submit" class="search-box__button" value="">
            <span class="search-box__icon icon-glyph_search"></span>
        </button>
</form>    <div id="live-search-container" class="search-container"></div>
    <div id="live-search-results" class="search rounded"></div>
</div>

</div>
                </div>
            <div id="main-wrap" class="container">
                



                




                <div id="main">
                    
    <div class="left">


<div class="ui-widget-content rounded" id="top-leagues"><div class="ui-widget-header toggle collapsible">        <h2>Highlights</h2>
</div><div class="ui-widget-content-body ">		<ul class="sports-links">

<li class="sports-links__item">
	<a class="sports-links__link"  href="/en/sports/4/46/betting/premier-league" title="Premier League (1080)">
	    	<span class="small-flags small-flag-eng ">&nbsp;</span>

		<span>Premier League</span>
	</a>
</li>
<li class="sports-links__item">
	<a class="sports-links__link"  href="/en/sports/4/43121/betting/enhanced-accas" title="Enhanced Accas (9)">
	    	<span class="small-flags small-flag-wrl ">&nbsp;</span>

		<span>Enhanced Accas</span>
	</a>
</li>
<li class="sports-links__item">
	<a class="sports-links__link"  href="/en/sports/4/1899/betting/champions-league-qualification" title="Champions League Qualifiers (1277)">
	    	<span class="small-flags small-flag-eur ">&nbsp;</span>

		<span>Champions League Qualifiers</span>
	</a>
</li>
<li class="sports-links__item">
	<a class="sports-links__link"  href="/en/sports/4/51122/betting/price-boost" title="Price Boosts (17)">
	    	<span class="small-flags small-flag-wrl ">&nbsp;</span>

		<span>Price Boosts</span>
	</a>
</li>
<li class="sports-links__item">
	<a class="sports-links__link"  href="/en/sports/4/101/betting/fa-cup" title="FA Cup (1)">
	    	<span class="small-flags small-flag-eng ">&nbsp;</span>

		<span>FA Cup</span>
	</a>
</li>		</ul>
</div></div>
        <div id="favourites">
<div class="ui-widget-content rounded" id="favourites-content">
	<div class="ui-widget-header favourite-option">		
			<i id="favicon-option" class="favourite-option__icon favourite-option__icon--on icon-glyph_star"
				  data-hide="Hide stars"
				  data-show="Show stars">
			</i>			
		<h3>My favourites</h3>
	</div>
    <div class="ui-widget-content-body favourites">        
<form action="/en/sports/favourites/update" method="post"><input name="__RequestVerificationToken" type="hidden" value="boaSFmbBZ041K0mEnuYBIIgnelAiVOeahivIpkD6NIHwSQD7Mj8il-OnwygRjZagkMQfeQ2" />            <ul class="sports-links"
                data-add-player="/en/sports/favourites/addplayer"
                data-add-league="/en/sports/favourites/addleague"
			>

            </ul>
</form>                    <div class="favourites__empty-container">
                <p>To select favourites, click on star symbols in the betting area.</p>               
            </div>
            </div>
</div>
        </div>
        <div id="sports-navigation-container" data-base-url="/en/sports">
<div class="all-sports ui-widget-content" id="sports-navigation"><div class="all-sports ui-widget-header" title="There are 38,954 bets available online."><h3>38,954 bets</h3></div><div class="all-sports ui-widget-content-body">


<div id="lmb-link" class="left-nav-general-link">

	<a class="left-nav-general-link__link" href="/en/sports/lastminutebets">
	    <span class="left-nav-general-link__icon-container">
            <i class="left-nav-general-link__icon icon-circle blink"></i>
            <i class="left-nav-general-link__icon icon-circle blink-with-delay"></i>
        </span>
		<span>Last minute bets</span>
	</a>
</div>    <ul id="nav-top-list" class="sports-links sports-links--all-sports">
                <li id="nav-sport-4" class="sports-links__item">
                    <a href="/en/sports/4/betting/football" class="sports-links__link sports-links__link--all-sports" title="36,359 Football bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -76px -0px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Football</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-5" class="sports-links__item">
                    <a href="/en/sports/5/betting/tennis" class="sports-links__link sports-links__link--all-sports" title="1,008 Tennis bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -95px -0px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Tennis</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-7" class="sports-links__item">
                    <a href="/en/sports/7/betting/basketball" class="sports-links__link sports-links__link--all-sports" title="158 Basketball bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -133px -0px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Basketball</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-18" class="sports-links__item">
                    <a href="/en/sports/18/betting/volleyball" class="sports-links__link sports-links__link--all-sports" title="28 Volleyball bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -152px -19px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Volleyball</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-16" class="sports-links__item">
                    <a href="/en/sports/16/betting/handball" class="sports-links__link sports-links__link--all-sports" title="3 Handball bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -114px -19px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Handball</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-23" class="sports-links__item">
                    <a href="/en/sports/23/betting/baseball" class="sports-links__link sports-links__link--all-sports" title="253 Baseball bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -57px -38px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Baseball</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-6" class="sports-links__item">
                    <a href="/en/sports/6/betting/formula-1" class="sports-links__link sports-links__link--all-sports" title="145 Formula 1 bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -114px -0px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Formula 1</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-40" class="sports-links__item">
                    <a href="/en/sports/40/betting/motorbikes" class="sports-links__link sports-links__link--all-sports" title="3 Motorbikes bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -0px -76px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Motorbikes</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-10" class="sports-links__item">
                    <a href="/en/sports/10/betting/cycling" class="sports-links__link sports-links__link--all-sports" title="56 Cycling bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -0px -19px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Cycling</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-24" class="sports-links__item">
                    <a href="/en/sports/24/betting/boxing" class="sports-links__link sports-links__link--all-sports" title="5 Boxing bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -76px -38px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Boxing</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-33" class="sports-links__item">
                    <a href="/en/sports/33/betting/snooker" class="sports-links__link sports-links__link--all-sports" title="35 Snooker bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -57px -57px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Snooker</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-34" class="sports-links__item">
                    <a href="/en/sports/34/betting/darts" class="sports-links__link sports-links__link--all-sports" title="300 Darts bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -76px -57px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Darts</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-13" class="sports-links__item">
                    <a href="/en/sports/13/betting/golf" class="sports-links__link sports-links__link--all-sports" title="18 Golf bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -57px -19px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Golf</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-32" class="sports-links__item">
                    <a href="/en/sports/32/betting/rugby-union" class="sports-links__link sports-links__link--all-sports" title="36 Rugby Union bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -38px -57px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Rugby Union</span>
                    </a>
                        <hr class="sports-links__divider" />
                </li>
                <li id="nav-sport-31" class="sports-links__item">
                    <a href="/en/sports/31/betting/rugby-league" class="sports-links__link sports-links__link--all-sports" title="70 Rugby League bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -19px -57px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Rugby League</span>
                    </a>
                </li>

    </ul>
        <div id="nav-more-link" class="left-nav-general-link">
            <a class="left-nav-general-link__link">
                <i class="icon-theme-move-down"></i>
                <span class="left-nav-general-link__title">22 more sports</span>
            </a>
        </div>
        <ul id="nav-more-list" class="sports-links sports-links--all-sports" data-morelinktext="22 more sports" data-lesslinktext="Hide additional sports">
                <li id="nav-sport-9" class="sports-links__item">
                    <a href="/en/sports/9/betting/alpine-skiing" class="sports-links__link sports-links__link--all-sports" title="4 Alpine Skiing bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -171px -0px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Alpine Skiing</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-11" class="sports-links__item">
                    <a href="/en/sports/11/betting/american-football" class="sports-links__link sports-links__link--all-sports" title="134 American Football bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -19px -19px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">American Football</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-17" class="sports-links__item">
                    <a href="/en/sports/17/betting/athletics" class="sports-links__link sports-links__link--all-sports" title="10 Athletics bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -133px -19px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Athletics</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-36" class="sports-links__item">
                    <a href="/en/sports/36/betting/aussie-rules" class="sports-links__link sports-links__link--all-sports" title="18 Aussie Rules bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -114px -57px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Aussie Rules</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-44" class="sports-links__item">
                    <a href="/en/sports/44/betting/badminton" class="sports-links__link sports-links__link--all-sports" title="38 Badminton bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -76px -76px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Badminton</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-27" class="sports-links__item">
                    <a href="/en/sports/27/betting/bandy" class="sports-links__link sports-links__link--all-sports" title="1 Bandy bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -133px -38px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Bandy</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-64" class="sports-links__item">
                    <a href="/en/sports/64/betting/biathlon" class="sports-links__link sports-links__link--all-sports" title="4 Biathlon bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -76px -114px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Biathlon</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-67" class="sports-links__item">
                    <a href="/en/sports/67/betting/chess" class="sports-links__link sports-links__link--all-sports" title="9 Chess bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -133px -114px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Chess</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-45" class="sports-links__item">
                    <a href="/en/sports/45/betting/combat-sports" class="sports-links__link sports-links__link--all-sports" title="6 Combat sports bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -95px -76px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Combat sports</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-22" class="sports-links__item">
                    <a href="/en/sports/22/betting/cricket" class="sports-links__link sports-links__link--all-sports" title="110 Cricket bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -38px -38px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Cricket</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-94" class="sports-links__item">
                    <a href="/en/sports/94/betting/cross-country-skiing" class="sports-links__link sports-links__link--all-sports" title="6 Cross Country Skiing bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -76px -171px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Cross Country Skiing</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-60" class="sports-links__item">
                    <a href="/en/sports/60/betting/entertainment" class="sports-links__link sports-links__link--all-sports" title="32 Entertainment bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -0px -114px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Entertainment</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-28" class="sports-links__item">
                    <a href="/en/sports/28/betting/floorball" class="sports-links__link sports-links__link--all-sports" title="3 Floorball bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -152px -38px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Floorball</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-48" class="sports-links__item">
                    <a href="/en/sports/48/betting/gaelic-sports" class="sports-links__link sports-links__link--all-sports" title="1 Gaelic Sports bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -152px -76px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Gaelic Sports</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-12" class="sports-links__item">
                    <a href="/en/sports/12/betting/ice-hockey" class="sports-links__link sports-links__link--all-sports" title="20 Ice Hockey bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -38px -19px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Ice Hockey</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-96" class="sports-links__item">
                    <a href="/en/sports/96/betting/nordic-combined-" class="sports-links__link sports-links__link--all-sports" title="1 Nordic Combined  bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -114px -171px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Nordic Combined </span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-61" class="sports-links__item">
                    <a href="/en/sports/61/betting/politics" class="sports-links__link sports-links__link--all-sports" title="16 Politics bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -19px -114px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Politics</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-43" class="sports-links__item">
                    <a href="/en/sports/43/betting/rally" class="sports-links__link sports-links__link--all-sports" title="1 Rally bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -57px -76px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Rally</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-25" class="sports-links__item">
                    <a href="/en/sports/25/betting/specials" class="sports-links__link sports-links__link--all-sports" title="1 Specials bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -95px -38px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Specials</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-56" class="sports-links__item">
                    <a href="/en/sports/56/betting/table-tennis" class="sports-links__link sports-links__link--all-sports" title="8 Table Tennis bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -114px -95px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Table Tennis</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-26" class="sports-links__item">
                    <a href="/en/sports/26/betting/the-olympics-specials" class="sports-links__link sports-links__link--all-sports" title="4 The Olympics - Specials bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -114px -38px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">The Olympics - Specials</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
                <li id="nav-sport-52" class="sports-links__item">
                    <a href="/en/sports/52/betting/water-polo" class="sports-links__link sports-links__link--all-sports" title="50 Water Polo bets">
                        <span class="sports-links__icon">	<span class="sporticon " style="background-position: -38px -95px; ">&nbsp;</span>
</span>
                        <span class="sports-links__name">Water Polo</span>
                    </a>
                    <hr class="sports-links__divider"/>
                </li>
        </ul>
</div></div>
        </div>

<div class="ui-widget-content content-menu" id="betservices"><div class="ui-widget-header toggle collapsible">        <h2>Bet services</h2>
</div><div class="ui-widget-content-body ">        <ul>
	<li><a data-popup-params="hotkeys=no, resizable=no, toolbar=yes, status=yes, dependent=yes, scrollbars=1, width=1024, height=768" href="https://ls.sir.sportradar.com/sportingbet/en" rel="popup" title="Stay on the ball with the latest results live!">Livescore</a>
	</li>
	<li><a data-popup-params="hotkeys=no, resizable=yes, toolbar=yes, status=yes, dependent=yes, scrollbars=1, width=1200, height=875" href="https://s5.sir.sportradar.com/sportingbet/en" rel="popup" title="Get background info with our statistics!">Statistics</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/results" title="Check the results of previous events.">Results</a>
	</li>
        </ul>
</div></div>
    </div>

                    

















<div id="loading-overlay" data-lb-loading="">
    <div><div></div></div>
</div>

<div class="center ">
    <div id="bet-offer" class="bet-offer">
        


    
		<ol id="breadcrumbsList" itemscope itemtype="http://schema.org/BreadcrumbList" class="disabled">
				<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
					<a itemprop="item" href="https://my.sportingbet.com/en" class="">
						<span itemprop="name" style="text-transform:capitalize;">Home</span>
					</a>
					<meta itemprop="position" content="0" />
				</li>
				<li itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
					<a itemprop="item" href="https://sports.sportingbet.com/en/sports" class="last-breadcrumbs-item">
						<span itemprop="name" style="text-transform:capitalize;">Sports Betting</span>
					</a>
					<meta itemprop="position" content="1" />
				</li>
		</ol>
<div class="ui-widget-content livewidget__widget--hidden rounded" id="livewidget__widget"><div class="ui-widget-header toggle collapsible livewidget__widget-header">			<h2><span>Live</span> Highlights</h2>
</div><div class="ui-widget-content-body ">			<div id="livewidget-container" data-live-leagues=""></div>
</div></div>
<div class="highlights-home highlights-widget ui-widget-content" id="highlights-topbets"><div class="highlights-home highlights-widget ui-widget-header"><h3>Top Bets</h3></div><div class="highlights-home highlights-widget ui-widget-content-body">		<div id="hl-tabs-container" class="top-bets-tabs-container ui-tabs">



			
		<ul class="pm-tabs-nav ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-corner-all rounded-top">

				<li class="ui-state-default ui-corner-top pm-tab pm-tab-first  ui-tabs-active ui-state-active  pm-tab--top-bets" title="Football">
					<a href="#TopBets4Panel" class="ui-tabs-anchor ui-tabs-anchor--top-bets">
						<span class="tab-title tab-title--top-bets">
							<span class="tab__icon">

	<span class="sporticon sporticon--top-bets" style="background-position: -76px -0px; ">&nbsp;</span>

</span>
							<span>Football</span>
						</span>
					</a>
				</li>
				<li class="ui-state-default ui-corner-top pm-tab pm-tabs-after-active  pm-tab--top-bets" title="Tennis">
					<a href="#TopBets5Panel" class="ui-tabs-anchor ui-tabs-anchor--top-bets">
						<span class="tab-title tab-title--top-bets">
							<span class="tab__icon">

	<span class="sporticon sporticon--top-bets" style="background-position: -95px -0px; ">&nbsp;</span>

</span>
							<span>Tennis</span>
						</span>
					</a>
				</li>
				<li class="ui-state-default ui-corner-top pm-tab pm-tab--top-bets" title="Basketball">
					<a href="#TopBets7Panel" class="ui-tabs-anchor ui-tabs-anchor--top-bets">
						<span class="tab-title tab-title--top-bets">
							<span class="tab__icon">

	<span class="sporticon sporticon--top-bets" style="background-position: -133px -0px; ">&nbsp;</span>

</span>
							<span>Basketball</span>
						</span>
					</a>
				</li>
				<li class="ui-state-default ui-corner-top pm-tab pm-tab--top-bets" title="Ice Hockey">
					<a href="#TopBets12Panel" class="ui-tabs-anchor ui-tabs-anchor--top-bets">
						<span class="tab-title tab-title--top-bets">
							<span class="tab__icon">

	<span class="sporticon sporticon--top-bets" style="background-position: -38px -19px; ">&nbsp;</span>

</span>
							<span>Ice Hockey</span>
						</span>
					</a>
				</li>
				<li class="ui-state-default ui-corner-top pm-tab pm-tab-last pm-tab--top-bets" title="Volleyball">
					<a href="#TopBets18Panel" class="ui-tabs-anchor ui-tabs-anchor--top-bets">
						<span class="tab-title tab-title--top-bets">
							<span class="tab__icon">

	<span class="sporticon sporticon--top-bets" style="background-position: -152px -19px; ">&nbsp;</span>

</span>
							<span>Volleyball</span>
						</span>
					</a>
				</li>
		</ul>



				<div id="TopBets4Panel" class="highlights-topbets-panel topbets-tab-content" style="">
					        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">01:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="106 further bets"
				   href="/en/sports/events/4/5545/8825489/betting/s%c3%a3o-paulo-chapecoense"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>106</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/17789004" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--3-way">




		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/5545/8825489/382500917/1140841023" title="Brazil - Serie A" data-action="/en/betslip/betslipv2/add?optionId=4%2F5545%2F8825489%2F382500917%2F1140841023&amp;odds=1.5&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|S&#227;o Paulo"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">S&#227;o Paulo</div>
					<div class="mb-option-button__option-odds ">1.50</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way-draw" data-option="4/5545/8825489/382500917/1140841024" title="Brazil - Serie A" data-action="/en/betslip/betslipv2/add?optionId=4%2F5545%2F8825489%2F382500917%2F1140841024&amp;odds=4.0&amp;source=SportsbookMain%2fTopBets">
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">X</div>
					<div class="mb-option-button__option-odds ">4.00</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/5545/8825489/382500917/1140841025" title="Brazil - Serie A" data-action="/en/betslip/betslipv2/add?optionId=4%2F5545%2F8825489%2F382500917%2F1140841025&amp;odds=6.0&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|Chapecoense"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Chapecoense</div>
					<div class="mb-option-button__option-odds ">6.00</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">17:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="106 further bets"
				   href="/en/sports/events/4/18273/8841913/betting/ararat-armenia-lincoln-red-imps"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>106</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18808482" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--3-way">




		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/18273/8841913/383786384/1144487275" title="Europe - UEFA Europa League Qualifiers" data-action="/en/betslip/betslipv2/add?optionId=4%2F18273%2F8841913%2F383786384%2F1144487275&amp;odds=1.18&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|Ararat-Armenia"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Ararat-Armenia</div>
					<div class="mb-option-button__option-odds ">1.18</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way-draw" data-option="4/18273/8841913/383786384/1144487276" title="Europe - UEFA Europa League Qualifiers" data-action="/en/betslip/betslipv2/add?optionId=4%2F18273%2F8841913%2F383786384%2F1144487276&amp;odds=6.0&amp;source=SportsbookMain%2fTopBets">
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">X</div>
					<div class="mb-option-button__option-odds ">6.00</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/18273/8841913/383786384/1144487277" title="Europe - UEFA Europa League Qualifiers" data-action="/en/betslip/betslipv2/add?optionId=4%2F18273%2F8841913%2F383786384%2F1144487277&amp;odds=12.0&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|Lincoln Red Imps"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-5">Lincoln Red Imps</div>
					<div class="mb-option-button__option-odds ">12.00</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">18:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="106 further bets"
				   href="/en/sports/events/4/18273/8841915/betting/kf-shkendija-f91-dudelange"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>106</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18808322" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--3-way">




		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/18273/8841915/383786607/1144487985" title="Europe - UEFA Europa League Qualifiers" data-action="/en/betslip/betslipv2/add?optionId=4%2F18273%2F8841915%2F383786607%2F1144487985&amp;odds=1.62&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|KF Shkendija"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">KF Shkendija</div>
					<div class="mb-option-button__option-odds ">1.62</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way-draw" data-option="4/18273/8841915/383786607/1144487986" title="Europe - UEFA Europa League Qualifiers" data-action="/en/betslip/betslipv2/add?optionId=4%2F18273%2F8841915%2F383786607%2F1144487986&amp;odds=3.7&amp;source=SportsbookMain%2fTopBets">
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">X</div>
					<div class="mb-option-button__option-odds ">3.70</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/18273/8841915/383786607/1144487987" title="Europe - UEFA Europa League Qualifiers" data-action="/en/betslip/betslipv2/add?optionId=4%2F18273%2F8841915%2F383786607%2F1144487987&amp;odds=4.75&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|F91 Dudelange"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">F91 Dudelange</div>
					<div class="mb-option-button__option-odds ">4.75</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">19:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="106 further bets"
				   href="/en/sports/events/4/1899/8838777/betting/fc-viktoria-plzen-olympiakos-piraeus"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>106</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18481842" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--3-way">




		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/1899/8838777/383484740/1143659470" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838777%2F383484740%2F1143659470&amp;odds=2.5&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|FC Viktoria Plzen"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">FC Viktoria Plzen</div>
					<div class="mb-option-button__option-odds ">2.50</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way-draw" data-option="4/1899/8838777/383484740/1143659471" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838777%2F383484740%2F1143659471&amp;odds=3.1&amp;source=SportsbookMain%2fTopBets">
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">X</div>
					<div class="mb-option-button__option-odds ">3.10</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/1899/8838777/383484740/1143659472" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838777%2F383484740%2F1143659472&amp;odds=2.85&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|Olympiakos Piraeus"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Olympiakos Piraeus</div>
					<div class="mb-option-button__option-odds ">2.85</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">20:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="106 further bets"
				   href="/en/sports/events/4/1899/8838779/betting/psv-eindhoven-fc-basel"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>106</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18481846" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--3-way">




		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/1899/8838779/383484851/1143659826" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838779%2F383484851%2F1143659826&amp;odds=1.5&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|PSV Eindhoven"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">PSV Eindhoven</div>
					<div class="mb-option-button__option-odds ">1.50</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way-draw" data-option="4/1899/8838779/383484851/1143659827" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838779%2F383484851%2F1143659827&amp;odds=4.20&amp;source=SportsbookMain%2fTopBets">
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">X</div>
					<div class="mb-option-button__option-odds ">4.20</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/1899/8838779/383484851/1143659828" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838779%2F383484851%2F1143659828&amp;odds=6.0&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|FC Basel"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">FC Basel</div>
					<div class="mb-option-button__option-odds ">6.00</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">20:15</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="106 further bets"
				   href="/en/sports/events/4/1899/8838702/betting/sutjeska-apoel"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>106</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18808230" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--3-way">




		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/1899/8838702/383480594/1143645378" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838702%2F383480594%2F1143645378&amp;odds=6.0&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|Sutjeska"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Sutjeska</div>
					<div class="mb-option-button__option-odds ">6.00</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way-draw" data-option="4/1899/8838702/383480594/1143645379" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838702%2F383480594%2F1143645379&amp;odds=4.0&amp;source=SportsbookMain%2fTopBets">
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">X</div>
					<div class="mb-option-button__option-odds ">4.00</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way" data-option="4/1899/8838702/383480594/1143645380" title="Europe - Champions League - Qualification" data-action="/en/betslip/betslipv2/add?optionId=4%2F1899%2F8838702%2F383480594%2F1143645380&amp;odds=1.53&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="4|APOEL"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">APOEL</div>
					<div class="mb-option-button__option-odds ">1.53</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>


<div class="marketboard-widget-leagues-footer">

</div>

				</div>
				<div id="TopBets5Panel" class="highlights-topbets-panel topbets-tab-content" style="display:none">
					        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">08:45</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets mb-event-details-buttons__button--fixed">
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852886/384675384/1146946662" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852886%2F384675384%2F1146946662&amp;odds=4.75&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Rutuja Bhosale (IND)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Rutuja Bhosale (IND)</div>
					<div class="mb-option-button__option-odds ">4.75</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852886/384675384/1146946663" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852886%2F384675384%2F1146946663&amp;odds=1.13&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Yuki Naito (JPN)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Yuki Naito (JPN)</div>
					<div class="mb-option-button__option-odds ">1.13</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">08:45</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets mb-event-details-buttons__button--fixed">
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852887/384675387/1146946670" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852887%2F384675387%2F1146946670&amp;odds=1.26&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Aldila Sutjiadi (INA)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Aldila Sutjiadi (INA)</div>
					<div class="mb-option-button__option-odds ">1.26</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852887/384675387/1146946671" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852887%2F384675387%2F1146946671&amp;odds=3.25&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Mai Minokoshi (JPN)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Mai Minokoshi (JPN)</div>
					<div class="mb-option-button__option-odds ">3.25</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">08:45</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets mb-event-details-buttons__button--fixed">
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852885/384675381/1146946654" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852885%2F384675381%2F1146946654&amp;odds=1.22&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Jia-Jing Lu (CHN)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Jia-Jing Lu (CHN)</div>
					<div class="mb-option-button__option-odds ">1.22</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852885/384675381/1146946655" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852885%2F384675381%2F1146946655&amp;odds=3.60&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Nudnida Luangnam (THA)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Nudnida Luangnam (THA)</div>
					<div class="mb-option-button__option-odds ">3.60</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">10:45</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets mb-event-details-buttons__button--fixed">
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852888/384675390/1146946678" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852888%2F384675390%2F1146946678&amp;odds=5.75&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Kamonwan Buayam (THA)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Kamonwan Buayam (THA)</div>
					<div class="mb-option-button__option-odds ">5.75</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852888/384675390/1146946679" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852888%2F384675390%2F1146946679&amp;odds=1.08&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Fang Ying Xun (CHN)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Fang Ying Xun (CHN)</div>
					<div class="mb-option-button__option-odds ">1.08</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">10:45</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets mb-event-details-buttons__button--fixed">
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852889/384675393/1146946686" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852889%2F384675393%2F1146946686&amp;odds=2.75&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Gozal Ainitdinova (KAZ)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Gozal Ainitdinova (KAZ)</div>
					<div class="mb-option-button__option-odds ">2.75</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/55221/8852889/384675393/1146946687" title="World - ITF Women - Nonthaburi (THA) - Hard" data-action="/en/betslip/betslipv2/add?optionId=5%2F55221%2F8852889%2F384675393%2F1146946687&amp;odds=1.36&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Lou Brouleau (FRA)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Lou Brouleau (FRA)</div>
					<div class="mb-option-button__option-odds ">1.36</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">15:15</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets mb-event-details-buttons__button--fixed">
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18830270" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/24017/8847428/384224744/1145695934" title="World - ATP Challenger Tampere (FIN) - Clay" data-action="/en/betslip/betslipv2/add?optionId=5%2F24017%2F8847428%2F384224744%2F1145695934&amp;odds=2.15&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Ivan Nedelko (RUS)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Ivan Nedelko (RUS)</div>
					<div class="mb-option-button__option-odds ">2.15</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="5/24017/8847428/384224744/1145695935" title="World - ATP Challenger Tampere (FIN) - Clay" data-action="/en/betslip/betslipv2/add?optionId=5%2F24017%2F8847428%2F384224744%2F1145695935&amp;odds=1.60&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="5|Harri Heliovaara (FIN)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Harri Heliovaara (FIN)</div>
					<div class="mb-option-button__option-odds ">1.60</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>


<div class="marketboard-widget-leagues-footer">

</div>

				</div>
				<div id="TopBets7Panel" class="highlights-topbets-panel topbets-tab-content" style="display:none">
					        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">00:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="4 further bets"
				   href="/en/sports/events/7/55987/8847304/betting/paulistano-(u19)-sao-jose-desportivo-(u19)"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>4</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/55987/8847304/384211819/1145660899" title="Brazil - Campeonato Paulista (U19)" data-action="/en/betslip/betslipv2/add?optionId=7%2F55987%2F8847304%2F384211819%2F1145660899&amp;odds=3.60&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Paulistano (U19)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Paulistano (U19)</div>
					<div class="mb-option-button__option-odds ">3.60</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/55987/8847304/384211819/1145660900" title="Brazil - Campeonato Paulista (U19)" data-action="/en/betslip/betslipv2/add?optionId=7%2F55987%2F8847304%2F384211819%2F1145660900&amp;odds=1.25&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Sao Jose Desportivo (U19)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Sao Jose Desportivo (U19)</div>
					<div class="mb-option-button__option-odds ">1.25</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">01:15</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="4 further bets"
				   href="/en/sports/events/7/60183/8847323/betting/tabare-danubio"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>4</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18820884" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/60183/8847323/384213109/1145664633" title="Uruguay - Liga Metro" data-action="/en/betslip/betslipv2/add?optionId=7%2F60183%2F8847323%2F384213109%2F1145664633&amp;odds=1.95&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Tabare"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Tabare</div>
					<div class="mb-option-button__option-odds ">1.95</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/60183/8847323/384213109/1145664634" title="Uruguay - Liga Metro" data-action="/en/betslip/betslipv2/add?optionId=7%2F60183%2F8847323%2F384213109%2F1145664634&amp;odds=1.75&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Danubio"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Danubio</div>
					<div class="mb-option-button__option-odds ">1.75</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">01:30</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="4 further bets"
				   href="/en/sports/events/7/60183/8847325/betting/union-atletica-25-de-agosto"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>4</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18820888" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/60183/8847325/384213112/1145664639" title="Uruguay - Liga Metro" data-action="/en/betslip/betslipv2/add?optionId=7%2F60183%2F8847325%2F384213112%2F1145664639&amp;odds=1.42&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Union Atletica"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Union Atletica</div>
					<div class="mb-option-button__option-odds ">1.42</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/60183/8847325/384213112/1145664640" title="Uruguay - Liga Metro" data-action="/en/betslip/betslipv2/add?optionId=7%2F60183%2F8847325%2F384213112%2F1145664640&amp;odds=2.65&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|25 de Agosto"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">25 de Agosto</div>
					<div class="mb-option-button__option-odds ">2.65</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">01:30</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="4 further bets"
				   href="/en/sports/events/7/60183/8847324/betting/stockolmo-welcome"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>4</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18820898" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/60183/8847324/384213111/1145664637" title="Uruguay - Liga Metro" data-action="/en/betslip/betslipv2/add?optionId=7%2F60183%2F8847324%2F384213111%2F1145664637&amp;odds=1.25&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Stockolmo"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Stockolmo</div>
					<div class="mb-option-button__option-odds ">1.25</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/60183/8847324/384213111/1145664638" title="Uruguay - Liga Metro" data-action="/en/betslip/betslipv2/add?optionId=7%2F60183%2F8847324%2F384213111%2F1145664638&amp;odds=3.60&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Welcome"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Welcome</div>
					<div class="mb-option-button__option-odds ">3.60</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">03:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="4 further bets"
				   href="/en/sports/events/7/61017/8849830/betting/penarol-quillacollo-universidad-autonoma-grm-santa-cruz"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>4</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18836662" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/61017/8849830/384476408/1146360967" title="Bolivia - Libobasquet - Men" data-action="/en/betslip/betslipv2/add?optionId=7%2F61017%2F8849830%2F384476408%2F1146360967&amp;odds=1.60&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Penarol Quillacollo"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Penarol Quillacollo</div>
					<div class="mb-option-button__option-odds ">1.60</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/61017/8849830/384476408/1146360968" title="Bolivia - Libobasquet - Men" data-action="/en/betslip/betslipv2/add?optionId=7%2F61017%2F8849830%2F384476408%2F1146360968&amp;odds=2.2&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Universidad Autonoma GRM Santa Cruz"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Universidad Autonoma GRM Santa Cruz</div>
					<div class="mb-option-button__option-odds ">2.20</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">14:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="4 further bets"
				   href="/en/sports/events/7/56230/8853127/betting/hochiminh-city-wings-hanoi-buffaloes"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>4</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/56230/8853127/384682128/1146966738" title="Vietnam - VBA" data-action="/en/betslip/betslipv2/add?optionId=7%2F56230%2F8853127%2F384682128%2F1146966738&amp;odds=1.25&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Hochiminh City Wings"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Hochiminh City Wings</div>
					<div class="mb-option-button__option-odds ">1.25</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="7/56230/8853127/384682128/1146966739" title="Vietnam - VBA" data-action="/en/betslip/betslipv2/add?optionId=7%2F56230%2F8853127%2F384682128%2F1146966739&amp;odds=3.60&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="7|Hanoi Buffaloes"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Hanoi Buffaloes</div>
					<div class="mb-option-button__option-odds ">3.60</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>


<div class="marketboard-widget-leagues-footer">

</div>

				</div>
				<div id="TopBets12Panel" class="highlights-topbets-panel topbets-tab-content" style="display:none">
					        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">09:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="5 further bets"
				   href="/en/sports/events/12/16634/8852368/betting/hc-saryarka-hc-nomad"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>5</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18818366" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--3-way">




		<td class="mb-option-button rounded mb-option-button--3-way" data-option="12/16634/8852368/384652867/1146881705" title="World - Club Friendlies" data-action="/en/betslip/betslipv2/add?optionId=12%2F16634%2F8852368%2F384652867%2F1146881705&amp;odds=1.75&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="12|HC Saryarka"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">HC Saryarka</div>
					<div class="mb-option-button__option-odds ">1.75</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way-draw" data-option="12/16634/8852368/384652867/1146881706" title="World - Club Friendlies" data-action="/en/betslip/betslipv2/add?optionId=12%2F16634%2F8852368%2F384652867%2F1146881706&amp;odds=4.00&amp;source=SportsbookMain%2fTopBets">
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">X</div>
					<div class="mb-option-button__option-odds ">4.00</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--3-way" data-option="12/16634/8852368/384652867/1146881707" title="World - Club Friendlies" data-action="/en/betslip/betslipv2/add?optionId=12%2F16634%2F8852368%2F384652867%2F1146881707&amp;odds=3.50&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="12|HC Nomad"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">HC Nomad</div>
					<div class="mb-option-button__option-odds ">3.50</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>


<div class="marketboard-widget-leagues-footer">

</div>

				</div>
				<div id="TopBets18Panel" class="highlights-topbets-panel topbets-tab-content" style="display:none">
					        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">00:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="3 further bets"
				   href="/en/sports/events/18/70146/8854787/betting/club-lomas-club-ciudad"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>3</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/70146/8854787/384767522/1147223360" title="Argentina - Division de Honor - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F70146%2F8854787%2F384767522%2F1147223360&amp;odds=1.48&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|Club Lomas"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Club Lomas</div>
					<div class="mb-option-button__option-odds ">1.48</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/70146/8854787/384767522/1147223361" title="Argentina - Division de Honor - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F70146%2F8854787%2F384767522%2F1147223361&amp;odds=2.5&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|Club Ciudad"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Club Ciudad</div>
					<div class="mb-option-button__option-odds ">2.50</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">02:00</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="3 further bets"
				   href="/en/sports/events/18/70146/8854788/betting/river-plate-ca-boca-juniors"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>3</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/70146/8854788/384767523/1147223362" title="Argentina - Division de Honor - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F70146%2F8854788%2F384767523%2F1147223362&amp;odds=1.65&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|River Plate"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">River Plate</div>
					<div class="mb-option-button__option-odds ">1.65</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/70146/8854788/384767523/1147223363" title="Argentina - Division de Honor - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F70146%2F8854788%2F384767523%2F1147223363&amp;odds=2.1&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|CA Boca Juniors"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">CA Boca Juniors</div>
					<div class="mb-option-button__option-odds ">2.10</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">02:30</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="3 further bets"
				   href="/en/sports/events/18/70146/8854789/betting/san-lorenzo-de-almagro-unlam"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>3</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics mb-event-details-buttons__button--fixed">
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/70146/8854789/384767524/1147223364" title="Argentina - Division de Honor - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F70146%2F8854789%2F384767524%2F1147223364&amp;odds=1.85&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|San Lorenzo de Almagro"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">San Lorenzo de Almagro</div>
					<div class="mb-option-button__option-odds ">1.85</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/70146/8854789/384767524/1147223365" title="Argentina - Division de Honor - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F70146%2F8854789%2F384767524%2F1147223365&amp;odds=1.85&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|UNLaM"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">UNLaM</div>
					<div class="mb-option-button__option-odds ">1.85</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">10:30</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="7 further bets"
				   href="/en/sports/events/18/35649/8851559/betting/russia-(u21)-brazil-(u21)"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>7</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18830654" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/35649/8851559/384604753/1146734174" title="World - U21 World Championships - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F35649%2F8851559%2F384604753%2F1146734174&amp;odds=1.22&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|Russia (U21)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Russia (U21)</div>
					<div class="mb-option-button__option-odds ">1.22</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/35649/8851559/384604753/1146734175" title="World - U21 World Championships - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F35649%2F8851559%2F384604753%2F1146734175&amp;odds=3.90&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|Brazil (U21)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Brazil (U21)</div>
					<div class="mb-option-button__option-odds ">3.90</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>
        <div class="marketboard-event-without-header">
            <div class="marketboard-event-without-header__market-time-and-date">
                <div class="marketboard-event-without-header__market-short-time">10:30</div>
                <div class="marketboard-event-without-header__market-short-date">23/07</div>
            </div>
            <div class="marketboard-event-without-header__detail-buttons">
                
	<div class="mb-event-details-buttons">
		<span class="mb-event-details-buttons__button mb-event-details-buttons__button--more-markets ">
				<a 
				   title="7 further bets"
				   href="/en/sports/events/18/35649/8851567/betting/czech-republic-(u21)-canada-(u21)"
				   class="mb-event-details-buttons__button-link">
					<span>+</span><span>7</span>
				</a>
		</span><span class="mb-event-details-buttons__button mb-event-details-buttons__button--statistics ">
			    <a 
				   title="Statistics"
				   href="https://s5.sir.sportradar.com/sportingbet/en/match/18830676" 
				   rel="popup" 
				   data-popup-params="width=1008, height=875, resizable=1, toolbar=0, status=1, scrollbars=1" 
				   target="statistics" 
				   class="mb-event-details-buttons__button-link">
					
<i class="icon-glyph_stats_filled"></i>
				</a>
		</span>
	</div>

            </div>
            <div class="marketboard-event-without-header__markets-container">
                <table class="marketboard-event-without-header__markets-list">
                    
		<tr class="marketboard-options-row marketboard-options-row--2-col">




		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/35649/8851567/384604761/1146734190" title="World - U21 World Championships - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F35649%2F8851567%2F384604761%2F1146734190&amp;odds=1.12&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|Czech Republic (U21)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Czech Republic (U21)</div>
					<div class="mb-option-button__option-odds ">1.12</div>
				</button>
		</td>



		<td class="mb-option-button rounded mb-option-button--2-col" data-option="18/35649/8851567/384604761/1146734191" title="World - U21 World Championships - Men" data-action="/en/betslip/betslipv2/add?optionId=18%2F35649%2F8851567%2F384604761%2F1146734191&amp;odds=5.25&amp;source=SportsbookMain%2fTopBets">
				<div class="mb-option-button__favourite">
					

<i class="icon-glyph_star favourite-icon " data-player="18|Canada (U21)"></i>
				</div>
				<button type="button" class="no-uniform mb-option-button__button mb-option-button__button--favourited">
					<div class="mb-option-button__option-name mb-option-button__option-name--odds-4">Canada (U21)</div>
					<div class="mb-option-button__option-odds ">5.25</div>
				</button>
		</td>

		</tr>

                </table>
            </div>
        </div>


<div class="marketboard-widget-leagues-footer">

</div>

				</div>
		</div>

	<script type="application/ld+json">
		[{"@context":"http://schema.org","@type":"SportsEvent","name":"São Paulo - Chapecoense","startDate":"2019-07-22T23:00:00","url":"https://sports.sportingbet.com/en/sports/events/4/5545/8825489/betting/s%c3%a3o-paulo-chapecoense","location":{"@type":"Place","name":"Serie A","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Ararat-Armenia - Lincoln Red Imps","startDate":"2019-07-23T15:00:00","url":"https://sports.sportingbet.com/en/sports/events/4/18273/8841913/betting/ararat-armenia-lincoln-red-imps","location":{"@type":"Place","name":"UEFA Europa League Qualifiers","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"KF Shkendija - F91 Dudelange","startDate":"2019-07-23T16:00:00","url":"https://sports.sportingbet.com/en/sports/events/4/18273/8841915/betting/kf-shkendija-f91-dudelange","location":{"@type":"Place","name":"UEFA Europa League Qualifiers","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"FC Viktoria Plzen - Olympiakos Piraeus","startDate":"2019-07-23T17:00:00","url":"https://sports.sportingbet.com/en/sports/events/4/1899/8838777/betting/fc-viktoria-plzen-olympiakos-piraeus","location":{"@type":"Place","name":"Champions League - Qualification","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"PSV Eindhoven - FC Basel","startDate":"2019-07-23T18:00:00","url":"https://sports.sportingbet.com/en/sports/events/4/1899/8838779/betting/psv-eindhoven-fc-basel","location":{"@type":"Place","name":"Champions League - Qualification","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Sutjeska - APOEL","startDate":"2019-07-23T18:15:00","url":"https://sports.sportingbet.com/en/sports/events/4/1899/8838702/betting/sutjeska-apoel","location":{"@type":"Place","name":"Champions League - Qualification","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Rutuja Bhosale (IND) - Yuki Naito (JPN)","startDate":"2019-07-23T06:45:00","url":"https://sports.sportingbet.com/en/sports/events/5/55221/8852886/betting/rutuja-bhosale-(ind)-yuki-naito-(jpn)","location":{"@type":"Place","name":"ITF Women - Nonthaburi (THA) - Hard","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Aldila Sutjiadi (INA) - Mai Minokoshi (JPN)","startDate":"2019-07-23T06:45:00","url":"https://sports.sportingbet.com/en/sports/events/5/55221/8852887/betting/aldila-sutjiadi-(ina)-mai-minokoshi-(jpn)","location":{"@type":"Place","name":"ITF Women - Nonthaburi (THA) - Hard","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Jia-Jing Lu (CHN) - Nudnida Luangnam (THA)","startDate":"2019-07-23T06:45:00","url":"https://sports.sportingbet.com/en/sports/events/5/55221/8852885/betting/jia-jing-lu-(chn)-nudnida-luangnam-(tha)","location":{"@type":"Place","name":"ITF Women - Nonthaburi (THA) - Hard","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Kamonwan Buayam (THA) - Fang Ying Xun (CHN)","startDate":"2019-07-23T08:45:00","url":"https://sports.sportingbet.com/en/sports/events/5/55221/8852888/betting/kamonwan-buayam-(tha)-fang-ying-xun-(chn)","location":{"@type":"Place","name":"ITF Women - Nonthaburi (THA) - Hard","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Gozal Ainitdinova (KAZ) - Lou Brouleau (FRA)","startDate":"2019-07-23T08:45:00","url":"https://sports.sportingbet.com/en/sports/events/5/55221/8852889/betting/gozal-ainitdinova-(kaz)-lou-brouleau-(fra)","location":{"@type":"Place","name":"ITF Women - Nonthaburi (THA) - Hard","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Ivan Nedelko (RUS) - Harri Heliovaara (FIN)","startDate":"2019-07-23T13:15:00","url":"https://sports.sportingbet.com/en/sports/events/5/24017/8847428/betting/ivan-nedelko-(rus)-harri-heliovaara-(fin)","location":{"@type":"Place","name":"ATP Challenger Tampere (FIN) - Clay","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Paulistano (U19) - Sao Jose Desportivo (U19)","startDate":"2019-07-22T22:00:00","url":"https://sports.sportingbet.com/en/sports/events/7/55987/8847304/betting/paulistano-(u19)-sao-jose-desportivo-(u19)","location":{"@type":"Place","name":"Campeonato Paulista (U19)","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Tabare - Danubio","startDate":"2019-07-22T23:15:00","url":"https://sports.sportingbet.com/en/sports/events/7/60183/8847323/betting/tabare-danubio","location":{"@type":"Place","name":"Liga Metro","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Union Atletica - 25 de Agosto","startDate":"2019-07-22T23:30:00","url":"https://sports.sportingbet.com/en/sports/events/7/60183/8847325/betting/union-atletica-25-de-agosto","location":{"@type":"Place","name":"Liga Metro","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Stockolmo - Welcome","startDate":"2019-07-22T23:30:00","url":"https://sports.sportingbet.com/en/sports/events/7/60183/8847324/betting/stockolmo-welcome","location":{"@type":"Place","name":"Liga Metro","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Penarol Quillacollo - Universidad Autonoma GRM Santa Cruz","startDate":"2019-07-23T01:00:00","url":"https://sports.sportingbet.com/en/sports/events/7/61017/8849830/betting/penarol-quillacollo-universidad-autonoma-grm-santa-cruz","location":{"@type":"Place","name":"Libobasquet - Men","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Hochiminh City Wings - Hanoi Buffaloes","startDate":"2019-07-23T12:00:00","url":"https://sports.sportingbet.com/en/sports/events/7/56230/8853127/betting/hochiminh-city-wings-hanoi-buffaloes","location":{"@type":"Place","name":"VBA","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"HC Saryarka - HC Nomad","startDate":"2019-07-23T07:00:00","url":"https://sports.sportingbet.com/en/sports/events/12/16634/8852368/betting/hc-saryarka-hc-nomad","location":{"@type":"Place","name":"Club Friendlies","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Club Lomas - Club Ciudad","startDate":"2019-07-22T22:00:00","url":"https://sports.sportingbet.com/en/sports/events/18/70146/8854787/betting/club-lomas-club-ciudad","location":{"@type":"Place","name":"Division de Honor - Men","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"River Plate - CA Boca Juniors","startDate":"2019-07-23T00:00:00","url":"https://sports.sportingbet.com/en/sports/events/18/70146/8854788/betting/river-plate-ca-boca-juniors","location":{"@type":"Place","name":"Division de Honor - Men","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"San Lorenzo de Almagro - UNLaM","startDate":"2019-07-23T00:30:00","url":"https://sports.sportingbet.com/en/sports/events/18/70146/8854789/betting/san-lorenzo-de-almagro-unlam","location":{"@type":"Place","name":"Division de Honor - Men","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Russia (U21) - Brazil (U21)","startDate":"2019-07-23T08:30:00","url":"https://sports.sportingbet.com/en/sports/events/18/35649/8851559/betting/russia-(u21)-brazil-(u21)","location":{"@type":"Place","name":"U21 World Championships - Men","address":{"@type":"PostalAddress","name":""}}},{"@context":"http://schema.org","@type":"SportsEvent","name":"Czech Republic (U21) - Canada (U21)","startDate":"2019-07-23T08:30:00","url":"https://sports.sportingbet.com/en/sports/events/18/35649/8851567/betting/czech-republic-(u21)-canada-(u21)","location":{"@type":"Place","name":"U21 World Championships - Men","address":{"@type":"PostalAddress","name":""}}}]
	</script>
</div></div><div class="ui-widget-content rounded" id="message-box"><div class="ui-widget-header toggle collapsible">        <h3>Sports Betting at Sportingbet</h3>
</div><div class="ui-widget-content-body "><p>SPORTS BETTING DONE THE RIGHT WAY</p>
<p>At Sportingbet, we offer you one of the world’s largest online sports betting platforms with over 90 different sports available to bet on, including <a href="https://sports.sportingbet.com/en/sports/4/betting/football">football</a>,<a href="https://sports.sportingbet.com/en/sports/5/betting/tennis"> tennis</a>, <a href="https://sports.sportingbet.com/en/sports/7/betting/basketball">basketball</a>, and every other major sport. You can choose between the wide variety of sports tournaments, leagues and matches that we give to you on a daily basis so you can put your sports knowledge to the test against our bookies. With top promotions, great betting odds and a constantly evolving portfolio of sports action to watch live and bet in-play – it is online betting done the right way! The absolute highlight for every sports fan in 2022 is, of course, the FIFA World Cup: be excited about joining in and doing your World Cup betting on Sportingbet!</p>
<p>YOUR FAVOURITE SPORTS, ALL THE TIME</p>
<p>Whatever sport is your major passion, we will have it covered. Whether you love the raw emotion of football, the rough and tumble of rugby union, the fast-paced action of Formula One, the hard-hits of American football, the drama of golf, the back-and-forth court action of basketball or the counter-strikes of MMA and boxing – it’s all here on Sportingbet. Your favourite sports, whenever you want to bet.</p>
</div></div>
<script>
    var success = false;
   
    if (success) {
        var messages = {
            text: ''
        }
        setTimeout(function() {
            $.bwin.personalbutton.removeMessages();
            $.bwin.personalbutton.addMessage(messages);
            var marketCountMsg = $("#flash");
            marketCountMsg.fadeIn(500)
                .delay(30000)
                .fadeOut(500);
        }, 5000);
    }
</script>
    

    </div>
</div>






                    
    
    <div class="right">
        <div id="freebet-container">

        </div>
<div id="miniMyBetsRoot" data-ng-cloak>
    <div id="bets" data-ng-controller="MyBetsController as mb">
        <input name="__RequestVerificationToken" type="hidden" value="8Z1KRkqaaFyl2u_NXquQiYx3lsWRqbnsc5S0felZ7d-BMNvDxZCFgF7m_gcgECk8Im7DOw2" />
        <nav data-lb-tab-container class="rounded-top">
            <a class="bets-help" href="https://service.sportingbet.com/en/sports-help/sports-betting/placing-a-bet" rel="popup" data-popup-params="resizable=1, toolbar=1, status=1, scrollbars=1, width=780, height=700" title="" target="_blank">
                <span class="theme-question"></span>
            </a>
            <lb-tabset class="lb-betslip-tabs">
                <lb-tab data-tab="mb.betsTabs.betslip" data-on-select="mb.onSelectBetsTab(tab, isUser)" data-can-select="mb.canSwitchTabs(tab)" class="betslip-tab">
                    <div>
                        <span title="{{::mb.betsTabs.betslip.title}}">{{::mb.betsTabs.betslip.title}}</span>
                    </div>
                </lb-tab>
                <lb-tab class="mybets-tab" data-tab="mb.betsTabs.myBets" data-on-select="mb.onSelectBetsTab(tab, isUser)" data-can-select="mb.canSwitchTabs(tab)" data-no-classes>
                    <div>
                        <div class="my-bets-header-container">
                            <div class="counter-container">
                                <div class="count-wrapper valign-r" title="{{mb.OpenBetsBadge.title}}" data-ng-show="mb.OpenBetsBadge.display">
                                    <span class="count" data-ng-class="{ 'badge-blink' : mb.OpenBetsBadge.notify }">{{mb.OpenBetsBadge.count | openBetsBadge}}</span>
                                </div>
                            </div>
                            <div class="title-container">
                                <span title="{{::mb.betsTabs.myBets.title}}">{{::mb.betsTabs.myBets.title}}</span>
                            </div>
                        </div>
                    </div>
                </lb-tab>
            </lb-tabset>
        </nav>
        <section id="tab-betslip" class="bets-tab-content rounded-bottom" data-ng-class="{'active': mb.betsTabs.betslip.active}">
            <div id="sports-betslip-container" data-refresh-action="/en/betslip/betslipv2/show">


<script id="betslip-configuration" type="application/json">
{"common":{"apiBasePath":"/en/betslip"},"taxation":{"isTaxationEnabledAndApplicable":false}}
</script>


<div id="betslip" class="betslip betslipv2 rounded-bottom ">
    <div id="betslip-options-state"
         class="betslip__options-state"
         data-columnsize="0.00"
         data-isinfreebetmode="false"
         data-option-ids=""
         data-odds-format="EU"
         data-minstake="0.50"
    >
    </div>
        <form action="/en/betslip/betslipv2" method="post" name="betslip-form" class="js-betslip-initial-view-form">
            <input name="__RequestVerificationToken" type="hidden" value="LgClYcLOpI9f5S2291-kne2Khdphl3LiIYSGB-ifxctVNi30HFoEmdxjPV4GMhp3TTQo8A2" />

            <div class="betslip-waiting-screen">
                <div id="waiting-screen" class="betslip-waiting-screen__loading-overlay">
                    <div class="betslip-waiting-screen__loading-indicator">
                        <div class="spinner alt-spinner"></div>
                    </div>
                </div>

<div id="betslip" class="betslip betslip--empty rounded-bottom">
    <div id="betslip-options-state" class="betslip__options-state"></div>
    <div class="betslip__message">
        No bet has been selected.
    </div>
    <div class="betslip__message">
        To select a bet, please click on the respective result.
    </div>
</div>
            </div>
        </form>
</div>

</div>

        </section>
        <section id="tab-mybets" class="bets-tab-content rounded-bottom" data-ng-class="{'active': mb.betsTabs.myBets.active}">
            
<div class="mini-my-bets ui-widget-content" data-lb-early-payout-popup="">

        <div class="messagePanel">
            <div class="summaries witherrors" id="summary-panel">
                <div class="validation-summary-errors">
                    <ul>
                        <li><span class="icon Error error-icon-GeneralError">&nbsp;</span><span ng-bind-html="mb.messages['MyBetsView.ErrorMessage.notLoggedIn'].replace('{0}', mb.registrationLink)"></span></li>
                    </ul>
                </div>
            </div>
        </div>
</div>











        </section>
    </div>
</div>


        <div id="bestseller-container">

        </div>
        <div id="sports-live-teaser-container">

<div class="live-teaser-container ui-widget-content rounded-top" id="live-teaser-widget">
    <div class="live-teaser-container__header ui-widget-header">
        <h3 class="live-teaser-container__header live-teaser-container__header--h3">
            Live calendar
        </h3>
    </div>
    <div class="live-teaser-container__body">
        <div id="live-teaser" class="no-js rounded-bottom"
             data-feed="https://bettingapi.sportingbet.com/V3/LiveOffer.svc/?x-bwin-accessId=ODRlYzlhOWUtOTU5ZC00YTEwLWFhZGQtNzgwNDlkZmQzNTQ5&lang=en-GB&userCountryId=&ipCountryId=&maxItems=5&minVideoItems=2&orderType=IntervalWithBestsellerFallback"
             data-calendar-feed="/en/sports/calendarfeed"
             data-score-board-url="https://livebetting.sportingbet.com/en/live?trid=in10299#/{0}"
             data-event-url="https://livebetting.sportingbet.com/en/live?trid=in10300#/{0}"
             data-video-url="https://livebetting.sportingbet.com/en/live?trid=in10301#/{0}"
             data-calendar-url="https://livebetting.sportingbet.com/en/live?trid=in10298#/calendar"
             data-utc-offset="120"
             data-culture-name="en-GB"
             data-start-time="Start time"
             data-now="Now"
             data-video="Video"
             data-calendar="Calendar"
             data-days-list="Sunday;Monday;Tuesday;Wednesday;Thursday;Friday;Saturday;"
             data-starts-in="Starts in {0} min"
             data-minutes="min"
             data-live-events="Show all live events ({0})"
             data-max-calendar-events="5">
            <ul class="live-teaser-container__tabs-header">
                <li class="live-teaser-container__tab live-teaser-container__tab--liveTab"><a class="live-teaser-container__tab-link" href="#live-events-panel">Now</a><span class="live-teaser-container__liveTab"></span></li>
                <li class="live-teaser-container__tab live-teaser-container__tab--videoTab"><a class="live-teaser-container__tab-link" href="#video-events-panel">Video</a></li>
                <li class="live-teaser-container__tab live-teaser-container__tab--calendarTab"><a class="live-teaser-container__tab-link" href="#calendar-events-panel">Calendar</a></li>
                <li><a class="live-teaser-container__link" href="#fallback-panel" class="ui-tabs-hide"></a></li>
            </ul>
            <div id="live-events-panel" class="live-teaser-container__panel live-teaser-container__live-events-panel">
                <div class="live-teaser-container__score-board"></div>
                <ul class="live-teaser-container__live-events" data-template="live-teaser-events-list"></ul>
                <div class="live-teaser-container__footer">
                    <a class="live-teaser-container__link" href="https://livebetting.sportingbet.com/en/live?trid=in10297" id="live-events-link">
                        Show all live events ({0})<span class="live-teaser-container__icon icon-glyph_right"></span>
                    </a>
                </div>
            </div>
            <div id="calendar-events-panel" class="live-teaser-container__calendar-events-panel">
                <ul class="live-teaser-container__calendar-events" data-template="calendar-events-list"></ul>
                <a class="live-teaser-container__calendar-events-more-link" href="https://livebetting.sportingbet.com/en/live?trid=in10298#/calendar" title="Events">
                    <span class="live-teaser-container__calendar-events-more-link-text">
                        More events
                    </span>
                    <span class="live-teaser-container__icon live-teaser-container__calendar-events-more-link-icon icon-glyph_right"></span>
                </a>
            </div>
            <div id="fallback-panel" class="live-teaser-container__fallback">
                <h4 class="live-teaser-container__fallback-h4">Bet live now, 24 hours a day, 7 days a week!</h4>
                <span class="live-teaser-container__fallback-span">
                    <a class="live-teaser-container__link btn-s3" href="https://livebetting.sportingbet.com/en/live?trid=in10297">Bet live now!</a>
                </span>
            </div>
            <noscript>
                <div class="live-teaser-container__fallback">
                    <h4 class="live-teaser-container__fallback-h4">Bet live now, 24 hours a day, 7 days a week!</h4>
                    <span class="live-teaser-container__fallback-span">
                        <a class="live-teaser-container__link btn-s3" href="https://livebetting.sportingbet.com/en/live?trid=in10297">Bet live now!</a>
                    </span>
                </div>
            </noscript>
        </div>
    </div>
</div>
<!-- scoreboard templates -->
<script type="text/javascript">
    var liveTeaserModule = (function () {
        var largeSize = 470;
        var largestSize = 800;
        var teaser = document.getElementById('live-teaser');
        var getTeaserModifierClass = function () {
            var width = parseInt(teaser.offsetWidth, 10);
            return width < largeSize
                ? '--small'
                : width > largestSize
                ? '--largest'
                : '--large';
        };

        return {
            widgetSizeModifer: getTeaserModifierClass()
        }
    }(liveTeaserModule || {}));
</script>
<script id='empty' type='text/html'><span></span></script>
<script id="pairgame" type="text/x-jquery-tmpl">
    {{tmpl "#scoreboard-header"}}
    <table class="score-board-pairgame score-board-pairgame${liveTeaserModule.widgetSizeModifer}">
        <tr class="score-board-pairgame__block">
            <td class="score-board-pairgame__player1 score-board-pairgame__player1${liveTeaserModule.widgetSizeModifer}">${participants[0]}</td>
            <td class="score-board-pairgame__score score-board-pairgame__score${liveTeaserModule.widgetSizeModifer}">
                {{if state === 'NotStarted'}}
                -:-
                {{else state != "NotStarted"}}
                ${score.p1}:${score.p2}
                {{/if}}
            </td>
            <td class="score-board-pairgame__player2 score-board-pairgame__player2${liveTeaserModule.widgetSizeModifer}">${participants[1]}</td>
        </tr>
    </table>
    <div class="score-board-footer score-board-footer${liveTeaserModule.widgetSizeModifer}">
        <div class="score-board-footer__div score-board-footer__div${liveTeaserModule.widgetSizeModifer}">
            {{if state === 'NotStarted'}}
            {{tmpl "#start-time-tmpl"}}
            {{else}}
            <span class="score-board-footer__span {{if state === "Penalty"}} score-board-footer__span--highlight{{/if}}">${period}</span>
            {{if customTimer}}
            <span class="score-board-footer__span">${customTimer}</span>
            {{else state == "Started" || state == "ExtraTime"}}
            <span class="score-board-footer__span score-board-footer-minutes-timer">${minutesTimerString}</span>
            {{/if}}
            {{/if}}
        </div>
    </div>
</script>
<script id="pairgame-compact" type="text/x-jquery-tmpl">
    {{tmpl "#scoreboard-header-compact"}}
    <table class="score-board-pairgame-compact score-board-pairgame-compact${liveTeaserModule.widgetSizeModifer}">
        <tr class="score-board-pairgame-compact__block">
            <td class="score-board-pairgame-compact__player1 score-board-pairgame-compact__player1${liveTeaserModule.widgetSizeModifer}">${participants[0]}</td>
            <td class="score-board-pairgame-compact__score score-board-pairgame-compact__score${liveTeaserModule.widgetSizeModifer}">
                {{if state === 'NotStarted'}}
                -:-
                {{else state != "NotStarted"}}
                ${score.p1}:${score.p2}
                {{/if}}
            </td>
            <td class="score-board-pairgame-compact__player2 score-board-pairgame-compact__player2${liveTeaserModule.widgetSizeModifer}">${participants[1]}</td>
        </tr>
    </table>
    <div class="score-board-footer-compact score-board-footer-compact${liveTeaserModule.widgetSizeModifer}">
        <div class="score-board-footer-compact__div score-board-footer-compact__div${liveTeaserModule.widgetSizeModifer} {{if state === "Penalty"}} score-board-footer-compact__div--highlight {{/if}}">${period}</div>
        {{if state === 'NotStarted'}}
        <div class="score-board-footer-compact__div score-board-footer-compact__div${liveTeaserModule.widgetSizeModifer}">{{tmpl "#start-time-tmpl"}}</div>
        {{else}}
        {{if customTimer}}
        <div class="score-board-footer-compact__div score-board-footer-compact__div${liveTeaserModule.widgetSizeModifer}">${customTimer}</div>
        {{else state == "Started" || state == "ExtraTime"}}
        <div class="score-board-footer-compact__div score-board-footer-compact__div${liveTeaserModule.widgetSizeModifer} score-board-footer-minutes-timer">${minutesTimerString}</div>
        {{/if}}
        {{/if}}
    </div>
</script>
<script id="setgame" type="text/x-jquery-tmpl">
    {{tmpl "#scoreboard-header"}}
    <div>
        ${participants[0]}<br>
        ${participants[1]}
    </div>
    {{if state == 'Started'}}
    <table class="score-board-setgame score-board-setgame${liveTeaserModule.widgetSizeModifer}">
        <tr class="score-board-setgame__block">{{tmpl(score, {val: 'setNames', class:'score-board-setgame__cell',prop:'score-board-setgame__cell--header'}) "#set-row"}}</tr>
        <tr class="score-board-setgame__block">{{tmpl(score, {val: 'p1', row: 1, id: sport.id, class:'score-board-setgame__cell'}) "#set-row"}}</tr>
        <tr class="score-board-setgame__block">{{tmpl(score, {val: 'p2', row: 2, id: sport.id, class:'score-board-setgame__cell'}) "#set-row"}}</tr>
    </table>
    {{else}}
    <div class="score-board-footer score-board-footer${liveTeaserModule.widgetSizeModifer}">
        <div class="score-board-footer__div score-board-footer__div${liveTeaserModule.widgetSizeModifer}">
            {{tmpl "#start-time-tmpl"}}
        </div>
    </div>
    {{/if}}
</script>
<script id="setgame-compact" type="text/x-jquery-tmpl">
    {{tmpl "#scoreboard-header-compact"}}
    <div class="live-teaser-container__content${liveTeaserModule.widgetSizeModifer}">
        <table class="score-board-setgame-compact score-board-setgame-compact${liveTeaserModule.widgetSizeModifer}">
            <tr>
                <td class="score-board-setgame-compact__cell score-board-setgame-compact__cell${liveTeaserModule.widgetSizeModifer}-header">&nbsp;</td>
                {{tmpl(score, {val: 'setNames', class:'score-board-setgame-compact__cell', prop:'score-board-setgame-compact__cell'+liveTeaserModule.widgetSizeModifer+'-header'}) "#set-row"}}
            </tr>
            <tr>
                <td class="score-board-setgame-compact__cell score-board-setgame-compact__cell${liveTeaserModule.widgetSizeModifer}-player">${participants[0]}</td>
                {{tmpl(score, {val: 'p1', row: 1, id: sport.id, class:'score-board-setgame-compact__cell'}) "#set-row"}}
            </tr>
            <tr>
                <td class="score-board-setgame-compact__cell score-board-setgame-compact__cell${liveTeaserModule.widgetSizeModifer}-player">${participants[1]}</td>
                {{tmpl(score, {val: 'p2', row: 2, id: sport.id, class:'score-board-setgame-compact__cell'}) "#set-row"}}
            </tr>
        </table>
    </div>
    <div class="score-board-footer-compact score-board-footer-compact${liveTeaserModule.widgetSizeModifer} score-board-footer-compact${liveTeaserModule.widgetSizeModifer}-setgame-compact">
        <div class="score-board-footer-compact__div score-board-footer-compact__div${liveTeaserModule.widgetSizeModifer}">${period}</div>
        {{if state === 'NotStarted'}}
        <div class="score-board-footer-compact__div score-board-footer-compact__div${liveTeaserModule.widgetSizeModifer}">{{tmpl "#start-time-tmpl"}}</div>
        {{/if}}
    </div>
</script>


<script id="tournament-tmpl" type="text/x-jquery-tmpl">
    {{tmpl "#scoreboard-header"}}
    <table class="score-board-tournament score-board-tournament{liveTeaserModule.widgetSizeModifer}">
        <tr class="score-board-tournament__block">
            <td class="score-board-tournament__cell score-board-tournament__cell${liveTeaserModule.widgetSizeModifer}">
                <ol class="score-board-tournament__ol">
                    {{each participants}}
                    <li class="score-board-tournament__li">${$value}</li>
                    {{/each}}
                </ol>
            </td>
            <td class="score-board-tournament__cell score-board-tournament__cell${liveTeaserModule.widgetSizeModifer}">
                <div>${eventName}</div>
                {{if state === 'NotStarted'}}
                {{tmpl "#start-time-tmpl"}}
                {{else}}
                {{if customTimer}}
                <span>${customTimer}</span>
                {{else}}
                <span class="score-board-tournament__timer">${timerString}</span>
                {{/if}}
                {{/if}}
            </td>
        </tr>
    </table>
</script>

<script id="sport-icon-small-tmpl" type="text/x-jquery-tmpl">    
    <span class="${$item.class}-sporticon ${$item.class}-sporticon${liveTeaserModule.widgetSizeModifer} " style="background-position:${-(Math.floor(id%10)*10)}px ${-(Math.floor(id/10)*10)}px; float: left;"></span>
</script>
<script id="set-row" type="text/x-jquery-tmpl">
    <td class="${$item.class} ${$item.prop}">&nbsp;</td>
    <td class="${$item.class} ${$item.class}${liveTeaserModule.widgetSizeModifer} {{if $item.prop}} ${$item.prop} {{else}} ${$item.class}--ball {{/if}} ">
        {{if $data.serve === $item.row && !$data.tiebreak}}
        {{tmpl($item,{class:$item.class}) "#sport-icon-small-tmpl"}}
        {{/if}}
    </td>
    {{each $data[$item.val]}}
    <td class="${$item.class} ${$item.class}${liveTeaserModule.widgetSizeModifer}  ${$item.class}--set {{if $data.set == $index+1}}${$item.class}--current-set{{else ($item.val == 'p1' && $value > $data.p2[$index]) || ($item.val == 'p2' && $value > $data.p1[$index])}}${$item.class}--highlight{{/if}} ${$item.prop}">
        {{if typeof $value !== 'number' || $value >= 0}}${$value}{{else}}-{{/if}}
    </td>
    {{/each}}
    <td class="${$item.class} ${$item.prop}">&nbsp;</td>
</script>


<script id="live-teaser-events-list" type="text/x-jquery-tmpl">
    <li>
        <h5 class="live-teaser-container__sport-header" id="${sport.id}" title="${sport.name} (${events.length})" data-sport-name="${sport.name}">
            {{tmpl(sport) "#sport-icon-events-tmpl"}}
            <span>${sport.name}{{if collapsed}} (${events.length}){{/if}}</span>
        </h5>
        <ul class="live-teaser-container__live-events-ul" {{if collapsed}} style="display:none" {{/if}}>
            {{each events}}
            <li id="${id}" class="live-teaser-container__live-events-li {{if $index === events.length - 1}} live-teaser-container__live-events-li-last {{/if}}">
                <a class="live-teaser-container__live-events-a live-teaser-container__link" href="${url}">
                    <h6 class="live-teaser-container__live-events-h6">${eventName}</h6>
                    {{if league}}
                    <div>${league}</div>
                    <span class="live-teaser-container__live-events-span">${startDateString} ${startTimeString}</span>
                    {{else state == 'NotStarted'}}
                    {{tmpl($value) "#start-time-tmpl"}}
                    {{else score}}
                    <span class="live-teaser-container__live-events-span">${score.p1}:${score.p2}</span><span class="live-teaser-container__live-events-span">${period}</span>
                    {{if sport.id == 4}}
                    <span class="live-teaser-container__live-events-span">${minutesTimerString}</span>
                    {{/if}}
                    {{else state}}
                    <span class="live-teaser-container__live-events-span">${period}</span>
                    {{/if}}
                    {{if hasVideo}}
                    <span class="live-teaser-container__videoicon">video</span>
                    {{/if}}
                    {{if hasAudio}}
                    <span class="live-teaser-container__audioicon">audio</span>
                    {{/if}}
                </a>
            </li>
            {{/each}}
        </ul>

    </li>
</script>
<script id="live-teaser-events-ticker" type="text/x-jquery-tmpl">
    {{each events}}

    <a class="live-teaser-container__link live-teaser-container__link--hover-highlight" href="${url}" target="_parent">
        {{if state == 'NotStarted'}}
        <span class="live-events-ticker__span">${eventName}</span>
        <b>{{tmpl($value) "#start-time-tmpl"}}</b>
        {{else currentScore}}
        <span class="live-events-ticker__span">${eventName.split(' - ')[0]}</span>
        <b>${currentScore.p1}:${currentScore.p2}</b>
        <span class="live-events-ticker__span">${eventName.split(' - ')[1]}</span>
        {{/if}}
    </a>
    <span class="live-teaser-container__live-events-event-separator">|</span>

    {{/each}}
</script>
<script id="calendar-events-list" type="text/x-jquery-tmpl">
    <li class="live-teaser-container__calendar-events-li">
        <h5 class="live-teaser-container__calendar-events-h5"> ${name}</h5>
        <table class="live-teaser-container__calendar-events-table">
            {{each events}}
            <tr class="live-teaser-container__calendar-events-table-tr" data-event-id="${id}">
                <td class="live-teaser-container__calendar-events-table-td">
                    ${startTimeString}
                    {{if hasVideo}}
                    <span class="live-teaser-container__calendar-events-videoicon">video</span>
                    {{/if}}
                    {{if hasAudio}}
                    <span class="live-teaser-container__calendar-events-audioicon">audio</span>
                    {{/if}}
                </td>
                <td class="live-teaser-container__calendar-events-table-td">
                    <a class="live-teaser-container__link" href="${url}">
                        {{tmpl(sport) "#sport-icon-events-tmpl"}}
                        <span class="live-teaser-container__icon icon-glyph_right"></span>
                        <h6 class="live-teaser-container__calendar-events-h6">${title}</h6>
                        <span class="live-teaser-container__calendar-events-span">${league}</span>
                    </a>
                </td>
            </tr>
            {{/each}}
        </table>
    </li>
</script>


<!-- common templates -->
<script id="start-time-tmpl" type="text/x-jquery-tmpl">
    {{if startCountDown < 6 && startCountDown > 0}}
    <span class="score-board-footer__span--highlight">${startCountDownString}</span>
    {{else}}
    <span>${startTimeString}</span>
    {{/if}}
</script>
<script id="sport-icon-events-tmpl" type="text/x-jquery-tmpl">
    <span class="live-teaser-container__live-events-sporticon" style="background-position:${-(Math.floor(id%10)*19)}px ${-(Math.floor(id/10)*19)}px; float: left;"></span>
</script>



<!-- header templates -->
<script id="sport-icon-header-tmpl" type="text/x-jquery-tmpl">
    <span class="score-board-header-sporticon" style="background-position:${-(Math.floor(id%10)*19)}px ${-(Math.floor(id/10)*19)}px; float: left;"></span>
</script>
<script id="media-icon-tmpl" type="text/x-jquery-tmpl">
    {{if Streams}}
    {{tmpl(Streams,{class: $item.class}) "#media-icon-stream-tmpl"}}
    {{else}}
    {{if video}}
    <span class="live-teaser-container__videoicon {{if $item.class}} ${$item.class}videoicon {{/if}}">video</span>
    {{else audio}}
    <span class="live-teaser-container__audioicon {{if $item.class}} ${$item.class}audioicon {{/if}}">audio</span>
    {{/if}}
    {{/if}}
</script>
<script id="media-icon-stream-tmpl" type="text/x-jquery-tmpl">
    {{if streamType == 'Web'}}
    <span class="live-teaser-container__videoicon {{if $item.class}} ${$item.class}videoicon {{/if}}">video</span>
    {{else streamType == 'Audio'}}
    <span class="live-teaser-container__audioicon {{if $item.class}} ${$item.class}audioicon {{/if}}">audio</span>
    {{/if}}
</script>

<script id="scoreboard-header" type="text/x-jquery-tmpl">
    <div class="score-board-header score-board-header${liveTeaserModule.widgetSizeModifer}">
        {{tmpl(sport) "#sport-icon-header-tmpl"}}
        <h4 class="score-board-header__h4" title="${title}">
            ${title}
        </h4>
        {{tmpl(media,{class:'score-board-header__'}) "#media-icon-tmpl"}}
    </div>
</script>
<script id="scoreboard-header-compact" type="text/x-jquery-tmpl">
    <div class="score-board-header-bg"></div>
    <div class="score-board-header-compact score-board-header-compact${liveTeaserModule.widgetSizeModifer}">
        {{if state == 'NotStarted'}}
        <span class="score-board-header-compact__liveicon score-board-header-compact__liveicon${liveTeaserModule.widgetSizeModifer}">${liveText}</span>
        {{else}}
        <span class="score-board-header-compact__livenow">${liveText}</span>
        {{/if}}
        <div class="score-board-header-compact__div score-board-header-compact__div${liveTeaserModule.widgetSizeModifer}">
            <a class="live-teaser-container__link live-teaser-container__link--hover" href="${headerLink}" target="_parent">${title}</a>
        </div>
        {{if $.bwin.liveteaser.scoreboardEventHasVideo(media) }}
        <span class="score-board-header-compact__videomark">${videoText}</span>
        {{/if}}
    </div>
</script>


        </div>

    </div>


                </div>
            </div>
        </div>

        
<div class="content-message-container">
        <div class="content-message"
             data-id="tempsportsinlinestylefix"
             data-closed-cookie-key="fm"
             data-show-on-next-session="False"
             data-show-on-next-login="False">
                        <div class="pc-text display-none pc-component">        <section class="text"><style>#calendar .filter #sportFilterContent>div .sport-filter-wrapper .sport-filter-inner-wrapper .sport-name, #calendar .filter .checkbox-label .check-box {z-index: 3}</style></section>
</div>
        </div>
</div>
        
            <div id="footer" data-trid-zone="Footer">


<div>
    <div class="logos">
            <div class="logo-block">
                <h4>Security &amp; Trust</h4>
                <a href="https://my.sportingbet.com/en/p/about-us/responsible-gaming" title="Responsible Gaming" alt="Responsible Gaming" target="_self">
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/cab3dc758ff44e42800c97c040491a25.png" />
</a>

<a href="https://my.sportingbet.com/en/p/about-us/company/security-and-responsibility#EGBA" title="EGBA" alt="EGBA" target="_self">
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/e448d4263f934c95bbf4460171f10d9c.png" />
</a>

<a href="https://my.sportingbet.com/en/p/about-us/company/security-and-responsibility#ESSA" title="ESSA" alt="ESSA" target="_self">
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/9a61470fe2054f13a73dd7e4e8ceea9f.png" />
</a>

<a href="https://my.sportingbet.com/en/p/about-us/company/security-and-responsibility#eCogra" title="eCogra" alt="eCogra" target="_self">
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/8b68e6c43b334b8d8468785692faf1fd.jpg" />
</a>

<a href="http://www.gamcare.org.uk/" title="Gamcare" alt="Gamcare" target="_blank">
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/63f181082dbc4b2ea46bceeda9bd48d4.png" />
</a>

<a href="http://www.gibraltar.gov.gi/remotegambling" title="Remote Gambling" alt="Remote Gambling" target="_blank">
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/6f23f96a8994446ab391862fbd60d0ed.png?h=40&amp;w=40" />
</a>

<a href="http://www.itechlabs.com.au/" title="iTech Labs" alt="iTech Labs" target="_blank" >
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/162706e431a84b1ca7e1504ce54f788a.png" />
</a>

<a href="http://www.gamblingcommission.gov.uk/" title="gambling commission" alt="gambling commission" target="_blank">
    <img title="" alt="" src="https://scmedia.sportingbet.com/$-$/71e868f429e249c8a1ec3230b8fce6e0.png" />
</a>

<a href="https://www.gamstop.co.uk/" title="gamstop" alt="gamstop" target="_blank">
<img alt="" src="https://scmedia.sportingbet.com/$-$/099bc805d85748a2b0f1078936e14035.png?h=25&amp;&amp;w=102"/>
</a>
            </div>
            <div class="logo-block">
                <h4></h4>
                <img height="30" alt="egr-logo" width="250" src="https://scmedia.sportingbet.com/$-$/8e2c4e832da94e52a83fde9b88932d46.png" />
            </div>
    </div>

    <div class="links">
        <div class="footer-wrap">

                <div class="meta-navigation clear">
                    <h4><span>Sports</span></h4>
                    <ul>
	<li><a href="https://sports.sportingbet.com/en/sports" id="FooterMenuSportsBettingLink" title="Up to 45,000 simultaneous bets on more than 90 different sports">Online Betting</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/4/betting/football" id="FooterMenuFootballLink">Football Betting</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/5/betting/tennis" id="FooterMenuTennisLink">Tennis Betting</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/7/betting/basketball" id="FooterMenuBasketballLink">Basketball Betting</a>
	</li>
	<li><a href="https://sports.sportingbet.com/en/sports/p/sitemap">Sitemap</a>
	</li>
                    </ul>
                </div>
                <div class="meta-navigation">
                    <h4><span>Corporate Links</span></h4>
                    <ul>
	<li><a href="https://en.sbaffiliates.com/" rel="nofollow" target="_blank">Affiliate programme</a>
	</li>
	<li><a href="https://gvc-plc.com/" target="_blank">GVC-PLC.com</a>
	</li>
	<li><a href="https://gvc-plc.com/investor-relations/" rel="nofollow" target="_blank">Investor Relations</a>
	</li>
                    </ul>
                </div>
                <div class="meta-navigation">
                    <h4><span>About us</span></h4>
                    <ul>
	<li><a href="https://my.sportingbet.com/en/p/about-us/company" title="About us">About us</a>
	</li>
	<li><a data-popup-params="resizable=1, toolbar=1, status=1, scrollbars=1, width=780, height=700" href="https://service.sportingbet.com/en/general-information/security/privacy-policy" id="FooterMenuPrivacyNoticeLink" rel="popup" target="_blank">Privacy Notice</a>
	</li>
	<li><a data-popup-params="resizable=1, toolbar=1, status=1, scrollbars=1, width=780, height=700" href="https://service.sportingbet.com/en/general-information/security/cookies-notice" id="FooterMenuCookieNoticeLink" rel="popup" target="_blank">Cookie Notice</a>
	</li>
	<li><a data-popup-params="resizable=1, toolbar=1, status=1, scrollbars=1, width=780, height=700" href="https://service.sportingbet.com/en/general-information/legal-matters/general/user-policy" id="FooterMenuUserPolicyLink" rel="popup" target="help">User Policy</a>
	</li>
	<li><a data-popup-params="resizable=1, toolbar=1, status=1, scrollbars=1, width=780, height=700" href="https://service.sportingbet.com/en/general-information/legal-matters/general-terms-and-conditions" id="FooterMenuTandCLink" rel="popup" target="_blank" title="General Terms and Conditions">General Terms and Conditions</a>
	</li>
	<li><a href="https://my.sportingbet.com/en/p/Compliance/SystemFairness" title="System Fairness">System Fairness</a>
	</li>
	<li><a href="https://my.sportingbet.com/en/p/about-us/responsible-gaming" title="Responsible Gaming">Responsible Gaming</a>
	</li>
                    </ul>
                </div>
        </div>
    </div>
</div>

<div class="copyright">
    <style>.copyright .alt-logos{display: none !important;}</style>
    <a href="https://my.sportingbet.com/en/p/about-us/company/security-and-responsibility#18plus" target="_self">18+!</a>
    <span>&#169; 2019 ElectraWorks Limited Suite 6, Atlantic Suites, Europort Avenue, Gibraltar</span>
</div>

                    <div class="language-switch">
                        <ul>
                                <li><a href="/hu/sports">magyar</a></li>
                                <li><a href="/de/sports">Deutsch</a></li>
                                <li><span>English</span></li>
                                <li><a href="/pt-br/sports">Portugu&#234;s (Brasil)</a></li>
                                <li><a href="/es-cl/sports">Espa&#241;ol (Chile)</a></li>
                                <li><a href="/es-mx/sports">Espa&#241;ol (M&#233;xico)</a></li>
                        </ul>
                    </div>
                                    <span id="server-time" data-time="1563836482733"></span>

                
            </div>

        
<div class="content-message-container">
        <div class="content-message"
             data-id="live-chat-styles"
             data-closed-cookie-key="fd"
             data-show-on-next-session="False"
             data-show-on-next-login="False">
                        <div class="pc-text display-none pc-component">        <section class="text"><style>.live-chat-section.live-chat-disabled{ display:none !important; }.live-contact-section.live-chat-disabled{ display:block !important; }.live-contact-section{ display:none !important; }.live-chat-flexsection.live-chat-disabled{ display:none !important; }.live-chat-flexsection{ display:flex !important; }.live-contact-flexsection.live-chat-disabled{ display:flex !important; }.live-contact-flexsection{ display:none !important; }</style></section>
</div>
        </div>
</div>
        
<div class="disclaimer">
    <div class="pc-text pc-component">        <section class="text"><p>We use cookies and third party cookies to improve our services, analyse and personalise your preferences and to show you advertisements. If you continue the navigation, we consider that you are accepting its use. You can modify the settings and obtain further information in our <a data-popup-params="resizable=1,toolbar=1,status=1,scrollbars=1,width=780,height=700" href="https://service.sportingbet.com/en/general-information/security/privacy-policy#cookies" rel="popup" target="_blank">Cookie Policy</a>.</p></section>
</div><div class="pc-text pc-component">        <section class="text"><p>ElectraWorks Limited, the provider of this website, is licensed by the Government of Gibraltar and regulated by the Gibraltar Gambling Commissioner under the Gambling Act 2005. ElectraWorks Limited has been granted a fixed-odds licence (RGL No. 051) and casino licence (RGL N0. 50) for the operation of remote gambling.</p>
<p>Furthermore, ElectraWorks Limited is licensed by the UK Gambling Commission under the Gambling (Licensing and Advertising) Act 2014. ElectraWorks Limited has been granted License <a href="https://secure.gamblingcommission.gov.uk/gccustomweb/PublicRegister/PRSearch.aspx?ExternalAccountId=39011" target="_blank">No. 000-039011-R-319371-004</a> for the operation of remote gambling in Britain.</p></section>
</div>
</div>    </div>

    
    <div data-tracking-constants='{"DefaultEventName":"pageView","EventSource":"events","PageName":"page.name","BetProduct":"transactionProducts","Omniture":"Omniture","DefaultError":"Error"}' data-tracking-legacy='False' data-tracking-map='{"ValueMap":{"pagename":"page.name","purchaseid":"transactionId","products":"transactionProducts","FreeBetsActivated":"page.url","currencycode":"currencyCode","prop4":"page.renderingTime","prop15":"page.url","prop18":"Component.video","prop39":"page.sports.searchTermBetfinder","prop54":"Component.video.name","prop59":"Cart.earlyPayoutTac","prop63":"Component.video.properties","page.referringaction":"page.referringAction"},"EventsMap":{"ScCheckout":"Cart.checkout","ScCancelStage":"Cart.cancleStagedBet","ScUpdate":"Cart.update","Purchase":"Cart.purchase","ScView":"Cart.error","ScAdd":"Cart.betAdded","ScRemove":"Cart.betRemoved","ScResponsePending":"Cart.pending","event33":"Event.earlyPayout","event65":"Product.pickProtectionFee"},"ProductsMap":["transactionAffiliate","category","name","quantity","price","insurance","sku"],"EcommerceData":["transactionTotal","transactionAffiliation","numberOfBets"]}' data-tracking-switch='True' id='sportsTracking' style='display:none;visibility:hidden'></div>
    
    <div id="sportsbook-no-js-ajax-spinner" style="left: 50%;top: 50%; position: fixed;"></div>

    
    
    









    




    
    
    <script src="/en/client-bootstrap-scripts.js" type="text/javascript"></script>
<script src="/assets/sports/scripts/bundles/sports.bundle.ZvBqeh.js" type="text/javascript"></script>
<script src="/assets/betting/scripts/bundles/betting.bundle.tgr9z_.js" type="text/javascript"></script>
<script src="/assets/betting/scripts/bundles/earlypayoutview.wang.bundle.eW9SY6.js" type="text/javascript"></script>
<script src="/en/client-bootstrap-angular.js" type="text/javascript"></script>
<script type='text/javascript'>
(function($){"use strict"; $(document).ready(function() {
var cookieName="clsd-itms",options={domain:".sportingbet.com",secure:!0,path:"/",expires:365};$(".info-message .info-message-close").click(function(n){var r,i,t;(n.preventDefault(),n.stopPropagation(),r=$(this).parents(".info-message"),i=r.data("item"),r.remove(),i!="")&&($(document).trigger("closeInfoMessage"),t=$.cookie(cookieName),t=t==undefined?i:t+i,$.cookie(cookieName,t,options))})
}) })(jQuery);
(function($){"use strict"; $(document).ready(function() {
$.removeCookie("pl-min",{path:"/",domain:$.bwin.domain})
}) })(jQuery);
(function($){"use strict"; $(document).ready(function() {
$.bwin.affiliate({trackingUrl:"https://mediaserver.bwinpartypartners.com/trackAffiliateClick.do"}).track()
}) })(jQuery);
</script>

    
    
</body>
</html>