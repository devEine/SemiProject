package com.itwillbs.chaca.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewCmtDTO;
import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;


public class ReviewContentAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from ReviewContentAction) M: execute() 메서드 호출됨");
		
		// 파라메타에서 넘어온 정보들 저장
		int bno = Integer.parseInt(request.getParameter("bno"));  // DB에 int로 넘겨야 하니까 형변환
		String pageNum = request.getParameter("pageNum"); // 얘는 또 넘기면 String으로 넘어갈텐데 왜 굳이 int로 하나요 ㅎ
		
		ReviewDAO dao = new ReviewDAO();
		dao.updateReadcount(bno); // 4. 조회수 1 증가 메서드!!
		System.out.println("(from ReviewContentAction) M: 글번호 " + bno + " 조회수 +1 완");
		
		// 게시판 글 1개의 정보를 가져와서 출력 == 멤버 1명 정보 출력했었던 거랑 똑같음!!
		ReviewDTO dto = dao.getReview(bno); // 5. 특정 글 1개 정보 조회 메서드 getReview.. 리턴타입 dto임
		System.out.println("(from ReviewContentAction) M: dto: " + dto);
		
		
		// (Model에서 정보 출력 X) View에서 정보 출력해서 보여주기 위해서~~
		// 지금,, 여기,, action 페이지,,=Model에 있는 정보를  --> view로 이동시키자!!!!!!!
		// 用 request 영역!!
		request.setAttribute("dto", dto);
//		request.setAttribute("dto", dao.getReview(bno)); // 위에 두 과정 합쳐서 이렇게 더 많이 쓴다!!
		request.setAttribute("pageNum", pageNum); // 출력할 때 사용
		System.out.println("(ReviewContentAction) pageNum: " + pageNum);
		
		// 댓글 리스트 정보 출력하는 메서드 getCommentList 호출하고
		// cmtList -> request에 저장해서 가져가기.. 
		List<ReviewCmtDTO> cmtList = dao.getCommentList(bno);
		request.setAttribute("cmtList", cmtList);
		
		
		// 정보 출력할 view 페이지로 이동~ 통행권 만들고
		ActionForward forward = new ActionForward();
		forward.setPath("./review/reviewContent.jsp?bno="+bno);
		forward.setRedirect(false);
		
		return forward;
	}
}
