package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class LoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("M : LoginAction_execute() 호출 ");
		
		// UserDTO 객체 생성
		UserDTO dto = new UserDTO();

		// id_email, password
		dto.setId_email(request.getParameter("id_email"));
		dto.setPassword(request.getParameter("password"));

		// UserDAO 객체 생성
		UserDAO dao = new UserDAO();

		// 로그인 체크 기능
		int result = dao.loginMember(dto);

		if(result == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호 오류!');");		
			out.println("history.back();");		
			out.println("</script>");
			out.close();
			return null;
		} else if(result == -1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디 오류!');");		
			out.println("history.back();");		
			out.println("</script>");
			out.close();
			return null;			
		} else {
			// 아이디, 비밀번호 일치
			// 세션값 생성
			HttpSession session = request.getSession();
			session.setAttribute("loginID", dto.getId_email());
			
			// 이름 넣기!!!!!
			dto = dao.getMember(request.getParameter("id_email"));
			session.setAttribute("name", dto.getName());
			
			// 페이지 이동정보 저장(리턴)
			ActionForward forward = new ActionForward();
			forward.setPath("./Main.bo");
			forward.setRedirect(true);
			return forward;
		}

	}

}
