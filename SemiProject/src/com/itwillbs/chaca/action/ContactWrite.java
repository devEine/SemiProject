package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.ContactDAO;
import com.itwillbs.chaca.db.ContactDTO;
import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class ContactWrite implements Action{
	//오버라이딩 단축키 : alt+shift+s+v
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M(model) : ContactWrite.execute()호출");
		//한글처리
		request.setCharacterEncoding("UTF-8");
		//전달정보 저장(제목,비밀번호,이름,내용)
		//BoardDTO 객체 생성
		
		HttpSession session = request.getSession();
		String id_email = (String)session.getAttribute("loginID");
		UserDAO dao = new UserDAO();
		UserDTO dto = dao.getMember(id_email);
		request.setAttribute("dto", dto);
		
		//페이지 이동 정보 저장(리턴)
		ActionForward forward = new ActionForward();
		forward.setPath("./contact/writeForm.jsp"); //어디로 갈건지 
		forward.setRedirect(false);//어떻게 갈건지 
		//true - sendRedirect()방식, false - forward()방식
		//주소랑 화면이 같이 바껴야할 것 같음 -> sendRedirect
		
		return forward;
	}
	
	
}
