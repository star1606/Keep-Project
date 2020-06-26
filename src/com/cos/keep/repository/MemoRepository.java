package com.cos.keep.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.keep.db.DBConn;
import com.cos.keep.model.Memo;
import com.cos.keep.model.Person;


public class MemoRepository {

	// 싱글톤 만들기
	private static MemoRepository instance = new MemoRepository();
	
	public MemoRepository() {}
		
		private static final String TAG = "MemoRepository: ";
	
		public static MemoRepository getInstance() {
			return instance;
		}
	 	
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
	
		
		
		
		
		
		public int save(Memo memo) {
			final String SQL = "INSERT INTO memo(id, personId, title, content, createDate) "
					+ "VALUES(memo_SEQ.NEXTVAL, ?, ?, ?, sysdate)";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // 버퍼 달기
				
				//물음표 채우기
				pstmt.setInt(1, memo.getPersonId());
				pstmt.setString(2, memo.getTitle());
				pstmt.setString(3, memo.getContent());
				
				return pstmt.executeUpdate();
				
				
								 	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "save : " + e.getMessage());
			
			} finally {
				DBConn.close(conn, pstmt);
			}	
			return -1; //실패
		}
		
		public List<Memo> findAll(int personId){ 
			StringBuffer sb = new StringBuffer();
			sb.append("select memo.id, memo.title, memo.content ");  
			sb.append("from memo inner join person "); 
			sb.append("on memo.personId = person.id ");
			sb.append("where memo.personId = ? ");
			sb.append("ORDER BY memo.id desc");
					
			final String SQL = sb.toString();	
			List<Memo> memos = new ArrayList<>();
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, personId);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					Memo memo = Memo.builder()
							.id(rs.getInt(1))
							.personId(rs.getInt(2))
							.title(rs.getString(3))
							.content(rs.getString(4))
							.priority(rs.getInt(5))
							.createDate(rs.getTimestamp(6))
							.build();
					
					memos.add(memo);
				}
				
					return memos;
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "findAll(int personId)" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return null;
			
		}
		
		
		
		
		// loginProcAction이면 email과 password가 일치하면
		// 메소드 실행되서 main으로 넘어가게 해야한다.
		// 객체로 만들어서 한다.
		public Person findByEmailandPassword(String email, String password) {
			
			final String SQL = "";
			Person person = null;
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setString(1, email);
				pstmt.setString(2, password);
				
				rs = pstmt.executeQuery();
				
				if (rs.next()) {
					person = new Person();
					person.setId(rs.getInt("id"));
					person.setEmail(rs.getString("email"));
					person.setPersonName(rs.getString("personName"));
					person.setPassword(rs.getString("password"));
					person.setCreateDate(rs.getTimestamp("createDate"));
					
				}
				
				return person;
				
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "findByEmailandPassword" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return null;
		}
		
		
		
		
		
		
		
		
		// 매개변수가 뭐 들어가야하는지 이해 부족.
		
			
			
		
}	
	

