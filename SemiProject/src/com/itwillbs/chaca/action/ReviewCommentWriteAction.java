package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.ReviewCmtDTO;
import com.itwillbs.chaca.db.ReviewDAO;

public class ReviewCommentWriteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from ReviewCommentWriteAction) Model: execute() 호출 완");
		
		// 댓글 입력 폼에서 넘어온 값이 한글일 수 있으니 한글 처리 먼저
		request.setCharacterEncoding("UTF-8");
		
		// sessionScope에 있는 로그인 아이디 -> 변수에 저장
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("loginID");
		
		// 전달받은 애들(content, bno, pageNum..) 변수에 저장
		int bno = Integer.parseInt(request.getParameter("bno"));
		String content = request.getParameter("content");
		String pageNum = request.getParameter("pageNum"); // DB에 저장할 정보 아니니까,, 걍 String으로 받아도 됨 
		
		
		// 사용자 응답 웹페이지 문자 인코딩
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		// id, content null인데 댓글 작성 버튼 클릭했을 때,, 제어
		if(id==null){
			out.print("<script>");
			out.print("alert('로그인 후 댓글을 작성해주세요');");
			out.print("history.back();");
			out.print("</script>");
			out.close();
		}
		
		if(content.equals(null) || content.equals("")){
			out.print("<script>");
			out.print("alert('댓글을 작성해주세요');");
			out.print("history.back();");
			out.print("</script>");
			out.close();
		}
		
		
		// 전달된 정보(content, bno,,) + id --> dto에 저장
		ReviewCmtDTO cdto = new ReviewCmtDTO();
		cdto.setId(id);
		cdto.setBno(bno);
		cdto.setContent(content);
		
		System.out.println("(from ReviewCommentWriteAction) M: 저장할 댓글 정보:" + cdto);
		
		// DB에 댓글 입력 정보 저장
		ReviewDAO dao = new ReviewDAO();
		dao.insertComment(cdto);
		
		// BoardContent.bo 가려니까 bno== null이라고 자꾸 오류나네 ㄱ- 세션에 넣을까,,,, 주소줄에 붙ㅌ여서 보내야 하나
		// bno 변수에 넣어서 주소줄에 같에 보내자
//		int bno = Integer.parseInt(request.getParameter("bno"));
		
		// 페이지 이동 정보 저장, forward 리턴
		ActionForward forward = new ActionForward();
		
		forward.setPath("./ReviewContent.bo?bno="+cdto.getBno()+"&pageNum="+pageNum); // 되긴 되네???? .. pageNum은 굳이 필요 없는 듯,, 빼자  + "&pageNum="+pageNum
															// 에바다 오타났었음 paeNum;;;;; ㄷㄷ 조심
		forward.setRedirect(true); // 가상주소로 이동하니까 sendRedirect 방식으로 이동
		
		return forward;		
	}

}
