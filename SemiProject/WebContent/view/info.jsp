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

<title>이용안내</title>

<style type="text/css">
/* 폰트============================= */
* {
    font-family: 'RIDIBatang';
}

@font-face {
    font-family: 'RIDIBatang';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
/* 폰트============================= */
</style>
</head>
<body>
<!-- ----------------------------------------------- 최상단 메뉴바 시작 ----------------------------------------------- -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="./Main.bo">CHACA<span>CHACA</span></a>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="./Main.bo" class="nav-link">Home</a></li>
				<li class="nav-item active"><a href="./Information.bo" class="nav-link">이용안내</a></li>
				<li class="nav-item"><a href="./Service.bo" class="nav-link">요금안내</a></li>
				<li class="nav-item"><a href="./Reservation.bo" class="nav-link">예약하기</a></li>
				<li class="nav-item"><a href="./ReviewList.bo" class="nav-link">리뷰·문의</a></li>
				<li class="nav-item"><a href="./ContactWrite.bo" class="nav-link">마이페이지</a></li>
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

<!-- --------------------------------------------------- 경로 시작 ---------------------------------------------------- -->
<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs"><span class="mr-2"><a href="./Main.bo">Home <i class="ion-ios-arrow-forward"></i></a></span> 
         							   <span>이용안내 <i class="ion-ios-arrow-forward"></i></span></p>
				<h1 class="mb-3 bread">이용 안내</h1>
			</div>
		</div>
	</div>
</section>
<!-- --------------------------------------------------- 경로 끝 ---------------------------------------------------- -->


<!-- 소제목+본문 섹션1 시작 -->
    <section class="ftco-section">
		<div class="container">
<!-- ---------------------- 소제목1 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">대여 자격</h2><br>
          		</div>
       		</div>
       		
<!-- ---------------------- 본문1 -------------------------------- -->
			<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
    				<div class="">
	    				<table class="table">
						    <thead class="text-center">
						      <tr class="text-center">
						        <th class="bg-primary heading">차량 유형</th>
						        <th class="bg-primary heading">대형</th>
						        <th class="bg-primary heading">중형</th>
						        <th class="bg-primary heading">소형</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="bg-primary">면허 종류</td>
						        <td>1종 보통 이상</td>
						        <td>2종 보통 이상</td>
						        <td>2종 보통 이상</td>
						      </tr>
						      <tr class="text-center">
						        <td class="bg-primary">운전자 연령</td>
						        <td>만 21세 이상 (대여일 기준)</td>
						        <td>만 21세 이상 (대여일 기준)</td>
						        <td>만 21세 이상 (대여일 기준)</td>
						      </tr>
						      <tr class="text-center">
						        <td class="bg-primary">면허 취득 후 기간</td>
						        <td>면허 취득일로부터 1년 이상</td>
						        <td>면허 취득일로부터 1년 이상</td>
						        <td>면허 취득일로부터 1년 이상</td>
						      </tr>
						    </tbody>
						  </table>
					  </div>
    			</div>
       </div>
    </section>
<!-- 소제목+본문 섹션1 끝 -->



<!-- 소제목+본문 섹션2 -->
     <section class="ftco-section" style="padding-top: 0px;">
			<div class="container">
<!-- ---------------------- 소제목2 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">대여 절차</h2>
          		</div>
       		</div>
<!-- ---------------------- 본문2 -------------------------------- -->
				<div class="row" style="margin-top: 50px;">
					<div class="col-md-3">
						<div class="services services-2 w-100 text-center">
            				<div class="">
            					<img src="./images/car-center.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            				</div>
            				<div class="text w-100">
                				<h3 class="heading mb-2" style="font-size: x-large;">1. 지점 방문</h3>
                					<p style="font-size: 90%;">
                					    직원에게 예약번호 또는 <br>
										예약자 성명을 말씀해주세요.<br>
										(외국인의 경우 국제면허증 필요)
									</p>
              				</div>
            			</div>
					</div>
					
					<div class="col-md-3">
						<div class="services services-2 w-100 text-center">
            				<div class="">
            					<img src="./images/id-card.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            				</div>
            				<div class="text w-100" >
                				<h3 class="heading mb-2" style="font-size: x-large;">2. 고객 정보 확인</h3>
                					<p style="font-size: 90%;">
                					   예약사항을 확인 후, <br>
                					   차량임대차 계약서 작성을 위해 <br>
                					   면허증을 담당 직원에게 <br>
                					    제시해주세요. <br>
                					   (모바일 PASS 면허는 불가)
                					</p>
              				</div>
            			</div>
					</div>

					<div class="col-md-3">
						<div class="services services-2 w-100 text-center">
            				<div class="">
            					<img src="./images/credit.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            				</div>
            				<div class="text w-100">
                				<h3 class="heading mb-2" style="font-size: x-large;">3. 대여료 결제</h3>
                					<p style="font-size: 90%;">
                					  대여기간 및 차종, 옵션 등 <br>
                					  최종 확인한 후 <br>
                					  차량 대여료를 결제해주세요.
                					</p>
              				</div>
            			</div>
					</div>

					<div class="col-md-3">
						<div class="services services-2 w-100 text-center">
            				<div class="">
            					<img src="./images/contract.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            				</div>
            				<div class="text w-100">
                				<h3 class="heading mb-2" style="font-size: x-large;">4. 차량 확인 <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 계약서 작성</h3>
                					<p style="font-size: 90%;">
                					  직원을 따라 <br>주차장으로 이동하신 후 <br>
                					   차량 상태를 확인하시고 <br> 
                					   임대차 계약서에 서명해주세요.
                					</p>
              				</div>
            			</div>
					</div>
       		</div>
    </section>
<!-- 소제목+본문 섹션2 끝 -->
    			


<!-- 소제목+본문 섹션3 -->
     <section class="ftco-section" style="padding-top: 0px;">
			<div class="container">
<!-- ---------------------- 소제목3 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">반납 절차</h2>
          		</div>
       		</div>
<!-- ---------------------- 본문3 -------------------------------- -->
			<div class="row" style="margin-top: 50px;">
				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
           				<div class="">
            					<img src="./images/car-center.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            			</div>
           				<div class="text w-100">
                				<h3 class="heading mb-2" style="font-size: x-large;">1. 지점 방문</h3>
                					<p style="font-size: 90%;">
                					   반납지점 주차장에 차량을 주차, <br> 
                					   시동을 완전히 끈 후 <br>
                					   차량 Key와 소지품을 챙겨 <br>
                					   지점 사무실로 들어갑니다.
                					</p>
             				</div>
           			</div>
				</div>
				
				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
           				<div class="">
            					<img src="./images/car-key.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            			</div>
           				<div class="text w-100">
                				<h3 class="heading mb-2" style="font-size: x-large;">2. 자동차 키 반납</h3>
                					<p style="font-size: 90%;">
                					   담당직원에게 <br>
                					   차량 Key를 반납하세요.
                					</p>
             				</div>
           			</div>
				</div>

				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
           				<div class="">
            					<img src="./images/car-check.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            			</div>
           				<div class="text w-100">
                				<h3 class="heading mb-2" style="font-size: x-large;">3. 차량 확인</h3>
                					<p style="font-size: 90%;">
                					   담당직원과 함께 <br>
                					   차량이 주차된 곳으로 이동하여  <br>
                					   차량 상태, 유류상태 등을 <br>
                					   확인해 주세요.
                					</p>
             				</div>
           			</div>
				</div>

				<div class="col-md-3">
					<div class="services services-2 w-100 text-center">
           				<div class="">
            					<img src="./images/credit.png" width="100px;" height="100px;" style="margin-bottom: 20px;">
            			</div>
           				<div class="text w-100">
                				<h3 class="heading mb-2" style="font-size: x-large;">4. 추가 비용 정산</h3>
                					<p style="font-size: 90%;">
                					   반납시간 초과, 차량의 손망실, <br>
                					   유류비, 범칙금 등 <br>
                					   추가금이 발생한 경우<br>
                					   추가비용을 정산해주세요.
                					</p>
             				</div>
           			</div>
				</div>
       		</div>
    </section>
<!-- 소제목+본문 섹션3 끝 -->




<!-- 소제목+본문 섹션4 시작 -->
    <section class="ftco-section">
		<div class="container">
<!-- ---------------------- 소제목4 -------------------------------- -->
			<div class="row justify-content-center mb-3" style="padding-top: 0px;">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">차량 사고 시 보험 및 보상 범위</h2>
          		</div>
       		</div>
       		
<!-- ---------------------- 본문4 -------------------------------- -->
			<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
    				<div class="">
	    				<table class="table text-center">
						      <tr>
						        <td class="bg-primary heading">대인</td>
						        <td>무한</td>
						      </tr>
						      <tr>
						        <td class="bg-primary heading">대물</td>
						        <td>사고 건당 2천만원</td>
						      </tr>
						      <tr>
						        <td class="bg-primary heading">자손</td>
						        <td>개인당 1천5백만원 (*계약서상 등록되지 않은 운전자는 종합보험 혜택 불가)</td>
						      </tr>
						</table>
						※ 차카차카의 모든 임직원은 차량 이용 중 사고가 발생하였을 때 아래의 보험 보상범위 내에서 고객님을 보호하기 위해 최선을 다하겠습니다.
					</div>
    		</div>
       </div>
    </section>
<!-- 소제목+본문 섹션4 끝 -->

<!-- ---------------------- 푸터 -------------------------------- -->
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
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by GH
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