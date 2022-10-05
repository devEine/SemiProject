package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;


public class ReviewDeleteProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		System.out.println("(from ReviewDeleteProAction) M: execute() 메서드 호출됨");
		
		
		request.setCharacterEncoding("UTF-8");
		
		int bno = Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");
		String password = request.getParameter("password");
		
		ReviewDAO dao = new ReviewDAO();
		ReviewDTO dto = new ReviewDTO();
		dto.setBno(Integer.parseInt(request.getParameter("bno")));
		dto.setPassword(request.getParameter("password"));
		
		int result = dao.deleteReview(dto); 

		response.setContentType("text/html; charset=UTF-8"); 
		PrintWriter out = response.getWriter(); 
		
		if(result == 0){
			out.print("<script>");
			out.print("alert('비밀번호 오류...😥');");
			out.print("history.back();"); 
			out.print("</script>");
			out.close();
			return null; 

		} else if (result == -1) {
			out.print("<script>");
			out.print("alert('게시글 없음..😥');");
			out.print("history.back();"); 
			out.print("</script>");
			out.close();
			return null;
		} 
		
		// result == 1 (정상 수정 완)
		out.print("<script>");
		out.print("alert('게시글 삭제 완🥰');");
		out.print("opener.location.href='./ReviewList.bo?pageNum=" + pageNum + "';");
		out.print("window.close();"); 
		// out.print("location.href='./ReviewList.bo?pageNum=" + pageNum + "';");
		out.print("</script>");
		out.close();
		return null;
	}
}
