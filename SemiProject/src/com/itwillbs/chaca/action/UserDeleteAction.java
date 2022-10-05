package com.itwillbs.chaca.action;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class UserDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		
		// 세션값 가져오기
		HttpSession session = request.getSession();
		String id_email = (String)session.getAttribute("loginID");
		String password = request.getParameter("password");
		System.out.println("세션에 있던 id_email: " + id_email + " / 리퀘스트에 있던 password: " + password);
				
//				// MemberDAO 객체 생성
//				UserDAO dao = new UserDAO();
//				
//				// 회원정보 조회 - getMember(id) 호출
//				UserDTO dto = dao.getMember(loginID);
//				
//				// 회원정보를 담아서 => joinUpdate.jsp
//				request.setAttribute("dto", dto);

		
		UserDAO dao = new UserDAO();
		int result = dao.deleteMember(id_email, password);
		
		if(result == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호를 확인해 주세요.');");		
			out.println("history.back();");		
			out.println("</script>");
			out.close();
			return null;
		} else if(result == -1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디를 확인해 주세요.');");		
			out.println("history.back();");		
			out.println("</script>");
			out.close();
			return null;			
		} else {
			// 아이디, 비밀번호 일치
			// 수정 완료
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('이용해주셔서 감사합니다.');");		
			out.println("location.href='./Main.bo';");		
			out.println("</script>");
			out.close();
			session.invalidate();

			// 페이지 이동정보 저장(리턴)
//			ActionForward forward = new ActionForward();
//			forward.setPath("./Main.bo");
//			forward.setRedirect(true);
			return null;
		}
	}
	
}
