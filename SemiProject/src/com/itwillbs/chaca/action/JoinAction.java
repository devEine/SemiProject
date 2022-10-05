package com.itwillbs.chaca.action;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class JoinAction implements Action{

//	public void test(){
//		request.setCharacterEncoding("UTF-8");		
//	}
	// alt shift s + v
	@Override
	public ActionForward execute(HttpServletRequest request,
			 HttpServletResponse response) throws Exception {

		System.out.println("M : UserJoinAction_execute() 호출 ");
		
		// 한글처리
		request.setCharacterEncoding("UTF-8");
		
		// 전달정보 저장(아이디, 비밀번호, 이름, 생년월일, 전화번호, 주소)
		// BoardDTO 객체 생성
		UserDTO dto = new UserDTO();
		
		dto.setId_email(request.getParameter("id_email"));
		dto.setPassword(request.getParameter("password"));
		dto.setName(request.getParameter("name"));
		dto.setBirth(Date.valueOf(request.getParameter("birth")));
		dto.setPhone(request.getParameter("phone"));
		dto.setAddress(request.getParameter("address"));
		
		// DB에 정보 저장
		// BoardDAO 객체 생성
		UserDAO dao = new UserDAO();
		
		// DB에 글정보를 저장
		dao.joinUser(dto);
		
		//페이지 이동정보 저장(리턴)
		ActionForward forward = new ActionForward();
		forward.setPath("./JoinCompletion.bo");
		forward.setRedirect(true);
		
		return forward;
	}
	
}
