<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>문의하기</title>
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
footer {
	clear: left;
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
            						<h1 class="mb-3 bread">문의하기</h1>
          </div>
        </div>
      </div>
    </section>


<!-- 소제목+본문 섹션 시작 -->
    <section class="ftco-section"></section>
		<div class="container"></div>
<!-- ---------------------- 소제목 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">문의하기</h2>
          		</div>
       		</div>

<!--좌측 메뉴바  -->
<div style="width: 1400px; margin: 0px auto;">
<nav id="nav" style="display: inline-block; float: left;">
            <ul>
                <li><a href="./ReviewList.bo">이용후기</a></li>
                <li><a href="./ContactList.bo">문의하기</a></li>
            </ul>
    </nav>


<!--좌측 메뉴바 -->

       		
<!-- ---------------------- 본문 -------------------------------- -->
     <section class="ftco-section contact-section"  style="display: inline-block; float: left;">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">
        	<div class="col-md-4">
        		<div class="row mb-5">
		          <div class="col-md-12">
		          	<div class="border w-100 p-4 rounded mb-2 d-flex">
			          	<div class="icon mr-3">
			          		<span class="icon-map-o"></span>
			          	</div>
			            <p><span>Address :</span> 부산광역시 <br> 아이티윌 1조 </p>
			          </div>
		          </div>
		          <div class="col-md-12">
		          	<div class="border w-100 p-4 rounded mb-2 d-flex">
			          	<div class="icon mr-3">
			          		<span class="icon-mobile-phone"></span>
			          	</div>
			            <p><span>Phone :</span> <a href="tel://1234567920">+82 777 7777</a></p>
			          </div>
		          </div>
		          <div class="col-md-12">
		          	<div class="border w-100 p-4 rounded mb-2 d-flex">
			          	<div class="icon mr-3">
			          		<span class="icon-envelope-o"></span>
			          	</div>
			            <p><span>Email :</span> <a href="mailto:info@yoursite.com">info@yourchaca.com</a></p>
			          </div>
		          </div>
		        </div>
          </div>
          <div class="col-md-8 block-9 mb-md-5">
            <form action="./ContactUpdatePro.bo?pageNum=${pageNum }" method="post" class="bg-light p-5 contact-form">
            <input type="hidden" name="bno" value="${dto.bno }"> <!-- 보이면 안되는 정보는 hidden으로 추가!!!!!!!!!!!!!!!!!!!!!! 필수정보는 꼭~~~~~!!!!! -->
       <!--        <div class="form-group">
                 <input type="text" class="form-control" placeholder="아이디" name="id">
              </div> -->
              <div class="form-group">
                <input type="text" class="form-control" value="${dto.name }" name="name">
              </div>
              <div class="form-group">
                <input type="password" class="form-control" value="${dto.password }" name="password">
              </div>
              <div class="form-group">
                <input type="text" class="form-control" value="${dto.subject }" name="subject">
              </div>
              <div class="form-group">
                <textarea id="" cols="30" rows="7" class="form-control"  name="content">${dto.content }</textarea>
              </div>
              <div class="form-group text-center">
                <input type="submit" value="제  출" class="btn btn-primary py-3 px-5">
              </div>
            </form>
          
          </div>
        </div>
 
<!-- 소제목+본문 섹션 끝 -->
       </div>
    </section>
 </div>   


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
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by Eine
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
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