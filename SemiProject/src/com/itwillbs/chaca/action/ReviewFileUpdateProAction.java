package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ReviewDAO;
import com.itwillbs.chaca.db.ReviewDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ReviewFileUpdateProAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		
		//int bno=Integer.parseInt(request.getParameter("bno"));
		String pageNum = request.getParameter("pageNum");
		
		String realpath = request.getRealPath("/upload"); //deprecated -> 실무에선 context에 있는 real path를 사용함
		System.out.println("realPath "+realpath);
//		String location = "C:\\Users\\ITWILL\\git\\Project1-ChacaChaca\\WebContent\\upload";
//		System.out.println("location "+location);
		int maxSize = 10 * 1024 * 1024; //10MB
		
			MultipartRequest multi = new MultipartRequest(
				request, 
				realpath,
				maxSize,
				"UTF-8",
				new DefaultFileRenamePolicy()
				);
		
		System.out.println("이건뭐지:"+multi.getFilesystemName("file"));
		System.out.println("이건뭐지2:"+multi.getFilesystemName("oldfile"));
		System.out.println("이건뭐지3:"+multi.getParameter("oldfile"));
		
			//BoardDTO 객체생성
				ReviewDTO dto=new ReviewDTO();
				// 파라미터값 저장
				dto.setBno(Integer.parseInt(multi.getParameter("bno")));
				dto.setId(multi.getParameter("id"));
				dto.setName(multi.getParameter("name"));
				dto.setPassword(multi.getParameter("password"));
				dto.setRate(Integer.parseInt(multi.getParameter("rate")));
				dto.setContent(multi.getParameter("content"));
				//file
				if(multi.getFilesystemName("file")!=null){
					//수정할 첨부파일 있는 경우
					dto.setFile(multi.getFilesystemName("file"));
					
				} else {
					//수정할 첨부파일 없는 경우 => 기존 oldfile 가져와서 저장
					dto.setFile(multi.getParameter("oldfile"));
//					dto.setFile(multi.getFilesystemName("oldfile"));
				}
				// 2. 수정할 데이터를 DB로 보내서 정보 수정하기 (6. updateBoard 메서드)
				ReviewDAO dao = new ReviewDAO();

				int result = dao.updateReview(dto);
				
				
				// request에 bno, pageNum 넣기
				//request.setAttribute("bno", bno);
				request.setAttribute("pageNum", pageNum);
				
				
				
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
			
				
////				BoardDAO 객체생성
//				BoardDAO dao=new BoardDAO();
//				// updateBoard(dto)
//				int result=dao.updateBoard(dto);
//				
//				response.setContentType("text/html; charset=UTF-8"); 
//				PrintWriter out = response.getWriter(); 
//				
//				if(result==0){
//					out.println("<script>");
//					out.println("alert('비밀번호 오류!');");
//					out.println("history.back();");
//					out.println("</script>");
//					out.close();
//					return null;
//			 }else if(result==-1){
//					out.println("<script>");
//					out.println("alert('글 없음!');");
//					out.println("history.back();");
//					out.println("</script>");
//					out.close();
//					return null;
//			 }
////			 else{
////					// 이동 
//////					/BoardList.bo
////					ActionForward forward=new ActionForward();
////					forward.setPath("./BoardList.bo?bno="+bno+"&pageNum="+pageNum);
////					forward.setRedirect(true);
////					return forward;
//			 }
//				// result == 1 (정상 수정 완)
//				out.print("<script>");
//				out.print("alert('정보 수정 완🥰');");
//				out.print("location.href='./BoardList.bo?pageNum=" + pageNum + "';"); 
//				out.print("</script>");
//				out.close();
//				return null;
//			}
//				
//			}

}
