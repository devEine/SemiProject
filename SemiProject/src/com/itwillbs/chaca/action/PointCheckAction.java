package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.UserDAO;


public class PointCheckAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from PointCheckAction) M: execute 메서드 호출 완");
		
		// ajax에서 보낸 data.. 저장하기
		//   ㄴ session에 있는 게 아니라 파라메타로 넘어오네???
		String id = request.getParameter("id");
		System.out.println("(from PointCheckAction) M: 저장한 id: " + id);
		
//		HttpSession session = request.getSession();
//		String id = (String)session.getAttribute("id");
		
		// DB에 대한 처리할거니까 DAO생성
		UserDAO dao = new UserDAO();
		
		// select로 해당 회원이 지금 보유 중인 포인트 몇 점인지 갖고 오기!!
		// ㄴ메서드 만들러 가자,, 
		// 만들고 왔고요,, 리턴타입 int임
		int existingPoint = dao.getExistingPoint(id);
		
		// 화면에 결과 출력
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print(existingPoint);
		out.close();
		
		return null; // ajax 쓰니까염
	}

}
