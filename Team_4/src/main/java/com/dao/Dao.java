package com.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.dto.MemberDto;
import com.dto.PostDto;




public class Dao {
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private String drv = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://127.0.0.1:3306/team_pj";
	private String user = "duser";
	private String pass = "dbcpdlxkf12!";
	
	
	
	public Dao() {
		try {
			Class.forName(drv);
		} catch (ClassNotFoundException e) {
//			e.printStackTrace();
			System.out.println("연동실패");
		}
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int insertData(MemberDto d) {
		int result = -1;
		String Query = "insert into member values(?,?,?)";
		
		try {
			conn = DriverManager.getConnection(url,user,pass);
			
			pstmt = conn.prepareStatement(Query);
			pstmt.setString(1,d.getM_id());
			pstmt.setString(2,d.getM_pw());
			pstmt.setString(3,d.getM_nickname());
			
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insertData(PostDto d) { //자랑게시판 글작성
		int result = -1;
		String Query = "insert into boast values(null,?,?,?)";
		
		try {
			conn = DriverManager.getConnection(url,user,pass);
			
			pstmt = conn.prepareStatement(Query);
			
			pstmt.setString(1,d.getB_title());
			pstmt.setString(2,d.getB_text());
			pstmt.setString(3,d.getM_id());
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public int insertQ(PostDto d) { //질문게시판 글작성 시작
		int result = -1;
		String Query = "insert into question values(null,?,?,?)";
		
		try {
			conn = DriverManager.getConnection(url,user,pass);
			
			pstmt = conn.prepareStatement(Query);
			
			pstmt.setString(1,d.getQ_title());
			pstmt.setString(2,d.getQ_text());
			pstmt.setString(3,d.getM_id());
			result = pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return result;
	}//질문게시판 글작성 끝
	
	public ArrayList<MemberDto> getList(){
		ArrayList<MemberDto> mList = new ArrayList<>();
		String Query = "select * from member";
		try {
			conn = DriverManager.getConnection(url,user,pass);
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MemberDto d = new MemberDto();
				
				d.setM_id(rs.getString(1));
				d.setM_pw(rs.getString(2));
				d.setM_nickname(rs.getString(3));
				
				mList.add(d);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return mList;
	}
	
	public List<PostDto> getList1(){ //자랑게시판 목록 시작
		List<PostDto> pList = new ArrayList<>();
		String Query = "select * from boast order by b_num desc";
		try {
			conn = DriverManager.getConnection(url,user,pass);
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				PostDto d = new PostDto();
				
				d.setB_num(rs.getInt(1));
				d.setB_title(rs.getString(2));
				d.setB_text(rs.getString(3));
				d.setM_id(rs.getString(4));
				
				pList.add(d);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return pList;
	}//자랑게시판 목록 끝
	
	public List<PostDto> getList2(){ //질문게시판 목록 시작
		List<PostDto> qList = new ArrayList<>();
		String Query = "select * from question order by q_num desc";
		try {
			conn = DriverManager.getConnection(url,user,pass);
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				PostDto d = new PostDto();
				
				d.setQ_num(rs.getInt(1));
				d.setQ_title(rs.getString(2));
				d.setQ_text(rs.getString(3));
				d.setM_id(rs.getString(4));
				
				qList.add(d);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return qList;
	}//질문게시판 목록 끝
	
	
	public PostDto selectData(int code) {
		PostDto data = null;//검색한 결과가 있을 경우에만 인스턴스를 생성
							//하기 위해 처음에는 null로 초기화 한다.
		
		String query = "select * from boast where b_num = ?";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, code);
			rs = pstmt.executeQuery();
			
			//검색조건에 해당하는 컬럼이 기본키(pk)인 경우에는 if를 사용
			if(rs.next()) {
				data = new PostDto();
				System.out.println("zz");
				data.setB_num(rs.getInt(1));
				
				data.setB_title(rs.getString(2));
				
				data.setB_text(rs.getString(3));
				
				data.setM_id(rs.getString(4));
				
			}
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		
		return data;//검색 데이터가 없을 경우 null, 있을 경우 데이터.
	}
	
	public PostDto selectQ(int code) { //질문
		PostDto data = null;//검색한 결과가 있을 경우에만 인스턴스를 생성
							//하기 위해 처음에는 null로 초기화 한다.
		
		String query = "select * from question where q_num = ?";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, code);
			rs = pstmt.executeQuery();
			
			//검색조건에 해당하는 컬럼이 기본키(pk)인 경우에는 if를 사용
			if(rs.next()) {
				data = new PostDto();
				
				data.setQ_num(rs.getInt(1));
				data.setQ_title(rs.getString(2));
				data.setQ_text(rs.getString(3));
				data.setM_id(rs.getString(4));
			}
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		
		return data;//검색 데이터가 없을 경우 null, 있을 경우 데이터.
	}
	
	public int update(PostDto dto) {
		int result = -1;
		String query = "update boast set b_title=?,  b_text=? where b_num=?";
		
		
		
	/*	"update datatbl "
				+ "set m_str=?, m_int=?, m_date=? "
				+ "where m_code=?";
		*/
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getB_title());
			pstmt.setString(2, dto.getB_text());
			pstmt.setInt(3, dto.getB_num());
			
			
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public int updateQ(PostDto dto) {//질문
		int result = -1;
		String query = "update question set q_title=?,  q_text=? where q_num=?";
	/*	"update datatbl "
				+ "set m_str=?, m_int=?, m_date=? "
				+ "where m_code=?";
		*/
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getQ_title());
			pstmt.setString(2, dto.getQ_text());
			pstmt.setInt(3, dto.getQ_num());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		return result;
	}
	
	public int delete(int code) {
		int result = 0;
		
		String query = "delete from boast where b_num=?";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, code);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
		
	}
	
	public int deleteQ(int code) {//질문
		int result = 0;
		
		String query = "delete from question where q_num=?";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, code);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
		
	}//질문 끝

	public List<PostDto> serachCodeGetList(String column, String keyword) {
		List<PostDto> pList = new ArrayList<>();
		
		
		String Query = null;
		
		
		Query = "select * from boast where " + column + " like '%" + keyword + "%'";
		
				
		
		try {
			conn = DriverManager.getConnection(url,user,pass);
			pstmt = conn.prepareStatement(Query);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				PostDto d = new PostDto();
				
				d.setQ_num(rs.getInt(1));
				d.setQ_title(rs.getString(2));
				d.setQ_text(rs.getString(3));
				d.setM_id(rs.getString(4));
				
				pList.add(d);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return pList;
	}

	public int updatePwd(String id, String pwd) {
		int result = 0;
		
		String query = "update member set m_pw = ? where m_id = ?";
		
		try {
			conn = DriverManager.getConnection(url, user, pass);
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, pwd);
			pstmt.setString(2, id);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			//e.printStackTrace();
		} finally {
			close();
		}
		
		return result;
	}

	public MemberDto getMemberDto(String id) {
		MemberDto mdto = new MemberDto();
		String Query = null;
		Query = "select * from member where m_id='" + id +"'";
		
				
		
		try {
			conn = DriverManager.getConnection(url,user,pass);
			pstmt = conn.prepareStatement(Query);
			
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				PostDto d = new PostDto();
				
				mdto.setM_id(rs.getString(1));
				mdto.setM_pw(rs.getString(2));
				mdto.setM_nickname(rs.getString(3));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		System.out.println("아이디 : " + id);
		System.out.println(mdto.getM_id());
		System.out.println(mdto.getM_pw());
		System.out.println(mdto.getM_nickname());
		
		return mdto;
	}
	
}
