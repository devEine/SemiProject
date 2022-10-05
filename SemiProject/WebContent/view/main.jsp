<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">
<link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="css/animate.css">
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/aos.css">
<link rel="stylesheet" href="css/ionicons.min.css">
<link rel="stylesheet" href="css/bootstrap-datepicker.css">
<link rel="stylesheet" href="css/jquery.timepicker.css">
<link rel="stylesheet" href="css/flaticon.css">
<link rel="stylesheet" href="css/icomoon.css">
<link rel="stylesheet" href="css/style.css">

<title>ChacaChaca</title>
<style>

@font-face {
    font-family: 'RIDIBatang';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
 *{
    font-family: 'RIDIBatang';

}



</style>
        <!-- 		//////////////레이어 팝업창////////////// -->
<style type="text/css">
#popup_layer {
	position: fixed;
	top: 0;
	left: 0;
 	z-index: 10000;
	width: 100%;
	height: 100%;
	background-color: rgba(0, 25, 0, 0.1);
}
/*팝업 박스*/
/* 위치 이동 */
.popup_box {
	position: relative;
	top: 40%;
	left: 10%;
	width: 415px;
	transform: translate(-30%, -30%);
	z-index: 1002;
	box-sizing: border-box;
	background: white;
  	border: 0.05px solid black; 
}
/*컨텐츠 영역*/
.popup_box .popup_cont {
	padding: 30px;
 	line-height: 1.8rem;
	font-size: 17px;
	word-break: break-word;
}
/* 제목 */
.popup_box .popup_cont span {
	padding-top: 10px;
	text-align: center;
	font-size: 22px;
	color: black;
 	margin: 0;
/* 	margin-bottom: 20px; */
}

/*버튼영역*/
.popup_box .popup_btn {
	font-size: 17px;
	display: table;
	table-layout: fixed;
	width: 100%;
	height: 50px;
	background: white;
	word-break: break-word;
}

.popup_box .popup_btn a {
	position: relative;
	display: table-cell;
	height: 65px;
	color: white;
	font-size: 19px;
	text-align: center;
	vertical-align: middle;
	text-decoration: none;
	background: #94B49F;
}

.popup_box .popup_btn a:before {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: white;
	-moz-transform: rotate(-45deg);
	-webkit-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

.popup_box .popup_btn a:after {
	content: '';
	display: block;
	position: absolute;
	top: 26px;
	right: 29px;
	width: 1px;
	height: 21px;
	background: white;
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	-o-transform: rotate(45deg);
	transform: rotate(45deg);
}

.popup_box .popup_btn a.close_day {
	font-size: 20px;
	font-weight: bold;
	background: #FEF9E8;
	color: black;
}

.popup_box .popup_btn a.close_day:before, .popup_box .popup_btn a.close_day:after
	{
	display: none;
}
/*오버레이 뒷배경*/
.popup_overlay {
	position: fixed;
	top: 0px;
	right: 0;
	left: 0;
	bottom: 0;
	z-index: 1001;;
	background: rgba(0, 0, 0, 0.2);
}
</style>

<!-- //////////////레이어 팝업창////////////// -->
<script type="text/javascript" src="./js/jquery-3.6.0.js"></script>
<script type="text/javascript">
$(document).ready(function(){ 
	cookiedata = document.cookie; 
    if(cookiedata.indexOf("close=Y")<0){ 
    	$("#popup_layer").show(); 
    }else{ 
    	$("#popup_layer").hide(); 
    } 
}); 

function closePop(){ 
	if($("input[name=layer_close]").is(":checked") == true){ 
    	setCookie("close","Y",1); 
    } 
    
    $("#popup_layer").hide(); 
} 

function closeToday(){ 
	$("#popup_layer").hide(); 
    setCookie("close","Y",1); 
} 

function setCookie(cname, cvalue, exdays) { 
	var d = new Date(); 
    d.setTime(d.getTime() + (exdays*24*60*60*1000)); //시간설정 
    var expires = "expires="+d.toUTCString();
    var temp = cname + "=" + cvalue + "; " + expires; 
    document.cookie = temp; 
} 
</script>
<!-- //////////////레이어 팝업창////////////// -->
</head>
<body>
<!-- ----------------------------------------------- 최상단 메뉴바 시작 ----------------------------------------------- -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="./Main.bo">CHACA<span>CHACA</span></a>
		
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a href="./Main.bo" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="./Information.bo" class="nav-link">이용안내</a></li>
				<li class="nav-item"><a href="./Service.bo" class="nav-link">요금안내</a></li>
				<li class="nav-item"><a href="./Reservation.bo" class="nav-link">예약하기</a></li>
				<li class="nav-item"><a href="./ReviewList.bo" class="nav-link">리뷰·문의</a></li>
				<li class="nav-item"><a href="./UserInfo.bo" class="nav-link">마이페이지</a></li>
				<!-- <li class="nav-item"><a href="joinUpdate.jsp" class="nav-link"><img src="images/mypage.png" width="20%" height="20%"></a></li> -->

			</ul>
				<div style="width: 180px; height: 50px; /* border:1px solid black;  */
							line-height: 50px; margin-left: 30px; font-size: small; 
							text-shadow: 0.5px 0.5px 0.5px rgba(0, 0, 0, 0.3); text-align: right; ">
						<%
					// 세션 영역에 있는 로그인 아이디 정보를 가져오기
					String id = (String)session.getAttribute("loginID");
				
					if(id == null) {
						%>
							<a class="nav-item" href="./Join.bo">회원가입</a>&nbsp;&nbsp;
							<a class="nav-item" href="./Login.bo" id="login">로그인</a>
					<%
						} else {
					%>
						<span style="font-size: xx-small; color:white;">${sessionScope.name }님</span>&nbsp;&nbsp;
						<a class="nav-item" href="./Logout.bo" id="logout">로그아웃</a>
						
						<%
						if(id.equals("admin")) {
							%>
							&nbsp;&nbsp;<a class="nav-item" href="./Admin.bo" id="admin">관리페이지</a>
							<%				
						}
					}
					%>
				</div>
		</div>
	</div>
</nav>
<!-- ------------------------------------------------ 최상단 메뉴바 끝 ------------------------------------------------ -->

<div class="hero-wrap ftco-degree-bg" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text justify-content-start align-items-center justify-content-center">
			<div class="col-lg-8 ftco-animate">
				<div class="text w-100 text-center mb-md-5 pb-md-5">
					<h1 class="mb-4">당신 곁의 플랫폼 &nbsp;CHACA<b>CHACA</b></h1>
					<p style="font-size: 18px;">The nearest platform next to you CHACA-CHACA<br>
												언제나 어디서나 필요할때 당신 곁의 차카차카와 시작하세요</p>
				</div>
            </div>
		</div>
	</div>
</div>

     <!-- 		//////////////레이어 팝업창 ////////////// -->

<div id="popup_layer">
  <div class="popup_box">
      <!--팝업 컨텐츠 영역-->
      <div class="popup_cont">
          <span>📢  ChacaChaca 부산점 오픈 이벤트</span><br><hr>
          <p>
          신규 가입 시, 현금처럼 사용 가능한<br> 
          5000포인트를 드립니다! <br> <br>
          이벤트 기간: 2022.12.31까지 <br>
          주의사항: 1인 1회 한정 <br>
          	💖 많이 많이 가입해주세요 💖
          </p>
      </div>
        <div id="check" style="padding-left: 30px;" ><input type="checkbox" name="chkbox" value="checkbox" id='chkbox' >
        <label for="chkbox"  style="padding-bottom: 10px;"><a id="chk_today" href="javascript:closeToday();" class="close_day">&nbsp; 오늘 하루 동안 보지 않기</a></label>
        </div>
      <div class="popup_btn">
          <a href="javascript:closePop();">닫&nbsp; &nbsp;기</a> 
      </div>
  </div>
</div>
<!-- 		//////////////레이어 팝업창////////////// -->


    

    <section class="ftco-section ftco-about">
			<div class="container">
				<div class="row no-gutters">
					<div class="col-md-6 p-md-5 img img-2 d-flex justify-content-center align-items-center" style="background-image: url(images/autocar.jpg);">
					</div>
					<div class="col-md-6 wrap-about ftco-animate">
	          <div class="heading-section heading-section-white pl-md-5">
	          	<span class="subheading" >About CHACACHCA</span>
	            <h2 class="mb-4">Welcome to <br>차카차카 !</h2>

	            <p style="color: #848484;">부산의 대표 렌터카 '차카차카'가 고객님의 모빌리티 라이프에 '새로움'과 '편리함'을 더합니다.<br>
	            	당신 곁의 가장 가까운 플랫폼 차카차카로 다이나믹 부산을 느껴보세요.<br>
	            	항상 고객님의 즐거운 여행길을  위해 노력하는 차카차카가 되겠습니다. <br><br>
	            	
2022년 ‘국가고객만족도’ 렌터카 부문 5년 연속 수상<BR>
2022년 ‘부산소비자웰빙만족지수(BS-WEI)’ 5년 연속 1위<br>
차카차카는 ‘No.1 Mobility Service Provider’로 향하고 있습니다.
	            	</p>

	          </div>
					</div>
				</div>
			</div>
		</section>

		



    <footer class="ftco-footer ftco-bg-dark ftco-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2"><a href="./Main.bo" class="logo">CHACA<span>CHACA</span></a></h2>
              <p>당신의 곁에있는<br>가장 가깝고 착한 플랫폼,<br> 지금 차카차카 하세요!</p>
              <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Information</h2>
              <ul class="list-unstyled">
                <li><a href="./Information.bo" class="py-2 d-block">이용안내</a></li>
                <li><a href="./Service.bo" class="py-2 d-block">요금안내</a></li>
                <li><a href="./Reservation.bo" class="py-2 d-block">예약하기</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
             <div class="ftco-footer-widget mb-4">
              <h2 class="ftco-heading-2">Customer Support</h2>
              <ul class="list-unstyled">
                <li><a href="./ReviewList.bo" class="py-2 d-block">리뷰·문의</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md">
            <div class="ftco-footer-widget mb-4">
            	<h2 class="ftco-heading-2">도움이 필요하신가요?</h2>
            	<div class="block-23 mb-3">
	              <ul>
	                <li><span class="icon icon-map-marker"></span><span class="text">부산광역시<br> 분당구 센텀일로 95</span></li>
	                <li><span class="icon icon-phone"></span><span class="text">+82 051 0909</span></li>
	                <li><span class="icon icon-envelope"></span><span class="text">info@chacachaca.com</span></li>
	              </ul>
	            </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">

            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by Eine
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
          </div>
        </div>
      </div>
    </footer>
    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
</body>
</html>