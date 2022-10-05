<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>LoginPro.jsp</h1>
	
	<%
	// 한글 처리
	request.setCharacterEncoding("UTF-8");
	
	// 전달된 정보 저장(id, pw)
	String id_email = request.getParameter("id_email");
	String password = request.getParameter("password");

	
	// 로그인 체크하는 로직
	
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
	
	// 3. SQL 작성(select) & pstmt 객체
	// String sql = "select * from itwill_member where id=? and pw=?";
	String sql = "select * from userinfo where id_email = ?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	
	// 4. ???
	pstmt.setString(1, id_email);
	
	// 5. SQL 실행
	ResultSet rs = pstmt.executeQuery(); // 아이디에 해당하는 비밀번호 출력하여 저장 (key, value)
	
	
	// 6. 데이터 처리
	if(rs.next()) {
		// next() : 반복가능 객체의 다음 요소 반환
		// 아이디 있음, 회원
		if(password.equals(rs.getString("password"))) { // getString(key) : key에 해당하는 value 출력
			// 아이디 있음, 비밀번호 동일, 본인
			// => 로그인 성공
			
			// 로그인정보(ID) 저장, 공유
			/* MemberDTO dto = new MemberDTO();
			dto.setId_email(rs.getString("id_email"));
			dto.setPassword(rs.getString("password"));
			dto.setName(rs.getString("name"));
			dto.setBirth(rs.getDate("birth"));
			dto.setPhone(rs.getString("phone"));
			dto.setAddress(rs.getString("address"));
			dto.setLicense_type(rs.getString("license_type"));
			dto.setLicense_number(rs.getString("license_number")); */
			
			// session 영역에 저장, 공유
			session.setAttribute("loginID", id_email);
			session.setAttribute("password", rs.getString("password"));
			session.setAttribute("name", rs.getString("name"));
			session.setAttribute("birth", rs.getDate("birth"));
			session.setAttribute("phone", rs.getString("phone"));
			session.setAttribute("address", rs.getString("address"));
			session.setAttribute("license_type", rs.getString("license_type"));
			session.setAttribute("license_number", rs.getString("license_number"));
			
			
			%>
			<script type="text/javascript">
				alert('<%=rs.getString("name") %> 님 환영합니다.');
				location.href="index.jsp";
				// history.back();
			</script>
			<%
		} else {
			// 아이디 있음, 비밀번호 다름, 비밀번호 오류
			%>
			<script type="text/javascript">
				// alert("회원정보가 없습니다.");
				alert("아이디 혹은 비밀번호가 잘못되었습니다.");
				history.back();
			</script>
			<%
		}
	} else {
		// 아이디 없음, 비회원
		%>
		<script type="text/javascript">
			// alert("회원정보가 없습니다.");
			alert("아이디 혹은 비밀번호가 잘못되었습니다.");
			history.back();
		</script>
		<%
		
	}
	%>
	
</body>
</html>