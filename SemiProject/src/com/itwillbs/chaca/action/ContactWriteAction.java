package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ContactDAO;
import com.itwillbs.chaca.db.ContactDTO;

public class ContactWriteAction implements Action{
	//오버라이딩 단축키 : alt+shift+s+v
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M(model) : ContactWriteAction.execute()호출");
		//한글처리 
		request.setCharacterEncoding("UTF-8");
		//전달정보 저장(제목,비밀번호,이름,내용)
		//BoardDTO 객체 생성 
		ContactDTO dto = new ContactDTO();
		dto.setId(request.getParameter("id")); //메서드에 request정의되어 있어 사용 가능
		dto.setName(request.getParameter("name")); 
		dto.setPassword(request.getParameter("password"));
		dto.setSubject(request.getParameter("subject"));
		dto.setContent(request.getParameter("content"));
		
		//IP주소 추가
		
		dto.setIp(request.getRemoteAddr());
		System.out.println("@@@@@@@@@@@@@@@@@@ M :"+dto);
		
		System.out.println("3333333333333333333333333 ");

		
		

		
		//DB에 정보 저장
		//BoardDAO 생성 
		ContactDAO dao = new ContactDAO();
		
		//DB에 글 정보를 저장 
		dao.boardWrite(dto);
		System.out.println("4444444444444444444444444444444 ");
		
		//페이지 이동 정보 저장(리턴)
		ActionForward forward = new ActionForward();
		forward.setPath("./ContactList.bo"); //어디로 갈건지 
		forward.setRedirect(true);//어떻게 갈건지 
		//true - sendRedirect()방식, false - forward()방식
		//주소랑 화면이 같이 바껴야할 것 같음 -> sendRedirect
		
		return forward;
	}
	
	
}
