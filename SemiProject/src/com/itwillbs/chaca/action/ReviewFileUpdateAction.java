package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;


public class ReviewFileUpdateAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
//		String pageNum = request.getParameter("pageNum");
		int bno=Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");
		
		// BoardDAO 객체 생성
		ReviewDAO dao = new ReviewDAO();
		//메서드 호출
		ReviewDTO dto = dao.getReview(bno);
		// 데이터 저장 => 이동할정보 저장
		request.setAttribute("dto", dto);
		request.setAttribute("bno", bno);
		request.setAttribute("pageNum", pageNum);
		
		ActionForward forward=new ActionForward();
		forward.setPath("./review/reviewUpdateForm.jsp");
		forward.setRedirect(false);
		return forward;
	}

}
