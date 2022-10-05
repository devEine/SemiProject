<%@page import="com.itwillbs.chaca.db.UserDTO"%>
<%@page import="com.itwillbs.chaca.db.CarDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
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

<style type="text/css">

table{
	margin: 0px auto;
}

table.type09 {
	border-collapse: collapse;
	text-align: left;
	line-height: 1.5;
}

table.type09 thead th {
/* 	padding: 10px; */
	font-weight: bold;
	vertical-align: top;
	color: #94B49F;
	border-bottom: 3px solid #94B49F;
}

table.type09 tbody th {
	width: 150px;
/* 	padding: 10px; */
	font-weight: bold;
	vertical-align: top;
	border-bottom: 1px solid #ccc;
	background: #FCF8E8;
}

table.type09 td {
	width: 350px;
/* 	padding: 10px; */
	vertical-align: top;
	border-bottom: 1px solid #ccc;
}

.outline-table {
/* 	style ="border-spacing: 500px; */
}

.dateANDrent {
	width: 1000px;
	margin: 0 auto;
}

.date {
	width: 550px;
/* 	float: left; */
/* 	margin-bottom: 100px; */
	padding-right: 30px;
/* 	display: inline-block; */
	height: 800px;
/* 	margin-left: 500px; */
	margin-right: 50px;
}

.rent {
/* 	float: left; */
	width: 1000px;
	text-align: center;
	height: 420px;
	width: 600px;
}

.row {
	height: 300px;
}

.userANDdriver {
	width: 1500px;
	margin: 0 auto;
/* 	margin-top: 300px; */
	height: 700px;
}

.user {
	width: 600px;
	float: left;
/* 	margin-bottom: 100px; */
	padding-right: 30px;
/* 	border: solid 1px; */
	display: inline-block;
	height: 500px;
/* 	margin-top: 300px; */
	text-align: center;
}

.driver {
	float: right;
	width: 300px;
	text-align: center;
/* 	border: solid 1px; */
	height: 500px;
}

.terms {
	width: 1000px;
	text-align: center;
	margin-left: 700px;
	
}

/* * section {
	border: solid 1px red;
}

* div {
	border: solid 1px blue;
} */

footer {
	clear: left;
}

.btn_back {
	border: 1px solid rgb(195,189,189);
	border-radius: 3px;
	background-color: white;
	color: black;
/* 	font-weight: bold; */
	width: 170px; height: 55px;
	margin-right: 20px;
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
<script type="text/javascript" src="./js/jquery-3.6.0.js"></script>
<script type="text/javascript">
	function start() {
		if(!$("#c1").is(":checked")) {
			alert("개인정보 방침 약관에 동의하지 않았습니다.");
			return false;
		}
		if(!$("#c2").is(":checked")) {
			alert("서비스 이용 약관에 동의하지 않았습니다.");
			return false;
		}
	}
</script>
<title>예약하기</title>
</head>
<body>
<!-- ---------------------- 최상단 메뉴바 -------------------------------- -->
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="./Main.bo">CHACA<span>CHACA</span></a>
		<%
			
			CarDTO dto = (CarDTO)request.getAttribute("dto");
			// UserDTO udto = (UserDTO)request.getAttribute("udto");
			String car_number = dto.getCar_number();
			
			if(car_number == null) {
				%>
				<script type="text/javascript">
					alert("선택하신 차량은 예약이 완료되어 예약이 불가능 합니다.");
					history.back();
				</script>
				<%
			}
	      %>
		<div class="collapse navbar-collapse" id="ftco-nav">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a href="./Main.bo" class="nav-link">Home</a></li>
				<li class="nav-item"><a href="./Information.bo" class="nav-link">이용안내</a></li>
				<li class="nav-item"><a href="./Service.bo" class="nav-link">요금안내</a></li>
				<li class="nav-item active"><a href="./Reservation.bo" class="nav-link">예약하기</a></li>
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

<!-- -------------------------------- 경로 -------------------------------- -->
<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs"><span class="mr-2"><a href="./Main.bo">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>예약하기 <i class="ion-ios-arrow-forward"></i></span></p>
														  <h1 class="mb-3 bread">예약하기</h1>
			</div>
		</div>
	</div>
</section>

<!-- -------------------------------- 소제목 -------------------------------- -->
<div class="row justify-content-center mb-3" style="margin-top: 50px;">
	<div class="col-md-7 text-center heading-section ftco-animate">
		<span class="subheading">차카차카</span>
		<h2 class="mb-3">예약하기</h2>
	</div>
</div>


<!-- -------------------------- 본문 시작 -------------------------- -->
<!-- <section class="ftco-section"> -->

<form action="./Payment.bo" method="post" class="p-2 contact-form" style="margin: 0px auto;" onsubmit="return start();">
<!-- --------------------------- 예약확인 -------------------------- -->
<!-- ---------------------- 대여일시, 반납일시 --------------------- -->
<section class="dateANDrent">
<table>
	<tr><td>
	<!-- 필요하신날짜 ~ free&option까지 섹션   -->
	<section class="date">
		<!-- --------------------------- 필요
		
		
		한 날짜 --------------------------- -->
		<div class="form-group">
			<h3>차카차카가 필요하신 날짜가 맞으세요?</h3>
			<input type="date" class="form-control" placeholder="2000. 01. 01" name="date" value="${date }" readonly>
		</div>
		<!-- --------------------------- 지역/지점 --------------------------- -->
		<div class="form-group">
			<h3>이용하시려는 지점이 맞으세요?</h3>
			<p class="d-flex justify-content-center mt-3 mb-0 d-block"><input type="text" class="form-control" placeholder="City, Station, etc"  name="location" value = "${dto.place }" readonly></p>
		</div>
		<div class="form-group">
			<h3>운전자 정보를 확인해주세요</h3>
			<div class="form-group">
				<span style="width: 20%;">운전자 성함</span><input type="text" class="form-control" placeholder="운전자 성함" value="${udto.name }" readonly>
			</div>
			<div class="form-group">
				<span style="width: 20%;">생년월일</span><input type="date" class="form-control" placeholder="생년월일" value="${udto.birth }" readonly>
			</div>
			<div class="form-group">
				<span style="width: 20%;">연락처</span><input type="tel" class="form-control" placeholder="010-0000-0000" value="${udto.phone }">
			</div>
			<div class="form-group">
				<span style="width: 20%;">운전면허종류</span><select class="form-control" name="license_type">
																<option>1종 대형</option>
																<option selected>1종 보통</option>
																<option>2종 보통</option>
																<option>2종 소형</option>
															 </select>
			</div>
			<div class="form-group">
				<span style="width: 20%;">운전면허번호</span> <input type="text" class="form-control" placeholder="운전면허번호" name="license_number" value="${udto.license_number }">
			</div>
		</div>
	</section>
	</td>
	<!--필요하신 날짜~총대여기간까지 섹션  -->

	<!-- 예약을 원하시는 차~ free$option 섹션 -->
	<td>
	<section class="rent">
			<div class="form-group">
				<h3>예약을 원하시는 차가 맞으신가요?</h3>
				<input type="hidden" value="${dto.car_number }" name="car_number">
				<table class="outline-table" style="margin-bottom: 20px;">
					<tr>
						<td>
							<span><label style="color:black; font-weight: bold;">${dto.car_brand}</label> <label style="color:red; font-weight: bold;">${dto.car_name }</label></span><br>
							<img src="./car_images/${dto.image }" width=350px height=190px style="margin: 0px; margin-right: 40px;">
						</td>
						<td>
							<table class="type09">
								<thead>
									<tr>
										<th>차종</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="./images/free-icon-checkmark-4797336.png"
											style="width: 20px; height: 20px;">&nbsp;&nbsp;${dto.car_number }</td>
									</tr>
									<tr>
										<td><img src="./images/free-icon-checkmark-4797336.png"
											style="width: 20px; height: 20px;">&nbsp;&nbsp;${dto.fuel} / ${dto.hp }cc</td>
									</tr>
									<tr>
										<td><img src="./images/free-icon-checkmark-4797336.png"
											style="width: 20px; height: 20px;">&nbsp;&nbsp;${dto.turnover}</td>
									</tr>
									<tr>
										<td><img src="./images/free-icon-checkmark-4797336.png"
											style="width: 20px; height: 20px;">&nbsp;&nbsp;${dto.car_year }년식</td>
									</tr>
									<tr>
										<td><img src="./images/free-icon-checkmark-4797336.png"
											style="width: 20px; height: 20px;">&nbsp;&nbsp;${dto.seat }인승</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</table>
				<div class="price" style="text-align: right; font-size: 18px; padding-right:75px;">
					<strong><fmt:formatNumber value= "${dto.price }" />원</strong>
				</div>
			</div>
	</section>
			<h3 class="block-title alt">Option & Free</h3><hr>
			
			<div class="row">
<!-- 				<div style="text-align: left;"> -->
					<div class="left" style="width: 300px; padding-left: 30px;">
						<div class="checkbox checkbox-danger">
							<input id="checkboxl1" type="checkbox" value="10000" name="babyseat" > <label for="checkboxl1">베이비 카시트 <span class="pull-right"> ₩ 10,000 </span></label>
						</div>
						<div class="checkbox checkbox-danger">
							<input id="checkboxl2" type="checkbox" value="10000" name="childrenseat"> <label for="checkboxl2">어린이 카시트 <span class="pull-right"> ₩ 10,000</span></label>
						</div>
						<div class="checkbox checkbox-danger">
							<input id="checkboxl3" type="checkbox" value="10000" name="wifi"> <label for="checkboxl3">와이파이 <span class="pull-right"> ₩ 10,000</span></label>
						</div>
						<div class="checkbox checkbox-danger">
						<input id="checkboxl4" type="checkbox" value="need" name="navigation"> <label for="checkboxl4">네비게이션<span class="pull-right"> free</span></label>
						</div>
					</div>
				</div>
	</td>
		<!-- 예약을 원하시는 차~ free$option 섹션 -->
</table>
</section>
	<!-- 필요하신날짜 ~ free&option까지 섹션   -->

<section>
	<div style="width: 1450px; margin: 0px auto; padding-left: 200px; margin-top: 100px; margin-bottom: 100px;">
	<!-- ------------------------------ 	이용약관 및 개인정보활용 동의 ------------------------------ -->
	<h2 style="text-align: center;">이용약관 및 개인정보활용 동의</h2>
		<div id="form1" >
			<div id="d1" style="width: 100%">전체 동의 &nbsp; <input type="checkbox" name="all" id="all"><hr>
				<div id="accordion">
					<div class="checkboxgroup">
						<h3><span style="width: 20%; font-size: 18px;"><strong style="font-size: 18px; color: red;">(필수) &nbsp;</strong>개인정보 방침 동의 &nbsp; <input type="checkbox" name="c1" id="c1"></span></h3>
						<textarea readonly="readonly" rows="5" cols="66" style="width: 100%;">
제 1장  총 칙
제1조 (약관의 목적 및 적용)
1. ChacaChaca(이하 "회사"라 한다)는 이 약관(이하 "본 약관"이라 한다)에 따라 대여자동차(이하 "렌터카"라 한다)를 임차인에게 임대하고 임차인은 이를 임차한다.
2. 본 약관은 회사와 임차인(공동임차인 포함) 사이에 체결되는 자동차 단기대여 계약(서면, 온라인, 스마트폰, 태블릿 PC 기타 전자문서를 통해서 제공되는 계약을 포함하며, 이하 "대여계약"이라 한다)에 있어, 회사와 임차인의 권리와 의무에 관한 사항을 규정함을 목적으로 한다.
3. 회사는, 법령에 반하지 않는 범위에서 특약을 정할 수 있으며, 특약한 때에는 그 특약이 우선한다. 단, 그 특약은 반드시 문서(전자문서 포함)에 기재되어야 한다.
4. 회사는 약관의 규제에 관한 법률, 전자문서 및 전자거래기본법, 전자서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전자상거래 등에서의 소비자보호에 관한 법률(이하 “전자상거래법”이라 한다) 등 관련 법령을 위배하지 않는 범위에서 본 약관을 개정할 수 있다.
									
제2장   대여계약
제2조 (예약 및 취소)
1. 임차인은 렌터카를 임차할 때에 미리 차종, 임대차 개시일자 및 개시시각, 임차장소, 반환장소, 운전자 기타 임차조건을 명시하고 예약할 수 있으며, 회사는 렌터카의 보유범위 내에서 예약에 응한다.
2. 전항의 예약이 있는 경우 회사는 대여예정요금의 10% 범위 내에서 예약금을 청구할 수 있다.
3. 임차인이 제1항의 예약내용을 변경하고자 할 때에는 사전에 회사의 승낙을 받아야 한다.
4. 임차인이 제1항에 의하여 예약한 임차개시 시각으로부터 1시간 이상 경과하여도 대여계약을 체결하지 않을 때에는 예약은 취소되는 것으로 한다. 이 경우 예약금은 반환하지 않는다.
				
제3조 (대여계약의 체결)
1. 회사는 대여할 수 있는 렌터카가 없을 때 및 임차인이 제3항 각 호에 해당할 때를 제외하고 임차인의 신청에 의하여 대여계약을 체결한다. 이 경우 임차인은 회사가 제공한 태블릿 PC 등 전자기기를 통하여 서명을 할 수 있으며, 전자서명을 완료한 경우 계약의 승낙으로 간주되어 대여계약이 성립한다.
2. 대여계약의 체결은 대여계약서에 의하며, 대여계약서에는 제2조 제1항의 임차조건을 명시하여야 한다.
3. 회사는 임차인이 다음 각 호에 해당할 때에는 대여계약의 체결을 거절할 수 있으며, 이 경우 지급받은 예약금을 반환한다.
① 임차인(임차인이 아닌 자가 대여계약서상의 운전자인 경우에는 운전자를 말한다. 이하 이 조에서 같다)이 렌터카운전에 필요한 자격의 운전면허증을 소지하지 아니한 자와 만 21세 미만인 자. 다만, 사고발생의 빈도 및 보험적용요율 등을 감안하여 임차인의 연령 및 운전경력 등은 달리 정할 수 있다.
② 신원확인이 불가능하거나 신원확인을 위한 회사의 질문이나 자료요구에 불응할 때
③ 음주상태에 있을 때
④ 마약, 각성제, 시너(신나) 등에 의한 중독상황이 의심되는 때
⑤ 예약 당시 명시한 운전자와 렌터카 인수시의 운전자가 다를 때
⑥ 과거 대여 시 대여요금 체납 이력이 있는 때
⑦ 과거 대여 시 제18조 각 호 사항에 해당하는 행위를 한 이력이 있는 때
⑧ 위 각 호에 준하는 사항으로서 대여계약의 체결을 거절할 만한 객관적인 사유가 있을 때
									
제4조 (대여계약의 성립 등)
1. 대여계약은 회사가 대여요금을 징수하고 임차인에게 렌터카를 인도한 때 효력이 발생한다. 이 때 예약금은 대여요금의 일부로 충당된다.
2. 회사는 사고, 도난, 기타 회사의 귀책사유에 의하지 아니하는 사유로 인하여 예약차종의 렌터카를 대여할 수 없을 때에는 유사한 다른 차종의 렌터카(이하 ”대체렌터카”라 한다)를 대여할 수 있다.
3. 전항에 의하여 대여하는 대체렌터카의 대여요금이 예약차종의 대여요금보다 비싸게 될 때에는 예약차종의 대여요금에 의하고 예약차종의 대여요금보다 싸게 될 때에는 당해 대체렌터카의 대여요금에 의한다.
4. 임차인은 제2항에 의한 대체렌터카의 인수를 거절하고 예약을 취소할 수 있으며, 이 경우 회사는 임차인에게 예약금 전액을 반환한다.
						</textarea>
					</div><br>
					<div class="checkboxgroup">
						<h3><span style="width: 20%; font-size: 18px;"><strong style="font-size: 18px; color: red;">(필수) &nbsp;</strong>서비스 이용 약관 동의 &nbsp; <input type="checkbox" name="c2" id="c2"></span></h3>
						<div>
							<textarea readonly="readonly" rows="5" cols="66" style="width: 100%;">
제 1장  총 칙
제 1조 (목적)
본 약관은 서비스(이하 "회사"라 한다)는 홈페이지에서 제공하는 서비스(이하 "서비스"라 한다)를 제공함에 있어 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다.

제 2조 (용어의 정의)
1. 본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
'서비스'란 회사가 이용자에게 서비스를 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 구성한 가상의 공간을 의미하며, 서비스 자체를 의미하기도 합니다.
'회원(이하 "회원"이라 한다)'이란 개인정보를 제공하여 회원등록을 한 자로서 홈페이지의 정보를 지속적으로 제공받으며 홈페이지가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.
'아이디(이하 "ID"라 한다)'란 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 회원 고유의 계정 정보를 의미합니다.
'비밀번호'란 회원이 부여 받은 ID와 일치된 회원임을 확인하고, 회원의 개인정보를 보호하기 위하여 회원이 정한 문자와 숫자의 조합을 의미합니다.
'회원탈퇴(이하 "탈퇴"라 한다)'란 회원이 이용계약을 해지하는 것을 의미합니다.
2. 본 약관에서 사용하는 용어의 정의는 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스 별 안내에서 정하는 바에 의합니다.
	 
제 3조 (이용약관의 효력 및 변경)
1. 회사는 본 약관의 내용을 회원이 쉽게 알 수 있도록 각 서비스 사이트의 초기 서비스화면에 게시합니다.
2. 회사는 약관의 규제에 관한 법률, 전자거래기본법, 전자 서명법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관련법을 위배하지 않는 범위에서 본 약관을 개정할 수 있습니다.
3. 회사는 본 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 회사가 제공하는 서비스 사이트의 초기 화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다.
다만, 회원에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 회사는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다.
4. 회원은 개정된 약관에 대해 거부할 권리가 있습니다. 회원은 개정된 약관에 동의하지 않을 경우 서비스 이용을 중단하고 회원등록을 해지할 수 있습니다.
단, 개정된 약관의 효력 발생일 이후에도 서비스를 계속 이용할 경우에는 약관의 변경사항에 동의한 것으로 간주합니다.
5. 변경된 약관에 대한 정보를 알지 못해 발생하는 회원 피해는 회사가 책임지지 않습니다.
							</textarea>
						</div>
					</div><br>
					<div class="checkboxgroup">
						<h3><span style="width: 20%; font-size: 18px;">(선택) 마케팅 수신 동의 &nbsp; <input type="checkbox" name="c3" id="c3"></span></h3>
						<div>
							<textarea readonly="readonly" rows="5" cols="66" style="width: 100%;">
ChacaChaca는 개인정보보호법 등에 관한 법률 등 관계법령에 따라 광고성 정보를 전송하기 위해 수신자의 사전 수신동의를 받고 있으며, 수신자의 마케팅 정보 수신 동의여부를 정기적으로 확인합니다. 다만 동의하지 않을 경우, 상품/서비스 소개 및 권유, 사은행사, 판촉행사 등 이용목적에 따른 혜택의 제한이 있을 수 있습니다. 그 밖에 선택적 사항에 대한 금융 거래와 관련된 불이익은 없습니다.
1. 전송방법
고객님의 핸드폰 문자메세지(SMS), E-mail 등을 통해 전달될 수 있습니다.
     
2. 전송내용
발송되는 마케팅 정보는 수신자에게 ChacaChaca가 운영하는 서비스에서 제공하는 혜택 정보, 각종 이벤트 정보, 상품 정보, 신규 서비스 안내 등 광고성 정보로 관련 법의 규정을 준수하여 발송됩니다. 단, 광고성 정보 이외 의무적으로 안내되어야 하는 정보성 내용은 수신동의 여부와 무관하게 제공됩니다.
      
3. 철회안내
고객님은 수신 동의 이후에라도 의사에 따라 동의를 철회할 수 있으며, 수신을 동의하지 않아도 회사가 제공하는 기본적인 서비스를 이용할 수 있으나, 당사의 마케팅 정보를 수신하지 못할 수 있습니다.
     
위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 네이버 위치기반 서비스를 이용할 수 있습니다.
      
제 1 조 (목적)
이 약관은 ChacaChaca가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.
      
제 2 조 (약관 외 준칙)
이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보취급방침, 회사가 별도로 정한 지침 등에 의합니다.
      
제 3 조 (서비스 내용 및 요금)
①회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다. 1.Geo Tagging 서비스: 게시글 등록 시점의 개인위치정보주체의 위치정보를 게시글과 함께 저장합니다.
2.위치정보를 활용한 검색결과 제공 서비스: 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과 및 주변결과(맛집, 주변업체, 교통수단 등)를 제시합니다.
3.위치정보를 활용한 친구찾기 및 친구맺기: 현재 위치를 활용하여 친구를 찾아주거나 친구를 추천하여 줍니다.
4.연락처 교환하기: 위치정보를 활용하여 친구와 연락처를 교환할 수 있습니다.
5.현재 위치를 활용한 광고정보 제공 서비스: 광고정보 제공 요청 시 개인위치정보주체의 현 위치를 이용하여 광고소재를 제시합니다.
6. 이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.
							</textarea>
						</div>
					</div>
				</div>
				<hr>
				(선택) 이벤트 등 프로모션 알림 메일 수신 &nbsp; <input type="checkbox" name="c4" id="c4"><br><br>

				<div class="checkboxgroup" style="text-align: center;">
					<input type="button" value="이 전" class="btn_back" onclick="history.back();">
					<input style="text-align: center;" type="submit" value="결제하기" class="btn btn-primary py-3 px-5">
				</div>
			</div>

			<!-- 이용약관 - check Box 이벤트처리를 위한 Script -->
			<script>
				var doc = document;
				var form1 = doc.getElementById('form1');
				var inputs = form1.getElementsByTagName('INPUT');
				var form1_data = {
					"c1" : false, //전체 선택
					"c2" : false
				//필수 선택 1
				};

				var c1 = doc.getElementById('c1');
				var c2 = doc.getElementById('c2');
				var c3 = doc.getElementById('c3');

				function checkboxListener() {
					form1_data[this.name] = this.checked;
				}

				c1.onclick = c2.onclick = c3.onclick = checkboxListener;
				var all = doc.getElementById('all');

				all.onclick = function() {
					if (this.checked) {
						setCheckbox(form1_data, true);
					} else {
						setCheckbox(form1_data, false);
					}
				};

				function setCheckbox(obj, state) {
					for ( var x in obj) {
						obj[x] = state;

						for (var i = 0; i < inputs.length; i++) {
							if (inputs[i].type == "checkbox") {
								inputs[i].checked = state;
							}
						}
					}
				}

				form1.onsubmit = function(e) {
					e.preventDefault();

					if (!form1_data['c1']) {
						alert('개인정보 방침 약관에 동의하지 않았습니다.');
						return false;
					}

					if (!form1_data['c2']) {
						alert('서비스 이용 약관에 동의하지 않았습니다.');
						return false;
					}
					this.submit();
				};
			</script>
			<!-- 이용약관 - check Box 이벤트처리를 위한 Script -->



			<!-- 소제목+본문 섹션 끝 -->
		</div>
		<!--     </section> 
 -->
	<!-- 이용약관 섹션  -->

	</div>
</section>
</form>

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
							class="icon-heart color-danger" aria-hidden="true"></i> by GH
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>

	<!-- ---------------------- 푸터 끝-------------------------------- -->



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
			<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
			<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


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
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>