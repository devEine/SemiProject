package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class LoginKakaoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("M : LoginKakaoAction_execute() 호출 ");
		
		request.setCharacterEncoding("UTF-8");
		
		String id_email = request.getParameter("id_email");
		String name = request.getParameter("name");
		
		System.out.println(id_email);
		System.out.println(name);
		
		UserDAO dao = new UserDAO();
		int result = dao.loginKakaoMember(id_email, name);
		
		
		if(result == 0) {
			// 아이디 있음, 이름 다름, 다른 유저 -> 아이디 겹침 -> 카카오 아이디 사용 불가
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('이미 등록된 아이디가 있어 사용이 불가합니다.');");		
			out.println("history.back();");		
			out.println("</script>");
			out.close();
			return null;
		} else if(result == -1) {
			// 아이디 없음, 비회원 -> 회원가입창 유도			
			request.setAttribute("id_email", id_email);
			request.setAttribute("name", name);
			ActionForward forward = new ActionForward();
			forward.setPath("./user/joinKakao.jsp");
			forward.setRedirect(false);
			return forward;
		} else {
			// 아이디 있음, 이름 동일, 본인
			// => 로그인 성공
			// 세션값 생성
			HttpSession session = request.getSession();
			session.setAttribute("loginID", id_email);
			session.setAttribute("name", name);			
			// 페이지 이동정보 저장(리턴)
			ActionForward forward = new ActionForward();
			forward.setPath("./Main.bo");
			forward.setRedirect(true);
			return forward;
		}
		
	}
	
}
