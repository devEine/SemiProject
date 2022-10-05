<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.accordion {
  background-color: #94B49F;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 300px;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}

.active, .accordion:hover {
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

.active:after {
  content: "\2212";
}

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
    

<!-- 버튼 -->
<style type="text/css">
#mapbutton {
 	line-height:13px; 
	-moz-border-radius:15px;
	-webkit-border-radius:15px;
	border-radius:18px;
	text-align:left;
	vertical-align:middle;
	font-size:15px;
	color:black;
	width:49px;
	height:18px;
	padding:13px;
	padding-right: 40px;
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
</style>
<!-- 버튼 -->



    <!-- 대여 지점 지도 팝업창 js -->
<script type="text/javascript">
 	function openPopUp1() { window.open("map1.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp2() { window.open("map2.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp3() { window.open("map3.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp4() { window.open("map4.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp5() { window.open("map5.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp6() { window.open("map6.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp7() { window.open("map7.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp8() { window.open("map8.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp9() { window.open("map9.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp10() { window.open("map10.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp11() { window.open("map11.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp12() { window.open("map12.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp13() { window.open("map13.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp14() { window.open("map14.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp15() { window.open("map15.jsp", "map1", "width=600, height=450, top=150, left=200"); }
 	function openPopUp16() { window.open("map16.jsp", "map1", "width=600, height=450, top=150, left=200"); }
</script>
    <!-- 대여 지점 지도 팝업창 js -->

<!-- 대여 지점 목록 스크롤 -->
   <style>
      .container {
        width: 338px;
        height: 450px;
        overflow: auto;
      }
    </style>

<!-- 대여 지점 목록 스크롤 -->

</head>
<body>

 <div class="container">
 
<button class="accordion">기장점</button>
<div class="panel">
  <p>부산 기장군 기장읍 당사로6길 5
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp1()">
  		<input type="button" id="choose_btn" value="선택" >  </p>
</div>

<button class="accordion">중구점</button>
<div class="panel">
  <p>부산 중구 중앙대로116번길 13
  &nbsp;<input type="button" id="mapbutton"  value="약도" onclick="openPopUp2()"></p>
</div>

<button class="accordion">서구점</button>
<div class="panel">
  <p>부산 서구 천마로92번길 5
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp3()"></p>
</div>

<button class="accordion">동구점</button>
<div class="panel">
  <p>부산 범일로65번길 8
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp4()"></p>
</div>

<button class="accordion">영도구점</button>
<div class="panel">
  <p>부산 영도구 태종로 446-4
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp5()"></p>
</div>

<button class="accordion">부산진구점</button>
<div class="panel">
  <p>부산 부산진구 새싹로29번길 33
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp6()"></p>
</div>

<button class="accordion">동래구점</button>
<div class="panel">
  <p>부산 동래구 충렬대로237번길 12
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp7()"></p>
</div>

<button class="accordion">남구점</button>
<div class="panel">
  <p>부산 남구 수영로172번길 6
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp8()"></p>
</div>

<button class="accordion">북구점</button>
<div class="panel">
  <p>부산 북구 화명신도시로 190
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp9()"></p>
</div>

<button class="accordion">해운대구점</button>
<div class="panel">
  <p>부산 해운대구 달맞이길62번길 13
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp10()"></p>
</div>

<button class="accordion">사하구점</button>
<div class="panel">
  <p>부산 사하구 다대로5번길 8
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp11()"></p>
</div>

<button class="accordion">금정구점</button>
<div class="panel">
  <p>부산 금정구 기찰로102번길 8
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp12()"></p>
</div>

<button class="accordion">강서구점</button>
<div class="panel">
  <p>부산 강서구 공항로 1225
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp13()"></p>
</div>

<button class="accordion">연제구점</button>
<div class="panel">
  <p>부산 연제구 연산동 2302
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp14()"></p>
</div>

<button class="accordion">수영구점</button>
<div class="panel">
  <p>부산 수영구 남천동로9번길 50
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp15()"></p>
</div>

<button class="accordion">사상구점</button>
<div class="panel">
  <p>부산 사상구 가야대로 190
  &nbsp;<input type="button" id="mapbutton" value="약도" onclick="openPopUp16()"></p>
</div>
</div>







<script>
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

</body>
</html>