<%@page import="com.itwillbs.chaca.db.ReviewDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<script>
	function closePopup() {
		//자신을 실행시킨 본 창은 opener 객체로 인식된다
        	//value 초기화
 		//opener.document.[Form 이름].[value이름].value = "";
        
		//마우스 커서 옮기기
		//opener.document.[Form 이름].[value이름].focus();
		
		//자신(팝업)을 종료한다.
		//self.close();
		
	     window.opener.location.reload();
	     window.close();
		
		
	}
</script>

</head>
<body>


<% String bno  = request.getParameter("bno"); %>

<fieldset>
	<legend><%=bno %></legend>
	<form action="./ReviewDeletePro.bo?pageNum=1" method="post">
		<input type="hidden" name="bno" value="<%=bno %>">
		${num }
		비밀번호 : <input type="password" name="password"><br>
		<input type="submit" value="글삭제하기" class="btn" onclick="openPopUp(${dto.bno})">
		<input type="button" value="뒤로가기" class="btn" onclick="history.back()">
	</form>
</fieldset>




</body>
</html>