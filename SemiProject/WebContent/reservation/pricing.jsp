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

<!-- 지도 아코디언 스타일 시작 ---------------------------------- -->
<style type="text/css">
.accordion {
/*   background-color: #94B49F; */
  background-color: #b1cebb;
  color: white;
  cursor: pointer;
  padding: 10px;
  width: 270px;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.accordion.active, .accordion:hover {
  background-color: #CEE5D0;
  color: black;
}

.accordion.active{
  background-color: #FCF8E8;
  color: black;
}

.accordion:after {
  content: '\002B';
  color: #FCF8E8;
  font-weight: bold;
  float: right;
  margin-left: 5px;
}

/*   - 표시 CSS였음...
 .active:after {
  content: "\2212";
} */

.panel {
  padding-left: 20px;
  padding-bottom: 10px;
  width: 300px;
  font-size: 14px;
  background-color: white;
  max-height: 0;
  overflow: hidden;
  transition: max-height 0.2s ease-out;
}

</style>

<!-- 버튼 -->
<style type="text/css">
#mapbutton {
 	line-height:13px; 
	-moz-border-radius:15px;
	-webkit-border-radius:15px;
	border-radius:18px;
	text-align:left;
	vertical-align:middle;
	font-size:13px;
	color:black;
	width:50px;
	height:15px;
	padding:8px;
/* 	padding-right: 40px; */
	padding-bottom:20px;
	background-color: #cccccc;
	border-color: white;
}

#mapbutton:active {
	position:relative;
	top:4px
}

#mapbutton:hover {
}

#dateID {
	width: 60% !important;
}

</style>
<!-- 버튼 -->


    <!-- 대여 지점 지도 팝업창 js -->
<script type="text/javascript">
 	function openPopUp1() { window.open("./map/map1.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp2() { window.open("./map/map2.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp3() { window.open("./map/map3.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp4() { window.open("./map/map4.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp5() { window.open("./map/map5.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp6() { window.open("./map/map6.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp7() { window.open("./map/map7.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp8() { window.open("./map/map8.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp9() { window.open("./map/map9.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp10() { window.open("./map/map10.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp11() { window.open("./map/map11.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp12() { window.open("./map/map12.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp13() { window.open("./map/map13.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp14() { window.open("./map/map14.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp15() { window.open("./map/map15.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp16() { window.open("./map/map16.jsp", "map1", "width=600, height=450, top=150, left=200"); }
</script>
    <!-- 대여 지점 지도 팝업창 js -->

<!-- 대여 지점 목록 스크롤 -->
   <style>
      .accordionContainer {
        width: 338px;
        height: 200px;
        overflow: auto;
      }
    </style>
<!-- 대여 지점 목록 스크롤 끝-->



<script type="text/javascript" src="jquery-3.6.0.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dfca5b3863564f021175c274a0079e2a"></script>
<script type="text/javascript">
	$(function(){
		// 질문유형을 선택한다.
		chnQnaType('small' , '아반떼');
	});

	function chnQnaType(type, select) {
    
		$('#schQnaType').empty();
    
		if(type == 'small') { // 소형
			$('#schQnaType').append("<option value='아반떼'>현대 아반떼</option>'");
			$('#schQnaType').append("<option value='더뉴레이'>기아 더뉴레이</option>'");
			$('#schQnaType').append("<option value='스파크'>쉐보레 스파크</option>'");
			$('#schQnaType').append("<option value='2 series'>BMW 2 series</option>'");
			$('#schQnaType').append("<option value='C class'>벤츠 C class</option>'");
			$('#schQnaType').append("<option value='A3'>아우디 A3</option>'");
		} else if (type == 'medium') {  // 중형
			$('#schQnaType').append("<option value='소나타'>현대 소나타</option>'");
			$('#schQnaType').append("<option value='K5'>기아 K5</option>'");
			$('#schQnaType').append("<option value='이쿼녹스'>쉐보레 이쿼녹스</option>'");
			$('#schQnaType').append("<option value='5 series'>BMW 5 series</option>'");
			$('#schQnaType').append("<option value='E class'>벤츠 E class</option>'");
			$('#schQnaType').append("<option value='A6'>아우디 A6</option>'");
		} else if ( type == 'large') {  // 대형
			$('#schQnaType').append("<option value='그랜저'>현대 그랜저</option>'");
			$('#schQnaType').append("<option value='K9'>기아 K9</option>'");
			$('#schQnaType').append("<option value='트래버스'>쉐보레 트래버스</option>'");
			$('#schQnaType').append("<option value='7 series'>BMW 7 series</option>'");
			$('#schQnaType').append("<option value='S class'>벤츠 S class</option>'");
			$('#schQnaType').append("<option value='A8'>아우디 A8</option>'");
		}
		
		document.getElementById("schQnaType").style.display = "";
    
		if ($.trim(select) != "") {
			$('#select1').val(type);
			$('#schQnaType').val(select);
		}
	}

	function join() {
		var date = document.form.date.value;
		var location = document.form.location.value;
		var car_name = document.form.schQnaType.value;
		
		if(date == "") {
			alert("대여일을 선택해주세요.");
			document.getElementById('dateID').focus();
			return false;
		}
		
		if(location == "") {
			alert("대여지점을 선택해주세요.");
			return false;
		}
		
		if(car_name == "") {
			alert("대여를 원하는 차량을 선택해주세요.");
			return false;
		}
	}
	
	
		// 지점 선택 버튼 누르면 -> input hidden name location 에 value값 들어가게..
		function locationValue(){
			
			// 선택 버튼을 클릭하면
			$(".choose_btn").off().on('click', function(){
				// 클릭한 버튼 값(해당 지점)을 변수에 담고
				var choosenLocation = this.value
// 				alert(choosenLocation);
				
				// 폼 태그 location에 value값에 대입
				document.form.location.value = choosenLocation;
				
				alert(choosenLocation + " 지점 선택 완료🥰");
				
			});//click
			
		}// function locationValue

</script>

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



<!-- 이전 날짜 선택 못하게 제어 ------------------------------------------------------------- -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.min.js"></script>
<script>
var today = new Date();
var year = today.getFullYear();
var month = today.getMonth()+1;
var day = today.getDate();

var format = year+"-"+(("00"+month.toString()).slice(-2))+"-"+(("00"+day.toString()).slice(-2));

// 	var now = new Date();
// 	var today =now.getFullYear()+"-"+ (now.getMonth()+1)+"-"+now.getDate();
// 	console.log("@@@@@@@@@ now " + now);
// 	console.log("@@@@@@@@@ today" + today);
	
	$(document).ready(function(){
		$('#dateID').attr('min', format);
	});
										
	// 	document.getElementById("dateID").innerHTML = today
									
</script>
<!-- 이전 날짜 선택 못하게 제어 끝 ------------------------------------------------------------- -->



<title>예약하기</title>
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
<!-- ------------------------------------------------ 최상단 메뉴바 끝 ------------------------------------------------ -->

<!-- ------------------------------------------ 경로 시작 -------------------------------------------- -->
<section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/autocar2.jpg');" data-stellar-background-ratio="0.5">
	<div class="overlay"></div>
	<div class="container">
		<div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
			<div class="col-md-9 ftco-animate pb-5">
				<p class="breadcrumbs"><span class="mr-2"><a href="./Main.bo">Home</a> > </span><span>예약하기 ></span></p>
           		<h1 class="mb-3 bread">예약하기</h1>
			</div>
       	</div>
	</div>
</section>
<!-- -------------------------------------------- 경로 끝 -------------------------------------------- -->

<!-- 소제목+본문 섹션 시작 -->
    <section class="ftco-section" style="padding-top: 3em;">
		<div class="container">
<!-- ------------------------------------------- 소제목 시작 ----------------------------------------- -->
<section class="ftco-section" style="padding: 2em;">
	<div class="container">
		<div class="row justify-content-center mb-3">
     		<div class="col-md-7 text-center heading-section ftco-animate">
				<span class="subheading">차카차카</span>
           		<h2 class="mb-3">예약하기</h2>
          	</div>
		</div>
	</div>
</section>
<!-- -------------------------------------------- 소제목 끝 ------------------------------------------ -->
       		
       		
<!-- ---------------------- 본문 -------------------------------- -->
<!------------------ 대여일시, 반납일시--------------------------->
				<form action="./ReservationAction.bo" class="p-2 contact-form"
					method="post" name="form" onsubmit="return join();">
			<table style="text-align: center;">
				<tr> 
					<td><h5>📆 언제 필요하세요?</h5></td>
					<td> >> </td>
					<td><h5>🧭 어디에서 이용하세요?</h5></td>
					<td> >> </td>
					<td><h5>🚘 어떤 차량을 원하세요?</h5></td>
				</tr>
					<tr>
						<!------------------ 대여일 선택 --------------------------->
						<td style="width: 30%;">
							<!-- <div class="row d-flex" style="float: left; border: 1px solid black; width: 30%;"> -->
							<!-- 	<div class="col-md-10 "> -->
							<div class="form-group" style="width: 100%; padding-bottom: 70px">
<!-- 								<p class="d-flex justify-content-center mt-3 mb-0 d-block"> -->
								<p class="d-flex">

								<span style="width: 30%; padding-top: 0.8em; padding-left: 30px;">대여일</span> 
							<input type="date" class="form-control" id="dateID" name="date" min="" >
																
								</p>
							</div>
						</td>
						<td></td>

						<!------------------ 위치 선택 --------------------------->
						<td style="width: 30%;">
							<div class="form-group" style="width: 100%;">

								<p class="d-flex justify-content-center mt-3 mb-0 d-block">

									<!-- 아코디언 여기부터 -->
								<div class="accordionContainer" style="padding-top: 20px;">

									<button class="accordion"  type="button">기장점</button>
									<div class="panel">
										<p>
											<br>부산 기장군 기장읍 당사로6길 5 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp1()">
											<button type="button" id="mapbutton" class="choose_btn" value="기장군" onmouseover="locationValue()">선 택</button>
										</p> 
											<!-- button type 속성 기본값이 submit이라서~~ 걍 제출됐구나~!!!! -->
									</div>

									<button class="accordion"  type="button">중구점</button>
									<div class="panel">
										<p>
											<br> 부산 중구 중앙대로116번길 13 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp2()">
											<button type="button" id="mapbutton" class="choose_btn" value="중구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion"  type="button">서구점</button>
									<div class="panel">
										<p> 
											<br> 부산 서구 천마로92번길 5 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp3()">
											<button type="button" id="mapbutton" class="choose_btn" value="서구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">동구점</button>
									<div class="panel">
										<p>
											<br> 부산 범일로65번길 8 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp4()">
											<button type="button" id="mapbutton" class="choose_btn" value="동구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">영도구점</button>
									<div class="panel">
										<p>
											<br> 부산 영도구 태종로 446-4 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp5()">
											<button type="button" id="mapbutton" class="choose_btn" value="영도구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion"  type="button">부산진구점</button>
									<div class="panel">
										<p>
											<br>부산 부산진구 새싹로29번길 33 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp6()">
											<button type="button" id="mapbutton" class="choose_btn" value="부산진구" onmouseover="locationValue()" >선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">동래구점</button>
									<div class="panel">
										<p>
											<br>부산 동래구 충렬대로237번길 12 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp7()">
											<button type="button" id="mapbutton" class="choose_btn" value="동래구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">남구점</button>
									<div class="panel">
										<p>
											<br>부산 남구 수영로172번길 6 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp8()">
											<button type="button" id="mapbutton" class="choose_btn" value="남구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">북구점</button>
									<div class="panel">
										<p>
											<br>부산 북구 화명신도시로 190 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp9()">
											<button type="button" id="mapbutton" class="choose_btn" value="북구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">해운대구점</button>
									<div class="panel">
										<p>
											<br>부산 해운대구 달맞이길62번길 13 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp10()">
											<button type="button" id="mapbutton" class="choose_btn" value="해운대구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">사하구점</button>
									<div class="panel">
										<p>
											<br>부산 사하구 다대로5번길 8 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp11()">
											<button type="button" id="mapbutton" class="choose_btn" value="사하구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">금정구점</button>
									<div class="panel">
										<p>
											<br>부산 금정구 기찰로102번길 8 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp12()">
											<button type="button" id="mapbutton" class="choose_btn" value="금정구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">강서구점</button>
									<div class="panel">
										<p>
											<br>부산 강서구 공항로 1225 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp13()">
											<button type="button" id="mapbutton" class="choose_btn" value="강서구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">연제구점</button>
									<div class="panel">
										<p>
											<br>부산 연제구 연산동 2302 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp14()">
											<button type="button" id="mapbutton" class="choose_btn" value="연제구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">수영구점</button>
									<div class="panel">
										<p>
											<br>부산 수영구 남천동로9번길 50 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp15()">
											<button type="button" id="mapbutton" class="choose_btn" value="수영구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>

									<button class="accordion" type="button">사상구점</button>
									<div class="panel">
										<p>
											<br>부산 사상구 가야대로 190 <br>
											<input type="button" id="mapbutton"
												value="약 도" onclick="openPopUp16()">
											<button type="button" id="mapbutton" class="choose_btn" value="사상구" onmouseover="locationValue()">선 택</button>
										</p>
									</div>
								</div>

<script type="text/javascript">
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var panel = this.nextElementSibling;
    if (panel.style.maxHeight) {
      panel.style.maxHeight = null;
    } else {
      panel.style.maxHeight = panel.scrollHeight + "px";
    } 
  });
}
</script>
								<!-- 아코디언 여기까지 -->

								<!-- <div id="map" style="width:625px;height:400px;"></div> -->
								<input type="hidden" class="form-control"
									name="location" value="">
								</p>
							</div>
						</td>
						<td></td>

						<!------------------ 차량 종류 선택 --------------------------->
						<td style="width: 30%;">
							<div class="form-group"  style="width: 90%; padding-bottom: 30%;">
								
								<!-- <span>차량 선택</span> <br> -->
								<p class="d-flex justify-content-center mt-3 mb-0 d-block"
									style="padding-left: 2em;">
									<select name="questType" id="select1" onchange="chnQnaType(this.value)" 
											style="width: 60%;" class="form-control">
										<option selected disabled>차량</option>
										<option value="small" id="carNameID">소형</option>
										<option value="medium">중형</option>
										<option value="large">대형</option>
									</select> 
									<select id="schQnaType" name="schQnaType" class="form-control" 
											style="width: 90%; display: none;">
									</select>
								</p>
							</div>
						</td>
					</tr>
				<tr>
					<td colspan="5">
						<div class="form-group text-center" style="padding-top: 3em;">
							<input type="submit" value="예약하기"
								class="btn btn-primary py-3 px-5">
						</div>
					</td>
				</tr>
			</table>
				</form>


<!-- 소제목+본문 섹션 끝 -->
       </div>
    </section>
<!-- ------------------------------------------- 카카오 지도 시작 ------------------------------------------- -->
<script type="text/javascript">
	var container = document.getElementById('map');
	var options = {
		center: new kakao.maps.LatLng(35.1584043, 129.0620349),
		level: 3
	};
	var map = new kakao.maps.Map(container, options);
	
	// 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(35.1584043, 129.0620349); 

	// 마커를 생성합니다
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});

	// 마커가 지도 위에 표시되도록 설정합니다
	marker.setMap(map);
</script>
<!-- ------------------------------------------- 카카오 지도 끝 ------------------------------------------- -->
<!-- ---------------------- 푸터 -------------------------------- -->
    <footer class="ftco-footer ftco-bg-dark ftco-section"  style="clear: left;"> <!-- clear 빼도 될 듯? -->
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
  <script src="js/main.js"></script>
    
  </body>
</html>