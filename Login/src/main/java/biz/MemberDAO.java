package biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import vo.MemberVO;

public class MemberDAO {
	// DB접속 객체선언
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	// 커넥션풀 DB 연결 메서드
	public void dbConn() {
		try {
			// 1. 외부 data 읽어오기 위한 Context 생성
			Context initctx = new InitialContext(); // server.xml <Context> 설정과 관련
			System.out.println("1. Context 생성 성공!!");
			// 2. 톰캣 서버에 정보를 담아놓은 곳으로 이동
			Context envctx = (Context)initctx.lookup("java:comp/env"); // lookup() 사용환경 찾기
			System.out.println("2. Context 환경생성 성공!!");
			// 3. DataSource 객체 선언
			DataSource ds = (DataSource) envctx.lookup("jdbc/pool"); // lookup() Resource 찾기
			System.out.println("3. DataSource 찾기 성공!!");
			// 4. DataSource를 기준으로 DB에 Connection 연결
			conn = ds.getConnection();
			System.out.println("4. DB접속 성공!!");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
// 1. CREATE = 회원가입
	public void insertMem(MemberVO mbean) {
		try {
			// 0. 연결
			dbConn();
			// 1. 회원가입 쿼리문 작성
			String sql = "insert into exam_member values (?,?,?,?)";
			// 2. prepareStatement
			pstmt = conn.prepareStatement(sql);
			// ?
			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPwd());
			pstmt.setString(3, mbean.getName());
			pstmt.setString(4, mbean.getEmail());
			// 3. 쿼리실행
			pstmt.executeUpdate();
			// 4. 자원반납
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

// 2. Read = 회원정보 조회
// 2-1 모든 회원 조회 메서드
	public ArrayList<MemberVO> allSelectMem(){
		ArrayList<MemberVO> v = new ArrayList<MemberVO>();
		try {
			dbConn();
			String sql = "select * from exam_member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MemberVO bean = new MemberVO();
				bean.setId(rs.getString(1));
				bean.setPwd(rs.getString(2));
				bean.setName(rs.getString(3));
				bean.setEmail(rs.getString(4));
				
				v.add(bean);				
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return v;
	}
	
// 2-2. 한명의 회원 정보 조회 메서드
	public MemberVO selectedMem(String id) {
		MemberVO bean = new MemberVO();
		try {
			dbConn();
			String sql = "select * from exam_member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				bean.setId(rs.getString(1));
				bean.setPwd(rs.getString(2));
				bean.setName(rs.getString(3));
				bean.setEmail(rs.getString(4));
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
// 3. Update = 회원정보 업데이트
// 3-1. 비밀번호 리턴
	public String getPw(String id) {
		String pwd = "";
		try {
			dbConn();
			String sql = "select pwd from exam_member where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				pwd = rs.getString(1);
			}
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return pwd;
		
	}
// 3-2. 정보 수정
	public void updateMem(MemberVO mbean) {
		dbConn();
		try {
			String sql = "update exam_member set name=?, email=? where id=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mbean.getName());
			pstmt.setString(2, mbean.getEmail());
			pstmt.setString(3, mbean.getId());
			pstmt.executeUpdate();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	
	
	
	
	
	
	
} // e f class


