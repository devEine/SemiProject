package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;


public class ReviewDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		System.out.println("(from ReviewDeleteAction) M: execute 메서드 호출됨");
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");
		String password = request.getParameter("password");

		ReviewDAO dao = new ReviewDAO();
		ReviewDTO dto = dao.getReview(bno);
		
		System.out.println("(from ReviewDleteAction) M: 삭제할 데이터" + dto);

		request.setAttribute("dto", dto);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("password", password);

		ActionForward forward = new ActionForward();
		forward.setPath("./review/reviewPwCheck.jsp");
		forward.setRedirect(false); // forward 방식으로 이동

		return forward;

	}
}