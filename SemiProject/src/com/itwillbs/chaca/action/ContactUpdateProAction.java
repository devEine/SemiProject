package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ContactDAO;
import com.itwillbs.chaca.db.ContactDTO;

public class ContactUpdateProAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest requset, HttpServletResponse response) throws Exception {
		System.out.println("M: BoardUpdateProAction_execute() 호출");
		//한글처리
		requset.setCharacterEncoding("UTF-8");
		//전달된 정보(수정할 데이터 -bno,name,pass,subject,content),pageNum
		String pageNum = requset.getParameter("pageNum");
		ContactDTO dto = new ContactDTO();
		dto.setBno(Integer.parseInt(requset.getParameter("bno")));
		dto.setName(requset.getParameter("name"));
		dto.setPassword(requset.getParameter("password"));
		dto.setSubject(requset.getParameter("subject"));
		dto.setContent(requset.getParameter("content"));
		
		//수정할 데이터를 DB로 보내서 정보 수정
		ContactDAO dao = new ContactDAO();
		int result = dao.updateBoard(dto);
		
		//result => -1,0,1 정보 
		// * java 에서 JS 호출하기 
		//응답 페이지는 html 형태로 만들겠다 
		response.setContentType("text/html; charset=UTF-8");
		//응답 정보로 출력 객체 생성(통로 생성)
		PrintWriter out = response.getWriter();
		
		if(result == 0){
			out.println("<script>");
			out.println(" alert('비밀번호 오류'); ");
			out.println(" history.back(); ");
			out.println("</script>");
			//페이지 이동 완료 
			out.close();
			return null;//컨트롤러를 통한 이동은 X, JS만 사용해서 이동
		}else if(result==-1){
			out.println("<script>");
			out.println(" alert('게시글 없음'); ");
			out.println(" history.back(); ");
			out.println("</script>");
			//페이지 이동 완료 
			out.close();
			return null;//컨트롤러를 통한 이동은 X, JS만 사용해서 이동
		}
		//result==1 일때 
		out.println("<script>");
		out.println(" alert('정보 수정 완료'); ");
		out.println("location.href='./ContactList.bo?pageNum="+pageNum+"';");
		out.println("</script>");
		//페이지 이동 완료 
		out.close();
		return null;//컨트롤러를 통한 이동은 X, JS만 사용해서 이동
		
	}
}
