package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.BoardDTO;
import com.itwillbs.chaca.db.CarReservationDTO;

public class ReviewWriteAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from BoardUpdateProAction) M: execute() 메서드 호출됨");
		
		// 0. 한글 처리
		request.setCharacterEncoding("UTF-8");
		
		// 1. 전달된 정보 저장
		HttpSession session = request.getSession();
		String rsvt_id = (String)session.getAttribute("loginID");
		String rsvt_name = request.getParameter("rsvt_name");
		
		CarReservationDTO cdto = new CarReservationDTO();
		cdto.setRsvt_id(request.getParameter("rsvt_id"));
		cdto.setRsvt_name(request.getParameter("rsvt_name"));
		
		request.setAttribute("rsvt_id", rsvt_id);
		request.setAttribute("rsvt_name", rsvt_name);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./review/reviewWriteForm.jsp");
		forward.setRedirect(false); // forward 방식으로 이동

		return forward;
	}
}
