<%@page import="com.itwillbs.chaca.db.UserDTO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 확인</title>
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
</head>
<body>
	<script>
		function apply(id){
			opener.document.form.id_email.value = id;
			console.log(id);
			window.close(); //창닫기
		} //apply () end
	</script>
	<%
	UserDTO dto = (UserDTO)request.getAttribute("dto");
	String id_email = dto.getId_email();
	if(id_email != null) {
		%>
		<p style='color: red'>해당 아이디는 사용하실 수 없습니다.</p>
		<%
	} else {
		%>
		<p>사용 가능한 아이디입니다.</p>
		<a href='javascript:apply("${id_email }");'>[적용]</a>
		<%
	}
	%><hr>
	<a href="javascript:history.back()">[다시시도]</a>&nbsp; &nbsp;<a href="javascript:window.close()">[창닫기]</a>
</body>
</html>