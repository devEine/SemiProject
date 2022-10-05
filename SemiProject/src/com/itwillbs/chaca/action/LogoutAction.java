package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		System.out.println("M : LogoutAction_execute() 호출 ");
		
		// 세션값 초기화
		HttpSession session = request.getSession();
		session.invalidate();
		
		// 페이지 이동정보 저장(리턴)
		// Main.me 이동
		ActionForward forward = new ActionForward();
		forward.setPath("./Main.bo");
		forward.setRedirect(true);
		return forward;
	}
	
}
