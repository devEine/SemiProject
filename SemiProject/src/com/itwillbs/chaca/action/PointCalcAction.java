package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.UserDAO;

public class PointCalcAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from PointCalcAction) M: execute 메서드 호출 완");
		
		// 정보 받아오기,, id, inputPoint 필요함
		String id = request.getParameter("id");
		int inputPoint = Integer.parseInt(request.getParameter("inputPoint"));
		int nTotalPrice = Integer.parseInt(request.getParameter("nTotalPrice"));
		
		
		
		// 입력한 포인트 값이 보유 중인 포인트보다 많을 수 없게 제어
		UserDAO dao = new UserDAO();
		int existingPoint = dao.getExistingPoint(id);
		
			// 많을 시 알람 띄우기 위해,, 준비작업
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			
//		자스로 구현 완
//		if(existingPoint < inputPoint){
//			out.print("<script>");
//			out.print("alert('입력하신 포인트가 보유 중인 포인트를 초과하였습니다..😰  다시 입력해주세요');");
//			out.print("location.reload();"); // 새로고침,,이 최선인가ㅠ
////			out.print("document.getElementByClass('input_point').value = null;");
////			out.print("return false;");
//			out.print("</script>");
//			out.close();
//		}
		
//		if(request.getParameter("inputPoint") == null){
//			out.print("<script>");
//			out.print("alert('사용하실 포인트를 입력해주세요');");
//			out.print("location.reload();"); // 새로고침,,이 최선인가ㅠ
//			out.print("</script>");
//			out.close();
//		}

		
		// 세션에 다 넣어버리기
		HttpSession session = request.getSession();
//		session.setAttribute("id", id);
		session.setAttribute("inputPoint", inputPoint);
		session.setAttribute("nTotalPrice", nTotalPrice);
		
		
		// 입력한 포인트만큼 총 금액에서 차감하고, 최종 금액 반환하는 메서드 호출 (리턴타입: int.. totalPrice 리턴함)
		//  ㄴ 여기서 안 하고,,^^ 여기선 걍 계산만 해서 int 변수만 리턴시키기
		int totalPrice = nTotalPrice - inputPoint;
		
		
		// 화면에 결과 출력
		out.print(totalPrice);
		out.close();
		
		return null; // ajax 쓰니까
	}

}
