<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
    
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
    

<style type="text/css">
* {box-sizing: border-box}

/* Style the tab */
.tab {
  float: left;
/*   border: 1px solid black; */
  background-color: #94B49F;
  width: 150px;
  height: 100px;
}

/* Style the buttons that are used to open the tab content */
.tab button {
  display: block;
  background-color: inherit;
  color: white;
  padding: 10px 10px;
  width: 100%;
  border: none;
  outline: none;
  text-align: left;
  cursor: pointer;
  transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #CEE5D0;
  color: black;
}

/* Create an active/current "tab button" class */
.tab button.active {
  background-color: #FCF8E8;
  color: black;
}

/* Style the tab content */
.tabcontent {
/*   position: absolute; */
  float: left;
  padding: 10px 12px;
  padding-left: 20px;
/*   border: 1px solid #ccc; */
  width: 70%;
  border-left: none;
  height: 1600px;
}


</style>

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
        width: 600px;
        height: 400px;
        overflow: auto;
      }
    </style>

<!-- 대여 지점 목록 스크롤 -->


</head>
<body>

 <div class="container">

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'map1')">기장점</button>
  <button class="tablinks" onclick="openCity(event, 'map2')">중구점</button>
  <button class="tablinks" onclick="openCity(event, 'map3')">서구점</button>
  <button class="tablinks" onclick="openCity(event, 'map4')">동구점</button>
  <button class="tablinks" onclick="openCity(event, 'map5')">영도구점</button>
  <button class="tablinks" onclick="openCity(event, 'map6')">부산진구점</button>
  <button class="tablinks" onclick="openCity(event, 'map7')">동래구점</button>
  <button class="tablinks" onclick="openCity(event, 'map8')">남구점</button>
  <button class="tablinks" onclick="openCity(event, 'map9')">북구점</button>
  <button class="tablinks" onclick="openCity(event, 'map10')">해운대점</button>
  <button class="tablinks" onclick="openCity(event, 'map11')">사하점</button>
  <button class="tablinks" onclick="openCity(event, 'map12')">금정구점</button>
  <button class="tablinks" onclick="openCity(event, 'map13')">강서구점</button>
  <button class="tablinks" onclick="openCity(event, 'map14')">연제구점</button>
  <button class="tablinks" onclick="openCity(event, 'map15')">수영구점</button>
  <button class="tablinks" onclick="openCity(event, 'map16')">사상구점</button>
</div>




<div id="map1" class="tabcontent">
  <h3>기장점</h3>
  <p>부산 기장군 기장읍 당사로6길 5</p>
  <input type="button" value="약도" onclick="openPopUp1()">
</div>

<div id="map2" class="tabcontent">
  <h3>중구점</h3>
  <p>부산 중구 중앙대로116번길 13</p>
  <input type="button" value="약도" onclick="openPopUp2()">
</div>

<div id="map3" class="tabcontent">
  <h3>서구점</h3>
  <p>부산 서구 천마로92번길 5</p>
  <input type="button" value="약도" onclick="openPopUp3()">
</div>


<div id="map4" class="tabcontent">
  <h3>동구점</h3>
  <p>부산 범일로65번길 8</p>
  <input type="button" value="약도" onclick="openPopUp4()">
</div>


<div id="map5" class="tabcontent">
  <h3>영도점</h3>
  <p>부산 영도구 태종로 446-4</p>
  <input type="button" value="약도" onclick="openPopUp5()">
</div>


<div id="map6" class="tabcontent">
  <h3>부산진구점</h3>
  <p>부산 부산진구 새싹로29번길 33</p>
  <input type="button" value="약도" onclick="openPopUp6()">
</div>

<div id="map7" class="tabcontent">
  <h3>동래구점</h3>
  <p>부산 동래구 충렬대로237번길 12</p>
  <input type="button" value="약도" onclick="openPopUp7()">
</div>

<div id="map8" class="tabcontent">
  <h3>남구점</h3>
  <p>부산 남구 수영로172번길 6</p>
  <input type="button" value="약도" onclick="openPopUp8()">
</div>


<div id="map9" class="tabcontent">
  <h3>북구점</h3>
  <p>부산 북구 화명신도시로 190</p>
  <input type="button" value="약도" onclick="openPopUp9()">
</div>


<div id="map10" class="tabcontent">
  <h3>해운대구점</h3>
  <p>부산 해운대구 달맞이길62번길 13</p>
  <input type="button" value="약도" onclick="openPopUp10()">
</div>
</body>

<div id="map11" class="tabcontent">
  <h3>사하구</h3>
  <p>부산 사하구 다대로5번길 8</p>
  <input type="button" value="약도" onclick="openPopUp11()">
</div>

<div id="map12" class="tabcontent">
  <h3>금정구점</h3>
  <p>부산 금정구 기찰로102번길 8</p>
  <input type="button" value="약도" onclick="openPopUp12()">
</div>

<div id="map13" class="tabcontent">
  <h3>강서구점</h3>
  <p>부산 강서구 공항로 1225</p>
  <input type="button" value="약도" onclick="openPopUp13()">
</div>

<div id="map14" class="tabcontent">
  <h3>연제구점</h3>
  <p>부산 연제구 연산동 2302</p>
  <input type="button" value="약도" onclick="openPopUp14()">
</div>

<div id="map15" class="tabcontent">
  <h3>수영구점</h3>
  <p>부산 수영구 남천동로9번길 50</p>
  <input type="button" value="약도" onclick="openPopUp15()">
</div>

<div id="map16" class="tabcontent">
  <h3>사상구점</h3>
  <p>부산 사상구 가야대로 190</p>
  <input type="button" value="약도" onclick="openPopUp16()">

</div>

    
    
<script>
function openCity(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>


</body>
</html>
