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

	// �̱��� �����
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
				pstmt = conn.prepareStatement(SQL); // ���� �ޱ�
				
				//����ǥ ä���
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
			return -1; //����
		}
		
		public List<Memo> findAll(int personId){ 
			StringBuffer sb = new StringBuffer();
			sb.append("SELECT id, personId, title, content, priority, createDate ");					
			sb.append("FROM memo "); 
			sb.append("WHERE personId = ? ");
			sb.append("ORDER by id desc");
		
			System.out.println(sb.toString());	
			final String SQL = sb.toString();	
			List<Memo> memos = new ArrayList<>();
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				
				pstmt.setInt(1, personId);
				
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					Memo memo = new Memo(
							rs.getInt("id"),
							rs.getInt("personId"),
							rs.getString("title"),
							rs.getString("content"),
							rs.getInt("priority"),
							rs.getTimestamp("createDate")
					
					);
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
		
		
		
		
		// loginProcAction�̸� email�� password�� ��ġ�ϸ�
		// �޼ҵ� ����Ǽ� main���� �Ѿ�� �ؾ��Ѵ�.
		// ��ü�� ���� �Ѵ�.
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
		
		
		
		
		
		
		
		
		// �Ű������� �� �����ϴ��� ���� ����.
		
			
			
		
}	
	

