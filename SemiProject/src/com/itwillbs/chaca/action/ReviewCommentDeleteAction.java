package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;

public class ReviewCommentDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// 전달받은 정보 저장
		int c_bno = Integer.parseInt(request.getParameter("c_bno"));
		int bno = Integer.parseInt(request.getParameter("bno"));
		
		
		// DAO 생성 -> 댓글 삭제 메서드 호출
		ReviewDAO dao = new ReviewDAO();
		dao.deleteComment(c_bno);
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print("<script>");
		out.print("alert('댓글이 삭제되었습니다..');");
//		out.print("location.href='./ReviewContent.bo?bno='"+bno+"';"); 얘 지우니까 되네,,,,???
//		out.print("history.back();");
		out.print("location.href = document.referrer;"); // 뒤로가기 + 새로고침
		out.print("</script>");
		out.close();
		return null;
	}

}
