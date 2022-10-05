package com.itwillbs.chaca.db;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;



public class CarDAO {
	// DAO (Data Access Object) : 데이터 처리 객체
	
	// 공통변수 (인스턴스 변수)
	private Connection con = null;   // 디비 연결정보 저장 객체
	private String sql = "";		// SQL쿼리 구문 저장
	private PreparedStatement pstmt = null; //디비에 SQL 실행 처리 객체
	private ResultSet rs = null;	//select 실행 결과 저장 객체
	
	public CarDAO() {
		System.out.println("DAO : DB연결에 관한 모든 차량정보 준비 완료!");
	}
	
	
	// 디비 연결
//	private Connection getConnect() throws Exception{
//		// 디비 연결정보
//		String DRIVER = "com.mysql.cj.jdbc.Driver";
//		String DBURL = "jdbc:mysql://localhost:3306/jspdb";
//		String DBID = "root";
//		String DBPW = "1234";
//		
//		// 1. 드라이버로드
//		Class.forName(DRIVER);
//		System.out.println(" 드라이버로드 성공 ");
//		// 2. 디비연결
//		con = DriverManager.getConnection(DBURL, DBID, DBPW);
//		System.out.println(" 디비연결 성공 ");
//		System.out.println(" con : " + con);
//		
//		return con;
//	}
	
	
	// 디비 연결
	private Connection getConnect() throws Exception {
		// 디비 연결정보 - context.xml
		
		// 프로젝트 정보를 초기화
		Context initCTX = new InitialContext();
		// 초기화된 프로젝트 정보중 데이터 불러오기
		DataSource ds
		   = (DataSource)initCTX.lookup("java:comp/env/jdbc/ChacaChaca");
		// 연결된 정보를 바탕으로 connection 정보를 리턴
		con = ds.getConnection();
		
		return con;
	} // 디비 연결
	
	
	// 자원 해제
	public void closeDB(){
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(con != null) con.close();
			
			System.out.println("DAO : 자원해제 성공!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} // 자원 해제
	
	// 차량정보 조회 시작 - getCar(id)
	public CarDTO getCar(Date date, String place, String car_name) {
		
		// 회원정보를 저장할 객체
		CarDTO dto = new CarDTO();
		
		try {
			// 1. 2. DB 연결
			con = getConnect();
			
			// 3. SQL(select) & pstmt
			
			sql = "select * "
				+ "from reservationinfo "
				+ "where rsvt_date = ? "
				+ "and rsvt_place = ? "
				+ "and rsvt_car_name = ?";
			pstmt = con.prepareStatement(sql);
			
			// 4. ???
			pstmt.setDate(1, date);
			pstmt.setString(2, place);
			pstmt.setString(3, car_name);
			
			// 5. SQL 실행
			rs = pstmt.executeQuery();
			// 6. 데이터 처리
			if(rs.next()) { // 데이터 있을 때
				System.out.println("DAO : 차량 예약정보 있음 - 예약 안됨");
			} else {
				// 3. SQL(select) & pstmt
				sql = "select * "
					+ "from carinfo "
					+ "where place = ? "
					+ "and car_name = ?";
				pstmt = con.prepareStatement(sql);
				
				// 4. ???
				pstmt.setString(1, place);
				pstmt.setString(2, car_name);
				
				// 5. SQL 실행
				rs = pstmt.executeQuery();
				
				// 6. 데이터 처리
				if(rs.next()) { // 데이터 있을 때
					// 조회된 차량 정보를 저장
					dto.setCar_number(rs.getString("car_number"));
					dto.setCar_brand(rs.getString("car_brand"));
					dto.setCar_name(rs.getString("car_name"));
					dto.setCar_year(rs.getInt("car_year"));
					dto.setFuel(rs.getString("fuel"));
					dto.setHp(rs.getInt("hp"));
					dto.setTurnover(rs.getString("turnover"));
					dto.setSeat(rs.getInt("seat"));
					dto.setPlace(rs.getString("place"));
					dto.setImage(rs.getString("image"));
					dto.setPrice(rs.getInt("price"));
				
					System.out.println("DAO : 차량정보 저장 완료");
				}
			}
			
			System.out.println("DAO : " + dto);
			return dto;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return dto;
	}
	// 차량정보 조회 끝 - getCar(id)

	/*// 차량정보 조회 시작 - getCar(id) - 수정 필요
	public CarDTO getCar(Date date, String location, String car_name) {
		
		// 회원정보를 저장할 객체
		CarDTO dto = new CarDTO();
		
		// 1. 드라이버 로드 2. 디비 연결
		try {
			con = getConnect();
			
			// 3. SQL(select) & pstmt
			sql = "select r1.*, r2.rsvt_date "
				+ "from carinfo r1 left outer join reservationinfo r2 "
				+ "on r1.car_number = r2.rsvt_car_number "
			    + "where (r2.rsvt_date != ? or r2.rsvt_date is null) "
				+ "and r1.place = ? "
				+ "and r1.car_name = ?";
			pstmt = con.prepareStatement(sql);
			
			// 4. ???
			pstmt.setDate(1, date);
		 	pstmt.setString(2, location);
		 	pstmt.setString(3, car_name);
		 	
			// 5. SQL 실행
			rs = pstmt.executeQuery();
			// 6. 데이터 처리
			if(rs.next()) { // 데이터 있을 때
				// 조회된 차량 정보를 저장
				dto.setCar_number(rs.getString("car_number"));
				dto.setCar_brand(rs.getString("car_brand"));
				dto.setCar_name(rs.getString("car_name"));
				dto.setCar_year(rs.getInt("car_year"));
				dto.setFuel(rs.getString("fuel"));
				dto.setHp(rs.getInt("hp"));
				dto.setTurnover(rs.getString("turnover"));
				dto.setSeat(rs.getInt("seat"));
				dto.setPlace(rs.getString("place"));
				dto.setImage(rs.getString("image"));
				dto.setPrice(rs.getInt("price"));
				
				System.out.println("DAO : 차량정보 저장 완료");
			}
			System.out.println("DAO : 조회된 회원정보");
			System.out.println("DAO : " + dto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return dto;
	}
	// 차량정보 조회 끝 - getCar(id)
*/
	// 차량 예약정보 조회 시작 - getReservaionCar(car_number, date, id_email, babyseat, childrenseat, wifi, navigation)
	public CarReservationDTO getReservationCar(String car_number, Date date, String id_email, int babyseat, int childrenseat, int wifi, String navigation) {
		
		// 차량 예약정보를 저장할 객체
		CarReservationDTO cdto = new CarReservationDTO();
		
		// 1. 드라이버 로드 2. 디비 연결
		try {
			con = getConnect();
			
			// ---------------- 예약번호 ----------------
			// 3. SQL(select)
			sql = "select max(rsvt_number) "
				+ "from reservationinfo";
			pstmt = con.prepareStatement(sql);
			
			// 4. SQL 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리
			if(rs.next()){
				cdto.setRsvt_number(rs.getInt(1)+1);					
			}
			// ---------------- 예약번호 ----------------
			
			// -------------- 아이디, 이름 --------------				
			// 3. SQL(select) & pstmt
			sql = "select name "
				+ "from userinfo "
				+ "where id_email = ?";
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setString(1, id_email);
			
			// 4. SQL 실행
			rs = pstmt.executeQuery();
			// 5. 데이터 처리
			if(rs.next()) { // 데이터 있을 때
				cdto.setRsvt_id(id_email);
				cdto.setRsvt_name(rs.getString("name"));
			}
			// -------------- 아이디, 이름 --------------				
			
			
			// ----------------- 나머지 -----------------				
			// 3. SQL(select) & pstmt
			sql = "select * "
				+ "from carinfo "
				+ "where car_number = ?";
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setString(1, car_number);
			
			// 4. SQL 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리
			if(rs.next()) { // 데이터 있을 때
				// 조회된 차량 정보를 저장
				cdto.setRsvt_date(date);
				cdto.setRsvt_place(rs.getString("place"));
				cdto.setRsvt_car_number(rs.getString("car_number"));
				cdto.setRsvt_car_brand(rs.getString("car_brand"));
				cdto.setRsvt_car_name(rs.getString("car_name"));
				cdto.setPrice(rs.getInt("price"));
				cdto.setBabyseat(babyseat);
				cdto.setChildrenseat(childrenseat);
				cdto.setWifi(wifi);
				cdto.setNavigation(navigation);
				cdto.setImage(rs.getString("image"));
				System.out.println("DAO : 차량 예약정보 저장 완료");
			}
			// ----------------- 나머지 -----------------	
			
			System.out.println("DAO : " + cdto);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
		return cdto;
	}
	// 차량 예약정보 조회 끝 - getReservaionCar(car_number, date, id_email, babyseat, childrenseat, wifi, navigation)
	
	// 차량 예약정보 저장 시작 - getReservaionResultCar(cdto)
	public void getReservationResultCar(CarReservationDTO cdto, String id_email) {
		
		// 1. 드라이버 로드 2. 디비 연결
		try {
			con = getConnect();
			System.out.println(cdto);
			// 3. SQL(select) & pstmt
			String sql = "insert into reservationinfo (rsvt_number, rsvt_date, rsvt_place, rsvt_car_number, rsvt_car_brand, rsvt_car_name, rsvt_id, rsvt_name, price, babyseat, childrenseat, wifi, navigation, image) "
					   + "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = con.prepareStatement(sql);
			
			// 4. ???
			pstmt.setInt(1, cdto.getRsvt_number());
			pstmt.setDate(2, cdto.getRsvt_date());
			pstmt.setString(3, cdto.getRsvt_place());
			pstmt.setString(4, cdto.getRsvt_car_number());
			pstmt.setString(5, cdto.getRsvt_car_brand());
			pstmt.setString(6, cdto.getRsvt_car_name());
			pstmt.setString(7, cdto.getRsvt_id());
			pstmt.setString(8, cdto.getRsvt_name());
			pstmt.setInt(9, cdto.getPrice());
			pstmt.setInt(10, cdto.getBabyseat());
			pstmt.setInt(11, cdto.getChildrenseat());
			pstmt.setInt(12, cdto.getWifi());
			pstmt.setString(13, cdto.getNavigation());
			pstmt.setString(14, cdto.getImage());
			
			// 5. SQL 실행
			pstmt.executeUpdate();
			System.out.println("DAO : 차량 예약정보 저장 완료");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeDB();
		}
	}
	// 예약 차량정보 조회 끝 - getReservationResultCar(cdto)
	
	// 관리자용 차량 예약정보 전체 개수 조회 시작 - getReservationCount()
	public int getReservationCount(){
		System.out.println("DAO : getReservationCount() 실행");
		int cnt = 0;
		
		try {
			// 1. 2. DB 연결
			con = getConnect();
			
			//3. sql 작성(select) & pstmt 객체 생성 
			sql = "select count(*) from reservationinfo";
			pstmt = con.prepareStatement(sql);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리 
			if(rs.next()){
				//cnt = rs.getInt("count(*)"); //내장함수 호출하는 자체가 컬럼명이 됨 
				cnt = rs.getInt(1); //1번 인덱스를 의미함 -> 컬럼명이 복잡할 때 사용 
			}
			
			System.out.println("DAO : 총 " + cnt + "개");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB(); //까먹으니까 초기에 try-catch할때 finally closeDB(); 만들기 
		}
		
		return cnt;
	} // 관리자용 차량 예약정보 전체 개수 조회 끝 - getReservationCount()
	
	// 관리자용 차량 예약 전체 목록 조회 시작 - getReservationManagementList() -> 메서드 오버로딩 (매개변수를 다른 것으로 지정)
	public List<CarReservationDTO> getReservationManagementList(int startRow, int pageSize){
		System.out.println("DAO : getReservationManagementList(int startRow,int pageSize) 호출");
	 	
		// 글 정보 모두를 저장하는 배열(가변 길이)
		List<CarReservationDTO> reservationManagementList = new ArrayList<CarReservationDTO>();
		// 자동형변환 ArrayList는 List를 상속함 
		
		try {
		// 1. 2. 디비연결
		con = getConnect();
		
		// 3.sql 작성 & pstmt 객체 생성
		
		// limit시작행 -1, 개수 : 시작지점부터 해당 개수만큼 잘라오기  
		// 정렬 :  re_ref 내림차순, re_seq 오름차순 
		// 정렬하고 난 뒤 잘라와야 함 (순서)
		sql = "select * from reservationinfo order by rsvt_date desc, rsvt_name desc "
			+ "limit ?, ?";
		// 최신글이 가장 위에 올라와있는 형태의 정렬 
		
		pstmt = con.prepareStatement(sql);
		 
		// ???
		pstmt.setInt(1, startRow-1); // 시작행 - 1
		pstmt.setInt(2, pageSize);   // 한 페이지에 표시할 게시글 수 
		
		// 4. sql 실행
		rs = pstmt.executeQuery();
		 
		// 5. 데이터 처리 
		while(rs.next()){ //rs에는 여러개의 데이터가 담겨있음 
			// 커서가 내려가며 데이터가 있다면 
			// DB에 저장된 정보를  dto에 저장 -> 저장된 dto의 정보를 List에 저장  
			
			// DB 정보 -> DTO에 저장
			CarReservationDTO cdto = new CarReservationDTO();
			cdto.setRsvt_number(rs.getInt("rsvt_number"));
			cdto.setRsvt_date(rs.getDate("rsvt_date"));
			cdto.setRsvt_place(rs.getString("rsvt_place"));
			cdto.setRsvt_car_number(rs.getString("rsvt_car_number"));
			cdto.setRsvt_car_brand(rs.getString("rsvt_car_brand"));
			cdto.setRsvt_car_name(rs.getString("rsvt_car_name"));
			cdto.setRsvt_id(rs.getString("rsvt_id"));
			cdto.setRsvt_name(rs.getString("rsvt_name"));
			cdto.setPrice(rs.getInt("price"));
			cdto.setBabyseat(rs.getInt("babyseat"));
			cdto.setChildrenseat(rs.getInt("childrenseat"));
			cdto.setWifi(rs.getInt("wifi"));
			cdto.setNavigation(rs.getString("navigation"));
			cdto.setImage(rs.getString("image"));
			cdto.setUseinfo(rs.getString("useinfo"));
					 
			// DTO에 저장된 정보 -> List저장 
			reservationManagementList.add(cdto);
		}
		
		System.out.println("DAO : 관리자용 차량 예약 전체 목록 저장완료");
		System.out.println("DAO : " + reservationManagementList);
		
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			closeDB(); //자원해제
		}
		
		return reservationManagementList;
	} // 관리자용 차량 예약 전체 목록 조회 시작 - getReservationManagementList()
	
	// 관리자용 차량 사용처리 시작 - updateUseinfo()
	public List<CarReservationDTO> updateUseinfo(int startRow, int pageSize, int rsvt_number){
		System.out.println("DAO : updateUseinfo(int startRow, int pageSize, int rsvt_number) 호출");
	 	
		// 글 정보 모두를 저장하는 배열(가변 길이)
		List<CarReservationDTO> reservationManagementList = new ArrayList<CarReservationDTO>();
		// 자동형변환 ArrayList는 List를 상속함 
		
		try {
		// 1. 2. 디비연결
		con = getConnect();
		
		sql = "update reservationinfo set useinfo='사용후' where rsvt_number=?";
		pstmt = con.prepareStatement(sql);
		
		pstmt.setInt(1, rsvt_number);
		
		pstmt.executeUpdate();
		
		// 3.sql 작성 & pstmt 객체 생성
		
		// limit시작행 -1, 개수 : 시작지점부터 해당 개수만큼 잘라오기  
		// 정렬 :  re_ref 내림차순, re_seq 오름차순 
		// 정렬하고 난 뒤 잘라와야 함 (순서)
		sql = "select * from reservationinfo order by rsvt_date desc, rsvt_name desc "
			+ "limit ?, ?";
		// 최신글이 가장 위에 올라와있는 형태의 정렬 
		
		pstmt = con.prepareStatement(sql);
		 
		// ???
		pstmt.setInt(1, startRow-1); // 시작행 - 1
		pstmt.setInt(2, pageSize);   // 한 페이지에 표시할 게시글 수 
		
		// 4. sql 실행
		rs = pstmt.executeQuery();
		 
		// 5. 데이터 처리 
		while(rs.next()){ //rs에는 여러개의 데이터가 담겨있음 
			// 커서가 내려가며 데이터가 있다면 
			// DB에 저장된 정보를  dto에 저장 -> 저장된 dto의 정보를 List에 저장  
			
			// DB 정보 -> DTO에 저장
			CarReservationDTO cdto = new CarReservationDTO();
			cdto.setRsvt_number(rs.getInt("rsvt_number"));
			cdto.setRsvt_date(rs.getDate("rsvt_date"));
			cdto.setRsvt_place(rs.getString("rsvt_place"));
			cdto.setRsvt_car_number(rs.getString("rsvt_car_number"));
			cdto.setRsvt_car_brand(rs.getString("rsvt_car_brand"));
			cdto.setRsvt_car_name(rs.getString("rsvt_car_name"));
			cdto.setRsvt_id(rs.getString("rsvt_id"));
			cdto.setRsvt_name(rs.getString("rsvt_name"));
			cdto.setPrice(rs.getInt("price"));
			cdto.setBabyseat(rs.getInt("babyseat"));
			cdto.setChildrenseat(rs.getInt("childrenseat"));
			cdto.setWifi(rs.getInt("wifi"));				
			cdto.setNavigation(rs.getString("navigation"));
			cdto.setImage(rs.getString("image"));
			cdto.setUseinfo(rs.getString("useinfo"));
			 
			// DTO에 저장된 정보 -> List저장 
			reservationManagementList.add(cdto);
		}
		
		System.out.println("DAO : 관리자용 차량 예약 전체 목록 저장완료");
		System.out.println("DAO : " + reservationManagementList);
		
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			closeDB(); //자원해제
		}
		
		return reservationManagementList;
	} // 관리자용 차량 사용처리 끝 - updateUseinfo()
	
	// 고객용 차량 예약 목록 조회 시작 - getReservationList() -> 메서드 오버로딩 (매개변수를 다른 것으로 지정)
	public List<CarReservationDTO> getReservationList(int startRow, int pageSize, String id_email){
		System.out.println("DAO : getReservationManagementList(int startRow,int pageSize,String id_email) 호출");
	 	
		// 글 정보 모두를 저장하는 배열(가변 길이)
		List<CarReservationDTO> reservationManagementList = new ArrayList<CarReservationDTO>();
		// 자동형변환 ArrayList는 List를 상속함 
		
		try {
		// 1. 2. 디비연결
		con = getConnect();
		
		// 3.sql 작성 & pstmt 객체 생성
		
		// limit시작행 -1, 개수 : 시작지점부터 해당 개수만큼 잘라오기  
		// 정렬 :  re_ref 내림차순, re_seq 오름차순 
		// 정렬하고 난 뒤 잘라와야 함 (순서)
		sql = "select * from reservationinfo where rsvt_id=? and useinfo='사용전' order by rsvt_date desc, rsvt_name desc "
			+ "limit ?, ?";
		// 최신글이 가장 위에 올라와있는 형태의 정렬 
		
		pstmt = con.prepareStatement(sql);
		 
		// ???
		pstmt.setString(1, id_email);   // 한 페이지에 표시할 게시글 수 
		pstmt.setInt(2, startRow-1);// 시작행 - 1
		pstmt.setInt(3, pageSize);   // 한 페이지에 표시할 게시글 수 
		
		// 4. sql 실행
		rs = pstmt.executeQuery();
		 
		// 5. 데이터 처리 
		while(rs.next()){ //rs에는 여러개의 데이터가 담겨있음 
			// 커서가 내려가며 데이터가 있다면 
			// DB에 저장된 정보를  dto에 저장 -> 저장된 dto의 정보를 List에 저장  
			
			// DB 정보 -> DTO에 저장
			CarReservationDTO cdto = new CarReservationDTO();
			cdto.setRsvt_number(rs.getInt("rsvt_number"));
			cdto.setRsvt_date(rs.getDate("rsvt_date"));
			cdto.setRsvt_place(rs.getString("rsvt_place"));
			cdto.setRsvt_car_brand(rs.getString("rsvt_car_brand"));
			cdto.setRsvt_car_name(rs.getString("rsvt_car_name"));
			cdto.setRsvt_name(rs.getString("rsvt_name"));
			cdto.setUseinfo(rs.getString("useinfo"));
			 
			// DTO에 저장된 정보 -> List저장 
			reservationManagementList.add(cdto);
		}
		
		System.out.println("DAO : 관리자용 차량 예약 전체 목록 저장완료");
		System.out.println("DAO : " + reservationManagementList);
		
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			closeDB(); //자원해제
		}
		
		return reservationManagementList;
	} // 고객용 차량 예약 목록 조회 시작 - getReservationList()
	
	// 고객용 차량 예약정보 개수 조회 시작 - getReservationCount(String id_email) - 메서드 오버로딩
	public int getReservationCount(String id_email) {
		System.out.println("DAO : getReservationCount(String id_email) 실행");
		int cnt = 0;
		
		try {
			// 1. 2. DB 연결
			con = getConnect();
			
			//3. sql 작성(select) & pstmt 객체 생성 
			sql = "select count(*) from reservationinfo "
				+ "where rsvt_id = ?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id_email);
			
			// 4. sql 실행
			rs = pstmt.executeQuery();
			
			// 5. 데이터 처리 
			if(rs.next()){
				//cnt = rs.getInt("count(*)"); //내장함수 호출하는 자체가 컬럼명이 됨 
				cnt = rs.getInt(1); //1번 인덱스를 의미함 -> 컬럼명이 복잡할 때 사용 
			}
			
			System.out.println("DAO : 총 " + cnt + "개");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeDB(); //까먹으니까 초기에 try-catch할때 finally closeDB(); 만들기 
		}
		
		return cnt;
	} // 고객용 차량 예약정보 개수 조회 시작 - getReservationCount(String id_email) - 메서드 오버로딩
	
	// 고객용 차량 이전 사용내역 조회 시작 - oldUpdateUseinfo()
	public List<CarReservationDTO> oldUpdateUseinfo(int startRow, int pageSize, String id_email){
		System.out.println("DAO : updateUseinfo(int startRow, int pageSize, int rsvt_number) 호출");
	 	
		// 글 정보 모두를 저장하는 배열(가변 길이)
		List<CarReservationDTO> reservationManagementList = new ArrayList<CarReservationDTO>();
		// 자동형변환 ArrayList는 List를 상속함 
		
		try {
		// 1. 2. 디비연결
		con = getConnect();
				
		// 3.sql 작성 & pstmt 객체 생성
		// limit시작행 -1, 개수 : 시작지점부터 해당 개수만큼 잘라오기  
		// 정렬 :  re_ref 내림차순, re_seq 오름차순 
		// 정렬하고 난 뒤 잘라와야 함 (순서)
		sql = "select * from reservationinfo where rsvt_id = ? and useinfo = '사용후' order by rsvt_date desc, rsvt_name desc "
			+ "limit ?, ?";
		// 최신글이 가장 위에 올라와있는 형태의 정렬 
		
		pstmt = con.prepareStatement(sql);
		 
		// ???
		pstmt.setString(1, id_email);
		pstmt.setInt(2, startRow-1); // 시작행 - 1
		pstmt.setInt(3, pageSize);   // 한 페이지에 표시할 게시글 수 
		
		// 4. sql 실행
		rs = pstmt.executeQuery();
		 
		// 5. 데이터 처리 
		while(rs.next()){ //rs에는 여러개의 데이터가 담겨있음 
			// 커서가 내려가며 데이터가 있다면 
			// DB에 저장된 정보를  dto에 저장 -> 저장된 dto의 정보를 List에 저장  
			
			// DB 정보 -> DTO에 저장
			CarReservationDTO cdto = new CarReservationDTO();
			cdto.setRsvt_number(rs.getInt("rsvt_number"));
			cdto.setRsvt_date(rs.getDate("rsvt_date"));
			cdto.setRsvt_place(rs.getString("rsvt_place"));
			cdto.setRsvt_car_number(rs.getString("rsvt_car_number"));
			cdto.setRsvt_car_brand(rs.getString("rsvt_car_brand"));
			cdto.setRsvt_car_name(rs.getString("rsvt_car_name"));
			cdto.setRsvt_id(rs.getString("rsvt_id"));
			cdto.setRsvt_name(rs.getString("rsvt_name"));
			cdto.setUseinfo(rs.getString("useinfo"));
						 
			// DTO에 저장된 정보 -> List저장 
			reservationManagementList.add(cdto);
		}
		
		System.out.println("DAO : 관리자용 차량 예약 전체 목록 저장완료");
		System.out.println("DAO : " + reservationManagementList);
		
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			closeDB(); //자원해제
		}
		
		return reservationManagementList;
	} // 고객용 차량 이전 사용내역 조회 시작 - oldUpdateUseinfo()
		
	// 고객용 차량 예약 취소 시작 - reservationCancel()
	public void reservationCancel(int rsvt_number){
		System.out.println("DAO : reservationCancle(int rsvt_number) 호출");
		
		try {
			// 1. 2. 디비연결
			con = getConnect();
			
			// 3.sql 작성 & pstmt 객체 생성
			sql = "delete from reservationinfo where rsvt_number = ?";
			pstmt = con.prepareStatement(sql);
			
			// ???
			pstmt.setInt(1, rsvt_number);
			
			// 4. sql 실행
			pstmt.executeUpdate();
			
			System.out.println("DAO : 고객용 차량 예약 취소 완료");
			
		} catch(Exception e){
			e.printStackTrace();
		} finally {
			closeDB(); //자원해제
		}
	} // 고객용 차량 예약 취소 끝 - reservationCancel()
		
		
}