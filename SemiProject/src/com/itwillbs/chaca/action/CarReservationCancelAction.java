package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.CarDAO;

public class CarReservationCancelAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		int rsvt_number = Integer.parseInt(request.getParameter("rsvt_number"));
		
		CarDAO dao = new CarDAO();
		
		dao.reservationCancel(rsvt_number);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('예약이 취소되었습니다. 환불은 카드사로 문의해주세요.');");
		out.print("location.href='./ReservationInfo.bo';");
		out.print("</script>");
		out.close();
		
		return null;
		
//		ActionForward forward = new ActionForward();
//		forward.setPath("./ReservationInfo.bo");
//		forward.setRedirect(true);
//		
//		return forward;
	}
	
}
