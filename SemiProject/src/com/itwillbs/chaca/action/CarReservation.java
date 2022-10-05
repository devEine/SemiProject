package com.itwillbs.chaca.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.CarDAO;
import com.itwillbs.chaca.db.CarDTO;
import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class CarReservation implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		
		// 세션값 가져오기
		HttpSession session = request.getSession();
		String loginID = (String)session.getAttribute("loginID");
		
		System.out.println("@@@@date: " + request.getParameter("date").getClass().getName());
		
		System.out.println(Date.valueOf(request.getParameter("date")));
		Date date = Date.valueOf(request.getParameter("date"));
//		Date date = Date.valueOf(request.getParameter("date"));
		String location = request.getParameter("location");
		String car_name = request.getParameter("schQnaType");
		
		// CarDAO 객체 생성
		CarDAO dao = new CarDAO();
		UserDAO udao = new UserDAO();
		
		// 차량정보 조회 - getCar(id) 호출
		CarDTO dto = dao.getCar(date, location, car_name);
		UserDTO udto = udao.getMember(loginID);
		
		// 차량정보를 담아서 => rsv_car.jsp
		request.setAttribute("dto", dto);
		request.setAttribute("udto", udto);
		request.setAttribute("date", date);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./reservation/rsv_car.jsp");
		forward.setRedirect(false);
		return forward;
	}
	
}
