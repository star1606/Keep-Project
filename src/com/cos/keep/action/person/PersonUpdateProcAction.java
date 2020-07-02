package com.cos.keep.action.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.model.Person;
import com.cos.keep.repository.PersonRepository;
import com.cos.keep.util.SHA256;
import com.cos.keep.util.Script;

public class PersonUpdateProcAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		
		// 1. 유효성 검사
		if
		(
				
				request.getParameter("personName").equals("")||
				request.getParameter("personName") == null ||
				request.getParameter("password").equals("")||
				request.getParameter("password") == null
		)
		{	
			return;			
		}
		
		
		
		
	
		// 2. 파마리터 받기 (폼태그 데이터 -> x-www-form-urlenfcoded라는 MIME 타입 key=value)
		// 3. 클라이언트가 쓴 내용들을 get으로 받아오는 것.
		
		
		 int id = Integer.parseInt(request.getParameter("id")); 
		String personName = request.getParameter("personName");
		String rawpassword = request.getParameter("password");
		String password = SHA256.encodeSha256(rawpassword);
		String email = request.getParameter("email");
	
		
		
		
		
		
		
		//4. DB연결 -UsersRepository save()호출
		// 그거를 DB에다가 집어넣는 insert작업을 수행하겠네.
	

	
		
		
		Person person = Person.builder()
				.id(id)
				.email(email)
				.personName(personName)
				.password(password)
				.build();
		
		PersonRepository personRepository = 
				PersonRepository.getInstance();
		
		
		int result = personRepository.updateProfile(person);
		
		
		//5. index.jsp 페이지로 이동
		if(result == 1) {
		
			Script.href("회원수정에 성공하였습니다.", "/keep/memo?cmd=main", response);
			
			
		} else {
			Script.back("회원수정에 실패하였습니다", response);
		}
		
		
	}

	
	
	
}
