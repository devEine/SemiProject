package com.itwillbs.chaca.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itwillbs.chaca.db.ContactDAO;
import com.itwillbs.chaca.db.ContactDTO;

public class ContactReWriteAction  implements Action{
	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		System.out.println("M(model):ContactReWriteAction.execute()호출");
		//한글처리 
		req.setCharacterEncoding("UTF-8");
		String pageNum = req.getParameter("pageNum");
		
		//전달정보 저장(bno,pageNum,re_ref,re_lev,re_seq, subject,name,password,content  )
		//BoardDTO 객체 생성 
		ContactDTO dto = new ContactDTO();
		
		dto.setBno(Integer.parseInt(req.getParameter("bno")));
		dto.setRe_lev(Integer.parseInt(req.getParameter("re_lev")));
		dto.setRe_ref(Integer.parseInt(req.getParameter("re_ref")));
		dto.setRe_seq(Integer.parseInt(req.getParameter("re_seq")));
		
		
		dto.setName(req.getParameter("name")); //메서드에 req정의되어 있어 사용 가능 
		dto.setPassword(req.getParameter("pass"));
		dto.setSubject(req.getParameter("subject"));
		dto.setContent(req.getParameter("content"));
		
		//IP주소 추가
		dto.setIp(req.getRemoteAddr());
		
		
		//DB에 정보 저장
		//BoardDAO 생성 
		ContactDAO dao = new ContactDAO();
		
		//DB에 글 정보를 저장 
		dao.reInsertBoard(dto);
		
		//페이지 이동 정보 저장(리턴)
		ActionForward forward = new ActionForward();
		forward.setPath("./ContactList.bo?pageNum="+pageNum); //어디로 갈건지 
		forward.setRedirect(true);//어떻게 갈건지 
		//true - sendRedirect()방식, false - forward()방식
		//주소랑 화면이 같이 바껴야할 것 같음 -> sendRedirect
		
		return forward;
	}
}
