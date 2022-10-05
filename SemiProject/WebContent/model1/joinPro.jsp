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
	<h1>InsertPro.jsp</h1>
	<%
		// 한글 인코딩 처리
		request.setCharacterEncoding("UTF-8");
	
		// 전달된 정보 저장
		String id_email = request.getParameter("id_email");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		Date birth = Date.valueOf(request.getParameter("birth"));
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		
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
		String sql = "insert into userinfo(id_email, password, name, birth, phone, address) values (?, ?, ?, ?, ?, ?)";
		
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		// 4. ????
		pstmt.setString(1, id_email);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setDate(4, birth);
		pstmt.setString(5, phone);
		pstmt.setString(6, address);
				
		// 5. SQL 실행
		pstmt.executeUpdate();
		System.out.println("회원가입 완료!");
		
		response.sendRedirect("joinresult.jsp");
	%>
</body>
</html>