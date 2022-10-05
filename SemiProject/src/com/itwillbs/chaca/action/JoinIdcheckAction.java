package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class JoinIdcheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("M : JoinIdcheckAction_execute() 호출 ");		
		
		// 한글 인코딩 처리
		request.setCharacterEncoding("UTF-8");

		// 전달된 정보 저장
		String id = request.getParameter("id");
			
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.getMember(id);
		
		request.setAttribute("dto", dto);
		request.setAttribute("id_email", id);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./user/idCheckPro.jsp");
		forward.setRedirect(false);
		
		return forward;
		
	}

}
