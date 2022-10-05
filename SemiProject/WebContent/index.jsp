<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <!-- index.jsp -->
    <%
	// MVC 프로젝트 실행 시작페이지
	
	//** MVC 프로젝트에서는 index.jsp 페이지 외 절대로 .jsp페이지 실행금지
	// => 주소창에 .jsp 주소가 보이면 MVC패턴 깨짐
	
	response.sendRedirect("./Main.bo");
	
    %>
</body>
</html>