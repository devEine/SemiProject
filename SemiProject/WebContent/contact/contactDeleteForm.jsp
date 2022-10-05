<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
/* 	function closePopup() {
		//자신을 실행시킨 본 창은 opener 객체로 인식된다
        	//value 초기화
 		//opener.document.[Form 이름].[value이름].value = "";
        
		//마우스 커서 옮기기
		//opener.document.[Form 이름].[value이름].focus();
		
		//자신(팝업)을 종료한다.
		//self.close();
		
	     window.opener.location.reload();
	     window.close();
	     
	     //============팝업=====================
		
		
	} */
</script>
<style type="text/css">
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
</head>
<body>


<% String bno  = request.getParameter("bno"); %>

<fieldset style="background-color: #CEE5D0; border-color: #fff; border-radius: 15px;">
	<legend style="background-color: #FCF8E8; border-color: #fff; font-size: 18px; border-radius: 5px; color: #CFD2CF;">게시글 번호: no.<%=bno %></legend>
	<form action="./ContactDeletePro.bo?pageNum=1" method="post" style="height: 500px; text-align: center;">
 	<br><br><br><br>
 	<h2 style="color: #FF9551;">게시글을 삭제하시겠습니까? </h2>
 	<p style="color: #fff;">고객님의 정보를 안전하게 보호하기위해 비밀번호를 다시 한번 확인합니다.</p>
	<br><br>
		<input type="hidden" name="bno" value="<%=bno %>">
<%-- 		${num } --%>
	<p style="color: #fff;">비밀번호 : <input type="password" name="password"><br></p>
		<br><br><br><br>
		&nbsp;&nbsp;&nbsp;&nbsp;<input style="background: #FCF8E8; border-color: #fff; color:#ECB390; width: 80px; height: 40px;" type="submit" value="글삭제하기" class="btn">
		&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;<input style="background: #FCF8E8; border-color: #fff; color:#ECB390; width: 80px; height: 40px;" type="button" value="뒤로가기" class="btn" onclick="history.back()">
	</form>
</fieldset>



</body>
</html>