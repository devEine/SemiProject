package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class UserDelete implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 세션값 가져오기
		HttpSession session = request.getSession();
		String loginID = (String)session.getAttribute("loginID");
		
		// MemberDAO 객체 생성
		UserDAO dao = new UserDAO();
		
		// 회원정보 조회 - getMember(id) 호출
		UserDTO dto = dao.getMember(loginID);
		
		// 회원정보를 담아서 => delete.jsp
		request.setAttribute("dto", dto);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./mypage/delete.jsp");
		forward.setRedirect(false);
		return forward;
	}
	
}
