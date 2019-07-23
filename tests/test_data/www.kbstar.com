<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="No-Cache" />
<meta name="author" content="Joe Seung Woon" />
<title>KB국민은행</title>
<link rel="apple-touch-icon" href="https://www.kbstar.com/openimg/favi_iphone_n201512.png" />
<link rel="apple-touch-icon-precomposed" media="screen and (resolution:163dpi)" href="https://www.kbstar.com/openimg/favi_ipad_n201512.png" />
<link rel="apple-touch-icon-precomposed" media="screen and (resolution:326dpi)" href="https://www.kbstar.com/openimg/favi_iphone4_n201512.png" />
<script type="text/javascript" src="2017/jquery-1.6.4.min.js"></script>
<script type="text/javascript" src="2017/jquery.cookie.js"></script>
<!-- # 2018리뉴얼 #-->
<link rel="stylesheet" type="text/css" href="font/font.css?20181120" />
<link rel="stylesheet" type="text/css" href="2018/css/intro_2018.css?20190225" />
<link rel="stylesheet" type="text/css" href="2018/css/intro_2018_content.css?20190709" />
<script type="text/javascript" src="2018/js/intro_2018.js?20181120"></script>
<script type="text/javascript" src="2018/js/intro_2018_ui.js?20181120"></script>
<!-- // -->
<script type="text/javascript">
//<![CDATA[
	////////////////////////////////////////
	// i.kbstar.com Check
	////////////////////////////////////////
	var Domain = document.URL;

	$(function() {
		if (Domain.indexOf("i.kbstar.com") > 0 ) {
			window.open("./install","_self");
		}

		initCookie("QSID");

		if((navigator.userAgent.match(/iPhone/i)) || (navigator.userAgent.match(/iPod/i)) || navigator.userAgent.match(/Android/i)) {
			location.href="https://obank.kbstar.com/quics?page=omweb&amp;QViewPC=N";
		}

		if (navigator.userAgent.match(/iPad/i)) {
			$('body').append('<div class="btn-mobile"><a href="https://obank.kbstar.com/quics?page=omweb">모바일웹 사이트로</a></div>');
		}

		var today = new Date();
		today = getvalDate();
	});

	function initCookie(name) {
		var value = "";
		var today = new Date();

		today.setDate( today.getDate() -1);
		document.cookie = name + "=" + escape( value ) + "; domain=kbstar.com; path=/; expires=" + today.toGMTString() + ";";
	}

	function getvalDate() {
		var now = new Date();
		year = now.getYear();

		if((year + "").length <4) year = year + 1900;
		month = now.getMonth() +1;

		if((month + "").length <2) month = "0" + month;
		date = now.getDate();

		if((date + "").length <2) date = "0" + date;
		today = year+""+month+""+date;

		return today;
	}

	////////////////////////////////////////
	// 피싱체크
	////////////////////////////////////////
	if(parent && parent!=this) {
		location.href='https://obank.kbstar.com/quics?page=C026057';
	}

	function cardSSOAlert(){
		alert("2014년 8월 5일(화)부터 은행/카드 홈페이지間 자동 로그인 중단으로 카드서비스는 KB국민카드 홈페이지에서 별도 로그인 후 이용하실 수 있습니다.");
		location.href='https://www.kbcard.com/';
	}

	////////////////////////////////////////
	// 레이어팝업
	////////////////////////////////////////
	$('.closebtn').click(function(){
		$('.layerType').hide();
		return false;
	});

	function layerOn(){
		$('body').prepend('<div class="layerType layerWrap" style="width:374px;" id="pid_0001126"><div class="contimg"><img src="https://www.kbstar.com/2017/images/intro_zerolayer_181018_01.png" alt="보이스피싱 제로(Zero)캠페인 그놈목소리 3go의심하고! 전화끊고! 확인하고! 보이스피싱 의심하GO! 주저 없이 전화끊Go! 해당 기관에 확인하Go!" /><img src="https://www.kbstar.com/2017/images/intro_zerolayer_181018_02.png" alt="다음 항목 중 하나라도 해당한다면? 보이스피싱사기가 의심됩니다!대출 처리비용 등을이유로 선입금 요구!저금리,정부지원 대출상품이 가능하다며 선입금요구!검찰,경찰,금융감독원이라며 안전계좌로 이체요구!계좌 비밀번호, 인증서비밀번호 등 개인금융정보 요구!가족 납치,협박 등을 하며 금전요구!" /><img src="https://www.kbstar.com/2017/images/intro_zerolayer_181018_03.png" alt="금융감독원 범금융권 보이스피싱전화번호 경찰청 112 금융감독원 1332" /></div><div class="btnArea"><input type="checkbox" id="checkbox_0001126" class="chk" name="checkbox_0001126" /><label for="checkbox_0001126">7일간 이 창을 열지 않음</label><button type="button" class="closebtn" onclick="closeOpenPopupWin(\'0001126\',\'notOpen_0001126\',7); return false;">닫기</button></div></div>'); //
	}

	$(window).load(function(){
		var getWWWCookiedate = getWWWCookie('notOpen_0001126');
		//if( getWWWCookiedate != 'checked') layerOn();
	});
//]]>
</script>

</head>
<body>


<!-- 파업 공지사항
<div class="layerType pd" style="width:450px;left:50%;top:50%;margin-left:-243px;margin-top:-207px" id="layer0107">
	<h1 class="tit_layerpopH1">대고객 안내문</h1>
	<div>
		항상 KB국민은행을 이용해 주시는 고객님께 진심으로 감사 드립니다.<br/>
		<b style="color: #000;">1월 8일(화)은 노동조합의 파업</b>으로 영업점 이용 시 혼잡이 예상됩니다.<br/><br/>

		<b style="color: #000;">인터넷뱅킹, 모바일뱅킹(KB스타뱅킹), 자동화기기는 <br />
        정상적으로 이용 가능</b>하며, <br/>
		KB국민은행은 <b style="color: #000;">‘영업점 업무의 신속한 정상화’</b>를 위하여 <br/>
		최선을 다하겠습니다. <br/><br/>

        또한 고객님들의 불편을 최소화 하고자 아래와 같이<br/> 정상 업무가 가능한  <strong>지역별 거점점포를 운영</strong>하고 있습니다.<br />

        <span class="btn small"><a href="https://otalk.kbstar.com/quics?page=C019391&amp;bbsMode=view&amp;articleId=16398&amp;QSL=F" class="btn02">☞ <u>거점점포 현황보기</u></a></span>

        <br /><br />


		<b style="color: #000;">다시 한번 불편을 드리게 되어 대단히 죄송하다는 말씀을 드립니다.</b> <br/>

		자세한 내용은 KB국민은행 ☎1588-9999로 문의하시기 바랍니다. <br/><br/>

        <b style="color: #000;">※ 8일 영업시간 중 발생하는 금융거래수수료 면제 안내</b><br>
- 은행거래수수료 중 타행송금 수수료 등 자동화기기 이용 수수료 <br>
- 창구 거래에서 발생하는 제증명서발급수수료&middot;제사고신고수수료 등 수신 및 여신 관련 수수료 <br>
- 외화수표 매입 등 외환 관련 수수료
</div>
	<div class="btnArea2 tac">
		<button type="button" class="btn-com c1" onclick="$('#layer0107').hide();return false;">닫기</button>
	</div>
	<p class="layerClose"><a href="#" onclick="$('#layer0107').hide();return false;">닫기</a></p>
</div>-->



<div id="skipNav"><a href="#content">본문이동</a></div>
<div class="wrapAll">
	<div class="headerWrap">
		<div class="headBox">
			<div id="headArea">
				<!-- ################################## -->
				<!-- ### LOGO 및 GNB ### -->
				<!-- ################################## -->
				<h1 class="logo"><a href="https://www.kbstar.com/">KB국민은행</a></h1>
				<div class="wrap-gnb" id="uiNavGnb">
					<ul class="nav-gnb">
						<!-- 개인 -->
						<li class="m1">
							<a href="https://obank.kbstar.com/quics?page=obank&amp;QSL=F">개인</a>
							<div class="submenu">
								<ul>
									<li><a href="https://obank.kbstar.com/quics?page=C055068&amp;QSL=F">조회</a></li>
									<li><a href="https://obank.kbstar.com/quics?page=C016524&amp;QSL=F">이체</a></li>
									<li><a href="https://obank.kbstar.com/quics?page=C016526&amp;QSL=F">공과금</a></li>
									<li><a href="https://obank.kbstar.com/quics?page=C016535&amp;QSL=F">뱅킹관리</a></li>
									<li><a href="https://obank.kbstar.com/quics?page=C030037&amp;QSL=F">금융상품</a></li>
								</ul>
							</div>
						</li>
						<!-- // -->
						<!-- 기업 -->
						<li class="m2">
							<a href="https://obiz.kbstar.com/quics?page=obiz&amp;QSL=F">기업</a>
							<div class="submenu">
								<ul>
									<li><a href="https://obiz.kbstar.com/quics?page=C015658&amp;QSL=F">조회</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C015746&amp;QSL=F">이체</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C015747&amp;QSL=F">공과금</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C016127&amp;QSL=F">예금</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C016164&amp;QSL=F">펀드</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C015749&amp;QSL=F">대출</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C016220&amp;QSL=F">신탁</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C027615&amp;QSL=F">보험</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C015750&amp;QSL=F">자금관리</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C015751&amp;QSL=F">B2B</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C015753&amp;QSL=F">뱅킹관리</a></li>
									<li><a href="https://obiz.kbstar.com/quics?page=C015752&amp;QSL=F">기업서비스</a></li>
								</ul>
							</div>
						</li>
						<!-- // -->
						<!-- 기타 -->
						<li class="m3"><a href="https://obank.kbstar.com/quics?page=C030037&amp;QSL=F">금융상품</a></li>
						<li class="m4"><a href="https://omoney.kbstar.com/quics?page=onmoney&amp;QSL=F">자산관리</a></li>
						<li class="m5"><a href="https://onland.kbstar.com/quics?page=okbland&amp;QSL=F">부동산</a></li>
						<li class="m6"><a href="https://okbfex.kbstar.com/quics?page=ofex&amp;QSL=F">외환</a></li>
						<li class="m7"><a href="https://okbfex.kbstar.com/quics?page=opensn&amp;QSL=F">퇴직연금</a></li>
						<li class="m8"><a href="https://www.kbcard.com" target="_blank" title="새창">카드</a></li>
						<!-- // -->
						<!-- 전체서비스 -->
						<li class="m9">
							<a href="#">전체서비스</a>
							<div class="submenu list">
								<ul>
									<li>
										<span class="tit">금융서비스</span>
										<ul>
											<!--<li><a href="https://okbfex.kbstar.com/quics?page=ofex&amp;QSL=F">외환</a></li>-->
											<!--<li><a href="https://okbfex.kbstar.com/quics?page=opensn&amp;QSL=F">퇴직연금</a></li>-->
											<li><a href="https://okbfex.kbstar.com/quics?page=oescrow&amp;QSL=F">에스크로이체</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=osenior&amp;QSL=F">골든라이프뱅킹</a></li>
											<li><a href="https://obank.kbstar.com/quics?page=osecure&amp;QSL=F">보안센터</a></li>
											<li><a href="https://obank.kbstar.com/quics?page=C018872&amp;QSL=F">공인인증센터</a></li>
											<li><a href="https://cms.kbstar.com/quics?page=ocms&amp;QSL=F">Star CMS</a></li>
										</ul>
									</li>
									<li>
										<span class="tit">특화서비스</span>
										<ul>
											<li><a href="https://oland.kbstar.com/quics?page=ohsubs&amp;QSL=F">주택청약</a></li>
											<li><a href="https://okbfex.kbstar.com/quics?page=onhbond&amp;QSL=F">국민주택채권</a></li>
											<li><a href="https://okbfex.kbstar.com/quics?page=onhouse&amp;QSL=F">주택도시기금</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=omobile&amp;QSL=F">스마트금융서비스</a></li>
										</ul>
									</li>
									<li>
										<span class="tit">멤버십서비스</span>
										<ul>
											<li><a href="https://otalk.kbstar.com/quics?page=omember&amp;QSL=F">KB고객우대제도</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=ognw&amp;QSL=F">GOLD&amp;WISE</a></li>
										</ul>
									</li>
									<li>
										<span class="tit">KB와 함께</span>
										<ul>
											<li><a href="https://omoney.kbstar.com/quics?page=oabout&amp;QSL=F">은행소개</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=C016505&amp;QSL=F">지점안내</a></li>
											<li><a href="https://obank.kbstar.com/quics?page=osupp&amp;QSL=F">고객센터</a></li>
											<li><a href="https://otalk.kbstar.com/quics?page=oblog&amp;QSL=F">KB정보광장</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=oevent&amp;QSL=F">이벤트</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=ohope&amp;QSL=F">희망금융클리닉</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=olovekr&amp;QSL=F">나라사랑서비스</a></li>
											<li><a href="https://kbgoodjob.kbstar.com" target="_blank" title="새창 열기">KB굿잡</a></li>
											<li><a href="http://www.kbbizmatch.com" target="_blank" title="새창 열기">KB Biz-매칭</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</li>
						<!-- // -->
						<!-- GLOBAL -->
						<li class="m10">
							<a href="#">GLOBAL</a>
							<div class="submenu list">
								<ul>
									<li>
										<span class="tit">LANGAUGE</span>
										<ul>
											<li><a href="https://omoney.kbstar.com/quics?page=oeng&amp;QSL=F">English</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=ochn&amp;QSL=F">Chinese</a></li>
											<li><a href="https://omoney.kbstar.com/quics?page=ojpn&amp;QSL=F">Japanese</a></li>
										</ul>
									</li>
									<li>
										<a href="https://global.kbstar.com/quics?page=ogcom&amp;QSL=F" class="tit" target="_blank" title="새창 열기">KB GLOBAL BANKING</a>
										<ul>
											<li class="nation1"><a target="_blank" title="새창 열기" href="https://global.kbstar.com/quics?page=ogtk&amp;QSL=F">Japan</a></li>
											<li class="nation2"><a target="_blank" title="새창 열기" href="https://global.kbstar.com/quics?page=ogld&amp;QSL=F">UK</a></li>
											<li class="nation3"><a target="_blank" title="새창 열기" href="https://global.kbstar.com/quics?page=ogauc&amp;QSL=F">New Zealand</a></li>
											<li class="nation4"><a target="_blank" title="새창 열기" href="https://global.kbstar.com/quics?page=ogcbd&amp;QSL=F">Cambodia</a></li>
											<li class="nation5"><a target="_blank" title="새창 열기" href="http://www.kbstarchina.com/">China</a></li>
											<li class="nation6"><a target="_blank" title="새창 열기" href="https://global.kbstar.com/quics?page=oghcm&amp;QSL=F">Vietnam</a></li>
											<li class="nation7"><a target="_blank" title="새창 열기" href="https://global.kbstar.com/quics?page=oghk&amp;QSL=F">Hong Kong</a></li>
											<li class="nation8"><a target="_blank" title="새창 열기" href="https://global.kbstar.com/quics?page=ogind&amp;QSL=F">India</a></li>
										</ul>
									</li>
								</ul>
							</div>
						</li>
						<!-- // -->
						<!-- 통합검색 -->
						<li class="m11">
							<a href="#search_container_2018">통합검색</a>
							<!-- ################################## -->
							<!-- 검색레이어 -->
							<!-- ################################## -->
							<div id="search_container_2018">
								<form name="TopTotalSearchForm" id="TopTotalSearchForm" method="get" action="https://obank.kbstar.com/quics" onsubmit="return false;">
									<fieldset class="form-search">
										<legend>통합검색</legend>
										<input type="hidden" name="page" value="C020697" />
										<input type="hidden" name="검색설정명" id="검색설정명" value="total" />
										<input type="hidden" name="검색출력량" id="검색출력량" value="3" />
										<input type="hidden" name="검색페이지번호" id="검색페이지번호" value="1" />
										<!-- ### 검색어입력 ### -->
										<div class="form">
											<div class="input-holder">
												<input type="text" name="검색어" id="검색어" title="검색어" onkeypress="if (event.keyCode==13) { TopTotalSearchFormSearch(); event.returnValue=false; }"/>
												<span id="uiMesIntroSearchHolder">검색어를 입력하세요.</span>
											</div>
											<button type="button" class="btn-icon ic1 ui-reset">입력값초기화</button>
											<button type="button" class="btn-icon ic2 ui-submit">검색</button>
										</div>
										<!-- ### 추천검색어 ### -->
										<dl class="info-word">
											<dt>추천검색어</dt>
											<dd>
												<button type="button" onclick="search('주택청약');">주택청약</button>
												<button type="button" onclick="search('청약');">청약</button>
												<button type="button" onclick="search('공인인증서');">공인인증서</button>
												<button type="button" onclick="search('otp');">OTP</button>
												<button type="button" onclick="search('이체한도');">이체한도</button>
												<button type="button" onclick="search('FATI');">FATI</button>
											</dd>
										</dl>
										<!-- // -->
									</fieldset>
									<button type="button" title="통합검색 닫기" class="ui-close">통합검색 닫기</button>
								</form>
							</div>
							<!-- ################################## -->
						</li>
						<!-- // -->
					</ul>
				</div>
				<!-- ################################## -->
				<!-- ### 로그인 ### -->
				<!-- ################################## -->
				<ul class="certMenu session-off c1">
					<li><a href="https://obank.kbstar.com/quics?page=C019088&amp;QSL=F">로그인</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C018872&amp;QSL=F">공인인증센터</a></li>
				</ul>
				<!-- ################################## -->
			</div>
		</div>
		<!-- //headBox -->
	</div>

	<div id="content" class="contentWrap">
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<!-- 상단 비주얼영역 -->
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<div class="wrap-visual">
			<!-- ################################## -->
			<!-- 슬라이더 : 컨텐츠 -->
			<!-- ################################## -->
			<div class="area-con">
				<ul>
					<li class="section section8">
						<div>
							<strong>늘 곁에, 더 가까이 <br/><span>KB국민은행</span></strong>
							<span>일상의 쉼표가 필요한 순간, <br/>KB국민은행과 함께 하세요.</span>
						</div>
					</li>
					<!-- 컨텐츠하나 ---------------------- // -->
					<li class="section section9">
						<div>
							<strong>KB스타뱅킹에서 <br/><span>한 번에!</span></strong>
							<span><strong>손쉽게</strong> 통장&middot;카드 만들기<br/><strong>간단하게</strong> 분실신고&middot;재발급 하고<br/><strong>빠르게</strong> 번호표 발행까지!</span>
							<a href="https://omoney.kbstar.com/quics?page=C028156&amp;QSL=F" class="link">바로가기</a>
						</div>
					</li>
					<!-- 컨텐츠하나 ---------------------- // -->
					<li class="section section1">
						<div>
							<span>갤럭시와 KB금융의 스마트한 만남</span>
							<strong><span class="txt-logo1">갤럭시 x KB STAR</span></strong>
							<span>갤럭시 S10/S9/NOTE9/A9PRO를 KB에서<br/>드리는 다양한 혜택과 함께 만나보세요!</span>
							<a href="https://otalk.kbstar.com/quics?page=C019391&amp;bbsMode=view&amp;articleId=16924&amp;QSL=F" class="link">바로가기</a>
						</div>
					</li>
					<!-- 컨텐츠하나 ---------------------- // -->
					<li class="section section4">
						<div>
							<strong><span>KB 소호</span> 컨설팅 센터</span></strong>
							<span>창업 시작부터 성공까지<br/>KB 국민은행이 함께 합니다.</span>
							<a href="https://obiz.kbstar.com/quics?page=C044463&amp;QSL=F" class="link">바로가기</a>
						</div>
					</li>
					<!-- 컨텐츠하나 ---------------------- // -->
					<li class="section section5">
						<div>
							<strong><span>KB모바일인증서</span></strong>
							<span>모든 금융거래의 시작<br/>이제는 평생, 쉽게, 안전하게 사용하세요!</span>
							<a href="https://otalk.kbstar.com/quics?page=C063974&amp;QSL=F" class="link">바로가기</a>
						</div>
					</li>
					<!-- ------------------------------------// -->
                    <!-- 컨텐츠하나 ---------------------- // -->
					<li class="section section2">
						<div>
							<strong><span>전문가 상시채용 공고</span></strong>
							<span>아시아 금융을 선도하는 글로벌 리더로<br/>성장할 최고의 인재를 기다립니다.</span>
							<a href="https://omoney.kbstar.com/quics?page=C017623&amp;QSL=F" class="link">바로가기</a>
						</div>
					</li>
				</ul>
			</div>
			<!-- ################################## -->
			<!-- 슬라이더 : 컨트롤 -->
			<!-- ################################## -->
			<div class="area-control">
				<button class="ui-btn before">이전</button>
				<ul>
					<li class="on"><a href="#">늘 곁에 더 가까이 KB국민은행</a></li>
					<li><a href="#">KB스타뱅킹에서 한 번에!</a></li>
					<li><a href="#">갤럭시와 KB금융의 스마트한 만남 갤럭시 KBSTAR</a></li>
					<li><a href="#">KB 소호 컨설팅 센터</a></li>
					<li><a href="#">KB모바일인증서</a></li>
                    <li><a href="#">전문가 상시채용 공고</a></li>
				</ul>
				<button class="ui-btn play off">자동재생시작</button>
				<button class="ui-btn stop">자동재생멈춤</button>
				<button class="ui-btn next">다음</button>
			</div>
			<!-- ################################## -->
			<!-- 브랜드스토리보기 -->
			<!-- ################################## -->
			<div class="area-aside">
				<a href="#" class="ui-btn-brand" id="uiBtnBrand">KB브랜드 스토리 보기</a>
			</div>
			<!-- ################################## -->
		</div>

		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<!-- 빠른메뉴 -->
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<div class="main-section main-con1">
			<h2 class="blind">빠른메뉴</h2>
			<ul class="menu1">
				<li><a href="https://obank.kbstar.com/quics?page=C019088&amp;QSL=F" class="q1">전체계좌조회</a></li>
				<li><a href="https://obank.kbstar.com/quics?page=C018393&amp;QSL=F" class="q2">계좌이체</a></li>
				<li><a href="#" onclick="openPopup('https://obank.kbstar.com/quics?page=C025255&cc=b028364:b028702&QSL=F','빠른조회','720','650'); return false;" title="새창 열기">빠른조회</a></li>
			</ul>
			<ul class="menu2">
				<li><a href="https://obank.kbstar.com/quics?page=osecure&amp;QSL=F">보안센터</a></li>
				<li><a href="https://otalk.kbstar.com/quics?page=omember&amp;QSL=F">고객우대제도</a></li>
				<li><a href="https://obank.kbstar.com/quics?page=C036336&amp;QSL=F">소비자정보포털</a></li>
				<li><a href="https://obank.kbstar.com/quics?page=C029656&amp;QSL=F">상담신청</a></li>
				<li><a href="https://obank.kbstar.com/quics?page=C022180&amp;QSL=F">상품공시실</a></li>
			</ul>
		</div>

		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<!-- 새소식, 이벤트 -->
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<div class="main-section main-con2">
			<!-- ################################## -->
			<!-- 새소식 -->
			<!-- ################################## -->
			<div class="section">
				<h2>새소식</h2>
				<ul class="list-board">
					
					
					
					<!-- 컨텐츠하나 ---------------------- // -->
					<li>
						<a href="https://obank.kbstar.com/quics?page=C034274&boardId=992&comId=b049912&articleId=2156&bbsMode=view">
							<span>국내 은행을 사칭한 피싱 이메일 주의 안내</span>
							<em class="icon-new">[NEW]</em>
							<span>07.04</span>
						</a>
					</li>
					
					<!-- 컨텐츠하나 ---------------------- // -->
					<li>
						<a href="https://otalk.kbstar.com/quics?page=C019391&amp;bbsMode=view&amp;articleId=17291&amp;QSL=F">
							<span>KB스타뱅킹 「큰글씨뱅킹서비스」 안내</span>
							<!--<em class="icon-new">[NEW]</em>-->
							<span>06.20</span>
						</a>
					</li>

					
					
					
					<!-- 컨텐츠하나 ---------------------- // -->
					<li>
						<a href="https://otalk.kbstar.com/quics?page=C019391&amp;bbsMode=view&amp;articleId=16926&amp;QSL=F">
							<span>바이오인증을 활용한 「손으로 출금」 서비스 안내</span>
                            <!--<em class="icon-new">[NEW]</em>-->
							<span>04.17</span>
						</a>

					</li>


					


					






					<!-- ---------------------------------- // -->
				</ul>
				<a href="https://otalk.kbstar.com/quics?page=C019391&amp;QSL=F" class="sub" title="새소식 바로가기">바로가기</a>
			</div>

			<!-- ################################## -->
			<!-- 이벤트 -->
			<!-- ################################## -->
			<div class="section">
				<h2>이벤트</h2>
				<ul class="list-board">

                    <!-- 컨텐츠하나 ---------------------- // -->
                    <li>
						<a href="https://omoney.kbstar.com/quics?page=C016559&amp;cc=b033091:b032977&amp;이벤트일련번호=297146&amp;QSL=F">
							<span>주택청약종합저축 「7·7·7」 비대면 신규가입 이벤트 실시!</span>
                            <em class="icon-new">[NEW]</em>
							<span>07.15 ~ 08.31</span>
						</a>
					</li>
					
					<!-- 컨텐츠하나 ---------------------- // -->
                    <li>
						<a href="https://omoney.kbstar.com/quics?page=C016559&amp;cc=b033091:b032977&amp;이벤트일련번호=296453&amp;QSL=F">
							<span>리브와 함께 AorB 퀴즈 풀고 인싸 되어보기</span>
                            <em class="icon-new">[NEW]</em>
							<span>06.26 ~ 07.23</span>
						</a>
					</li>
					
					
					<!-- 컨텐츠하나 ---------------------- // -->
					<li>
						<a href="https://omoney.kbstar.com/quics?page=C016559&amp;cc=b033091:b032977&amp;이벤트일련번호=295740&amp;QSL=F">
							<span>로보어드바이저「케이봇쌤」펀드 포트폴리오 가입 이벤트</span>
                            <em class="icon-new">[NEW]</em>
							<span>06.10 ~ 08.30</span>
						</a>
					</li>
					
		

                    


					





					<!-- ---------------------------------- // -->

				</ul>
				<a href="https://omoney.kbstar.com/quics?page=oevent&amp;QSL=F" class="sub" title="이벤트 바로가기">바로가기</a>
			</div>
			<!-- ################################## -->

		</div>

		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<!-- 인사이트 -->
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<div class="main-section main-con3">
			<div class="section wrap-slider">
				<h2 class="blind">인사이트</h2>
				<!-- ################################## -->
				<!-- 슬라이더 : 컨텐츠 -->
				<!-- ################################## -->
				<div class="area-con">
					<ul>
						<!-- 컨텐츠하나 ---------------------- // -->
						<li class="ico1">
							<a href="https://omoney.kbstar.com/quics?page=onmoney">
								<span><em>서비스</em></span>
								<strong class="tit"><span>KBot SAM</span> (케이봇쌤)</strong>
								<span>로봇과 인간이 함께 추천하는<br />최적의 포트폴리오</span>
							</a>
						</li>
						<!-- 컨텐츠하나 ---------------------- // -->
						<li class="ico2">
							<a href="https://otalk.kbstar.com/quics?page=C019392&amp;bbsMode=view&amp;articleId=15790&amp;QSL=F">
								<span><em>추천상품</em></span>
								<strong class="tit"><span>KB Young Youth</span> 통장&middot;적금</strong>
								<span>나와 내아이를 위한 상품<br/>다양한 부가서비스까지 한가득</span>
							</a>
						</li>
						<!-- 컨텐츠하나 ---------------------- // -->
						<li class="ico3">
							<a href="https://omoney.kbstar.com/quics?page=C043279&amp;QSL=F">
								<span><em>서비스</em></span>
								<strong class="tit">계좌통합서비스 <span>KB마이머니</span></strong>
								<span>각 금융기관에 흩어진 나의 자산을 <br/>한 곳에 모아서 관리해보세요.</span>
							</a>
						</li>
						<!-- 컨텐츠하나 ---------------------- // -->
						<li class="ico4">
							<a href="https://obank.kbstar.com/quics?page=C016613&amp;cc=b061496:b061645&amp;isNew=Y&amp;prcode=DP000938">
								<span><em>추천상품</em></span>
								<strong class="tit"><span>KB Star</span> 정기예금</strong>
								<span>Digital KB의 대표 정기예금<br/>알아서 자동재예치/자동해지</span>
							</a>
						</li>
						<!-- ---------------------------------- // -->
					</ul>
				</div>
				<!-- ################################## -->
				<!-- 슬라이더 : 컨트롤 -->
				<!-- ################################## -->
				<div class="area-control">
					<button class="ui-btn before">이전</button>
					<button class="ui-btn play off">자동재생시작</button>
					<button class="ui-btn stop">자동재생멈춤</button>
					<button class="ui-btn next">다음</button>
				</div>
				<!-- ################################## -->
			</div>
		</div>

		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<!-- 금융상품 -->
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<div class="main-section main-con4">
			<div class="section">
				<h2>금융상품</h2>
				<ul class="list-link1">
					<li><a href="https://obank.kbstar.com/quics?page=C016528" class="ico1">예금</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C016529" class="ico2">펀드</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C016530" class="ico3">대출</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C016531" class="ico4">신탁</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C040686" class="ico5">ISA</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C016533" class="ico6">보험/공제</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C016622" class="ico7">골드</a></li>
				</ul>
				<a href="https://obank.kbstar.com/quics?page=C030037" class="sub" title="금융상품 바로가기">바로가기</a>
			</div>
		</div>

		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<!-- 금융사고예방 / 소비자권익보호 -->
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<div class="main-section main-con5">
			<!-- ################################## -->
			<!-- 금융사고예방 -->
			<!-- ################################## -->
			<div class="section">
				<h2>금융사고예방</h2>
				<ul>
					<li>
						<a href="https://obank.kbstar.com/quics?page=C034288&amp;QSL=F">
							<strong>전자금융사기예방 서비스</strong>
							<span>각종 금융사기수법에 한층 강화된 다양한 전자금융사기예방 서비스로 안전한 인터넷뱅킹 사용이 가능합니다.</span>
						</a>
					</li>
					<li>
						<a href="https://obank.kbstar.com/quics?page=C047785&amp;QSL=F">
							<strong>통장(카드) 매매·양도는 불법</strong>
							<span>고객님의 자산을 보호하고 금융사기를 예방하기 위한 최선의 방법은 대포통장 근절입니다.</span>
						</a>
					</li>
					<li>
						<a href="https://obank.kbstar.com/quics?page=C034305&amp;boardId=722&amp;compId=b035718&amp;articleId=1489&amp;bbsMode=view&amp;viewPage=2&amp;articleClass=&amp;searchCondition=title&amp;searchStr=&amp;QSL=F">
							<strong>사진촬영·QR스캔 절대금지</strong>
							<span>타인이 OTP/보안카드 번호를 요구 (2개 초과) 하는 경우는 금융사기이니 절대 응하지 마십시오.</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- ################################## -->
			<!-- 소비자권익보호 -->
			<!-- ################################## -->
			<div class="section">
				<h2>소비자권익보호</h2>
				<ul>
					<li><a href="http://www.fss.or.kr/fss/kr/main.html" target="_blank" title="새창 열기">금융감독원 바로가기</a></li>
					<li><a href="https://obiz.kbstar.com/quics?page=C039486&amp;QSL=F">미수령주식 찾아주기 캠페인</a></li>
					<li class="toggle-area">
						<span>비교조회서비스<button type="button" class="ui-toggle">상세목록</button></span>
						<ul>
							<li><a target="_blank" title="새창 열기" href="http://www.kfb.or.kr/info/interest_product.html?S=FA">은행금리비교</a></li>
							<li><a target="_blank" title="새창 열기" href="http://finlife.fss.or.kr/main/main.do">금융상품한눈에</a></li>
							<li><a target="_blank" title="새창 열기" href="http://fine.fss.or.kr/main/index.jsp">금융소비자정보포털 &#39;파인&#39;</a></li>
						</ul>
					</li>
				</ul>
			</div>
			<!-- ################################## -->
			<!-- 리브메이트 배너 -->
			<!-- ################################## -->
			<div class="aside box-info">
				<a href="https://www.liivmate.com/katws/web/main.do">
					<strong>KB금융그룹통합멤버십 Liiv Mate(리브메이트)</strong>
					<span>KB Easy대출<br />한번의 조회로 최적의<br />대출상품 추천!</span>
				</a>
			</div>
			<!-- ################################## -->
		</div>

		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<!-- KB APP -->
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
		<div class="main-section main-con6">
			<div class="section">
				<h2>KB APP</h2>
				<ul class="list-link2">
					<li><a href="https://omoney.kbstar.com/quics?page=C028156&amp;QSL=F" class="ico1">KB스타뱅킹</a></li>
					<li><a href="https://omoney.kbstar.com/quics?page=C030160&amp;QSL=F" class="ico2">KB기업뱅킹</a></li>
					<li><a href="https://omoney.kbstar.com/quics?page=C043279&amp;QSL=F" class="ico3">KB마이머니</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C040663&amp;QSL=F" class="ico4">KB스타알림</a></li>
					<li><a href="https://otalk.kbstar.com/quics?page=C019391&amp;bbsMode=view&amp;articleId=15468&amp;QSL=F" class="ico5">Liiv</a></li>
					<li><a href="https://omoney.kbstar.com/quics?page=C045013&amp;QSL=F" class="ico6">Liiv Mate</a></li>
					<li><a href="https://onland.kbstar.com/quics?page=okbland&amp;QSL=F" class="ico7">KB부동산</a></li>
					<li><a href="https://omoney.kbstar.com/quics?page=C045893&amp;QSL=F" title="리브통 안내페이지" class="ico8">리브통</a></li>
					<li><a href="https://omoney.kbstar.com/quics?page=C056265&amp;QSL=F" title="리브똑똑 안내페이지" class="ico9">리브똑똑</a></li>
				</ul>
			</div>
		</div>
		<!-- //////////////////////////////////////////////////////////////////////////////////// -->
	</div>

	<!-- ////////////////////////////////////////// -->
	<!-- FOOTER  -->
	<!-- ////////////////////////////////////////// -->
	<div class="footWrap">
		<div id="FOOTER">
			<div class="foot_area_2015">
				<!-- ################################## -->
				<!-- ### 기본정보 ### -->
				<!-- ################################## -->
				<ul class="nav-fnb">
					<li><a href="https://obank.kbstar.com/quics?page=C019763&amp;QSL=F">이용상담</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C040531&amp;QSL=F">보안프로그램</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C019933&amp;QSL=F">사고신고</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C023000&amp;QSL=F">보호금융상품등록부</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C036346&amp;QSL=F"><strong>전자민원접수</strong></a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C061976&amp;QSL=F"><strong>개인정보처리방침</strong></a></li>
					<li><a href="https://omoney.kbstar.com/quics?page=C017681&amp;QSL=F"><strong>경영공시</strong></a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C040593&amp;QSL=F">그룹 내 고객정보 제공안내</a></li>
					<li><a href="https://obank.kbstar.com/quics?page=C057315&amp;QSL=F">스튜어드십 코드</a></li>
				</ul>
				<!-- ################################## -->
				<!-- ### 바로가기 및 고객센터 ### -->
				<!-- ################################## -->
				<div class="info-group" id="navFooterGroup">
					<ul class="list">
						<!-- ---------------------- -->
						<!-- KB금융그룹네트워크 -->
						<!-- ---------------------- -->
						<li>
							<a href="#" class="tit">KB금융그룹네트워크</a>
							<div class="info">
								<ul>
									<li><a href="https://www.kbfg.com" target="_blank" title="새창 열기">KB금융그룹</a></li>
									<li><a href="http://www.kbsec.co.kr" target="_blank" title="새창 열기">KB증권</a></li>
									<li><a href="http://www.kbinsure.co.kr" target="_blank" title="새창 열기">KB손해보험</a></li>
									<li><a href="https://www.kbcard.com" target="_blank" title="새창 열기">KB국민카드</a></li>
									<li><a href="https://www.kbli.co.kr" target="_blank" title="새창 열기">KB생명보험</a></li>
									<li><a href="http://www.kbam.co.kr" target="_blank" title="새창 열기">KB자산운용</a></li>
									<li><a href="http://www.kbcapital.co.kr" target="_blank" title="새창 열기">KB캐피탈</a></li>
									<li><a href="https://www.kbsavings.com" target="_blank" title="새창 열기">KB저축은행</a></li>
									<li><a href="http://www.kbret.co.kr" target="_blank" title="새창 열기">KB부동산신탁</a></li>
									<li><a href="http://www.kbic.co.kr" target="_blank" title="새창 열기">KB인베스트먼트</a></li>
									<li><a href="http://www.kbci.co.kr" target="_blank" title="새창 열기">KB신용정보</a></li>
									<li><a href="http://www.kds.co.kr" target="_blank" title="새창 열기">KB데이타시스템</a></li>
									<li><a href="https://www.kbfg.com/kbresearch/main.do" target="_blank" title="새창 열기">KB경영연구소</a></li>
								</ul>
							</div>
						</li>
						<!-- ---------------------- -->
						<!-- 대표전화 -->
						<!-- ---------------------- -->
						<li class="ic1">
							<a href="#" class="tit">대표전화 1588-9999</a>
							<div class="info">
								<dl>
									<dt>대표전화</dt>
									<dd>
										<ul>
											<li>1588-9999, 1599-9999, 1644-9999</li>
											<li><span>해외에서 국내로 걸 때</span>+82-2-6300-9999</li>
										</ul>
									</dd>
									<dt>상담전용</dt>
									<dd>1800-9999<span>(분실 및 사고신고 제외)</span></dd>
									<dt>기업전용</dt>
									<dd>1599-9499</dd>
									<dt>기업(B2B)</dt>
									<dd>1566-9944</dd>
									<dt>외국인전용</dt>
									<dd>1599-4477</dd>
									<dt>어르신전용</dt>
									<dd>1644-3308</dd>
									<dt>ACS센터</dt>
									<dd>
										<ul>
											<li>1588-9008</li>
											<li><span>해외에서 국내로 걸 때</span>+82-42-603-0711</li>
										</ul>
									</dd>
									<!-- // -->
								</dl>
							</div>
						</li>
						<!-- ---------------------- -->
						<!-- 이메일상담 -->
						<!-- ---------------------- -->
						<li class="ic2"><a href="https://obank.kbstar.com/quics?page=C043974"><span class="tit">이메일상담</span></a></li>
						<!-- ---------------------- -->
						<!-- 채팅상담 -->
						<!-- ---------------------- -->
						<li class="ic3"><a href="https://obank.kbstar.com/quics?page=C043954"><span class="tit">채팅상담(24시간 365일)</span></a></li>
						<!-- ---------------------- -->
						<!-- 비교조회서비스 -->
						<!-- ---------------------- -->
						<li>
							<a href="#" class="tit">비교조회서비스</a>
							<div class="info">
								<ul>
									<li><a href="http://www.kfb.or.kr/info/interest_product.html?S=FA" target="_blank" title="새창 열기">은행금리비교</a></li>
									<li><a href="http://finlife.fss.or.kr/main/main.do" target="_blank" title="새창 열기">금융상품 한눈에</a></li>
									<li><a href="http://fine.fss.or.kr/main/index.jsp" target="_blank" title="새창 열기">금융소비자정보포털 &#39;파인&#39;</a></li>
								</ul>
							</div>
						</li>
						<!-- ---------------------- -->
					</ul>
				</div>
				<!-- ################################## -->
				<!-- ### SNS ### -->
				<!-- ################################## -->
				<div class="info-sns">
					<ul>
						<li class="ic1"><a href="https://www.facebook.com/kbkookminbank" target="_blank" title="KB국민은행 페이스북 새창 열기">페이스북</a></li>
						<li class="ic2"><a href="https://instagram.com/kbkookminbank" target="_blank" title="KB국민은행 인스타그램 새창 열기">인스타그램</a></li>
						<li class="ic3"><a href="https://www.youtube.com/user/openkbstar" target="_blank" title="KB국민은행 YouTube 새창 열기">YouTube</a></li>
						<li class="ic4"><a href="https://blog.naver.com/youngkbblog" target="_blank" title="KB국민은행 blog 새창 열기">blog</a></li><!-- 2018-12-28 추가  -->
					</ul>
				</div>
				<!-- ################################## -->
				<!-- ### COPYRIGHT 및 마크 ### -->
				<!-- ################################## -->
				<p class="copy">Copyright KB Kookmin Bank. All Rights Reserved.</p>
				<ul class="info-mark">
					<li class="ic1"><span>2018년 국가고객만족도(NCSI) 은행부문 1위</span></li>
					<li class="ic2"><a href="http://www.i-award.or.kr/Web/Assess/FinalCandidateView.aspx?REG_SEQNO=8046" target="_blank" title="웹어워드코리아 새창 열기">웹어워드 코리아 2018 은행분야 대상 수상</a></li>
					<li class="ic3"><a href="http://www.webwatch.or.kr/Situation/WA_Situation.html?MenuCD=110" target="_blank" title="웹와치 새창 열기">과학기술정보통신부 WA(web accessibility)</a></li>
				</ul>
				<!-- ################################## -->
			</div>
		</div>
	</div>
</div>
</body>
</html>