package com.itwillbs.chaca.action;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class ReviewFileWriteAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : ReviewFileWriteAction의 execute()실행");
		
//		int bno=Integer.parseInt(request.getParameter("bno"));
//		String pageNum = request.getParameter("pageNum");
//		
		
		//1. 파일업로드 (서버 : HDD)

		// String realpath = request.getRealPath("/upload"); //deprecated -> 실무에선 context에 있는 realpath를 사용함
		String realpath = request.getRealPath("/upload");
		System.out.println("realPath "+realpath);
//		String location = "C:\\Users\\ITWILL\\git\\Project1-ChacaChaca\\WebContent\\upload";
//		System.out.println("location "+location);
		int maxSize = 10 * 1024 * 1024; //10MB
		
		
		MultipartRequest multi = new MultipartRequest(
				request, 
				realpath,
//				location,
				maxSize,
				"UTF-8",
				new DefaultFileRenamePolicy()
				);
		System.out.println("파일업로드성공");
		
		//2. 글정보 저장 (DB)
		//request로 받은 정보 -> multipartrequest로 바뀌었으니 multipartrequest에 정보저장해야함
		ReviewDTO dto = new ReviewDTO();
		//bdto.setName(request.getParameter("name")); 이제 request가 아니라 multirequest를 써야한다
		dto.setId(multi.getParameter("id"));
		dto.setName(multi.getParameter("name"));
		dto.setPassword(multi.getParameter("password"));
		dto.setContent(multi.getParameter("content"));
		dto.setRate(Integer.parseInt(multi.getParameter("rate")));
		//bdto.setFile(multi.getParameter("file"));
		//파라미터로 file을 제대로 가져올 수 없음getFilesystemName()를 사용해야한다
		dto.setFile(multi.getFilesystemName("file"));
//		dto.setIp(request.getRemoteAddr()); // ip주소 추가
		System.out.println("업로드 할 객체 정보: "+dto);
		
//		request.setAttribute("pageNum", pageNum);
//		request.setAttribute("bno", bno);
//		
		//3. BoardDAO객체생성 -> insertBoard() 재사용
		ReviewDAO dao = new ReviewDAO();
		dao.reviewWrite(dto);
		//파일업로드 끝********************************
		
		//4. 페이지이동
		ActionForward forward = new ActionForward();
		forward.setPath("./ReviewList.bo");
		forward.setRedirect(true);
		return forward;
	}

}
