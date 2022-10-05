package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;


public class ReviewUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		System.out.println("(from ReviewUpdateAction) M: execute 메서드 호출됨");

		// 1. 전달된 정보 저장
		int num = Integer.parseInt(request.getParameter("bno")); // 여기 왜 오류??? 왜 null???????
//		int num = (request.getParameter("bno") == null) ? 0 : Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");

		// 2. DB 쓸거니까 BoardDAO 객체 생성
		ReviewDAO dao = new ReviewDAO();

		// 3. 전달된 글 번호(bno) 바탕으로 해당 글 정보 모두 가져오기
		ReviewDTO dto = dao.getReview(num);
		System.out.println("(from ReviewUpdateAction) M: 수정할 데이터(기존 데이터): " + dto);

		// 4. DB에서 가져온 정보를 request 영역에 저장
		request.setAttribute("dto", dto);
		request.setAttribute("pageNum", pageNum);

		// 5. view 페이지로 이동 (통행권에 정보 저장)
		ActionForward forward = new ActionForward();
		forward.setPath("./review/reviewUpdateForm.jsp");
		forward.setRedirect(false); // forward 방식으로 이동

		return forward;

	}

}
