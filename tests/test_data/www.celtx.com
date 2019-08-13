



<!DOCTYPE html>
<html>
  <head>
    <!-- Google Analytics Content Experiment code -->
    <script>
        _udn = "celtx.com"
    </script>
    <script>function utmx_section(){}function utmx(){}(function(){var
    k='19112550-0',d=document,l=d.location,c=d.cookie;
    if(l.search.indexOf('utm_expid='+k)>0)return;
    function f(n){if(c){var i=c.indexOf(n+'=');if(i>-1){var j=c.
    indexOf(';',i);return escape(c.substring(i+n.length+1,j<0?c.
    length:j))}}}var x=f('__utmx'),xx=f('__utmxx'),h=l.hash;d.write(
    '<sc'+'ript src="'+'http'+(l.protocol=='https:'?'s://ssl':
    '://www')+'.google-analytics.com/ga_exp.js?'+'utmxkey='+k+
    '&utmx='+(x?x:'')+'&utmxx='+(xx?xx:'')+'&utmxtime='+new Date().
    valueOf()+(h?'&utmxhash='+escape(h.substr(1)):'')+
    '" type="text/javascript" charset="utf-8"><\/sc'+'ript>')})();
    </script><script>utmx('url','A/B');</script>
    <!-- End of Google Analytics Content Experiment code -->


    <title>Celtx - Free Scriptwriting &amp; All-In-One Production Studios</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="  " />
    <meta name="description" content="  " />

    <meta property="og:title" content="Celtx - Free Scriptwriting & All-In-One Production Studios" />
    <meta property="og:description" content="From writing your first draft to scheduling your last shot, we provide the tools to get it done. Writing and pre-production tools for your browswer, desktop, and mobile devices." />

    <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.7/jquery.min.js"></script>

<link href='//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css' rel="stylesheet">

<script type="text/javascript">
(function() {
    this.cx = {
        auth: {
            isLoggedIn: function() {
              return $.get('/auth/check').then(function(){
                return true;
              });
            },
            requestPasswordReset: function(email) {
            
                var deferred = $.Deferred();
                
                $.ajax({
                    url: '/auth/reset',
                    type: 'POST',
			              data: JSON.stringify({ email: email }),
                    dataType: 'json',
                    contentType: 'application/json'
                  }).fail(function(jqXHR){
                    var message;
                    if (jqXHR.getResponseHeader('content-type') === 'application/json'){
                      message = JSON.parse(jqXHR.responseText);
                      message = message['error'];
                    }
                    else{
                      message = jqXHR.responseText;
                    }
                    deferred.reject(message);
                  }).done(function(response){
                    deferred.resolve(response);
                  });
                
                return deferred; 
            },
            updatePassword: function(newPassword) {
            
                var deferred = $.Deferred();
                
                $.ajax({
                    url: '/feeds/metadata/default',
                    type: 'PUT',
                    data: JSON.stringify({ password: newPassword }),
                    dataType: 'json',
                    contentType: 'application/x-celtx-doc+json'
                  }).fail(function(jqXHR){
                    deferred.reject(jqXHR.responseText);
                  }).done(function(response){
                    deferred.resolve(response);
                  });
                
                return deferred; 
            },
            signup: function(email, opt_gem) {
                var sc = {
                    EMAIL: 'email',
                    GEM: 'gem',
                    SUBSCRIBE: 'subscribe'
                }
                
                if(email.indexOf('+')>=0){
                  return $.Deferred().reject("Email address can't contain '+'");
                }
                
                var content = {};
                
                content[sc.EMAIL] = email;
                content[sc.SUBSCRIBE] = 1;
                
                if (opt_gem){
                  content[sc.GEM] = 1;
                }
                
                var deferred = $.Deferred();
                
                $.ajax({
                    url: '/auth/register',
                    type: 'POST',
                    data: JSON.stringify( content ),
                    dataType: 'json',
                    contentType: 'application/json'
                }).fail(function(jqXHR){
                  var message;
                  if (jqXHR.getResponseHeader('content-type') === 'application/json'){
                    message = JSON.parse(jqXHR.responseText);
                    message = message['error'];
                  }
                  else{
                    message = jqXHR.responseText;
                  }
                  deferred.reject(message);
                }).done(function(response){
                  deferred.resolve(response);
                });
                  
                return deferred;
              }
          }
    };
})(window);
</script>

    

	<!-- Basic Page Needs
  ================================================== -->

<!-- Content Metas
  ================================================== -->
<meta name="keywords" content=" free film and TV pre-production software, free media pre-production software, free storyboarding software, free storyboard software, free film budgeting and scheduling software, free screenwriting software, free script writing software, scriptwriting software, screenplay software, film script software, breakdown, breakdowns, xul, free video pre-production software, free video software, theatre pre-production software, animation pre-production software, game development software, comic creation software, machinima pre-production software, animation " />
<meta name="description" content=" free screenwriting software storyboard schedule " />

	<!-- Mobile Specific Metas
  ================================================== -->
	<!-- <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> -->


    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- CSS
  ================================================== -->

	<link rel="stylesheet" href="https://s3.amazonaws.com/celtx.com/production/www/cx-static/7.65/assets/7.65/css/styles.css">

	<!-- Favicons
	================================================== -->
	<link rel="shortcut icon" href="favicon.ico">

  	<script type="text/javascript">

  	if (typeof console == "undefined") {
    	this.console = {log: function() {}};
	}

	startup();

	function checkFormSectionValidity($form, $section){
		var valid = true;
		$req = $section.find('input[required], select[required], textarea[required]');
		$req.each(function(){
			if(!this.validity.valid){
				valid = false;
				$(this).addClass('input-error');
				$(this).one('change', function(){
					$(this).removeClass('input-error');
				});
			}
		});

		if(!valid){
			//trigger validation popups

			$form.one('submit', function(e){
				e.preventDefault();
			});

			$inputSubmit = $form.find('input[type="submit"]');

			if($inputSubmit.length>0){
				$inputSubmit.click();
			} else {
				$form.submit();
			}
		}

		return valid;
	}

    function startup(){

    	var updateInputs = function(arr, b){
    		$.each(arr, function(i, el){
    			if(el){
	    			if(!$(el).hasClass('perma-disabled')){
		    			$(el).attr('disabled', b);
		    		}
		    	}
    		});
    	},

    	showError = function(errSpan, errText, userTb){

    		var msg = errText.toUpperCase();

    		if(msg.indexOf('IS NOT AVAILABLE')>=0){
				userTb.addClass('error');
				userTb.focus();
    		}

			if (msg.substring(0, 13) === 'INVALID EMAIL'){
				msg = "The email address you've entered is invalid.";
				userTb.addClass('error');
				userTb.focus();
			}
			else if (msg === 'MISSING OR INVALID EMAIL'){
    			msg = "Please fill in the email field with a valid email address.";
				userTb.addClass('error');
				userTb.focus();
    	}
    	else if (msg.indexOf("EMAIL ADDRESS CAN'T CONTAIN") >= 0){
				userTb.addClass('error');
				userTb.focus();
				msg = errText;
    	}
			else if (msg.indexOf('IS NOT AVAILABLE') != -1) {
        msg = "This account already exists, <a href='/a/ux/logon'>Login</a>";
			}
			else {
				msg = errText;
			}

			errSpan.html(msg);
			errSpan.css('visibility', 'visible');
			errSpan.addClass('error');
		},

    loggedIn = function(){
			if (window.location.pathname === '/' || window.location.pathname === '/index.html'){
				goToApplication();
			}
		},

		goToApplication = function(){
      window.location.href = "/a/ux/";
		},

		signupSuccess = function(email, token){
			_gaq.push(['_trackEvent', 'Login', 'Create Account']);
			window.location.href = "/a/ux/" + "signup?token=" + encodeURIComponent(token) + "&email=" + encodeURIComponent(email);
		},

		validate = function(user, pass, messageEl){

			var hasError = false;

			if (pass.val().length <= 0){
				pass.addClass('error');
				pass.focus();
				showError(messageEl, "Please enter your password.");
				hasError= true;
			}

			if (user.val().length <= 0){
				user.addClass('error');
				user.focus();
				showError(messageEl, "Please enter your email address.");
				hasError= true;
			}

			return hasError;
		},

		hideError = function(errSpan){
			errSpan.css('visibility', 'hidden');
		},

		setupForm = function(form, userTb, submitBtn, errorSpanId, spinnerId){

			userTb.bind('keypress', function(){
				$(this).removeClass('error');
				hideError(errorSpanId);
			});

			var inputList = [userTb, submitBtn];

			form.submit(function(e){
				//prevent duplicate submissions, by not allowing more than one every 500 milliseconds
				if(window.formSubmitted)
					return;
				window.formSubmitted = true;
				window.setTimeout(function() {window.formSubmitted = false}, 500);

				// stop the submission of the form.
				e.preventDefault();

				hideError(errorSpanId);

				var valid = checkFormSectionValidity(form, form);

				if(!valid){
					return;
				}

				updateInputs(inputList, true);

				spinnerId.css('visibility', 'visible');

				cx.auth.signup(userTb.val())
					.fail(function(message){
							showError(errorSpanId, message, userTb);
							updateInputs(inputList, false);
							spinnerId.css('visibility', 'hidden');
					})
					.done(function(response){
						spinnerId.css('visibility', 'hidden');
						signupSuccess(userTb.val(), response['token'], true);
					});

			});

			submitBtn.click(function(e){
				e.preventDefault();
				form.submit();
			});


		},

		setupSignup = function(){
			$('.signup-form, .signup-bigask-form').each(function(){
				setupForm(
					$(this),
					$(this).find('*[name="username"]'),
					$(this).find('.btn-signup'),
					$(this).find('.message'),
					$(this).find('.spinner'));
			});
		};

    cx.auth.isLoggedIn().fail(function(){

    }).then(function(bool){
      if (bool){
        loggedIn();
      }
    });


		$(document).ready(function() {
			setupSignup();
			$('input[type="submit"], .signup-btn').removeAttr('disabled');
			var i = 1;
			$('.j-label').each(function(){
				if(!$(this).attr('id')){
					$(this).attr('id', 'jlabel'+i);
					$sib = $(this).siblings('label').attr('for', 'jlabel'+i);
					i++;
				}
				$(this).jLabel();
			});
		});
	};

    </script>

    <script type="text/javascript" src="/use_typekit.js"></script>
    <script type="text/javascript">try{Typekit.load();}catch(e){}</script>

    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-3808091-6']);
  _gaq.push(['_setDomainName', 'celtx.com']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

<script type="text/javascript">var _kmq = _kmq || [];
var _kmk = _kmk || '3a840c9fd2fd947bd21cbfa411278a31bad94f93';
function _kms(u){
  setTimeout(function(){
    var d = document, f = d.getElementsByTagName('script')[0],
        s = d.createElement('script');
    s.type = 'text/javascript'; s.async = true; s.src = u;
    f.parentNode.insertBefore(s, f);
  }, 1);
}
_kms('//i.kissmetrics.com/i.js');
_kms('//scripts.kissmetrics.com/' + _kmk + '.2.js');
</script>


<!-- Start of Async HubSpot Analytics Code -->
  <script type="text/javascript">
    (function(d,s,i,r) {
      if (d.getElementById(i)){return;}
      var n=d.createElement(s),e=d.getElementsByTagName(s)[0];
      n.id=i;n.src='//js.hs-analytics.net/analytics/'+(Math.ceil(new Date()/r)*r)+'/2041435.js';
      e.parentNode.insertBefore(n, e);
    })(document,"script","hs-analytics",300000);
  </script>
<!-- End of Async HubSpot Analytics Code -->

<!-- Facebook Pixel Code -->
<script>
!function(f,b,e,v,n,t,s)
{if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};
if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];
s.parentNode.insertBefore(t,s)}(window,document,'script',
'https://connect.facebook.net/en_US/fbevents.js');
 fbq('init', '1621084524831003');
fbq('track', 'PageView');
</script>
<noscript>
 <img height="1" width="1" src="https://www.facebook.com/tr?id=1621084524831003&ev=PageView&noscript=1"/>
</noscript>
<!-- End Facebook Pixel Code -->


<!-- Beginning of Profitwell Code-->
<script type="text/javascript">
    (function(i,s,o,g,r,a,m){i['ProfitWellObject']=r;i[r]=i[r]||function(){  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m);  })(window,document,'script','https://dna8twue3dlxq.cloudfront.net/js/profitwell.js','profitwell');

  profitwell('auth_token', '9938daee948f0bdf01a5006ed0b180ee');
 </script>
<!-- End of Profitwell Code. -->


  </head>
  <body id="home" class="www-body " >

    
<!-- Top Bar and Menu
================================================== -->

 <script>

// Must change some behavior when user is on a mobile device because fixed elements will not work
function _isMobile() {
    var isMobile = (/iphone|ipod|android|ie|blackberry|fennec/).test
         (navigator.userAgent.toLowerCase());
    return isMobile;
}

window.SIGN_UP_BUTTON_LIST = {
  DEFAULT: '.btn-header-cta-default',
  WORK: '.btn-header-cta-for-work',
  ENTERPRISE: '.btn-header-cta-enterprise',
  SCHOOLS: '.btn-header-cta-schools',
  ALL: '.btn-header-cta'
}

function getAllSignUpButtons() {
  return $(SIGN_UP_BUTTON_LIST.ALL);
}

function getDefaultSignUpButton() {
  return $(SIGN_UP_BUTTON_LIST.DEFAULT);
}

function getSignupButtonForPage(){

  var $body = $('body');
  
  if ($body.hasClass('celtx-teams')){
    return $(SIGN_UP_BUTTON_LIST.WORK)
  }
  else if ($body.hasClass('schools')){
    return $(SIGN_UP_BUTTON_LIST.SCHOOLS);
  }
  else if ($body.hasClass('enterprise')){
    return $(SIGN_UP_BUTTON_LIST.ENTERPRISE);
  }
  else{
    return $(SIGN_UP_BUTTON_LIST.DEFAULT);
  }
  

}

// When the sign up fields have disappeared but the nav bar is not yet fixed, clicking the sign up button will scroll to top
function scrollUp() {
	window.scrollTo(0, 0);
	var banner = document.getElementById("signup-banner");
	banner.getElementsByClassName("field-to-focus")[0].focus();
}

// When sign up button in the nav bar is clicked, do a drop down and fade in sign up fields
function dropHeader() {
	if (_isMobile()) {
		$("html, body").animate({ scrollTop: $('.phonemenubtn').offset().top }, 1000);
		return;
	}

	var signupHeader = document.getElementById('signup-header');

	if ($(window).scrollTop() >= ($('.banner').height() - $('#topBar').height())) {

		if ($(window).width() < 400) {
			signupHeader.style.position = "absolute";
			signupHeader.style.width = "auto";
		}

		getDefaultSignUpButton().hide();
    	$("#loginLink").show();

		if ($(window).width() < 804) {
			$(".topBar-fixed").css("height", "475px");
		}
		else {
			$(".topBar-fixed").css("height", "347px");
		}

	 	signupHeader.classList.remove("signup-header-hidden");
    	$("#loginLink").show();

		// At the start of a scroll, ensure the sign up button in the nav bar is once again shown
		$(window).scroll(function () {
			 getSignupButtonForPage().show();
		});
	}
	else {
    	scrollUp();
	}

}

$(document).ready(function() {

	$('#topBar').addClass('topBar-fixed');

  	$(window).scroll(function () {
  		// On scroll, return the nav bar to its regular height and hide the sign up fields
	  	$(".topBar-fixed").css("height", "70px");

	  	$("#signup-header").addClass("signup-header-hidden");
	  	$("#signup-header").addClass("signup-header-hidden");
  	});

	if (_isMobile()) {
		var navContainer = $('.globalNav');
		if (navContainer) {
			var loginLink = $('<a class="mobile-login-link" href="/a/ux/logon">Sign in</a>');
			navContainer.prepend(loginLink);
		}
	}
});

</script>

<div id='topBarContainer'>
	<div id="topBar" class="topBar-crewfull">
		<div class='globalNavContainer'>
			<div id="signup-header" class="signup-header-hidden" data-qa="headerhtml signup-header">
				<form class='signup-bigask-form' method="post">
	<div class="single-signup-msg fade-signup">Start creating in your all-in-one studio</div>
	<div class='signup-bigask-form-section fade-signup'>
		<input type="email" name="username" class='crewfull-signup-field' onClick='isEdge();' onFocus='isEdge();' onKeyDown='isEdge();' placeholder='Your Email' required autocorrect="off" autocomplete="off" autocapitalization="off" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-z]{2,}$" onchange="try{setCustomValidity('')}catch(e){}" data-qa="signupform individual enter-email"/>
	</div>
	<div style="display: inline-block;">
			<button type='submit' id='signupBtn' class='btn btn-signup fade-signup' data-qa='signupform individual submit-email'>Sign up</button>
		<div style="text-align: right;"><a id="terms" class="fade-signup" href="legals.html#terms" target="_blank">Terms of Use</a></div>
	</div>
    <div class="message"></div>
</form>

			</div>
			<div class="globalNav" style="position: static;">
				<div class='pull-right signlogtop' style='position:relative;'></div>
				<div class="logo">
					<a href="/">
						<img src="https://s3.amazonaws.com/celtx.com/production/www/cx-static/7.65/assets/7.65/images/celtxLogoBig.png" alt="Celtx Logo" />
					</a>
				</div>
				<a class="phonemenubtn" href="index.html">
					<i class='cxi cxi-hamburger_nav_move'></i>
				</a>
				<ul id='topnav'>

					<li class="close-topnav-item"><a class="close-topnav"><i class="cxi cxi-back"></i></a></li>
					<li><a name='schools' href="schools.html">Schools</a></li>
					<li><a name='enterprise' href="enterprise.html">Enterprise</a></li>
					<li><a name='pricing' href="pricing.html">Pricing</a></li>
					<li><a name='support' target='_blank' href="https://support.celtx.com/hc/en-us">Support</a></li>

					<li><a href="games.html">Games & VR</a></li>

          			<li id='loginLink'><a href="/a/ux/logon"><span class="login-button-box">Sign In</span></a></li>

          			<li>
                  		<a class='btn btn-signup btn-header-cta btn-header-cta-default' style="display:none">Sign Up</a>
                  		<a href='#top' class='btn btn-signup btn-header-cta btn-header-cta-for-work' style="display:none">Get Started</a>
                  		<a href='enterprise_signup.html' class='btn btn-signup btn-header-cta btn-header-cta-enterprise' style="display:none">Request a Demo</a>
                  		<a href='schools_signup.html' class='btn btn-signup btn-header-cta btn-header-cta-schools' style="display:none">Request a Quote</a>
                  		<a href='#top' id="gem-header-signup" class='btn btn-signup btn-header-cta' style="opacity: 0;">Sign Up</a>
                	</li>

				</ul>

				<a href="games.html" id="gem-link" class="ib" style="vertical-align: middle; margin-left: 20px; margin-bottom: 5px; padding: 0px;"><img class="new-gem-icon" src="https://s3.amazonaws.com/celtx.com/production/www/cx-static/7.65/assets/7.65/images/new-gem-icon.png" alt="Try Gem"/><span><strong> Interactive Scriptwriting for Games & VR</strong></span><div class="try-gem-link" >Learn more</div></a>

			</div>
		</div>
	</div>
</div>



<noscript>
	<div id="noscript">
		<div class='message'>
			<h1>This site requires JavaScript</h1>
			<p style='width: 80%; margin: 0 auto;'>Please enable JavaScript, then refresh this page. If you require assistance enabling JavaScript, please go to <a href='http://enable-javascript.com' target='_blank'>enable-javascript.com</a> and refresh this page once you've successfully followed the instructions.</p>
		</div>
	</div>
</noscript>

<script>

/**
 * detect IE
 * returns version of IE or false, if browser is not Internet Explorer
 */
function detectIE() {
  var ua = window.navigator.userAgent;

  // Test values; Uncomment to check result …

  // IE 10
  // ua = 'Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0)';
  
  // IE 11
  // ua = 'Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko';
  
  // Edge 12 (Spartan)
  // ua = 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36 Edge/12.0';
  
  // Edge 13
  // ua = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2486.0 Safari/537.36 Edge/13.10586';

  var msie = ua.indexOf('MSIE ');
  if (msie > 0) {
    // IE 10 or older => return version number
    return parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
  }

  var trident = ua.indexOf('Trident/');
  if (trident > 0) {
    // IE 11 => return version number
    var rv = ua.indexOf('rv:');
    return parseInt(ua.substring(rv + 3, ua.indexOf('.', rv)), 10);
  }

  var edge = ua.indexOf('Edge/');
  if (edge > 0) {
    // Edge (IE 12+) => return version number
    return parseInt(ua.substring(edge + 5, ua.indexOf('.', edge)), 10);
  }

  // other browser
  return false;
}

  function isEdge(id) {
      if (detectIE()) {

          var edgeDialog = document.getElementById('edgeNotSupported');
          edgeDialog.setAttribute("style", "display:inline-block;z-index:10;");

          if (id != 'c4wEmail') {
              document.getElementById('signup-banner').querySelector('.crewfull-signup-field').setAttribute("disabled", "");
              document.getElementById('signup-banner').querySelector('#signupBtn').setAttribute("disabled", "");

              document.getElementById('signup-header').querySelector('.crewfull-signup-field').setAttribute("disabled", "");
              document.getElementById('signup-header').querySelector('#signupBtn').setAttribute("disabled", "");
              window.scrollTo(0, 0);

          } else {
              document.getElementById('c4wEmail').setAttribute("disabled", "");
              document.getElementById('c4wEmail').classList.remove("pulse-button");

              document.getElementById('c4wSignupBtn').setAttribute("disabled", "");
              document.getElementById('c4wSignupBtn').classList.remove("pulse-button");
          }
      }
  }
</script>

<script>
	$(document).ready(function(){

		$topnav = $('#topnav');
		$('.phonemenubtn, .close-topnav').click(function(e){
			e.preventDefault();
			if($topnav.hasClass('open')){
				$topnav.removeClass('open');
			} else {
				$topnav.addClass('open')
			}
		});

		var currentUrl = document.URL;

		$('#topnav a').each(function(){
			var href = $(this).attr('href');
			if(currentUrl.indexOf(href) > 0){
				$(this).addClass('active');
				return;
			}
		});

		$('#upgradebroswerdialog-close').click(function(){
			$('#upgradebrowserdialog').hide();
		});
	});

</script>

<style>
	#upgradebrowserdialog{
		display: none;
	}
	<!--[if lte IE 9]>
	#upgradebrowserdialog{
		display: block;
	}
	<![endif]-->
</style>

 <div id="edgeNotSupported" class="edge-support-dialog">
        <span class="detect-msg">
        <div class="edge-cog"></div>
        <p><strong>We've detected you are using Microsoft Edge / Internet Explorer.</strong></p>
        <p style="margin-bottom: 35px;">These browsers are no longer supported by Celtx Studio. For the best experience, please sign up using Google Chrome or Mozilla Firefox.</p>
        <button onclick="document.getElementById('edgeNotSupported').style.display='none'">OK</button>
        </span>
        </div>


<div class='modal-dialog-bg' id='upgradebrowserdialog'>
<div class='modal-dialog'>
<div class="modal-dialog-content" style='padding:20px'>
	<div>
		<h1 class='heading' style='font-size:28px;'>Your browser is not supported.</h1>
		<h4 class="subHeading" style='font-size:16px'>Upgrade your browser to it's latest version or use another browser. We recommend&hellip;</h4>
	</div>
	<hr />
	<div style="text-align:center">
			<div class='ib' style='padding:20px'>
				<a href="http://www.google.com/chrome" target="_blank">

					<img src="https://s3.amazonaws.com/celtx.com/production/www/cx-static/7.65/assets/7.65/images/chrome-logo.png" style='max-width:100px' />
					<p class="larger-text">Chrome<br><small>from Google</small></p></a>
			</div>
			<div class='ib' style='padding:20px'>
				<a href="http://www.mozilla.org/en-US/firefox/new/" target="_blank">
					<img src="https://s3.amazonaws.com/celtx.com/production/www/cx-static/7.65/assets/7.65/images/firefox-logo.png" style='max-width:100px' />
					<p class="larger-text">Firefox<br><small>from Mozilla</small></p></a>
			</div>
			<div class='ib' style='padding:20px'>
				<a href="http://www.apple.com/safari/" target="_blank">

					<img src="https://s3.amazonaws.com/celtx.com/production/www/cx-static/7.65/assets/7.65/images/safari-logo.png" style='max-width:100px' />
					<p class="larger-text">Safari<br><small>from Apple</small></p>
				</a>
			</div>
		</div>
		<hr />
		<a href='#' id='upgradebroswerdialog-close'>CLOSE</a>
</div>
</div>
</div>

    

<script>

var fadeDistance = 50;

// Fade out header text on scroll
function fadeHeaderText() {

  	var fadeElements = document.getElementsByClassName('fade-header');

  	for (var i = 0; i < fadeElements.length; i++) {

  		var x = fadeElements[i].offsetTop - $(window).scrollTop();

	  	if (x < fadeDistance) {
	  		fadeElements[i].style.opacity = "0";
	  	}
	  	else {
	  		fadeElements[i].style.opacity = "1";
	  	}
  	}
}

// Fade out signup fields on scroll and show sign up button in fixed header instead
function fadeSignup() {
  
  var celtxForWorkForm = $('.workteams-header-container');
  var schools = $('.schools-header-container');
  var enterprise = $('.enterprise-header-container');
	var defaultSignUpForm = $('#signup-banner');

  var signupForm;
  
  if (celtxForWorkForm.length){
    signupForm = celtxForWorkForm;
  }
  else if (schools.length){
    signupForm = schools;
  }
  else if (enterprise.length){
    signupForm = enterprise;
  }
  else{
    signupForm = defaultSignUpForm;
  }

  var allSignupButtons = getAllSignUpButtons();
      
  var fadeElements = signupForm.find('.fade-signup');
  
	if (signupForm .offset() != null) {
		if ((signupForm.offset().top - $(window).scrollTop()) < fadeDistance) {
			fadeElements.css('opacity', '0');
			allSignupButtons.hide();
			getSignupButtonForPage().show();
			$(".migrate").hide();
			$("#advert-header-link").addClass("hideHeaderLink");
		  $("#gem-link").addClass("hidden");
		} 
		else {
			fadeElements.css('opacity', '1');
			allSignupButtons.hide();
			$(".migrate").show();
		  $("#gem-link").removeClass("hidden");
			$("#advert-header-link").removeClass("hideHeaderLink");
		}
	}
}

$(document).ready(function(){

	$container = document.getElementById('topBarContainer');
	$container.style.position = "absolute";

	// Signup button in the header is intitially hidden
	getAllSignUpButtons().hide();
	// Nav bar is intially transparent
	$('#topBar').removeClass('topBar-fixed');

	var scrollPosition = $(window).scrollTop();
	if (scrollPosition < ($('.banner').height() - $('#topBar').height())) {
		$('#topBar').removeClass('topBar-fixed');
  	}

	window.onscroll = function(){
		// On refresh
		scrollPosition = $(window).scrollTop();
	  	if (scrollPosition >= ($('.banner').height() - $('#topBar').height())) {
	    	$('#topBar').addClass('topBar-fixed');
       		document.querySelector(".btn-header-cta-default").onclick = function () { 
        		dropHeader(); 
			};
		}
		else {
			$('#topBar').removeClass('topBar-fixed');
			document.querySelector(".btn-header-cta-default").onclick = function () { 
				scrollUp(); 
			};
		}

		// Header text does not fade if on mobile device
		var mobile = _isMobile();

		if (!mobile) {
			fadeHeaderText();
			
				fadeSignup();
			
		}
	};
});
		
</script>

<div id='main-content-container'>
	<div class='wrap-section banner banner-crewfull'>
		<div class='wrap-content'>
			<div style='text-align:center;'>
				<div id="banner-headings">
					<h2 class="banner-heading fade-header">Your Next Great Production Starts Here</h2>
					<h3 class="banner-subheading fade-header">Join 6 million creatives using the all-in-one system for writing, planning, and collaborating on video and game productions.</h3>
					<h3 class="banner-text fade-header"></h3>
				</div>
				
					<div id="signup-banner" data-qa="banner_signup signup-banner">
						<form class='signup-bigask-form' method="post">
	<div class="single-signup-msg fade-signup">Start creating in your all-in-one studio</div>
	<div class='signup-bigask-form-section fade-signup'>
		<input type="email" name="username" class='crewfull-signup-field' onClick='isEdge();' onFocus='isEdge();' onKeyDown='isEdge();' placeholder='Your Email' required autocorrect="off" autocomplete="off" autocapitalization="off" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-z]{2,}$" onchange="try{setCustomValidity('')}catch(e){}" data-qa="signupform individual enter-email"/>
	</div>
	<div style="display: inline-block;">
			<button type='submit' id='signupBtn' class='btn btn-signup fade-signup' data-qa='signupform individual submit-email'>Sign up</button>
		<div style="text-align: right;"><a id="terms" class="fade-signup" href="legals.html#terms" target="_blank">Terms of Use</a></div>
	</div>
    <div class="message"></div>
</form>

					</div>
				
			</div>
		</div>		
	</div>
</div>


<div class="main-section-container">
<div class="workteams-main-content-container">
            <script src="https://fast.wistia.com/embed/medias/73xmspj2cj.jsonp" async></script><script src="https://fast.wistia.com/assets/external/E-v1.js" async></script><span class="wistia_embed wistia_async_73xmspj2cj popover=true popoverContent=link" style="display:inline;"><a href="#" style="color:#555555;font-size:16px;"><div class="workteams-video-work"></div></a></span>

    <div class="workteams-info-container">
      <div class="workteams-content-title">Why Use Celtx?</div>
      <div class="pricetower-divider" style="margin-left: 0!important;"></div>
      <div class="workteams-content-desc">From script to shoot, Celtx kickstarts your production with cloud-based planning tools to create better content faster.
      <br /><br />
          <script src="https://fast.wistia.com/embed/medias/73xmspj2cj.jsonp" async></script><script src="https://fast.wistia.com/assets/external/E-v1.js" async></script><span class="wistia_embed wistia_async_73xmspj2cj popover=true popoverContent=link" style="display:inline;"><a href="#" style="color:#555555;font-size:16px;"><i class="fa fa-play"></i> WATCH VIDEO</a></span>
      </div>
  </div>
</div>

<div class="main-section-sub-container">
<div class="main-section-title">Go To Camera in Fewer Steps</div>

<div class="main-section-feature-container">

  <div class="main-section-feature-icon-container">
    <div class="main-section-feature-icon star"></div>
    <div class="main-section-feature-title">Concept to Complete</div>
    <div class="main-section-feature-divider"></div>
    <div class="main-section-feature-desc">Write, breakdown, storyboard, schedule and budget your productions.</div>
  </div>

  <div class="main-section-feature-icon-container">
    <div class="main-section-feature-icon file"></div>
    <div class="main-section-feature-title">One File to Rule Them All</div>
    <div class="main-section-feature-divider"></div>
    <div class="main-section-feature-desc">Everyone works off one master file so productions are better organized.</div>
  </div>

  <div class="main-section-feature-icon-container">
    <div class="main-section-feature-icon cloud"></div>
    <div class="main-section-feature-title">Team Tailored Workflow</div>
    <div class="main-section-feature-divider"></div>
    <div class="main-section-feature-desc">Simple to learn, easy to use & designed to facilitate real-time collaboration.</div>
  </div>

  <div class="main-section-feature-icon-container">
    <div class="main-section-feature-icon phone"></div>
    <div class="main-section-feature-title">Anytime, Anywhere</div>
    <div class="main-section-feature-divider"></div>
    <div class="main-section-feature-desc">Work online or offline with mobile apps for iPhone, iPad and Android.</div>
  </div>

</div>

<div class="main-section-title">A Complete Pre-Production Toolset</div>

<div class="main-section-tools-container">

  <div class="main-section-tools-subcontainer panel-navy">
    <div class="panel1-icon panel-icon"></div>
    <div class="panel-title">Tell a Story</div>
    <div class="panel-desc">Use industry standard editors to write Features, Shorts, Promos, Videos, Commercials, Webisodes, and more.</div>
  </div>

  <div class="main-section-tools-subcontainer panel-aqua">
    <div class="panel2-icon panel-icon"></div>
    <div class="panel-title">The Big Picture</div>
    <div class="panel-desc">Create Storyboards to communicate the creative vision. Block shots to mark camera, lighting and cast positions for the shoot.</div>
  </div>

  <div class="main-section-tools-subcontainer panel-navy">
    <div class="panel3-icon panel-icon"></div>
    <div class="panel-title">Prepare to Save</div>
    <div class="panel-desc">Breakdown the script to make sure all talent, props, wardrobe, equipment, locations, and crew are ready and waiting for the shoot.</div>
  </div>

  <div class="main-section-tools-subcontainer panel-aqua">
    <div class="panel4-icon panel-icon"></div>
    <div class="panel-title">Ready. Aim. Shoot.</div>
    <div class="panel-desc">Create a list of every shot for production. Plan the shot type, angle, movement, equipment, and cast required. </div>
  </div>

  <div class="main-section-tools-subcontainer panel-navy">
    <div class="panel5-icon panel-icon"></div>
    <div class="panel-title">Haste, Not Waste</div>
    <div class="panel-desc">Schedule shoot dates and locations to keep costs in check. Send talent their sides so they show up ready to shoot their scenes.</div>
  </div>

  <div class="main-section-tools-subcontainer panel-aqua">
    <div class="panel6-icon panel-icon"></div>
    <div class="panel-title">Stay on Budget</div>
    <div class="panel-desc">Thoroughly budget all production costs and generate reports and infographics to keep track of budgeted costs.</div>
  </div>

</div>
</div>
</div>
<div class='wrap-section testimonials'>
	<div class='wrap-content'>
	<div class="join-footer-msg">
    Join over 6 million creatives in 190 countries. Start creating today.<br/><br/>
    <a onclick="dropHeader()" class="btn btn-signup">Sign Up</a>
  </div>
</div>


    
<!-- Footer
================================================== -->

<div class="clear"></div>
<div id='footer-container'>
	<div class="footer clearfix">
	<div class='clearfix'>

		<div class="footer-section pull-right" id="account-section">
			<h4 class="footer-section-header">Account</h4>
			<div class="footer-section-list">
				<a class="footer-section-list-item" href="/a/ux/logon">Login</a>
			</div>
		</div>
		

		<div class="footer-section" id="company-section">
			<h4 class="footer-section-header">Company</h4>
			<div class="footer-section-list">
				<a class="footer-section-list-item" id="footer-careers" href="/careers.html">Careers <span id="new-postings" class='badge badge-info ibmid'>New Postings!</span> </a>
				<a class="footer-section-list-item" id="footer-about" href="/company.html">About Us</a>
				<a class="footer-section-list-item" id="footer-legals" href="/legals.html">Legals</a>
			</div>
		</div>

		<div class="footer-section" id="product-section">
			<h4 class="footer-section-header">Product</h4>
			<div class="footer-section-list">
				<a class="footer-section-list-item" id="footer-home" href="/index.html">Home</a>
				<a class="footer-section-list-item" id="footer-pricing" href="/pricing.html">Pricing</a>
				<a class="footer-section-list-item" href="/schools.html">Schools</a>
				<a class="footer-section-list-item" href="/enterprise.html">Enterprise</a>
			</div>
		</div>

		<div class="footer-section" id="community-section">
			<h4 class="footer-section-header">Community</h4>
			<div class="footer-section-list">
				<a class="footer-section-list-item" id="footer-blog" href="http://blog.celtx.com">Blog</a>
			</div>
		</div>

		<div class="footer-section" id="support-section">
			<h4 class="footer-section-header">Support</h4>
			<div class="footer-section-list">
				<a class="footer-section-list-item" id="footer-help" href="https://support.celtx.com">Help Center</a>
			</div>
		</div>

	</div>

	<div class='footer-links'>
		<div>
			<a href='https://www.facebook.com/celtx/' class='footer-icon-link'><i class='fa fa-facebook footer-icon '></i></a>
			<a href='https://twitter.com/celtx' class='footer-icon-link'><i class='fa fa-twitter footer-icon '></i></a>
			<a href='https://www.linkedin.com/company/celtx' class='footer-icon-link'><i class='fa fa-linkedin footer-icon '></i></a>
		</div>
		<div class='footer-links-icons'>
			<span class='ibmid'><img src="https://s3.amazonaws.com/celtx.com/production/www/cx-static/7.65/assets/7.65/images/celtxLogoBig.png" alt="Celtx Logo" style='max-height: 20px; margin-top: 4px;' /></span> <small class='ibmid'> - &copy; Celtx Inc. 2019</small>
		</div>
	</div>
	</div>
</div>

<script type="text/javascript">
	$.getJSON('https://hire.withgoogle.com/v2/api/t/celtxcom/public/jobs', function(postings) { 
	    if (postings.length < 1) {
	    	$('#new-postings').hide();
	    }
	})
</script>

<script type="text/javascript">
	_linkedin_partner_id = "437876";
	window._linkedin_data_partner_ids = window._linkedin_data_partner_ids || [];
	window._linkedin_data_partner_ids.push(_linkedin_partner_id);
</script>

<script type="text/javascript">
	(function()

	{var s = document.getElementsByTagName("script")[0]; var b = document.createElement("script"); b.type = "text/javascript";b.async = true; b.src = "https://snap.licdn.com/li.lms-analytics/insight.min.js"; s.parentNode.insertBefore(b, s);}
	)();
</script>

<noscript>
	<img height="1" width="1" style="display:none;" alt="" src="https://dc.ads.linkedin.com/collect/?pid=437876&fmt=gif" />
</noscript>

    

  </body>
</html>
