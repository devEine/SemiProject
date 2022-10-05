package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;


public class ReviewUpdateProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from ReviewUpdateProAction) M: execute() 메서드 호출됨");
		
		// 0. 한글 처리
		request.setCharacterEncoding("UTF-8");
		
		// 1. 전달된 정보 저장
		String pageNum = request.getParameter("pageNum");
		
		ReviewDTO dto = new ReviewDTO();
		dto.setBno(Integer.parseInt(request.getParameter("bno")));
		dto.setId(request.getParameter("id"));
		dto.setName(request.getParameter("name"));
		dto.setPassword(request.getParameter("password"));
		dto.setRate(Integer.parseInt(request.getParameter("rate")));
		dto.setContent(request.getParameter("content"));
		
		// 2. 수정할 데이터를 DB로 보내서 정보 수정하기 (6. updateReview 메서드)
		ReviewDAO dao = new ReviewDAO();

		int result = dao.updateReview(dto);
		
		// 3. result = -1 | 0 | 1 에 따른 페이지 이동
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
		out.print("alert('정보 수정 완🥰');");
		out.print("location.href='./ReviewList.bo?pageNum=" + pageNum + "';"); 
		out.print("</script>");
		out.close();
		return null;
	}

}
