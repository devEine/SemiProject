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
	
	//===================
	
	button {
    margin: 20px;
}

.w-btn {
    position: relative;
    border: none;
    display: inline-block;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
}

.w-btn-outline {
    position: relative;
    padding: 15px 30px;
    border-radius: 15px;
    font-family: "paybooc-Light", sans-serif;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
    text-decoration: none;
    font-weight: 600;
    transition: 0.25s;
} 



.w-btn-green {
    background-color: #77af9c;
    color: #d7fff1;
}


.w-btn-green-outline {
    border: 3px solid #77af9c;
    color: darkgray;
}



.w-btn-green-outline:hover {
    background-color: #77af9c;
    color: #d7fff1;
}


.w-btn:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn-outline:hover {
    letter-spacing: 2px;
    transform: scale(1.2);
    cursor: pointer;
}

.w-btn:active {
    transform: scale(1.5);
}

.w-btn-outline:active {
    transform: scale(1.5);
}

.w-btn-gra1 {
    background: linear-gradient(-45deg, #33ccff 0%, #ff99cc 100%);
    color: white;
}

.w-btn-gra2 {
    background: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    color: white;
}

.w-btn-gra3 {
    background: linear-gradient(
        45deg,
        #ff0000,
        #ff7300,
        #fffb00,
        #48ff00,
        #00ffd5,
        #002bff,
        #7a00ff,
        #ff00c8,
        #ff0000
    );
    color: white;
}

.w-btn-gra-anim {
    background-size: 400% 400%;
    animation: gradient1 5s ease infinite;
}

@keyframes gradient1 {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}

@keyframes gradient2 {
    0% {
        background-position: 100% 50%;
    }
    50% {
        background-position: 0% 50%;
    }
    100% {
        background-position: 100% 50%;
    }
}

@keyframes ring {
    0% {
        width: 30px;
        height: 30px;
        opacity: 1;
    }
    100% {
        width: 300px;
        height: 300px;
        opacity: 0;
    }
}
.heading mt-2 {
	border: 1px solid;
	margin-bottom: 0px;
	text-align: center;
	height: 100px;
	width: 100%;
	
}

/* a {

	border: 1px solid green;
	margin-bottom: 0px;
	text-align: center;
	height: 300px;


}  */

/* img {
	border: 1px solid red;
	
} */

.contentbox{
	font-size: 20px;
}

/* 폰트============================= */

@font-face {
    font-family: 'RIDIBatang';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_twelve@1.0/RIDIBatang.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
 *{
    font-family: 'RIDIBatang';

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
    <section class="ftco-section">
		<div class="container">
<!-- ---------------------- 소제목 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">문의하기</h2>
          		</div>
       		</div>

<!--좌측 메뉴바  -->

<nav id="nav">
            <ul>
                <li><a href="#" onclick="location.href='./ReviewList.bo'">이용후기</a></li>
                <li><a href="#" onclick="location.href='./ContactList.bo'">문의하기</a></li>
            </ul>
    </nav>


<!--좌측 메뉴바 -->
	<!-- <h1>contactContent.jsp</h1> -->
<!-- ---------------------- 본문 -------------------------------- -->
			<section class="ftco-section" style="padding-bottom: 0em;">
		      <div class="container">
		      <!-- <hr style="padding: 0;"> -->
		      <div style="text-align: center; font-weight: bold; font-size: 20px; background-color:#CEE5D0; height: 60px; line-height:60px; padding: 0;"> 제목 : ${dto.subject }</div>
		        <!-- <hr style="padding: 0;"> -->
			        <div class="row d-flex justify-content-center">
			          <div class="col-md-12 text-center d-flex ftco-animate fadeInUp ftco-animated">
			          	<div class="blog-entry justify-content-end mb-md-5">
			              <div class="text px-md-5 pt-4">
			              	<div class="meta mb-3">
			              	<input type="hidden" value=${dto.password }>
			                  <div>글번호: ${dto.bno } &nbsp;</div> 
			                  <div>작성자: ${dto.name } &nbsp;</div>
			                  <div>${dto.date } &nbsp;</div>
			                  <div>조회수: ${dto.readcount }</div>
			                </div>
			                <h3 class="heading mt-2">
				               
			                	<!-- <a href="#" class="block-20 img"  > --><img src="./images/ContactContentImage1.png">${dto.file }<!-- </a> -->
			                </h3>
			                <p class="contentbox">${dto.content }</p>
<%-- 			              	<a href="#" class="block-20 img" style="background-image: url('./contact/ContactContentImage1.png');">${dto.file }</a>
 --%>			              
<!-- 			                <p><a href="blog-single.html" class="btn btn-primary">Contin/ue <span class="icon-long-arrow-right"></span></a></p> -->
			              <br>
						<!-- 답글-->
						<%
						if(id != null) {
							if(id.equals("admin")) {
								%>
								<button class="w-btn w-btn-green" type="submit" value="답글" onclick="location.href='./ContactReWrite.bo?bno=${dto.bno}&pageNum=${pageNum}&re_ref=${dto.re_ref }&re_lev=${dto.re_lev }&re_seq=${dto.re_seq }';">답글</button>
								<%
							}
						}
						%>
			              <!-- 수정 -->&nbsp;
			              	<button  class="w-btn w-btn-green" type="button" value="수정" onclick="location.href='./ContactUpdate.bo?bno=${dto.bno}&pageNum=${pageNum}';">수정</button>
							&nbsp;
							<button  class="w-btn w-btn-green" type="button" value="삭제" onclick="location.href='./ContactDelete.bo?bno=${dto.bno}&pageNum=${pageNum}';">삭제</button>
							<!-- //<input type="button" value="답글"> -->
							&nbsp;
							<button  class="w-btn w-btn-green" type="button" value="목록" onclick="location.href='./ContactList.bo?pageNum=${pageNum}';">목록</button>
			              
			              </div>
			            </div>
			          </div>
		       	</div> <!-- class="row -->
		      </div> <!-- class="container" -->
		    </section>


		</div>
	</section>






<%-- 
			<table border="1">
      <tr>
        <td>글번호</td>
        <td>${dto.bno }</td>
        <td>조회수</td>
        <td>${dto.readcount }</td>
      </tr>
      <tr>
        <td>작성자</td>
        <td>${dto.name }</td>
        <td>작성일</td>
        <td>${dto.date }</td>
      </tr>
      <tr>
      	<td>제목</td>
      	<td colspan="3">${dto.subject }</td>
      </tr>
      <tr>
      	<td>내용</td>
      	<td colspan="3">${dto.content }</td>
      </tr>
      <tr>
      	<td>첨부파일</td>
      	<td colspan="3">${dto.file }</td>
      </tr>
      <tr>
      	<td><input type="button" value="수정" onclick="location.href='./ContactUpdate.cot?bno=${dto.bno}&pageNum=${pageNum}';"></td>
      	<td><input type="submit" value="삭제"></td>
<!--       	<td><input type="submit" value="답글"></td> -->
      	<td>
      		<input type="submit" value="목록" 
      		onclick="location.href='./ContactList.cot?pageNum=${pageNum}';">
      				<!-- 게시글 클릭 후 게시글 정보 뜨면 bno와 pageNum를 가지고 이동 (주소창에) -->
      	</td>
      </tr>
     </table>
     --%>
     <!-- ---------------------- 본문 -------------------------------- -->
     
<!-- ---------------------- 푸터 -------------------------------- -->
    <footer class="ftco-footer ftco-bg-dark ftco-section" style="width: 100% !important;">
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