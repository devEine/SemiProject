package com.itwillbs.chaca.db;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.sql.DataSource;

public class ContactDAO {
	//DAO (Data Access Object) : 데이터 처리 객체 
	
	//공통변수 사용 (인스턴스 변수:멤버변수)
	private Connection con = null;//DB연결 정보 저장 객체 
	private PreparedStatement pstmt= null;//DB에 SQL쿼리 실행 객체
	private ResultSet rs = null; //select 실행 결과 저장 객체 
	private String sql = ""; //SQL쿼리 구문 저장하는 객체 
	
	public ContactDAO(){
		System.out.println("DAO: DB연결에 관한 모든 '문의하기' 정보를 준비 완료!");
	}
	
	//DB연결 
	private Connection getConnect() throws Exception{
	
		//Connection Pool방식 
		//디비 연결 정보 - context.xml
		
		//프로젝트 정보를 초기화 
		Context initCTX = new InitialContext(); //자동형변환 
		//초기화된 프로젝트 정보 중 데이터 불러오기
		DataSource ds = 
				(DataSource)initCTX.lookup("java:comp/env/jdbc/ChacaChaca"); 
											//java:comp/env여기까지는 고정 그 다음은 이름
		con = ds.getConnection();
		
		//1.드라이버 로드
		//2.디비연결
		
		
		return con;
	}
		//3.자원 해제 
	 public void closeDB(){
		 //공통변수가 만들어진 순서 고려하여 자원해제 해야함
		 //맨 마지막에 만들어진 공통변수 부터 꺼내려가기
		 
		  try {
			if(rs!= null) rs.close(); //!=null 인 이유 : 다쓰고나서 닫아야하기 때문에 
			if(pstmt!= null) pstmt.close();
			if(con!= null) con.close();
			
			System.out.println("DAO : 자원해제 성공! ");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	 }
	 
	 //글쓰기 메서드 -boardWrite()=========================================
	 public void boardWrite(ContactDTO dto){
		 System.out.println("@@@@@@@@@@@@@@@@@@@@@@@boardWrite메서드 실행"+dto);
		 // 1. 드라이버 로드 
		 // 2. DB연결
		 int bno = 0; // 글번호 저장 변수 지정 
		 try {
			 con = getConnect();
			 
			 //3. SQL쿼리구문 작성 & pstmt객체 생성
			 //insert문 작성  
			 //게시판 글번호(bno)계산 -> pk키 변수 (작성된 가장 마지막글번호 +1) 
			 sql = "select max(bno) from contact";
			 //이 테이블에서 bno(글번호)의 최댓값을 구해달라 
			 pstmt = con.prepareStatement(sql);
			 //4. SQL실행 
 			 rs = pstmt.executeQuery();
			 
			 //*워크벤치 select 결과 
			 //삼각형 커서가 있을 경우 -> rs.next() == true
			 //원 커서가 있을 경우 -> rs.next() == false
			 //커서가 없는 경우 -> rs.next() == false 
			 
			 //5. 데이터 처리 (글번호 계산: 마지막글번호 +1)
			 if(rs.next()){ //max(bno)가 존재할 때
				 ///getInt() => 컬럼의 값을 리턴, 만약에 sql-null인 경우 0리턴 
				 
				 //bno = rs.getInt("bno")+1;(x)
				 //bno = rs.getInt("max(bno)")+1;(O)
				 bno = rs.getInt(1)+1; //.getInt(index); 제일 처음 값 = 인덱스1
			 }
			 System.out.println("DAO : 글번호 bno: "+bno);
			//=======글 번호 채워주는 과정 끝 ==========
			 
			 //게시판 글 쓰기 실행 
			 //3. SQL쿼리구문 작성 & pstmt객체 생성
			 //insert문 
			 sql ="insert into contact(bno,name,id,password,subject,content,"
			 		+ "readcount,re_ref,re_lev,re_seq,date,ip,file) "
			 		+ "values(?,?,?,?,?,?,?,?,?,?,now(),?,?)";
			 	//date -> now() 현재 시간 알아서 정해줌 
			 
			 pstmt = con.prepareStatement(sql);
			 
			 // ??? 채우기 
			 pstmt.setInt(1, bno);
			 pstmt.setString(2, dto.getName());
			 pstmt.setString(3, dto.getId());
			 pstmt.setString(4, dto.getPassword());
			 pstmt.setString(5, dto.getSubject());
			 pstmt.setString(6, dto.getContent());
			 
			 pstmt.setInt(7, 0); //조회수는 항상 0
			 pstmt.setInt(8, bno); //답글 그룹번호 == 글번호
			 pstmt.setInt(9, 0); //답글 레벨 0(일반글)
			 pstmt.setInt(10, 0); //답글 순서0(일반글)
			 
			 pstmt.setString(11, dto.getIp());
			 pstmt.setString(12, dto.getFile());
		
			 //4. SQL실행
			 pstmt.executeUpdate();
			 System.out.println("DAO: 게시판 글 작성 완료!");
			 
		} catch (Exception e) {
			e.printStackTrace();
		} finally{ //try에서 예외가 발생하든 안하든 무조건 한 번은 실행 
			closeDB(); //5.자원해제 
		}
		 
	 }
	 //=====================글쓰기 완료======================
	
	 // 글 목록 조회(전체 가져오는 메서드) - getBoardList()
	 //dto의 정보를 모두 담아 올 수 있는 -> 배열로 리턴타입 정해야 함
	 //<BoardDTO> -> 이 타입만 받을 수 있는 배열 리스트 리턴타입
	 /*public List<BoardDTO> getBoardList(){
		 
		 //글 정보 모두를 저장하는 배열(가변 길이)
		 List<BoardDTO> boardList = new ArrayList<BoardDTO>();
		 //자동형변환 ArrayList는 List를 상속함 
		 
		 try{
		 //1.드라이버로드
		 //2.디비연결
		 getConnect();
		 
		 //3.sql작성 & pstmt객체 생성
		 sql="select * from contact";
		 pstmt = con.prepareStatement(sql);
		 
		 //4.sql실행
		 rs = pstmt.executeQuery();
		 
		 //5.데이터 처리 
		 while(rs.next()){ //rs에는 여러개의 데이터가 담겨있음 
			 //커서가 내려가며 데이터가 있다면 
			 //DB에 저장된 정보를  dto에 저장 -> 저장된 dto의 정보를 List에 저장  
			 
			 //DB 정보 -> DTO저장 
			 BoardDTO dto = new BoardDTO();
			 dto.setBno(rs.getInt("bno"));
			 dto.setContent(rs.getString("content"));
			 dto.setDate(rs.getDate("date"));
			 dto.setFile(rs.getString("file"));
			 dto.setIp(rs.getString("ip"));
			 dto.setName(rs.getString("name"));
			 dto.setPass(rs.getString("pass"));
			 dto.setRe_lev(rs.getInt("re_lev"));
			 dto.setRe_ref(rs.getInt("re_ref"));
			 dto.setRe_seq(rs.getInt("re_seq"));
			 dto.setReadcount(rs.getInt("readcount"));
			 dto.setSubject(rs.getString("subject"));
			 
			 //Dto저장된 정보 -> List저장 
			 boardList.add(dto);
			 
		 }
		 
		 System.out.println("C: 게시판 목록 모두 저장완료 ");
		 System.out.println("C:"+boardList);
		 
		 }catch(Exception e){
			 e.printStackTrace();
		 }finally {
			closeDB(); //자원해제
		}
		 return boardList;
	 }*/
	 //==============================================================
	 
	 //글 목록 조회(all) - getBoardList -> 메서드 오버로딩 (매개변수를 다른 것으로 지정)
	 	public List<ContactDTO> getBoardList(int startRow, int pageSize){
	 		System.out.println("\n DAO:  getBoardList(int startRow,int pageSize) 호출");
	 		System.out.println(startRow+":"+pageSize);
		 //글 정보 모두를 저장하는 배열(가변 길이)
		 List<ContactDTO> boardList = new ArrayList<ContactDTO>();
		 //자동형변환 ArrayList는 List를 상속함 
		 
		 try{
		 //1.드라이버로드
		 //2.디비연결
		 con = getConnect();
		 
		 //3.sql작성 & pstmt객체 생성
		 //sql = "select * from contact"; (x)
		 
		 //limit시작행 -1, 개수 : 시작지점부터 해당 개수만큼 잘라오기  
		 //정렬:  re_ref 내림차순, re_seq 오름차순 
		 //정렬하고 난 뒤 잘라와야 함 (순서)
		 sql = "select * from contact order by re_ref desc, re_seq asc"
		 		+ " limit ?,?";
		 //최신글이 가장 위에 올라와있는 형태의 정렬 
		 
		 pstmt = con.prepareStatement(sql);
		 
		 //???넣어주기
		 pstmt.setInt(1,startRow-1); //시작행-1
		 pstmt.setInt(2, pageSize); //한 페이지에 표시할 게시글 수 
		 //4.sql실행
		 rs = pstmt.executeQuery();
		 
		 //5.데이터 처리 
		 while(rs.next()){ //rs에는 여러개의 데이터가 담겨있음 
			 //커서가 내려가며 데이터가 있다면 
			 //DB에 저장된 정보를  dto에 저장 -> 저장된 dto의 정보를 List에 저장  
			 
			 //DB 정보 -> DTO저장 
			 ContactDTO dto = new ContactDTO();
			 dto.setBno(rs.getInt("bno"));
			 dto.setContent(rs.getString("content"));
			 dto.setDate(rs.getDate("date"));
			 dto.setFile(rs.getString("file"));
			 dto.setIp(rs.getString("ip"));
			 dto.setName(rs.getString("name"));
			 dto.setId(rs.getString("id"));
			 dto.setPassword(rs.getString("password"));
			 dto.setRe_lev(rs.getInt("re_lev"));
			 dto.setRe_ref(rs.getInt("re_ref"));
			 dto.setRe_seq(rs.getInt("re_seq"));
			 dto.setReadcount(rs.getInt("readcount"));
			 dto.setSubject(rs.getString("subject"));
			 
			 //Dto저장된 정보 -> List저장 
			 boardList.add(dto);
			 
		 }
		 
		 System.out.println("DAO: 게시판 목록 모두 저장완료 @@@@@@@@@@@@@@@@@@@@@");
		 System.out.println("DAO:"+boardList);
		 
		 }catch(Exception e){
			 e.printStackTrace();
		 }finally {
			closeDB(); //자원해제
		}
		 return boardList;
	 }
	 
	 
	 //글 전체 갯수 조회(all) - getBoardCount
	 public int getBoardCount(){
		 System.out.println("\n DAO: getBoardCount() 실행");
		 int cnt = 0;
		 
		 //1,2 디비연결 - Connection Pool
		 try {
			getConnect();
			//3.sql쿼리문 작성(select) & pstmt 객체생성 
			sql = "select count(*) from contact";
			pstmt = con.prepareStatement(sql);
			//4.sql쿼리문 실행
			rs = pstmt.executeQuery();
			//5.데이터 처리 
			if(rs.next()){
				//cnt = rs.getInt("count(*)"); //내장함수 호출하는 자체가 컬럼명이 됨 
				cnt = rs.getInt(1); //1번 인덱스를 의미함 -> 컬럼명이 복잡할 때 사용 
			}
			
			System.out.println("\n DAO: 글  개수 -총: "+cnt+"개");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB(); //까먹으니까 초기에 try-catch할때 finally closeDB(); 만들기 
		}
		 
		 return cnt;
	 }
	 
	 //글 조회수 1증가 -updateReadCount()메서드(bno)
	 public void updateReadCount(int bno){
		 //1,2디비연결 
		  try {
			con = getConnect();
			//3.sql쿼리 & pstmt객체생성 
			sql = "update contact set readcount = readcount+1 where bno = ?";
			pstmt = con.prepareStatement(sql);
			
			//??? 채우기
			pstmt.setInt(1, bno);
			
			//4.sql실행 
			pstmt.executeUpdate();
			
			System.out.println("DAO: 게시판글 조회수 1 증가 완료!");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB();
		}
		  
	 }
	 
	 //특정 글 1개의 정보 조회 -getBoard(bno)메서드 -> 글번호 매개변수로 필요함 
	 public ContactDTO getBoard(int bno){
		 System.out.println("DAO:getBoard호출 ");
		 ContactDTO dto = null;
		 
		 //1,2디비연결
		 try {
			con = getConnect();
			//3.sql작성 & pstmt객체생성 
			sql = "select * from contact where bno=?";
			pstmt = con.prepareStatement(sql);
			//?채우기
			pstmt.setInt(1, bno);
			
			//4.sql실행
			rs = pstmt.executeQuery();
			//5.데이터처리
			if(rs.next()){
				//DB에 있는 특정 번호의 글번호를 저장 
				//DB의 정보 -> DTO에 담아줘야 함 
				dto = new ContactDTO();
				dto.setBno(rs.getInt("bno"));
				dto.setContent(rs.getString("content"));
				dto.setDate(rs.getDate("date"));
				dto.setFile(rs.getString("file"));
				dto.setIp(rs.getString("ip"));
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPassword(rs.getString("password"));
				dto.setRe_lev(rs.getInt("re_lev"));
				dto.setRe_ref(rs.getInt("re_ref"));
				dto.setRe_seq(rs.getInt("re_seq"));
				dto.setReadcount(rs.getInt("readcount"));
				dto.setSubject(rs.getString("subject"));
			}
			System.out.println("DAO: "+bno+"번 게시글 정보 저장 완료");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB();
		}
		 return dto;
	 }
	 
	 //글 정보 수정 -updateBoard(dto) 
	 public int updateBoard(ContactDTO dto){
		 int result = -1;
		 
		
		 try {
			 //1,2.디비연결
			con = getConnect();
			//3. sql작성 & pstmt객체 생성
			sql = "select password from contact where bno=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, dto.getBno());
			
			//4.sql 실행
			rs = pstmt.executeQuery();
			
			//5.데이터 처리 
			if(rs.next()){
				//게시판 글 있음 
				if(dto.getPassword().equals(rs.getString("password"))){
					//비밀번호 비교 -> if 조건문 충족 시 비밀번호 일치하는 것 
					//3. sql - update & pstmt객체 생성 
					sql = "update contact set name=?,subject=?,content=? where bno=?";
					pstmt = con.prepareStatement(sql);
					//?
					pstmt.setString(1, dto.getName());
					pstmt.setString(2, dto.getSubject());
					pstmt.setString(3, dto.getContent());
					pstmt.setInt(4,dto.getBno());
					//4. sql 실행
					result = pstmt.executeUpdate();
					
					
				}else{
					//비밀번호가 다름
					result= 0;
				}
			}else{
				//게시판 글 없음
				result = -1;
				
			}
			System.out.println("DAO : 글 수정 완료 ("+result+")");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			closeDB();
		}
		
		 
		 return result;
	 }
	 //글 정보 수정 -updateBoard(dto) 
	 
		public int deleteBoard(ContactDTO dto) {
			int result=-1;
			
			try {
				con=getConnect();
				sql = "select password from contact where bno=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, dto.getBno());
				rs = pstmt.executeQuery();
				
				if(rs.next()){
					if(dto.getPassword().equals(rs.getString("password"))){
						sql = "delete from contact where bno=?";
						pstmt = con.prepareStatement(sql);
						pstmt.setInt(1, dto.getBno());
						result = pstmt.executeUpdate();
						System.out.println("글 삭제 성공");
					} else {
						result = 0;
						System.out.println("비번 오류");
					}
				} else {
					result = -1;
					System.out.println("select 오류");
				}
				System.out.println("(from ContactDAO_7.deleteContact) bno: " + dto.getBno() + "번 글 삭제 완");
				System.out.println("(from ContactDAO_7.deleteContact) 삭제 내용: " + dto);	
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				closeDB();
			}
			return result;
		}
		// 7. deleteBoard(dto) --- 특정 글 1개 삭제 메서드
		
		// 답글쓰기 메서드 - reInsertBoard(dto)
				public void reInsertBoard(ContactDTO dto){
					int bno = 0;
					try {
						con = getConnect();
						// 1) bno 계산하기
						sql = "select max(bno) from contact";
						pstmt = con.prepareStatement(sql);
						
						rs = pstmt.executeQuery();
						if(rs.next()){
							bno = rs.getInt(1)+1;
//							bno = rs.getInt("max(bno)")+1;
						}
						
						System.out.println(" DAO : 답글 bno : "+bno );
						
						// 2) 답글 순서 재배치(update)
						//   같은 그룹에 있으면서(re_ref),
						//   기존의 순서(re_seq)보다 큰값이 있을때만 수정
						sql = "update contact set re_seq=re_seq+1 "
								+ "where re_ref=? and re_seq>?";
						pstmt = con.prepareStatement(sql);
						
						pstmt.setInt(1, dto.getRe_ref());
						pstmt.setInt(2, dto.getRe_seq());
						
						int result = pstmt.executeUpdate();
						
						if( result > 0 ){
							System.out.println(" DAO : 답글 순서 재배치 완료! ");
						}
						
						// 3) 답글 쓰기(insert) : ref,lev,seq 계산하기
						sql = "insert into contact(bno,name,password,subject,content,"
								+ "readcount,re_ref,re_lev,re_seq,date,ip,file) "
								+ "values(?,?,?,?,?,?,?,?,?,now(),?,?)";
						
						pstmt = con.prepareStatement(sql);
						
						pstmt.setInt(1, bno); // 1단계 계산한 bno
						pstmt.setString(2, dto.getName());
						pstmt.setString(3, dto.getPassword());
						pstmt.setString(4, dto.getSubject());
						pstmt.setString(5, dto.getContent());
						
						pstmt.setInt(6, 0); // 조회수 0
						pstmt.setInt(7, dto.getRe_ref()); // re_ref : 원글의 ref 번호 그대로 사용
						pstmt.setInt(8, dto.getRe_lev()+1); // re_lev : 원글 lev+1
						pstmt.setInt(9, dto.getRe_seq()+1); // re_seq : 원글 seq+1
						
						pstmt.setString(10, dto.getIp());
						pstmt.setString(11, dto.getFile());
						
						pstmt.executeUpdate();
						
						System.out.println(" DAO :  답글 작성 완료! ");
						
					} catch (Exception e) {
						e.printStackTrace();
					} finally {
						closeDB();
					}
					
				}
				// 답글쓰기 메서드 - reInsertBoard(dto)

}

