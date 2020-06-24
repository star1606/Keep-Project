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
	

