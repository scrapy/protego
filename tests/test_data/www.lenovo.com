
<html>
<head>
  
  <title>Visitor Prioritization Waiting Room page</title>

  
  
  
  <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">


    
    <META HTTP-EQUIV="Refresh" CONTENT="30">
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
  

    
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <style>
    *,
    *:before,
    *:after {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    html,
    body,
    .bg-skew {
      height: 100%;
      font-family: "Lato", helvetica;
    }
    body {
      background: #222;
      text-align: center;
      position: relative;
      overflow-x: hidden;
    }
    .bg-skew {
      background: #f2f2f2;
      -webkit-transform: skew(0deg, -10deg);
      transform: skew(0deg, -10deg);
      padding: 200px 0;
      margin-top: -100px; /*original, -190px*/
    }
    .content {
      width: 80%;
      -webkit-transform: skew(0deg, 10deg);
      transform: skew(0deg, 10deg);
    }
    .bg-skew {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      justify-content: center;
      align-items: center;
      box-shadow: 0px 0px 91px 1px rgba(0,0,0,0.3);
    }
    .content {
      width:80%;
      height:100%;
    }
    h1 , p {
      margin:0.5em 0;
    }
    #msgContact { padding:2em 0; width:100%; max-width:750px; margin:0 auto;}
    #msgContact:after {
      content: "";
      display: table;
      clear: both;
    }
     #msgContact ul {margin:0; padding:0; list-style: none; width:44%; margin:0 3%; float:left;}
     #msgContact ul li { text-align: left; padding:0.5em 2em; border-bottom:1px solid #8c8c8c;}

    .brand-red { background: #e2231a;}
    .brand-orange { background: #ff6a00;}
    .brand-yellow { background: #fee600;};
    .brand-pink { background: #f04187;}
    .brand-blue { background: #3e8ddd;}
    .brand-cyan { background: #4ac0e0;}
    .brand-green { background: #6abf4a;}
    .brand-grey { background: #BCBCBC;}
    @media screen and (max-width: 750px) {
      .bg-skew { height:140%;}
      #msgTitle { font-size:1.6em;}
      #msgContact { width:120%; margin-left:-10%;}
      #msgContact ul li { padding:0.5em;}
      
    }
    </style>
    </head><body class="brand-grey">
  


    

  



<div class="bg-skew">
    <div class="content">
        <svg style="margin-bottom:30px;" width="213" height="71" version="1.1" viewBox="0 0 2133.3333 711.10669" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"><metadata><rdf:RDF><cc:Work rdf:about=""><dc:format>image/svg+xml</dc:format><dc:type rdf:resource="http://purl.org/dc/dcmitype/StillImage"/></cc:Work></rdf:RDF></metadata><g transform="matrix(1.3333 0 0 -1.3333 0 711.11)"><g transform="scale(.1)"><path d="M 0,0 H 16000 V 5333.33 H 0 V 0" fill="#e32124"/><path d="m6970.4 3535.9c-236.28 0-505.06-109.54-669.3-328.86l0.13 0.39-0.13-0.15 0.13 294.23h-563.74v-2052.7h563.61v1168c0 210.24 162.95 433.67 464.71 433.67 233.25 0 474.56-162.18 474.56-433.67v-1168h563.66v1272.5c0 472.03-337.72 814.64-833.63 814.64" fill="#fff"/><path d="m11810 3501.3-509.6-1398.3-509.6 1398.3h-643.8l844.6-2052h617.6l844.6 2052h-643.8" fill="#fff"/><path d="m4054.8 2883c95.97 128.86 248.91 204.5 433.56 204.5 203.15 0 357.25-116 436.87-287.15l-984.71-408.52c-26.95 209.58 26.7 373.58 114.28 491.17zm1082.9-803.1c-237.27-175.53-372.81-217.49-589.13-217.49-194.7 0-347.08 60.45-454.57 166.47l1441 597.82c-31.42 222.8-115.94 421.73-246.09 573.04-189.31 219.96-469.57 336.27-810.71 336.27-619.81 0-1087.2-457.27-1087.2-1061.1 0-619.5 468.41-1061 1149.2-1061 381.44 0 771.45 180.8 953.84 391.97l-356.38 274.02" fill="#fff"/><path d="m3337.3 1966.3h-1281.1v2149h-571.25v-2666.5h1852.4v517.53" fill="#fff"/><path d="m13466 3053c-314.8 0-543.3-238.52-543.3-577.93 0-324 242.1-577.86 550.9-577.86 314.8 0 543.3 245.11 543.3 577.86 0 324.07-242 577.93-550.9 577.93m0-1638.8c-616.5 0-1099.4 459.23-1099.4 1060.8 0 594.9 486.3 1061 1107 1061 616.4 0 1099.3-459.23 1099.3-1061 0-594.76-486.2-1060.8-1106.9-1060.8" fill="#fff"/><path d="m9126.4 3053c-314.81 0-543.25-238.52-543.25-577.93 0-324 242.04-577.86 550.87-577.86 314.81 0 543.32 245.11 543.32 577.86 0 324.07-242.05 577.93-550.94 577.93m0-1638.8c-616.44 0-1099.4 459.23-1099.4 1060.8 0 594.9 486.26 1061 1107 1061 616.38 0 1099.3-459.23 1099.3-1061 0-594.76-486.26-1060.8-1107-1060.8" fill="#fff"/><path d="m14861 1744.3h60.4l89.3-140.07 89.2 140.07h58.6v-295.51h-54.7v210.13l-91.2-142.03h-5.8l-91.1 142.03v-210.13h-54.7zm-211.1-51.81h-91.1v51.81h238.9v-51.81h-91.2v-243.7h-56.6v243.7" fill="#fff"/></g></g></svg>
        <h1 id="msgTitle">
          <span id="title-txt">Due to heavy traffic, please wait briefly while we are processing your request.</span>
          <!--<svg style="display: inline-block;margin: 0 0 -8px;" version="1.1" id="L5" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 60 80" enable-background="new 0 0 0 0" xml:space="preserve" width="50" height="40">
            <circle fill="#000" stroke="none" cx="6" cy="50" r="6" transform="translate(0 -6.12216)">
              <animateTransform attributeName="transform" dur="1s" type="translate" values="0 15 ; 0 -15; 0 15" repeatCount="indefinite" begin="0.1"></animateTransform>
            </circle>
            <circle fill="#000" stroke="none" cx="30" cy="50" r="6" transform="translate(0 -8.08144)">
              <animateTransform attributeName="transform" dur="1s" type="translate" values="0 10 ; 0 -10; 0 10" repeatCount="indefinite" begin="0.2"></animateTransform>
            </circle>
            <circle fill="#000" stroke="none" cx="54" cy="50" r="6" transform="translate(0 -3.95928)">
              <animateTransform attributeName="transform" dur="1s" type="translate" values="0 5 ; 0 -5; 0 5" repeatCount="indefinite" begin="0.3"></animateTransform>
            </circle>
          </svg>-->
        </h1>
        <p id="msgContent">Thank you for choosing Lenovo.</p>
        <div id="msgContact"></div>
      </div>
</div>

<script>
  var currentLanguage = navigator.language;
  currentLanguage = currentLanguage != null ? currentLanguage.toLocaleLowerCase() : "";
  console.log(currentLanguage)

  var titleTxt = "Due to heavy traffic, please wait briefly while we are processing your request.";
  var msgContent0  = "Thank you for choosing Lenovo.";
  var content     = "Our apologies, traffic continues to be high and requests are taking longer than expected. Please continue to hold here and your page will load as soon as traffic allows.";
  var msgContent  = "If you'd rather speak with one of our experienced customer service representatives, please call.";

  console.log(currentLanguage);

  if(currentLanguage == "de" || currentLanguage == "de-de" || currentLanguage == "de-at" || currentLanguage == "de-ch"){
  //Frame1  
  titleTxt = "Durch starken Anstieg der Webseitenbesuche musste Ihr Seitenaufruf eingereiht werden, es geht sofort weiter";
  msgContent0 = "";
  //Frame2  
  content = "Wir bitten um Entschuldigung. Die Webseitenbesuche befinden sich auf weiterhin sehr hohem Niveau, Ihr Seitenaufruf benötigt daher leider länger als erwartet. Bitte verbleiben Sie auf dieser Seite, Ihr Aufruf wird schnellstmöglich bearbeitet.";
  msgContent = "Falls Sie allerdings nicht länger warten möchten, rufen Sie uns gerne unter der angegebenen Rufnummer an.";
  }
  else if(currentLanguage == "it" || currentLanguage == "it-it"){
  //Frame1  
  titleTxt = "Di conseguenza all’altissimo traffico, non riusciamo a farti accedere subito al sito. Attendi un attimo per cortesia";
  msgContent0 = "";
  //Frame2  
  content = "Di conseguenza all’altissimo traffico, non riusciamo a farti accedere subito al sito. Attendi un attimo per cortesia";
  msgContent = "";
  }
  else if(currentLanguage == "nl" || currentLanguage == "nl-nl"){
  //Frame1  
  titleTxt = "Vanwege veel verkeer staat u in de wachtrij. Nog heel even geduld alstublieft.";
  msgContent0 = "Dank u voor het kiezen van Lenovo";
  //Frame2  
  content = "Onze excuses, het website verkeer blijft hoog en verzoeken duren langer dan verwacht. Wacht alstublieft hier en uw pagina wordt zo spoedig mogelijk geladen.Wanneer u liever met één van onze ervaren verkoop experts spreekt, belt u ons dan alstublieft.";
  msgContent = "";
  }
  else if(currentLanguage == "fr" || currentLanguage == "fr-fr" || currentLanguage == "fr-ch"){
  //Frame1  
  titleTxt = "En raison d’un nombre de visiteurs très élevé, une file d’attente a été mise en place. Nous vous remercions de patienter quelques instants.";
  msgContent0 = "";
  //Frame2  
  content = "Nous sommes désolés. Le nombre de visiteurs est toujours élevé et le traitement des commandes est plus long que prévu. Nous vous remercions de patienter";
  msgContent = "et votre page se chargera dès que le trafic le permet.*Si vous préférez discuter avec un téléconseiller, vous pouvez nous joindre au";
  }
  else if(currentLanguage == "es" || currentLanguage == "es-es"){
  //Frame1  
  titleTxt = "Estamos experimentando una alta cantidad de visitas a la Web. Por favor, permanezca a la espera";
  msgContent0 = "";
  //Frame2  
  content = "Continuamos teniendo una alta cantidad de visitas. Por favor, mantente en esta página y la página se restablecerá tan pronto la demanda nos lo permita. Disculpe las molestias ocasionadas.";
  msgContent = "Si lo prefieres, también podemos atenderte con nuestro equipo de Televentas en el número: 917 896 888";
  }
  else if(currentLanguage == "dk" || currentLanguage == "dk-da"){
  //Frame1  
  titleTxt = "Grundet ekstraordinær meget traffik er du blevet sat i kø. Du bliver viderestillet om et øjeblik";
  msgContent0 = "";
  //Frame2  
  content = "Grundet ekstraordinær meget traffik er du blevet sat i kø. Du bliver viderestillet om et øjeblik";
  msgContent = "";
  }
  else if(currentLanguage == "sv" || currentLanguage == "sv-fi" || currentLanguage == "sv-sv"){
  //Frame1  
  titleTxt = "  Vi har extraordinärt mycket trafik just nu och därför har du blivit placerad i kö. Vänligen vänta ett ögonblick.";
  msgContent0 = "";
  //Frame2  
  content = "Vi är hemskt ledsna – vi har fortfarande mycket trafik, men vi jobbar hårt för att sidan ska ladda så snart som möjligt. Vänligen vänta.";
  msgContent = "Du kan också få hjälp av våra duktiga säljare. Ring till tlf.: 08-511 610 18";
  }
  else if(currentLanguage == "pt-br"){
  //Frame1  
  titleTxt = "Due to heavy traffic, please wait briefly while we are processing your request.";
  msgContent0 = "Thank you for choosing Lenovo.";
  //Frame2  
  content = "Our apologies, traffic continues to be high and requests are taking longer than expected. Please continue to hold here and your page will load as soon as traffic allows.";
  msgContent = "If you'd rather speak with one of our experienced customer service representatives, please call.";
  }
  else if(currentLanguage == "es-mx" || currentLanguage == "es-cl" || currentLanguage == "es-ar" || currentLanguage == "es-co"){
  //Frame1  
  titleTxt = "Due to heavy traffic, please wait briefly while we are processing your request.";
  msgContent0 = "Thank you for choosing Lenovo.";
  //Frame2  
  content = "Our apologies, traffic continues to be high and requests are taking longer than expected. Please continue to hold here and your page will load as soon as traffic allows.";
  msgContent = "If you'd rather speak with one of our experienced customer service representatives, please call.";
  }
  else if(currentLanguage == "hk" || currentLanguage == "zh-hk"){
  //Frame1  
  titleTxt = "敬愛的顧客您好， 由於目前網路繁忙， 請於此頁面稍待片刻。";
  msgContent0 = "我們將盡快為您安排進入 Lenovo eShop， 感謝您的耐心等候。";
  //Frame2  
  content = "很抱歉，由於目前網路繁忙， 為確保您於 Lenovo eShop 的購物體驗，我們將進行網站訪問人流管制。 請於此頁面稍待片刻。我們將盡快為您安排進入 Lenovo eShop，感謝您的耐心等候。";
  msgContent = "如於等待期間有任何疑問，歡迎撥打以下購物專線，我們的銷售團隊會竭誠為您服務，謝謝。 800-961-837 (香港地區免費撥打)";
  }
  else if(currentLanguage == "tw" || currentLanguage == "zh-tw"){
  //Frame1  
  titleTxt = "敬愛的顧客您好， 因目前進站人潮較多，請在此頁面稍待片刻。";
  msgContent0 = "我們將盡速為您安排進站，也謝謝您的耐心等候!";
  //Frame2  
  content = "很抱歉，因目前進站人潮較多，為維護官網購物品質，我們將進行人流管制, 請在此頁面稍待片刻。我們將盡速為您安排進站，也謝謝您的耐心等候。";
  msgContent = "如等待期間，有任何疑問，歡迎撥打以下專線，將有專員竭誠為您服務，謝謝! 免費專線00801-601-372";
  }
  else if(currentLanguage == "ko" || currentLanguage == "kr" || currentLanguage == "ko-kr"){
  //Frame1  
  titleTxt = "접속자가 많습니다. 요청을 처리하는 동안 잠시 기다려주십시오.";
  msgContent0 = "";
  //Frame2  
  content = "죄송합니다. 현재 레노버 사이트 접속자가 많아 페이지 표시에 시간이 소요되고 있습니다. ";
  msgContent = "조금 기다려 주시면 트래픽이 허용되는 즉시 페이지가 연결 됩니다.";
  }

  document.getElementById("title-txt").innerHTML = titleTxt;
  document.getElementById("msgContent").innerHTML = msgContent0;
  
setTimeout(function(){
    
  document.getElementById("msgTitle").innerHTML = content;
  document.getElementById("msgContent").innerHTML = msgContent;
  document.getElementById("msgContact").innerHTML = "<ul><li>Australia 1300 557 073</li><li>Austria / Österreich 01506037201</li><li>Belgium / België 015-480433</li><li>Brazil /Brasil (11)3140-0500, 0800-885-0500</li><li>Canada 1-855-253-6686</li><li>Colombia (Bogota) 571 638 18 58</li><li>Colombia (Cali) 572 369 21 18</li><li>Colombia (Medellin) 574 354 91 29</li><li>Denmark / Danmark 36 14 06 97</li><li>Finland 09 424 52 988</li><li>France 01 55 70 39 81</li><li>Germany / Deutschland 0711 6569 0807</li><li>Hong Kong 800-961-837</li><li>India 1-800-4199-733</li><li>Ireland 015628320</li></ul>" +
                                                    "<ul><li>Italy / Italia 390221080677</li><li>Japan 0120-80-4545</li><li>Korea 02-6288-0077</li><li>Mexico / Méjico 018003-536686</li><li>Netherlands 085-2085595</li><li>New Zealand 0800 446 833</li><li>Norway 80 02 46 17</li><li>Singapore 800-601-1481</li><li>Spain 917896888</li><li>Sweden / Sverige 08 511 610 18</li><li>Switzerland 0445291040</li><li>Taiwan 0800-000-702 #1</li><li>United Kingdom 01256 741677</li><li>United States 1-855-253-6686</li></ul>"
}, 5000);
</script>
</body></html>
