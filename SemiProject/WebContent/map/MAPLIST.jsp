<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


    <!-- 대여 지점 목록 css -->
<style type="text/css">




</style>
    <!-- 대여 지점 목록 css -->


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


</head>
<body>

<!-- --------------------대여 지점 목록---------------------- -->
<form>
	<table style="padding: 80px; height: 30px;">
		<thead style="padding: 60px; text-align: center; background-color: pink;">
			<tr>
				<td style="width: 80px; ">선택</td>
				<td style="width: 150px;">대여 지점</td>
				<td style="width: 350px;">위치</td>
				<td>📍</td>
			</tr>
		</thead>
		
		<tbody style="padding: 30px; text-align: center;">
		<tr>
			<td>1</td>
			<td >기장점</td>
			<td style="text-align: left;">부산 기장군 기장읍 당사로6길 5</td>
			<td><input type="button" value="약도" onclick="openPopUp1()"></td>
		</tr>
		<!-- 2 중구점  -->
		<tr>
			<td>2</td>
			<td>중구점</td>
			<td style="text-align: left;">부산 중구 중앙대로116번길 13</td>
			<td><input type="button" value="약도" onclick="openPopUp2()"></td>
		</tr>
		<!-- 3 서구점	 -->
		<tr>
			<td>3</td>
			<td>서구점</td>
			<td style="text-align: left;">부산 서구 천마로92번길 5</td>
			<td><input type="button" value="약도" onclick="openPopUp3()"></td>	
		</tr>
		<!-- 4 동구점	 -->
		<tr>
			<td>4</td>
			<td>동구</td>
			<td style="text-align: left;">부산 범일로65번길 8</td>
			<td><input type="button" value="약도" onclick="openPopUp4()"></td>
		</tr>
		<!-- 5 영도구	 -->
		<tr>
			<td>5</td>
			<td>영도구점</td>
			<td style="text-align: left;">부산 영도구 태종로 446-4</td>
			<td><input type="button" value="약도" onclick="openPopUp5()"></td>
		</tr>
		<!-- 6 부산진구	 -->
		<tr>
			<td>6</td>
			<td>부산진구점</td>
			<td style="text-align: left;">부산 부산진구 새싹로29번길 33</td>
			<td><input type="button" value="약도" onclick="openPopUp6()"></td>
		</tr>
		<!-- 7 동래구	 -->
		<tr>
			<td>7</td>
			<td>동래구점</td>
			<td style="text-align: left;">부산 동래구 충렬대로237번길 12</td>
			<td><input type="button" value="약도" onclick="openPopUp7()"></td>
		</tr>
		<!-- 8 남구	 -->
		<tr>
			<td>8</td>
			<td>남구점</td>
			<td style="text-align: left;">부산 남구 수영로172번길 6</td>
			<td><input type="button" value="약도" onclick="openPopUp8()"></td>
		</tr>
		
		<!-- 9 북구	 -->
		<tr>
			<td>9</td>
			<td>북구점</td>
			<td style="text-align: left;">부산 북구 화명신도시로 190</td>
			<td><input type="button" value="약도" onclick="openPopUp9()"></td>
		</tr>
		<!-- 10 해운대구	 -->
		<tr>
			<td>10</td>
			<td>해운대구</td>
			<td style="text-align: left;">부산 해운대구 달맞이길62번길 13</td>
			<td><input type="button" value="약도" onclick="openPopUp10()"></td>
		</tr>
		<!-- 11 사하구	 -->
		<tr>
			<td>11</td>
			<td>사하구점</td>
			<td style="text-align: left;">부산 사하구 다대로5번길 8</td>
			<td><input type="button" value="약도" 	onclick="openPopUp11()"></td>
		</tr>
		<!-- 12 금정구	 -->
		<tr>
			<td>12</td>
			<td>금정구점</td>
			<td style="text-align: left;">부산 금정구 기찰로102번길 8</td>
			<td><input type="button" value="약도" onclick="openPopUp12()"></td>
		</tr>
		<!-- 13 강서구	 -->
		<tr>
			<td>13</td>
			<td>강서구점</td>
			<td style="text-align: left;">부산 강서구 공항로 1225</td>
			<td><input type="button" value="약도"	onclick="openPopUp13()"></td>
		</tr>
		<!-- 14 연제구	 -->
		<tr>
			<td>14</td>
			<td>연제구점</td>
			<td style="text-align: left;">부산 연제구 연산동 2302</td>
			<td><input type="button" value="약도" onclick="openPopUp14()"></td>
		</tr>
		<!-- 15 수영구	 -->
		<tr>
			<td>15</td>
			<td>수영구점</td>
			<td style="text-align: left;">부산 수영구 남천동로9번길 50</td>
			<td><input type="button" value="약도" onclick="openPopUp15()"></td>
		</tr>
		<!-- 16 사상구	 -->
		<tr>
			<td>16</td>
			<td>사상구점</td>
			<td style="text-align: left;">부산 사상구 가야대로 190</td>
			<td><input type="button" value="약도" onclick="openPopUp16()"></td>
		</tr>
			</tbody>
	
	</table>
	</form>
<!-- --------------------대여 지점 목록---------------------- -->



</body>
</html>