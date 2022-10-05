package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.CarDAO;
import com.itwillbs.chaca.db.CarReservationDTO;
import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class CarPaymentAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		// 세션값 가져오기
		HttpSession session = request.getSession();
		String loginID = (String)session.getAttribute("loginID");
		CarReservationDTO cdto = (CarReservationDTO)session.getAttribute("cdto");
		String license_type = (String)session.getAttribute("license_type");
		String license_number = (String)session.getAttribute("license_number");
		// 걔네도 가져오기 for DB에 포인트 업뎃
		int inputPoint = (int)session.getAttribute("inputPoint");
		int nTotalPrice = (int)session.getAttribute("nTotalPrice");
		
		// CarDAO 객체 생성
		CarDAO dao = new CarDAO();
		UserDAO udao = new UserDAO();
		
		// 포인트 다 멕인 총 금액.. 리턴할 필요 없고 걍 포인트 컬럼 업데이트만^^
		udao.calcTotalPrice(loginID, inputPoint, nTotalPrice); // void로 안바꿔도 되려나,,^^ 
		
		// 차량정보 조회 - getReservationCar(id) 호출
		dao.getReservationResultCar(cdto, loginID);
		udao.updateMemberCarinfo(loginID, license_type, license_number);
		
		ActionForward forward = new ActionForward();
		forward.setPath("./reservation/paymentresult.jsp");
		forward.setRedirect(false);
		return forward;
	}
	
}
