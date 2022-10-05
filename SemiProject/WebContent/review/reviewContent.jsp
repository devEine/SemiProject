<%@page import="com.itwillbs.chaca.db.ReviewCmtDTO"%>
<%@page import="com.itwillbs.chaca.db.ReviewDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    
    <!-- 팝업창 열기 -->
<script type="text/javascript">
 	function openPopUp(bno) {
//  		alert(bno);
 		window.open("./ReviewDelete.bo?bno="+bno, "pwCheckForm", "width=450, height=450, top=150, left=200");
 	}
</script>


<!-- 팝업창 열기 -->
    
    <!-- 메뉴바 css  -->

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


<script type="text/javascript">
	// 이메일 부분 공개 함수,,,
	function hide_email(str){
		var result = s.slice(3) + "*".repeat(str.length - 3);
		return result;
	}

</script>
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
			<section class="ftco-section" style="padding-bottom: 0em; ">
		      <div class="container">
		        <hr>
			        <div class="row d-flex justify-content-center">
			          <div class="col-md-12 text-center d-flex ftco-animate fadeInUp ftco-animated">
			          	<div class="blog-entry justify-content-end mb-md-5">
			              <div class="text px-md-5 pt-4">
			              	<div class="meta mb-3">
			              	
			              	<table width="100%">
			              	
			                  <tr><td><div>글번호: ${dto.bno } &nbsp;</div></td> 
			                  			<c:set var="dtoId" value = "${dto.id}" />
										<c:set var="hiddenDtoId" value = "${fn:substring(dtoId, 0, 3) }" /> 
			                  <td><div>작성자: ${dto.name } (${hiddenDtoId }*****) &nbsp;</div></td>
			                  <td><div>${dto.date }</div></td>
			                </div>
			                <td><h3 class="heading mt-2">
				                <div class="star"> 
									<c:choose>
										<c:when test="${dto.rate eq 1 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 2 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 3 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i>
										</c:when>
										<c:when test="${dto.rate eq 4 }">
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: #01d28e"></i> 
											<i class="ion-ios-star" style="color: rgba(0, 0, 0, 0.1);"></i> 
										</c:when>
										<c:when test="${dto.rate eq 5}">
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
											<i class="ion-ios-star" style="color: #01d28e"></i>
										</c:when>
									</c:choose>
								</div>
			                </h3>
			                </td>
			                </tr>
			                <tr><td colspan="4" style="padding: 50px;"><p style="font-size: large;">${dto.content }</p></td></tr>
			                </table>
							<!--   첨부파일 코드 -->
							<c:if test="${dto.file ne null && dto.file ne '' }">
										<!-- 파일이 null이 아닐 때 == 파일 있을 때 -->
								<img src="./upload/${dto.file }" width="50%" height="50%">			                
				                <p><a href="./upload/${dto.file }" download>${dto.file }</a></p>
			                </c:if>
			                
<!-- 			                <p><div class="btn btn-primary">Continue <span class="icon-long-arrow-right"></span></a></p> -->
			              	<br>
			              	<!-- /////////로그인아이디가 글쓴이 아이디와 일치할 때+ admin일 때 글수정/글삭제 가능///// -->
 			              	<c:if test="${sessionScope.loginID eq dto.id || sessionScope.loginID eq 'admin' }">
			              	<input type="button" class="Bbtn btn1" value="수 정" onclick="location.href='./ReviewFileUpdate.bo?bno=${dto.bno}&pageNum=${requestScope.pageNum}';"> 
							<input type="button" class="Bbtn btn2" value="삭 제" onclick="openPopUp(${dto.bno})">
 			              	</c:if>
			              	<!-- /////////로그인아이디가 글쓴이 아이디와 일치할 때 글수정/글삭제 가능///// -->
							<input type="button" class="Bbtn btn4" value="목 록" onclick="location.href='./ReviewList.bo?pageNum=${requestScope.pageNum}';">
			              </div>
			            </div>
			          </div>
		       	</div> <!-- class="row -->
		      </div> <!-- class="container" -->
		      
		      
		      		      <!-- ----------------------- 댓글 리스트 구간 --------------------------------- -->
				
						<input type="hidden" name="c_bno" value="${cdto.c_bno }">
			<section style="width: 80%; height: 40%">
				<div class="mt-5">
					<hr style="width: 130%;">
					<h6 class="mb-5">댓글</h6>
					<ul class="comment-list">
						<c:forEach var="cdto" items="${cmtList }">
							<li class="comment">
								<div class="vcard bio">
									<img src="./images/Chacalogo.jpg" alt="Image placeholder">
								</div>
								<div class="comment-body">
									<h3>
<%-- 										<script>hide_email( </script> ${cdto.id} <script>);</script>  --%>
<%-- 										${cdto.id} / --%>
										<c:set var="str1" value = "${cdto.id}" />
										<c:set var="str2" value = "${fn:substring(str1, 0, 3) }" /> 
										${str2 }*****
									</h3>
									<div class="meta">
										<fmt:formatDate value="${cdto.date }"
											pattern="yyyy.MM.dd hh:mm" />
														<!-- 댓글 삭제 버턴,,
																지 거만 지울 수 있게,,, + admin일 때
																세션 로그인 아이디 == cdto에서 꺼내온 아이디 -->
											<c:if test="${sessionScope.loginID eq cdto.id || sessionScope.loginID eq 'admin'}">
												<input type="button" value="삭제" class="Bbtn btn1" 
												onclick="location.href='./CommentDelete.bo?c_bno=${cdto.c_bno}&bno=${dto.bno }';"
												style="padding: 3px; font-size: x-small; margin: 0px;">
											</c:if>
									</div>
									<p style="font-size: larger;">${cdto.content }</p>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<!-- ----------------------- 댓글 리스트 구간 끝^^ --------------------------------- -->
				
		      
				<!-- ----------------------- 댓글 작성 구간^^ --------------------------------- -->

				<div class="comment-form-wrap pt-5" style="width: 70%; ">
					<hr style="width: 180%;">
					<h6 class="mb-5">댓글을 남겨주세요</h6>
					<form action="./CommentWrite.bo?pageNum=${requestScope.pageNum }" method="post" name="frm" class="p-5 bg-light">
								<input type="hidden" name="bno" value="${dto.bno }">  <!-- bno : 메인 글의 bno!! (BoardDTO의 bno!!!!) 여기가 중요 ★★★-->
						<div class="form-group">
							<label for="name">아이디 </label> <input type="text"
								class="form-control cmt-update-name" id="name" name="id" value="${sessionScope.loginID }" readonly>
						</div>
						<div class="form-group">
							<label for="message">내용</label>
							<textarea name="content" id="message" cols="7" rows="3" class="form-control cmt-update-content"></textarea>
						</div>
						<div class="btn btn-primary" >
							<input type="submit" value="댓글 달기😘"
								class="btn py-1 px-2 btn-primary">
						</div>
						
					</form>
				</div>
				</section>
				<!-- ----------------------- 댓글 작성 구간 끝^^ --------------------------------- -->
		      
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