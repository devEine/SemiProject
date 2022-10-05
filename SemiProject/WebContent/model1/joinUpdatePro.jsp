<%@page import="java.sql.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Update.jsp</h1>
	<%
		// 한글 인코딩 처리
		request.setCharacterEncoding("UTF-8");
	
		// 전달된 정보 저장
		String id_email = request.getParameter("id_email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		Date birth = Date.valueOf(request.getParameter("birth"));
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		session.setAttribute("id_email", id_email);
		session.setAttribute("password", password);
		session.setAttribute("name", name);
		session.setAttribute("birth", birth);
		session.setAttribute("phone", phone);
		session.setAttribute("address", address);
		
		// 디비 연결 - 정보 저장
		// 1. 드라이버 로드
		final String DRIVER = "com.mysql.cj.jdbc.Driver";
		final String DBURL = "jdbc:mysql://localhost:3306/jspdb?useUnicode=true&serverTimezone=Asia/Seoul";
		final String DBID = "root";
		final String DBPW = "1234";
		
		Class.forName(DRIVER);
		System.out.println("드라이버 로드 성공!");
		
		// 2. 디비 연결
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("디비 연결 성공!");
		
		// 3. SQL(insert) & pstmt 생성
		String sql = "update userinfo set password = ?, name = ?, birth = ?, phone = ?, address = ? where id_email = ?";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// 4. ????
		pstmt.setString(6, id_email);
		pstmt.setString(1, password);
		pstmt.setString(2, name);
		pstmt.setDate(3, birth);
		pstmt.setString(4, phone);
		pstmt.setString(5, address);
				
		// 5. SQL 실행
		pstmt.executeUpdate();
		System.out.println("회원정보 수정완료!");
	%>
	<script type="text/javascript">
		alert("회원정보가 수정되었습니다.")
		location.href="joinUpdate.jsp";
	</script>
</body>
</html>