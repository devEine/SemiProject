package com.itwillbs.chaca.action;

import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itwillbs.chaca.db.UserDAO;
import com.itwillbs.chaca.db.UserDTO;

public class UserUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		UserDTO dto = new UserDTO();
		dto.setId_email(request.getParameter("id_email"));
		dto.setPassword(request.getParameter("password"));
		dto.setName(request.getParameter("name"));
		dto.setBirth(Date.valueOf(request.getParameter("birth")));
		dto.setPhone(request.getParameter("phone"));
		dto.setAddress(request.getParameter("address"));
		
		UserDAO dao = new UserDAO();
		int result = dao.updateMember(dto);
		
		if(result == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('비밀번호를 확인해 주세요.');");		
			out.println("history.back();");		
			out.println("</script>");
			out.close();
			return null;
		} else if(result == -1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('아이디를 확인해 주세요.');");
			out.println("history.back();");		
			out.println("</script>");
			out.close();
			return null;			
		} else {
			// 아이디, 비밀번호 일치
			// 수정 완료
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('회원정보가 수정되었습니다.');");
			out.println("location.href='./UserInfo.bo';");
			out.println("</script>");
			out.close();
			// 페이지 이동정보 저장(리턴)
//			ActionForward forward = new ActionForward();
//			forward.setPath("./UserInfo.bo");
//			forward.setRedirect(true);
			return null;
		}
	}
	
}
