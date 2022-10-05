package com.itwillbs.chaca.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.CarDAO;
import com.itwillbs.chaca.db.CarDTO;
import com.itwillbs.chaca.db.CarReservationDTO;
import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class CarPayment implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		request.setCharacterEncoding("UTF-8");
		
		// 세션값 가져오기
		HttpSession session = request.getSession();
		String loginID = (String)session.getAttribute("loginID");
		
		String car_number = request.getParameter("car_number");
		String license_type = request.getParameter("license_type");
		String license_number = request.getParameter("license_number");
		Date date = Date.valueOf(request.getParameter("date"));
		
		int babyseat;
		int childrenseat;
		int wifi;
		String navigation = request.getParameter("navigation");
		
		if(request.getParameter("babyseat") == null) {
			babyseat = 0;
		} else {
			babyseat = Integer.parseInt(request.getParameter("babyseat"));
		}
		
		if(request.getParameter("childrenseat") == null) {
			childrenseat = 0;
		} else {
			childrenseat = Integer.parseInt(request.getParameter("childrenseat"));
		}
		
		if(request.getParameter("wifi") == null) {
			wifi = 0;
		} else {
			wifi = Integer.parseInt(request.getParameter("wifi"));
		}
		
		// CarDAO 객체 생성
		CarDAO dao = new CarDAO();
		// UserDAO udao = new UserDAO();
		
		// 차량정보 조회 - getReservationCar(id) 호출
		CarReservationDTO cdto = dao.getReservationCar(car_number, date, loginID, babyseat, childrenseat, wifi, navigation);
		// UserDTO udto = udao.updateMemberCarinfo(loginID, license_type, license_number);
		
		// 차량정보를 담아서 => rsv_car.jsp
		session.setAttribute("cdto", cdto);
		session.setAttribute("license_type", license_type);
		session.setAttribute("license_number", license_number);
		// request.setAttribute("udto", udto);
		
		
		ActionForward forward = new ActionForward();
		forward.setPath("./reservation/paymentinfo.jsp");
		forward.setRedirect(false);
		return forward;
	}
	
}
