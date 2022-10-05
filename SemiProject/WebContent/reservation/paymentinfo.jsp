<%@page import="com.itwillbs.chaca.db.CarReservationDTO"%>
<%@page import="com.itwillbs.chaca.db.CarDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<title>예약하기</title>

<!-- ------------------------------------------------- 스타일 시작 ------------------------------------------------ -->
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

/* ------------------------------------------------ 본문 스타일 시작 ------------------------------------------------ */
.hole {
	width: 1410px;
	margin: 0 auto;
}
.subject {
	width: 900px;
	float: left;
	margin-bottom: 100px;
	padding-right: 30px;

}

.coupon {
	width: 300px; height: 33px;
}

.points {
	width: 300px;
}

.btn2 {
	background-color: #D0E6D2;
	border: 1px solid #D0E6D2;
	color : white;
}

.radio_insurance input[type=radio]{
	display: none;
}

.radio_insurance input[type=radio]+label{
	display: inline-block;
	width: 200px; height: 50px;
	line-height: 50px;
	margin-left: 10px;
	margin-right: 10px;
	text-align: center;
	font-weight:bold;
	font-size:13px;
	cursor: pointer;
	border-radius: 8px;
	border: 1px solid rgb(195,189,189);
	background-color: #fff;
	color: rgb(195,189,189);
}

.radio_insurance input[type=radio]:checked+label{
	border: 1px solid #D0E6D2;
	background-color: #D0E6D2;
	color: white;
}

.radio_payment_method input[type=radio]{
	display: none;
}

.radio_payment_method input[type=radio]+label{
	display: inline-block;
	width: 200px; height: 50px;
	line-height: 50px;
	margin-left: 10px;
	margin-right: 10px;
	text-align: center;
	font-weight:bold;
	font-size:13px;
	cursor: pointer;
	border-radius: 8px;
	border: 1px solid rgb(195,189,189);
	background-color: #fff;
	color: rgb(195,189,189);
}

.radio_payment_method input[type=radio]:checked+label{
	border: 1px solid #D0E6D2;
	background-color: #D0E6D2;
	color: white;
}
/* --------------------------------------------------- 본문 스타일 끝 -------------------------------------------------- */

/* ------------------------------------------------ 퀵메뉴1 스타일 시작 ------------------------------------------------ */
.quickmenu {
	width: 500px;
	float: left;
	
}

.quickmenu1 {
	width: 500px;
	border: 1px solid rgb(195,189,189);
	border-radius: 8px;
	margin-bottom: 20px;
}

.car_name {
	background-color:#f9f9f9;
	height: 50px;
	line-height: 50px;
	color: black;
	text-align: center;
	margin-bottom: 10px;
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
}

.car_image {
	text-align: center;
	padding-bottom: 20px;
}

.caution {
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	margin-bottom: 15px;
}
/* ------------------------------------------------- 퀵메뉴1 스타일 끝 ------------------------------------------------- */

/* ------------------------------------------------ 퀵메뉴2 스타일 시작 ------------------------------------------------ */
.quickmenu2 {
	text-align:center;
	width:500px;
	z-index: 1;
	float: left;
	margin-bottom: 100px;
	
}

.rsvt {
	border:1px solid rgb(195,189,189);
	border-radius: 8px;
	text-align: left;
	margin-bottom: 50px;
}

.rsvt_info {
	border-top-left-radius: 8px;
	border-top-right-radius: 8px;
	padding: 20px;
	background-color:#f9f9f9;
}

.total_price {
	margin: 0px;
	padding: 20px;
	background-color:black;
	color: white;
	border-bottom-left-radius: 8px;
	border-bottom-right-radius: 8px;
	
}

#value {
	float: right;
}

.btn_back {
	border: 1px solid rgb(195,189,189);
	border-radius: 8px;
	background-color: white;
	color: black;
	font-weight: bold;
	width: 200px; height: 50px;
	margin-left: 20px;
	margin-right: 20px;
}

.btn_submit {
	border: 1px solid #94B49F;
	border-radius: 8px;
	background-color: #94B49F;
	color: white;
	font-weight: bold;
	width: 200px; height: 50px;
	margin-left: 20px;
	margin-right: 20px;	
}
/* ------------------------------------------------ 퀵메뉴2 스타일 끝 ----------------------------------------------- */

/* ------------------------------------------------ 푸터 스타일 시작 ------------------------------------------------ */
footer{
	clear: left;
}
/* ------------------------------------------------- 푸터 스타일 끝 ------------------------------------------------- */
</style>
<!-- -------------------------------------------------- 스타일 끝 -------------------------------------------------- -->
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- 결제 준비하기 + 포인트 ajax -->
<script type="text/javascript">
/* 키보드 엔터 제어 */
	document.addEventListener('keydown', function(event) {
			  if (event.keyCode === 13) {
			    event.preventDefault();
			  };
	}, true);
/* 키보드 엔터 제어 */



	var IMP = window.IMP; // 생략 가능
	IMP.init("imp46723187"); // 예: imp00000000

	
	function requestPay() {
		if(!$("#select4").is(":checked")) {
	         alert("결제방법을 선택해주세요.");
	         return false;
	      }
		
			var totalPrice = document.getElementById('totalPrice').value; // input type hidden totalPrice의 value값을 totalPrice 변수에
// 			alert(totalPrice);
			
	      // IMP.request_pay(param, callback) 결제창 호출
	      IMP.request_pay({ // param
	          pg: "html5_inicis",
	          pay_method: "card",
	          merchant_uid: "ORD${cdto.rsvt_date }-${cdto.rsvt_number }",
	          name: "차카차카 예약",
	          amount: totalPrice, // 포인트 할인까지 다 멕인 totalPrice
	       // amount: ${cdto.price + cdto.babyseat + cdto.childrenseat + cdto.wifi },
	          buyer_email: "${cdto.rsvt_id }",
	          buyer_name: "${cdto.rsvt_name }",
	          // buyer_tel: "010-4242-4242",
	          // buyer_addr: "서울특별시 강남구 신사동",
	          // buyer_postcode: "01181"
	      }, function (rsp) { // callback
	          if (rsp.success) {
	              // 결제 성공 시 로직
	              alert("결제 성공!");
	              location.href="./PaymentAction.bo";
	          } else {
	              // 결제 실패 시 로직
	              alert("결제 실패!");
	              history.back();
	          }
	      });
	    }

	
	
	// 포인트 구간^^ 시작 ///////////////////////////////////////////////////////////////
	
	// id 세션값이 필요!!! 완전 완전 너무 필요ㅠ
	//   js에서 el로 받아온 값 변수로 사용^^ 앗싸
	var id = "<c:out value='${sessionScope.loginID}' />";
// 	console.log("id: " + id);
	
	// 천 단위 콤마 표시 함수
	function priceToString(price) {
	    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}
	
	
	// 차량 대여 요금, 추가 요금,, 변수에 담기
	var a = "<c:out value='${cdto.price}' />"; // 차량 대여 요금
	var b = "<c:out value='${cdto.babyseat + cdto.childrenseat + cdto.wifi}' />"; // 추가 요금
	var nTotalPrice = Number(a) + Number(b);
// 	console.log("a: " + a + " / b: " + b + " / nTotalPrice: " + nTotalPrice);
	
	
	$(document).ready(function(){
		// 이 창 열자마자 보유 중인 포인트 조회되게
// 		alert('정상 영업 중^^'); 
		$.ajax({
			url: './PointCheck.bo',
			data: {id:id},
			success: function(rData){
				$('.existing_point_here').html(rData);
				$('#existingPoint').val(rData); // 보유 중인 포인트 변수로 하나 만들기어놓기,, 제어할 때 쓸거
			}
		});// ajax
		
		
			
			// 사용할 포인트 적고 버턴 누르면
			$('.input_point_btn').click(function(){
// 				alert('정상 작동 중입니다 👼');

				// 보유 중인 포인트보다 많이 입력하지 못하도록 
				// + 포인트 입력하고 누르도록 제어
				
				// 변수 생성 먼저
				var existingPoint = parseInt(document.getElementById('existingPoint').value);
				var inputPoint = parseInt($('#input_point').val());
				//alert('existingPoint: ' + existingPoint + " / inputPoint: " + inputPoint);
						// 여까지 잘 받아와지는데 왜 비교를 몬하노,,,, ㄱ-
						// 너~~~무 큰 수 하면 안 되는건가?
				
				if (existingPoint < inputPoint) {
					alert('입력하신 포인트가 보유 중인 포인트를 초과하였습니다..😰  다시 입력해주세요');
// 					console.log('if문 지납니다~~');
					document.getElementById('input_point').value=null;
					document.getElementById('input_point').focus();
					return false;
					
				} else if (inputPoint == ""){
					alert('사용하실 포인트를 입력해주세요');
// 					console.log('else if문 지납니다~~');
					document.getElementById('input_point').value=null;
					document.getElementById('input_point').focus();
					return false;
					
				} else if ( nTotalPrice - inputPoint < 100){
// 					alert('nTotalPrice: ' + nTotalPrice + ' / inputPoint: ' + inputPoint);
					alert('실결제 금액은 최소 100원입니다. 다시 입력해주세요');
					document.getElementById('input_point').value=null;
					document.getElementById('input_point').focus();
					return false;
					
				} else {
					//   최종 결제 금액에서 포인트 입력한 만큼 차감시키는 Action 수행... 
										// 기존 포인트보다 더 많이 사용할 수 없게
					//     --> 출력 결과 받아와서 화면(총 금액)에 뿌리기 
					$.ajax({
						url: './PointCalc.bo',
						data: {inputPoint:$('#input_point').val(), id:id, nTotalPrice:nTotalPrice},
								// inputPoint                      id     nTotalPrice
								// 사용할 포인트                           할인 맥이기 전 요금(차량 대여 요금+추가 요금)
						success: function(rData){
							$('#totalPriceSpan').html(priceToString(rData)); //totalPrice 리턴된 거 span에 표시
							$('#discountValSpan').html(priceToString($('#input_point').val())); // 할인 요금에 입력한 포인트 표시
							$('#totalPrice').val(rData); // totalPrice 리턴된 거를 value값에 채우기!!!
							alert('포인트 할인이 적용되었습니다🎉');
						}
								
					});// ajax
				
				} // else
				
			});// click
		
	});// jquery ready
	// 포인트 구간^^ 끝 /////////////////////////
	
	
</script>

</head>
<body>


<!-- ---------------------------------------------- 최상단 메뉴바 시작 --------------------------------------------- -->
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

<!-- ---------------------- 경로 -------------------------------- -->
    <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs"><span class="mr-2"><a href="./Main.bo">Home <i class="ion-ios-arrow-forward"></i></a></span> 
          							<span>예약하기 <i class="ion-ios-arrow-forward"></i></span></p>
            						<h1 class="mb-3 bread">결제 정보</h1>
          </div>
        </div>
      </div>
    </section>


<!-- 소제목+본문 섹션1 시작 -->
    <section class="ftco-section">
		<div class="container">
<!-- ---------------------- 소제목1 -------------------------------- -->
			<div class="row justify-content-center mb-3">
     			<div class="col-md-7 text-center heading-section ftco-animate">
          			<span class="subheading">차카차카</span>
           				<h2 class="mb-3">할인/결제</h2>
          		</div>
       		</div>
       	</div>
	</section>
<!-- -------------------------------------------- 본문 (할인/결제) 시작 -------------------------------------------- -->
<div class="hole">
<form action="./PaymentAction.bo" method="post" onsubmit="return requestPay();">

<!-- Model로 데이터 전송을 위한 hidden 태그 -->
<section class="a">
	<div class="subject">
		<h3>포인트</h3><hr>
			<div>
				<input type="text" placeholder="사용하실 포인트를 입력해주세요" id="input_point"> 
				<input type="button" value="입력" class="btn2 input_point_btn" >
			</div>
			<div>사용하고 싶은 포인트 금액 입력 > 입력 금액만큼 차감</div>
		
			<!-- 기존 포인트 정보 ,,,,, ajax로 불러올 거,,  -->
			<div class="existing_point">
				보유 중인 포인트: <span class="existing_point_here" style="color: black; font-weight: bold;"> </span> 점
								<input type="hidden" name="existingPoint" id="existingPoint" value="0">
			</div><br><br><br>
		
		
<!-- 		<h3>차량손해면책제도(보험)</h3><hr>
			<div class="radio_insurance"><input type="radio" name="a" value="" id="select1"><label for="select1">완전자차 (고객부담금 0원)</label>
								<input type="radio" name="a" value="" id="select2"><label for="select2">일반자차 (고객부담금 50만원)</label>
								<input type="radio" name="a" value="" id="select3"><label for="select3">선택안함 (고객부담금 전액)</label></div><br>
 -->			
		<h3>결제방법</h3><hr>
			<div class="radio_payment_method"><input type="radio" name="b" value="신용카드" id="select4"><label for="select4">신용카드</label></div>
			<br><br><br>
			
		<h3>취소 수수료 안내</h3><hr>
			<div>· 차량 수령 24시간 전 취소 : 전액 환불</div>
			<div>· 차량 수령 24시간 이내 ~ 수령시간까지 취소 : 취소수수료 발생(3,000원)</div>
			<div>· 차량 수령시간 이후 : NO SHOW 수수료 발생(차량대여요금의 10%)</div>
			
	</div>
</section>
<!-- ---------------------------------------------- 본문 (할인/결제) 끝 ---------------------------------------------- -->

<!-- -------------------------------------------- 퀵메뉴1 (차량정보) 시작 -------------------------------------------- -->
<section class="quickmenu">
<section class="quickmenu1">
	<div class="car_name"><label style="color: black;">${cdto.rsvt_car_brand }</label> ${cdto.rsvt_car_name }</div>
	<div class="car_image"><img src="./car_images/${cdto.image }" width=400></div>
	<div class="caution">실제 대여하는 차량과 외관, 색상, 옵션 등 차이가 있을 수 있으며,<br>
	                     사고 또는 고장 등 부득이한 경우 동급차종으로 변경될 수 있습니다.</div>
</section>
<!-- --------------------------------------------- 퀵메뉴1 (차량정보) 끝 --------------------------------------------- -->

<!-- -------------------------------------------- 퀵메뉴2 (예약정보) 시작 -------------------------------------------- -->
<section class="quickmenu2">
	<!-- <p><span class="cl-point1">기간·지점·차량</span>은 순서와 관계없이 <span class="cl-point1">선택 예약이 가능</span>합니다.</p> -->
	<div class="rsvt">
		<div class="rsvt_info">
			<!-- 시작 : 날짜, 시간 -->
			<div>
				<strong>대여정보</strong>
				<span class="date-time-area clearfix" id="value">
					<!-- 날짜 -->
					<span id="sDateSpan" class="input fl bdr_r_none">${cdto.rsvt_date }
					</span>
				</span><hr>
			</div>
		
			<!-- 지역/지점 -->
			<div>
				<div class="store-area clearfix">
			   <!-- <span class="multiple-select-box fl is-disabled"><strong class="js-multiple-select-text">제주/제주지점</strong></span> -->
					<strong>지점명</strong>
					<span class="layer-multiple-select-box" id="value">${cdto.rsvt_place }</span>
				</div>
			</div><hr>
			
			
			<!-- 나머지 -->
			<div><strong>차량대여요금</strong>
				<span id="value"><fmt:formatNumber value= "${cdto.price }" />원</span>
			</div><hr>
			<div class="insurance_price"><strong>추가요금</strong>
				<span id="value"><fmt:formatNumber value= "${cdto.babyseat + cdto.childrenseat + cdto.wifi }" />원</span>
			</div><hr>
			<div><strong>할인요금</strong>
				<span id="value"><span id="discountValSpan" ></span>원</span>
			</div>
			
		</div>
		<div class="total_price"><strong>총 금액</strong>
			<input type="hidden" name="totalPrice" id="totalPrice" value="0"> <!-- 여기서 히든으로!!!! 대박 대박 -->
			<span id="value">
				<span id="totalPriceSpan" style="color: red; font-size: larger;">
				<fmt:formatNumber value= "${cdto.price + cdto.babyseat + cdto.childrenseat + cdto.wifi }" /> 
				</span>원
			</span>
		</div>
	</div>
	<input type="button" value="이 전" class="btn_back" onclick="history.back();">
	<input type="button" value="결 제" class="btn_submit" onclick="requestPay();">
</section>
</section>
<!-- --------------------------------------------- 퀵메뉴2 (예약정보) 끝 --------------------------------------------- -->
</form>
</div>



<!-- --------------------------------------------------- 푸터 시작 --------------------------------------------------- -->
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
<!-- ---------------------------------------------------- 푸터 끝 ---------------------------------------------------- -->

  <!-- loader -->
<!--   <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div> -->


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