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

	// 싱글톤 만들기
	private static ReminderRepository instance = new ReminderRepository();
	
	public ReminderRepository() {}
		
		private static final String TAG = "ReminderRepository: ";
	
		public static ReminderRepository getInstance() {
			return instance;
		}
	 	
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
	
		
		// 메소드 를 만드는데 이거는 email을 이용해서 select해서 유일한 id를 찾는 쿼리다
		
		
		
		
		public int priorityUpdate(int id, int changeNum) {
			final String SQL = "UPDATE reminder SET priority = ? WHERE id =?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // 버퍼 달기
				
				//물음표 채우기
			
				pstmt.setInt(1, changeNum);
				pstmt.setInt(2, id);
				
				return pstmt.executeUpdate();
				
				
								 	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "priorityUpdate(int id, int changeNum)" + e.getMessage());
			
			} finally {
				DBConn.close(conn, pstmt);
			}	
			return -1; //실패
		}
		
		
		
		
		
		public int update(Reminder reminder) {
			final String SQL = "UPDATE reminder SET content =? WHERE id =?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // 버퍼 달기
				
				//물음표 채우기
			
				pstmt.setString(1, reminder.getContent());
				pstmt.setInt(2, reminder.getId());
				
				
				return pstmt.executeUpdate();
				
				
								 	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "update(Reminder reminder): " + e.getMessage());
			
			} finally {
				DBConn.close(conn, pstmt);
			}	
			return -1; //실패
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
				System.out.println(TAG + "update() : " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			
			
			return -1;
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		public int deleteById(int id){ 
			final String SQL = "DELETE FROM reminder WHERE id =?";
			
		
			
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				
				pstmt.setInt(1, id);
				
				
				return pstmt.executeUpdate();
			

				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "deleteById(int id)" + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return -1;
			
		}
		
		
		
		
		
		
		
		
		public int save(Reminder reminder) {
			final String SQL = "INSERT INTO reminder(id, personId, content, priority, createDate) "
					+ "VALUES(reminder_SEQ.NEXTVAL, ?, ?, ?, sysdate)";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // 버퍼 달기
				
				//물음표 채우기
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
			return -1; //실패
		}
		
		
		
		
		
		public List<Reminder> findSearch(int personId, String keyword){ 
			
			
			final String SQL = "SELECT id, personId, content, priority, createDate FROM reminder " + 
					"WHERE personId =? AND content like ?";
		
			try {
				List<Reminder> reminders = new ArrayList<>();
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setInt(1, personId);
				pstmt.setString(2, "%"+ keyword +"%");
			
				
				rs = pstmt.executeQuery();
				 
				while (rs.next()) {
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
			sb.append("ORDER by id desc");
		
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
	

