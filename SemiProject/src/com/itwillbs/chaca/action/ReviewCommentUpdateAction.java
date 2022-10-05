package com.itwillbs.chaca.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.itwillbs.chaca.db.ReviewCmtDTO;
import com.itwillbs.chaca.db.ReviewDAO;

public class ReviewCommentUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("(from CommentUpdateAction) M: execute() 메서더 호출됨");
		// 댓글 수정 버턴 누르면  -> ajax 타고 여기로 옴,,
		// json 데이터 타입??? 굳이?? 그냥 출력만 시켜주면 되려나???
		// 쨌든 넘어온 c_bno에 해당하는 댓글 하나 데이터 가져가기 ==rData에 담아주기,,^^
		
		// 넘어온 데이터 (c_bno) 저장
		int c_bno = Integer.parseInt(request.getParameter("c_bno"));
		System.out.println("(from CommentUpdateAction) M: c_bno: " + c_bno);
		
		// DB 쓸거니까 dao 생성 
		//  -> 댓글 하나 내용 보는 메서드 getOneComment(c_bno) 호출
		//									ㄴ리턴타입 CommentDTO 개이득
		ReviewDAO dao = new ReviewDAO();
		ReviewCmtDTO cdto = dao.getOneComment(c_bno);
		
		// 수정 가능한 애들(내용) 여따가,, 출력?? 아 json으로??
			// json-simple-1.1.1.jar <<< lib 밑에 넣어야 쓸 수 있음
		JSONObject cdto2 = new JSONObject();
		cdto2.put("content", cdto.getContent());
		
		// 화면에 출력시키기???
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println(cdto2);
		out.close();
		
		return null; // ajax니까.. 페이지 이동할 필요 X
		
		
		
		
		
/*		// 파라메타에서 넘어온,, 전달된,, 정보 (bno) 저장
		int c_bno = Integer.parseInt(request.getParameter("c_bno"));
		
		// BoardDAO 객체 생성하고,, 댓글 1개 정보 불러오는 메서드  호출
		BoardDAO dao = new BoardDAO();
		
		System.out.println("(from BoardUpdateAction) M: 조회수 +1 완");
		
		
		// 게시판 글 1개의 정보를 가져와서 출력 == 멤버 1명 정보 출력했었던 거랑 똑같음!! 그치그치,,
		// getBoard(bno) 메서드 (리턴타입: dto) 만들고 옵시다
		BoardDTO dto = dao.getBoard(bno);
		
		
		// Model에서 객체 정보 출력 X 
		// view에서 정보 출력 O!!!!! 보여주니까 view니까,,
		// so.. ==> model 객체(지금,, 여기,, action 페이지)에 있는 정보를  --> view로 이동시키자!!!!!!!
		
		// request 영역에 저장
		request.setAttribute("dto", dto);
		
		// 데이터 다 만들었고, request에 저장까지 해놨으니,, 인제 이 페이지에서 할 거 없음.. 나가자~~
		// 출력할 view 페이지로 이동
		//   이동할거니까 통행권 객체 생성 (어디로 갈지, 어떻게 갈지)
		ActionForward forward = new ActionForward();
		forward.setPath("./center/update.jsp");
		forward.setRedirect(false); // request 영역에 뭔가 저장한 순간,, 무조건 forward로 이동해야 함!!!!!!!!!!!! ★★
		
		return forward; // execute메서더 리턴타입은 ActionForward^^ 잊지 말자
*/	
	
	}

}
