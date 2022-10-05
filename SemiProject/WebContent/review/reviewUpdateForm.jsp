<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>이용후기 수정</title>
    <meta charset="utf-8">
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
    <!-- 메뉴바 css  -->
	<style>
	#nav ul {
	    list-style-type: none;
	    margin: 0;
	    padding: 0;
	    width: 200px;
	    background-color: #94B49F;
	    text-align: center;
	}
	#nav li a {
	    display: block;
	    color: #FCF8E8;
	    padding: 8px 16px;
	    text-decoration: none;
	    border-bottom: 1px solid #FCF8E8;
	}
	#nav li a.active {
	    background-color: #94B49F;
	    color: white;
	}
	#nav li a:hover:not(.active) {
	    background-color: #FCF8E8;
	    color: #CEE5D0;
	}
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
    <!-- 메뉴바 css  -->


    <!-- 별점 css  -->

<style type="text/css">
.star{
    display: inline-block;
    direction: rtl;
    border:0;
}
.star input[type=radio]{
    display: none;
}
.star label{
    font-size: 3em;
    color: transparent;
    text-shadow: 0 0 0 #f0f0f0;
}
.star label:hover{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
.star label:hover ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
.star input[type=radio]:checked ~ label{
    text-shadow: 0 0 0 rgba(250, 208, 0, 0.99);
}
</style>

    <!-- 별점 css  -->


<!--    버튼 css -->
<style type="text/css">
.Bbtn {
  margin-top:100px;
  border: 2.5px solid ;
  border-radius: 6px;
  background-color: white;
  color: black;
  padding: 8px 18px;
  cursor: pointer;
}

.btn1 {

 background-color: #024a30;
  color: white;
}

.btn1:hover {
background-color: white;
    border-color: #024a30;
  color: #024a30;
}

.btn2 {
 background: #038454;
  color: white;
}

.btn2:hover {
background-color: white;
 border-color: #038454;
  color: #038454;
}

.btn3 {
 background: #04aa6d;
  color: white;
}

.btn3:hover {
background-color: white;
  border-color: #04aa6d;
  color: #04aa6d;
}

.btn4 {
  background: #05d086;
  color: white;
}

.btn4:hover {
background-color: white;
    border-color: #05d086;
  color: #05d086;
}

</style>
<!--    버튼 css -->



  </head>
  <body>

<!-- ---------------------- 최상단 메뉴바 -------------------------------- -->
	  <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	      <a class="navbar-brand" href="./Main.bo">CHACA<span>CHACA</span></a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="./Main.bo" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="./Information.bo" class="nav-link">이용안내</a></li>
	          <li class="nav-item"><a href="./Service.bo" class="nav-link">요금안내</a></li>
	          <li class="nav-item"><a href="./Reservation.bo" class="nav-link">예약하기</a></li>
	          <li class="nav-item active"><a href="./ReviewList.bo" class="nav-link">리뷰·문의</a></li>
	          <li class="nav-item"><a href="./UserInfo.bo" class="nav-link">마이페이지</a></li>
	        </ul>
	        
	        <div style="width: 180px; height: 50px; /* border:1px solid black;  */
							line-height: 50px; margin-left: 30px; font-size: small; 
							text-shadow: 0.5px 0.5px 0.5px rgba(0, 0, 0, 0.3); text-align: right; ">
						<%
					// 세션 영역에 있는 로그인 아이디 정보를 가져오기
					String id = (String)session.getAttribute("loginID");
					
					if(id == null) {
						// 로그인 안함
						response.sendRedirect("./Login.bo");
					}
						
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

<!-- ---------------------- 경로 -------------------------------- -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./Main.bo">Home <i class="ion-ios-arrow-forward"></i></a></span> 
          							<span>고객센터 <i class="ion-ios-arrow-forward"></i></span></p>
            						<h1 class="mb-3 bread">이용후기</h1>
          </div>
        </div>
      </div>
    </section>




<!-- 소제목+본문 섹션 시작 -->
	<section class="ftco-section">
		<div class="container">
			<!-- ---------------------- 소제목 -------------------------------- -->
			<div class="row justify-content-center mb-3">
				<div class="col-md-7 text-center heading-section ftco-animate">
					<span class="subheading">차카차카</span>
					<h2 class="mb-3">이용후기</h2>
				</div>
			</div>

			<!--좌측 메뉴바  -->

			<nav id="nav">
				<ul>
					<li><a href="./ReviewList.bo">이용후기</a></li>
					<li><a href="./ContactList.bo">문의하기</a></li>
				</ul>
			</nav>


			<!--좌측 메뉴바 -->


			<!-- ---------------------- 본문 -------------------------------- -->

			<hr>
			<!-- 소제목+본문 섹션2 시작 -->
			<section class="ftco-section">
				<div class="container">
					<!------------------ 	이용후기 쓰기 -------------------------------->
					<div class="col-md-12 d-flex ftco-animate fadeInUp ftco-animated justify-content-center">
						<div class="col-md-30 ">
							<fieldset>
								<legend style="text-align: center; ">후기 수정하기</legend><br>
								<form action="./ReviewFileUpdatePro.bo?pageNum=${pageNum }" class="bg-light p-5 contact-form" method="post" enctype="multipart/form-data">
										<input type="hidden" name="bno" value="${dto.bno }">  <!-- bno가 없었네!!! -->
									<div class="form-group">
										<span style="width: 80%;">아이디</span> 
										<input type="email" class="form-control" name="id" readonly value="${dto.id }" placeholder="아이디(이메일)" style="width:50%">
									</div>
									<div class="form-group">
										<span style="width: 80%;">이름</span>
										<input type="text" class="form-control" name="name" readonly value="${dto.name }" placeholder="예약자 성함" style="width:50%">
									</div>
									<div class="form-group">
										<span style="width: 80%;">비밀번호</span> 
										<input type="password" class="form-control" name="password" placeholder="비밀번호" style="width:50%">
									</div>
									<div class="form-group">
										<span style="width: 80%;">내용</span>
										<textarea rows="10" cols="80" class="form-control" name="content" placeholder="내용입력">${dto.content }</textarea>
									</div>
									<div class="form-group">
										<span style="width: 80%;">사진</span>
										<input type="file" class="form-control" name="file" style="width:50%">${dto.file }
										<input type="hidden" name="oldfile" value="${dto.file }">
									</div>
									
									
								<!-- ////////////////별점////////////// -->
									<div class="form-group">
										<span style="width: 60%;">평점</span> 

										<div class="star">
											<span class="text-bold"></span>
											
											<c:choose>
												<c:when test="${dto.rate eq 5 }">
													<input type="radio" name="rate" value="5" id="rate1" checked="checked"><label for="rate1">★</label>
													<input type="radio" name="rate" value="4" id="rate2"><label for="rate2">★</label>
													<input type="radio" name="rate" value="3" id="rate3"><label for="rate3">★</label>
													<input type="radio" name="rate" value="2" id="rate4"><label for="rate4">★</label>
													<input type="radio" name="rate" value="1" id="rate5"><label for="rate5">★</label>
												</c:when>
												<c:when test="${dto.rate eq 4 }">
													<input type="radio" name="rate" value="5" id="rate1"><label for="rate1">★</label>
													<input type="radio" name="rate" value="4" id="rate2" checked="checked"><label for="rate2">★</label>
													<input type="radio" name="rate" value="3" id="rate3"><label for="rate3">★</label>
													<input type="radio" name="rate" value="2" id="rate4"><label for="rate4">★</label>
													<input type="radio" name="rate" value="1" id="rate5"><label for="rate5">★</label>
												</c:when>
												<c:when test="${dto.rate eq 3 }">
													<input type="radio" name="rate" value="5" id="rate1"><label for="rate1">★</label>
													<input type="radio" name="rate" value="4" id="rate2"><label for="rate2">★</label>
													<input type="radio" name="rate" value="3" id="rate3" checked="checked"><label for="rate3">★</label>
													<input type="radio" name="rate" value="2" id="rate4"><label for="rate4">★</label>
													<input type="radio" name="rate" value="1" id="rate5"><label for="rate5">★</label>
												</c:when>
												<c:when test="${dto.rate eq 2 }">
													<input type="radio" name="rate" value="5" id="rate1"><label for="rate1">★</label>
													<input type="radio" name="rate" value="4" id="rate2"><label for="rate2">★</label>
													<input type="radio" name="rate" value="3" id="rate3"><label for="rate3">★</label>
													<input type="radio" name="rate" value="2" id="rate4" checked="checked"><label for="rate4">★</label>
													<input type="radio" name="rate" value="1" id="rate5"><label for="rate5">★</label>
												</c:when>
												<c:when test="${dto.rate eq 1 }">
													<input type="radio" name="rate" value="5" id="rate1"><label for="rate1">★</label>
													<input type="radio" name="rate" value="4" id="rate2"><label for="rate2">★</label>
													<input type="radio" name="rate" value="3" id="rate3"><label for="rate3">★</label>
													<input type="radio" name="rate" value="2" id="rate4"><label for="rate4">★</label>
													<input type="radio" name="rate" value="1" id="rate5" checked="checked"><label for="rate5">★</label>
												</c:when>
											</c:choose>
											
										</div>
										
									</div>
								<!-- ///////////////별점/////////////// -->
								
								
							
									<div class="form-group">
											<input type="submit" value="제출하기"  style="margin-top: 0px;" class="Bbtn btn1" >
									</div>
									
									
								</form>
							</fieldset>
						</div>
					</div>
					<div>



						<!-- 소제목+본문 섹션 끝 -->
					</div>
				</div>
			</section>
		</div>
	</section>



	<!-- ---------------------- 푸터 -------------------------------- -->
	<footer class="ftco-footer ftco-bg-dark ftco-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">
							<a href="./Main.bo" class="logo">CHACA<span>CHACA</span></a>
						</h2>
						<p>
							당신의 곁에있는<br>가장 가깝고 착한 플랫폼,<br> 지금 차카차카 하세요!
						</p>
						<ul
							class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
							<li class="ftco-animate"><a href="#"><span
									class="icon-twitter"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-facebook"></span></a></li>
							<li class="ftco-animate"><a href="#"><span
									class="icon-instagram"></span></a></li>
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
								<li><span class="icon icon-map-marker"></span><span
									class="text">부산광역시<br> 분당구 센텀일로 95
								</span></li>
								<li><span class="icon icon-phone"></span><span
										class="text">+82 777 7777</span></li>
								<li><span class="icon icon-envelope"></span><span
										class="text">info@yourchacachaca.com</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by Eine
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!-- ---------------------- 푸터 끝-------------------------------- -->
    
  

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