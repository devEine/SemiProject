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

<title>요금안내</title>
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
</head>
<body>
<!-- ----------------------------------------------- 최상단 메뉴바 시작 ----------------------------------------------- -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="./Main.bo">CHACA<span>CHACA</span></a>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="./Main.bo" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="./Information.bo" class="nav-link">이용안내</a></li>
				<li class="nav-item active"><a href="./Service.bo" class="nav-link">요금안내</a></li>
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

<!-- ---------------------- 경로 -------------------------------- -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./Main.bo">Home <i class="ion-ios-arrow-forward"></i></a></span> 
          							<span>요금안내 <i class="ion-ios-arrow-forward"></i></span></p>
            						<h1 class="mb-3 bread">요금 안내</h1>
          </div>
        </div>
      </div>
    </section>

<!-- 본문 섹션 시작 -->
    <section class="ftco-section" style="padding-bottom:0px;">
		<div class="container">
<!-- ---------------------- 소제목1 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">차종별 요금 안내 </h2><br>
          		</div>
       		</div>
       		
<!-- ---------------------- 기아 -------------------------------- -->
<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading" style="font-size: 25px;">기 아</span><br>
</div>

			<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
    				<div class="">
	    				<table class="table">
						    <thead class="text-center">
						      <tr class="text-center">
						        <th class="bg-primary heading">차종명</th>
						        <th class="bg-primary heading">소형</th>
						        <th class="bg-primary heading">중형</th>
						        <th class="bg-primary heading">대형</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="bg-primary" rowspan="2">기아</td>
						        <td>더뉴레이</td>
						        <td>K5</td>
						        <td>K9</td>
						      </tr>
						      <tr class="text-center">
<!-- 						        <td class="bg-primary">기아</td> -->
						        <td>100,000</td>
						        <td>160,000</td>
						        <td>308,000</td>
						      </tr>
						    </tbody>
						  </table><br>
					  </div>
    			</div>

<!-- 기아 끝 -->

<!-- ---------------------- 현대 -------------------------------- -->
<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading" style="font-size: 25px;">현 대</span><br>
</div>

			<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
    				<div class="">
	    				<table class="table">
						    <thead class="text-center">
						      <tr class="text-center">
						        <th class="bg-primary heading">차종</th>
						        <th class="bg-primary heading">소형</th>
						        <th class="bg-primary heading">중형</th>
						        <th class="bg-primary heading">대형</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="bg-primary" rowspan="2">현대</td>
						        <td>아반떼</td>
						        <td>소나타</td>
						        <td>그랜저</td>
						      </tr>
						      <tr class="text-center">
<!-- 						        <td class="bg-primary">현대</td> -->
						        <td>150,000</td>
						        <td>185,000</td>
						        <td>250,000</td>
						      </tr>
						    </tbody>
						  </table><br>
					  </div>
    			</div>

<!-- 현대 끝 -->


<!-- ---------------------- 쉐보레 -------------------------------- -->
<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading" style="font-size: 25px;">쉐 보 레</span><br>
</div>

			<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
    				<div class="">
	    				<table class="table">
						    <thead class="text-center">
						      <tr class="text-center">
						        <th class="bg-primary heading">차종</th>
						        <th class="bg-primary heading">소형</th>
						        <th class="bg-primary heading">중형</th>
						        <th class="bg-primary heading">대형</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="bg-primary" rowspan="2">쉐보레</td>
						        <td>스파크</td>
						        <td>이쿼녹스</td>
						        <td>트래버스</td>
						      </tr>
						      <tr class="text-center">
<!-- 						        <td class="bg-primary">쉐보레</td> -->
						        <td>100,000</td>
						        <td>215,000</td>
						        <td>230,000</td>
						      </tr>
						    </tbody>
						  </table><br>
					  </div>
    			</div>
<!-- 본문3 끝 -->

<!-- ---------------------- BMW -------------------------------- -->
<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading" style="font-size: 25px;">B M W</span><br>
</div>

			<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
    				<div class="">
	    				<table class="table">
						    <thead class="text-center">
						      <tr class="text-center">
						        <th class="bg-primary heading">차종</th>
						        <th class="bg-primary heading">소형</th>
						        <th class="bg-primary heading">중형</th>
						        <th class="bg-primary heading">대형</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="bg-primary" rowspan="2">BMW</td>
						        <td>2Series</td>
						        <td>5Series</td>
						        <td>7Series</td>
						      </tr>
						      <tr class="text-center">
<!-- 						        <td class="bg-primary">BMW</td> -->
						        <td>340,000</td>
						        <td>360,000</td>
						        <td>385,000</td>
						      </tr>
						    </tbody>
						  </table><br>
					  </div>
    			</div>

<!-- BMW 끝 -->

<!-- ---------------------- 아우디 -------------------------------- -->
<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading" style="font-size: 25px;">아 우 디</span><br>
</div>

			<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
    				<div class="">
	    				<table class="table">
						    <thead class="text-center">
						      <tr class="text-center">
						        <th class="bg-primary heading">차종</th>
						        <th class="bg-primary heading">소형</th>
						        <th class="bg-primary heading">중형</th>
						        <th class="bg-primary heading">대형</th>
						      </tr>
						    </thead>
						    <tbody>
						      <tr class="text-center">
						        <td class="bg-primary" rowspan="2">아우디</td>
						        <td>A3</td>
						        <td>A6</td>
						        <td>A8</td>
						      </tr>
						      <tr class="text-center">
<!-- 						        <td class="bg-primary">아우디</td>
 -->						        <td>320,000</td>
						        <td>350,000</td>
						        <td>380,000</td>
						      </tr>
						    </tbody>
						  </table><br>
					  </div>
    			</div>

<!-- 아우디 끝 -->

<!-- ---------------------- 벤츠 -------------------------------- -->
<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading" style="font-size: 25px;">벤 츠</span><br>
</div>

									<div
										class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
										<div class="">
											<table class="table">
												<thead class="text-center">
													<tr class="text-center">
														<th class="bg-primary heading">차종</th>
														<th class="bg-primary heading">소형</th>
														<th class="bg-primary heading">중형</th>
														<th class="bg-primary heading">대형</th>
													</tr>
												</thead>
												<tbody>
													<tr class="text-center">
														<td class="bg-primary" rowspan="2">벤츠</td>
														<td>C Class</td>
														<td>E Class</td>
														<td>S Class</td>
													</tr>
													<tr class="text-center">
<!-- 														<td class="bg-primary">벤츠</td>
 -->														<td>350,000</td>
														<td>400,000</td>
														<td>450,000</td>
													</tr>
												</tbody>
											</table>
											<br>
											<p>※ 위 요금표는 대표차량의 대여요금표이며, 자세한 대여금액은 실시간예약 메뉴에서 확인하시기
												바랍니다.</p>
											<p>※ 상기요금은 할인이 적용되지 않은 정상가격이며, 성수기 및 특별기간동안 요금이 변경될 수
												있습니다.</p>
											<p>※ 1일 대여 기준 금액입니다.</p>
										</div><br>
									</div>

									<!-- 벤츠 끝 -->

									<!-- 소제목1의 본문 끝 -->
</div>
</section>


<!-- 소제목+본문 섹션4 -->
     <section class="ftco-section" style="margin-top: 0px;">
			<div class="container">
<!-- ---------------------- 소제목4 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">추가 요금</h2>
          		</div>
       		</div>
<!-- ---------------------- 본문4 -------------------------------- -->
				<div class="row">
						<div class="services services-2 w-100 text-center">
            				<div class="justify-content-center">
            					<span class="compensation fee"></span>
            				</div >
            				<div class="text w-100" style="margin-bottom:100px;">
            				<img src="./images/forbidden.png" width="200px;" height="200px;">
                				<h3 style="font-size:30px; font-weight:bold;">휴차 보상료</h3>
                					<p>차량대여 중 발생한 자차사고(임차인 가해사고)로 인해 차량의 수리가 필요한 경우,<br> 
                					차량수리 기간동안 차량에 발생한 영업손실에 대해
                                    차량수리비 이외 표준대여료의 50% 휴차보상료가 고객 부담입니다.</p>
              				</div>
            			</div>
			
			
						
						<div class="services services-2 w-100 text-center">
            				 <div class="justify-content-center"> 
            					<span class="fix fee"></span> 
                          </div>
            				<div class="text w-100" style="margin-bottom:100px;"> 
            				<img src="./images/car.png" width="200px;" height="200px;">
                				<h3 style="font-size:30px; font-weight:bold; margin-top:30px; margin-bottom: 0px; padding-bottom:5px;">차량 수리비</h3>		
                					<p>차량대여 중 렌터카의 손망실이 발생한 경우의 (임차인 과실사고 및 가해자 불명의 자차사고) <br>
                					렌터카 수리비는 고객 부담이며 렌터카 수리 시 특별한 사유를 제외하고<br>
                                    차카차카 렌터카와 협의를 거쳐 정해진 곳에서 수리를 해야 합니다.</p>
              				</div>
            			</div>
			

					
						 <div class="services services-2 w-100 text-center">
            			<div class="justify-content-center"> 
            					<span class="penalty"></span>
            				</div>
            				<div class="text w-100"  style="margin-bottom:100px;"> 
            				<img src="./images/caution-sign.png" width="200px;" height="200px;">
                				<h3 style="font-size:30px; font-weight:bold; margin-top:30px;">교통법규 위반 범칙금</h3>
                					<p>차량 대여 중 도로교통법 위반으로 발생한 모든 범칙금은 
                					 고객 부담(주정차 위반, 버스전용차선위반, 안전벨트 미착용 등)이며,<br>
                					 도로교통법 위반에 따른 사고의 경우 보험보상의 일부 혜택을 받지 못 할 수도 있습니다.</p>
              				 </div>
            			</div> 
					
						<div class="services services-2 w-100 text-center">
            				<div class="justify-content-center">
            					<span class="fuel costs"></span>
            				</div>
            				<div class="text w-100"  style="margin-bottom:100px;">
            				<img src="./images/fuel.png" width="200px;" height="200px;">
                				<h3 style="font-size:30px; font-weight:bold; margin-top:30px;">차량 유류비</h3>
                					<p>모든 차량은 Full-Tank(연료를 가득 채운 상태)에서 대여해 드리며 반납시에도 Full-Tank 상태로 반납을 해야 합니다.<br>
									연료가 가득 채워지지 않았을 경우에는 가득 주유 시 예상되는 금액으로 주유 비용을 정산해야 합니다.<br>
									※ 실비 정산 시, 지점 내 데스크에 비치된 유류정산 기준표 참고</p>
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