<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>이용후기</title>
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
					<li><a href="./ReviewList.bo" >이용후기</a></li>
					<li><a href="./ContactList.bo">문의하기</a></li>
				</ul>
			</nav>


			<!--좌측 메뉴바 -->


			<!-- ---------------------- 본문 -------------------------------- -->

			<br>
			<div class="row">
				<div class="col-md-12 pills">
					<div class="bd-example bd-example-tabs">
						<div class="d-flex justify-content-center"></div>

						<img src="./images/reviewEvent.jpg" width="96%"> <br><br><br><br><br>



						<div class="row">
							<div class="col-md-12" style="padding-left: 70px;">
								<h3 class="head">최근 작성된 이용후기</h3>
								
								
								<c:forEach var="dto" items="${requestScope.reviewList }" varStatus="status">
								<br>
								<div class="review d-flex" style="width: 95%;">
									<div class="user-img" style="background-image: url(images/Chacalogo.jpg)"></div>
									<div class="desc">
										<h4>
<%-- 											<span class="text-left">bno: ${dto.bno } / ${dto.name }</span>  --%>
											<span class="text-left">작성자 : ${dto.name }</span> 
											<span class="text-right">${dto.date }</span>
										</h4>
										
										
										<p class="star"> 
										<span> 
										<c:choose>
											<c:when test="${dto.rate eq 1 }">
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											</c:when>
											<c:when test="${dto.rate eq 2 }">
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											</c:when>
											<c:when test="${dto.rate eq 3 }">
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											</c:when>
											<c:when test="${dto.rate eq 4 }">
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star"></i> 
												<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i> 
											</c:when>
											<c:when test="${dto.rate eq 5}">
												<i class="ion-ios-star"></i>
												<i class="ion-ios-star"></i>
												<i class="ion-ios-star"></i>
												<i class="ion-ios-star"></i>
												<i class="ion-ios-star"></i>
											</c:when>
										</c:choose>
										</span>
											<!-- .table tbody tr td.product-name .rated span {
											      color: #01d28e; }
											      .table tbody tr td.product-name .rated span:nth-child(1) {
											        color: #000000; }
											      .table tbody tr td.product-name .rated span:last-child {
											        color: rgba(0, 0, 0, 0.1); } -->
										
										
												<span class="text-right">
														<span class="icon-chat" style="margin-right: 20px">
														<a href="./ReviewContent.bo?bno=${dto.bno }&pageNum=${requestScope.pageNum}">
														 <!-- 댓글 개수 -->
															${cmtList[status.index] } </a>
														</span> 
														<a href="./ReviewContent.bo?bno=${dto.bno }&pageNum=${requestScope.pageNum}"> 상세보기 </a>
												</span>
												
												 <!-- 댓글 표시 아이콘 -->
												 <!-- <span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span> -->
												 
									</p>
												 
										<p> ${dto.content } </p>
										
									</div>
								</div>
								<br>
								</c:forEach>
								
						</div>


						
						<!-- ------------- 페이징 처리---------------- -->
						<br>
							<div class="row" style="width: 100%">
								<div class="col-md-12">
									<div class="row mt-5">
										<div class="col text-center" style="width: 1000px">
											<div class="block-27">
												<c:if test="${cnt != 0 }">
													<ul>
														<li><c:if test="${startPage > pageBlock }"> 
																<a href="./ReviewList.bo?pageNum=${startPage-pageBlock}">&lt;</a>
															</c:if></li>

														<li class=""><c:forEach var="i" begin="${startPage }"
																end="${endPage }" step="1">
																<a href="./ReviewList.bo?pageNum=${i }">${i }</a>
															</c:forEach></li>

														<li><c:if test="${endPage < pageCount }">
																<a href="./ReviewList.bo?pageNum=${startPage+pageBlock }">&gt;</a>
															</c:if></li>
													</ul>
												</c:if>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-------------- 페이징 처리 -------------- -->
							
<!-- 						<br> -->
<!-- 						<div style="padding-left: 900px;">	 -->
<!-- 						<input type="button" value="이용후기 작성" style="width: 120%;"  onclick="location.href='./ReviewWrite.bo'">	 -->
<!-- 						</div> -->
							
					</div> <!-- class="row" -->
				</div>
			</div>
		</div> <!-- class="row" -->
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
										class="text">+82 051 0909</span></li>
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