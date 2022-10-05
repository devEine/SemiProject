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

<title>회원가입</title>

<style type="text/css">
.check {
	position: absolute;
	left: 100%;
	height: 50px;
	border-radius: 5px;
	border: 1px solid #D0E6D2;
	background-color: #D0E6D2;
	color: white;
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
</head>
<body>

<script type="text/javascript" src="../js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function join() {
		var id_email = document.form.id_email.value;
		var password = document.form.password.value;
		var password_check = document.form.password_check.value;
		var name = document.form.name.value;
		var birth = document.form.birth.value;
		var phone = document.form.phone.value;
		var address = document.form.address.value;
		
		if(id_email == "") {
			alert("아이디를 입력하세요.");
			return false;
		}
		
		if(password == "") {
			alert("비밀번호를 입력하세요.");
			return false;
		} else if(password.length < 8) {
			alert("비밀번호는 8자 이상입니다.");
			return false;
		}
		
		if(password_check != password) {
			alert("비밀번호를 확인하세요.");
			return false;
		}
		
		if (name == "") {
			alert("이름을 입력하세요.");
			return false;
		}
		
		if(birth == "") {
			alert("생년월일을 입력하세요.");
			return false;
		}
		
		if (phone == "") {
			alert("전화번호를 입력하세요.");
			return false;
		}
		if (address == "") {
			alert("주소를 입력하세요.");
			return false;
		}
	}
	
	function idCheck(){
		window.open("./Idcheck.bo", "idwin", "width=400, height=350");
	}
	
// 	$(document).ready(function(){
// 		// 아이디 중복 체크
// 		$('.check').click(function() {
// 			alert("중복");
// 			$.ajax({
// 				url : "./Idcheck.bo",
// 				data : {"id" : $('#id_email').val()},
// 				success : function(rdata) {
// 					$('.idspan').html(rdata);
// 				} 
// 			});
// 		}); 
// 	});
</script>


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
          	<p class="breadcrumbs"><span class="mr-2"><a href="./Main.bo">Home <i class="ion-ios-arrow-forward"></i></a></span></p>
            						<h1 class="mb-3 bread">회원가입</h1>
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
           				<h2 class="mb-3">회원가입</h2>
          		</div>
       		</div>
       		
       		
<!-- ---------------------- 본문 -------------------------------- -->
       		<div class="row d-flex justify-content-center">
       			<div class="col-md-7 ">
            		<form action="./JoinAction.bo" method="post" class="p-2 contact-form" name="form" onsubmit="return join();">
	              		<div class="form-group">
	              			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	                			<span style="width: 20%;">이메일</span>
	                			<input type="email" class="form-control" name="id_email" id="id_email" value="${id_email }" readonly>
	                			<span class="idspan"></span>
	                		</p>
	              		</div>
	              		<div class="form-group">
	              			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	                			<span style="width: 20%;">비밀번호</span>
	                			<input type="password" class="form-control" placeholder="8자 이상" name="password">
	                		</p>
	              		</div>
	              		<div class="form-group">
	              			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	                			<span style="width: 20%;">비밀번호 <br>확인</span>
	                			<input type="password" class="form-control" placeholder="비밀번호를 한 번 더 입력해주세요" name="password_check">
	                		</p>
	              		</div>
	              		<div class="form-group">
	              			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	                			<span style="width: 20%;">이름</span>
	                			<input type="text" class="form-control" placeholder="홍길동" name="name" value="${name }">
	                		</p>
	              		</div>
	              		<div class="form-group">
	              			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	                			<span style="width: 20%;">생년월일</span>
	                			<input type="date" class="form-control" placeholder="2000. 01. 01" name="birth">
	                		</p>
	              		</div>
	              		<div class="form-group">
	              			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	                			<span style="width: 20%;">전화번호</span>
	                			<input type="text" class="form-control" placeholder="010-0000-0000" name="phone">
	                		</p>
	              		</div>
	              		<div class="form-group">
	              			<p class="d-flex justify-content-center mt-3 mb-0 d-block">
	                			<span style="width: 20%;">주소</span>
	                			<input type="text" class="form-control" placeholder="부산시 ㅇㅇ구 ㅇㅇ동.." name="address">
	                		</p>
	              		</div>
	              		<div class="form-group text-center">
	                		<input type="submit" value="회원가입" class="btn btn-primary py-3 px-5">
	              		</div>
            		</form>
          		</div>
          </div>
          
<!-- 소제목+본문 섹션 끝 -->
       </div>
    </section>


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