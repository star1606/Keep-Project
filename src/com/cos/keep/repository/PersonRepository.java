package com.cos.keep.repository;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.cos.keep.db.DBConn;
import com.cos.keep.model.Person;


public class PersonRepository {

	// 싱글톤 만들기
	private static PersonRepository instance = new PersonRepository();
	
	public PersonRepository() {}
		
		private static final String TAG = "PersonRepository: ";
	
		public static PersonRepository getInstance() {
			return instance;
		}
	 	
		private Connection conn = null;
		private PreparedStatement pstmt = null;
		private ResultSet rs = null;
	
		
		
		
		// 매개변수 하나만 받을거라서 그냥 int 변수형으로
		public Person findById(int id) {
			
			final String SQL = "SELECT * FROM person WHERE id =?";
			Person person = null;
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setInt(1, id);
				
			
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					person = Person.builder()
							.id(rs.getInt("id"))
							.personName(rs.getString("personName"))
							.email(rs.getString("email"))
							.password(rs.getString("password"))
							.userProfile(rs.getString("userProfile"))
							.createDate(rs.getTimestamp("createDate"))
							.build();
					
					
				}
					return person;
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "findById(int id): " +e.getMessage());
			} finally {
				DBConn.close(conn, pstmt, rs);
			}
			
			
			return null;
		}
		
		
		
		
		public int updateProfile(int id, String userProfile) {
			final String SQL = "UPDATE person SET userProfile =? WHERE id =?";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL);
				
				pstmt.setString(1, userProfile);
				pstmt.setInt(2, id);
				
				return pstmt.executeUpdate();
				
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "update(int id, String userProfile): " + e.getMessage());
			} finally {
				DBConn.close(conn, pstmt);
			}
			
			return -1;
		}
		
		
		
		
		
		// loginProcAction이면 email과 password가 일치하면
		// 메소드 실행되서 main으로 넘어가게 해야한다.
		// 객체로 만들어서 한다.
		public Person findByEmailandPassword(String email, String password) {
			
			final String SQL = "SELECT id, email, personName, password, userProfile, createDate FROM person	WHERE email = ? AND password = ?";
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
					person.setUserProfile(rs.getString("userProfile"));
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
		public int save(Person person) {
			final String SQL = "INSERT INTO person(id, email, personName, password, createDate) "
					+ "VALUES(PERSON_SEQ.NEXTVAL, ?, ?, ?, sysdate)";
			
			try {
				conn = DBConn.getConnection();
				pstmt = conn.prepareStatement(SQL); // 버퍼 달기
				
				//물음표 채우기
				pstmt.setString(1, person.getEmail());
				pstmt.setString(2, person.getPersonName());
				pstmt.setString(3, person.getPassword());
			
				return pstmt.executeUpdate();
				
				
								 	
			} catch (Exception e) {
				e.printStackTrace();
				System.out.println(TAG + "save : " + e.getMessage());
			
			} finally {
				DBConn.close(conn, pstmt);
			}	
			return -1; //실패
		}
			
			
		
}	
	

