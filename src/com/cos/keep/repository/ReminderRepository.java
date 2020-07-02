package com.cos.keep.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cos.keep.db.DBConn;
import com.cos.keep.model.Memo;
import com.cos.keep.model.Reminder;


public class ReminderRepository {

	// �̱��� �����
	private static ReminderRepository instance = new ReminderRepository();
	
	public ReminderRepository() {}
		
		private static final String TAG = "MemoRepository: ";
	
		public static ReminderRepository getInstance() {
			return instance;
		}
	 	
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
	
		
		// �޼ҵ� �� ����µ� �̰Ŵ� email�� �̿��ؼ� select�ؼ� ������ id�� ã�� ������
		
		
		
		
		public int priorityUpdate(int id, int changeNum) {
			final String SQL = "UPDATE memo SET priority = ? WHERE id =?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // ���� �ޱ�
				
				//����ǥ ä���
			
				pstmt.setInt(1, changeNum);
				pstmt.setInt(2, id);
				
				return pstmt.executeUpdate();
				
				
								 	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "priorityUpdate(int id, int changeNum)" + e.getMessage());
			
			} finally {
				DBConn.close(conn, pstmt);
			}	
			return -1; //����
		}
		
		
		
		
		
		public int update(Memo memo) {
			final String SQL = "UPDATE memo SET title =?, content =? WHERE id =?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // ���� �ޱ�
				
				//����ǥ ä���
			
				pstmt.setString(1, memo.getTitle());
				pstmt.setString(2, memo.getContent());
				pstmt.setInt(3, memo.getId());
				
				
				return pstmt.executeUpdate();
				
				
								 	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "update(Memo memo)" + e.getMessage());
			
			} finally {
				DBConn.close(conn, pstmt);
			}	
			return -1; //����
		}
		
		
		public int update2(Memo memo){ 
			
			StringBuilder sb = new StringBuilder();
			sb.append("UPDATE memo SET title =?, content =? WHERE id =?");
			System.out.println(sb.toString());
			
			final String SQL = sb.toString();
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				
				pstmt.setString(1, memo.getTitle());
				pstmt.setString(2, memo.getContent());
				pstmt.setInt(3, memo.getId());
				
				return pstmt.executeUpdate();
			

				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "update(Memo memo) : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			
			
			return -1;
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public int deleteById(int id){ 
			final String SQL = "DELETE FROM memo WHERE id =?";
			
		
			
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				
				pstmt.setInt(1, id);
				
				
				return pstmt.executeUpdate();
			

				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "MemoDelete(int id)" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return -1;
			
		}
		
		
		
		
		
		
		
		
		public int save(Reminder reminder) {
			final String SQL = "INSERT INTO reminder(id, personId, content, priority, createDate) "
					+ "VALUES(memo_SEQ.NEXTVAL, ?, ?, ?, sysdate)";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // ���� �ޱ�
				
				//����ǥ ä���
				pstmt.setInt(1, reminder.getPersonId());
				pstmt.setString(2, reminder.getContent());
				pstmt.setInt(3, reminder.getPriority());
				
				
				return pstmt.executeUpdate();
				
				
								 	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "save : " + e.getMessage());
			
			} finally {
				DBConn.close(conn, pstmt);
			}	
			return -1; //����
		}
		
		
		
		
		
		public List<Memo> findSearch(int personId, String keyword){ 
			
			
			final String SQL = "SELECT id, personId, title, content, priority, createDate FROM memo " + 
					"WHERE personId =? AND (to_char(content) like ? or title like ?)";
		
			try {
				List<Memo> memos = new ArrayList<>();
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setInt(1, personId);
				pstmt.setString(2, "%"+ keyword +"%");
				pstmt.setString(3, "%"+ keyword +"%");
				
				rs = pstmt.executeQuery();
				 
				while (rs.next()) {
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
				System.out.println(TAG + "findSearch(int personId, String keyword)" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return null;
		}
					
			
			
			
		
		
		
		
		
		
		
		
		
		
		public List<Reminder> findAll(int personId){ 
			StringBuffer sb = new StringBuffer();
			sb.append("SELECT id, personId, content, priority, createDate ");					
			sb.append("FROM reminder "); 
			sb.append("WHERE personId = ? ");
			sb.append("ORDER by priority desc, id desc");
		
			System.out.println(sb.toString());	
			final String SQL = sb.toString();	
			List<Reminder> reminders = new ArrayList<>();
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				
				pstmt.setInt(1, personId);
				
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					Reminder reminder = new Reminder(
							rs.getInt("id"),
							rs.getInt("personId"),
							rs.getString("content"),
							rs.getInt("priority"),
							rs.getTimestamp("createDate")
					
					);
					reminders.add(reminder);
				}
					
					return reminders;

				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "findAll(int personId)" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return null;
			
		}
		
		
		
		
		
			
			
		
}	
	

