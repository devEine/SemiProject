<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script>
<!-- 팝업창 닫기 -->
	function closePopup(bno) {
	     window.close();
// 	     location.href='./BoardList.bo?pageNum=" + pageNum + "';
	}
</script>
<!-- 팝업창 닫기 -->

<!-- 버튼 스타일 -->
<style type="text/css">
.btn {
	color: white;
	background-color: #1089ff;
	padding: 12px 27px;
	text-decoration: none;
	border: none;
}
h3{
padding-top: 10px;
padding-bottom: 20px;
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


<!-- 입력폼 스타일 -->

<!-- <style type="text/css"> -->
  <style class="INLINE_PEN_STYLESHEET_ID">
    *, ::after, ::before {
  box-sizing: border-box;
}

body {
  background-color: #fefdf9;
/*   color: orange; */
  letter-spacing: 0.05em;
}

.form {
  width: 300px;
  padding: 40px 15px 24px;
  margin: 0 auto;
  
}
.form .control {
  margin: 0 0 24px;

  
}

.form h1{
  font-size: 23px;
  color: #024a30;
  padding-bottom: 10px;
/*   background-color: #CEE5D0; */
/* border-radius: 20px;   */
padding-top: 13px; 
padding-bottom: 13px;

}

.form .control input {
  width: 100%;
  height: 58px;
  padding: 14px 18px;
  border: 0;
  background: transparent;
/*   color: #fff; */
  color: #c40000;
  letter-spacing: 0.05em;
  font-size: 16px;
}
.form .control input:hover, .form .control input:focus {
  outline: none;
  border: 0;
}
.form .btn {
  font-size: 20px;
  width: 100%;
  display: block;
  padding: 14px 16px;
  background: transparent;
/*   outline: none; */
  border: 1px;
/*   color: #fff; */
  color: #024a30;
  letter-spacing: 1px;
  font-weight: bolder;
}

.block-cube {
  position: relative;
}
.block-cube .bg-top {
  position: absolute;
  height: 10px;
  background: #080f08;
  background: linear-gradient(90deg, #080f08 0%, #5aa761 42%, #a7d0ab 94%);
  bottom: 100%;
  left: 5px;
  right: -5px;
  transform: skew(-45deg, 0);
  margin: 0;
}
.block-cube .bg-top .bg-inner {
  bottom: 0;
}
.block-cube .bg {
  
  position: absolute;
  left: 0;
  top: 0;
  right: 0;
  bottom: 0;
  background: ##080f08;
  background: linear-gradient(90deg, #080f08 10%, #5aa761 37%, #a7d0ab 94%);
}
.block-cube .bg-right {
  position: absolute;
  background: #2e4235;
  background: #acffb0;
  top: -5px;
  z-index: 0;
  bottom: 5px;
  : 10px;
  left: 100%;
   transform: skew(0, -45deg); 
}
.block-cube .bg-right .bg-inner {
  left: 0;
}
.block-cube .bg .bg-inner {
  transition: all 0.2s ease-in-out;
}
.block-cube .bg-inner {
  background: #fefdf9;
    position: absolute;
  left: 2px;
  top: 3px;
  right: 2px;
  bottom: 2px;
}
.block-cube .text {
  position: relative;
  z-index: 2;
}
.block-cube.block-input input {
  position: relative;
  z-index: 2;
}
.block-cube.block-input input:focus ~ .bg-right .bg-inner, .block-cube.block-input input:focus ~ .bg-top .bg-inner, .block-cube.block-input input:focus ~ .bg-inner .bg-inner {
  top: 100%;
  background: rgba(180, 215, 183, 0.4);
}
.block-cube.block-input .bg-top,
.block-cube.block-input .bg-right,
.block-cube.block-input .bg {
  background: rgba(180, 215, 183, 0.5);
  transition: background 0.2s ease-in-out;
}
.block-cube.block-input .bg-right .bg-inner,
.block-cube.block-input .bg-top .bg-inner {
  transition: all 0.2s ease-in-out;
}
.block-cube.block-input:focus .bg-top,
.block-cube.block-input:focus .bg-right,
.block-cube.block-input:focus .bg, .block-cube.block-input:hover .bg-top,
.block-cube.block-input:hover .bg-right,
.block-cube.block-input:hover .bg {
  background: rgba(180, 215, 183, 3);
}
.block-cube.block-cube-hover:focus .bg .bg-inner, .block-cube.block-cube-hover:hover .bg .bg-inner {
  top: 100%;
}

  </style>

<!-- 입력폼 스타일 -->


</head>
<body>

<% 
String bno  = request.getParameter("bno");
String pageNum = request.getParameter("pageNum");
%>

<%-- 	<legend><%=bno %></legend> --%>

	<form autocomplete='off' class='form'
		action="./ReviewDeletePro.bo?pageNum=1" method="post">
		<div style="text-align: center;">

			<input type="hidden" name="bno" value="<%=bno%>">

			<div class='control'>
				<!--     <h1 style="padding-top: 10px; padding-bottom: 10px; background-color: pink; border-radius: 10px;"> -->
				<h1>▪ 비밀번호 입력창 ▪</h1>
			</div>
			<br>


			<div class='control block-cube block-input'>
				<input name='password' id="pw" placeholder='Password'
					type='password' autofocus>
				<div class='bg-top'>
					<div class='bg-inner'></div>
				</div>
				<div class='bg-right'>
					<div class='bg-inner'></div>
				</div>
				<div class='bg'>
					<div class='bg-inner'></div>
				</div>
			</div>


			<%-- 		<input type="submit" value="이용후기 삭제" class="btn" onclick="openPopUp(${dto.bno})"> --%>
			<!-- 		&nbsp; -->
			<%-- 		<input type="button" value="창 닫기" class="btn" onclick="closePopup(${dto.bno})"><br><br> --%>


			<button class='btn block-cube block-cube-hover' type="submit"
				onclick="openPopUp(${dto.bno})">
				<div class='bg-top'>
					<div class='bg-inner'></div>
				</div>
				<div class='bg-right'>
					<div class='bg-inner'></div>
				</div>
				<div class='bg'>
					<div class='bg-inner'></div>
				</div>
				<div class='text'>Delete</div>
			</button>
			<br>


			<button class='btn block-cube block-cube-hover' type='button'
				onclick="closePopup(${dto.bno})">
				<div class='bg-top'>
					<div class='bg-inner'></div>
				</div>
				<div class='bg-right'>
					<div class='bg-inner'></div>
				</div>
				<div class='bg'>
					<div class='bg-inner'></div>
				</div>
				<div class='text'>Close</div>
			</button>
		</div>
	</form>

</body>
</html>