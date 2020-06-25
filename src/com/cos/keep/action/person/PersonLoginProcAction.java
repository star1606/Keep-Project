package com.cos.keep.action.person;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.model.Memo;
import com.cos.keep.model.Person;
import com.cos.keep.repository.MemoRepository;
import com.cos.keep.repository.PersonRepository;
import com.cos.keep.util.Script;
import com.google.gson.Gson;

public class PersonLoginProcAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
	
		// 1. 유효성 검사
		if(request.getParameter("email").equals("") || request.getParameter("email") == null
			|| request.getParameter("password").equals("") || request.getParameter("password") == null			
		) {
			return;			
		}
		
		// 2. 파라미터 받기
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		// 3. 로그인 폼으로 DB연결후 찾아서 맞으면 select하는 함수 호출
		PersonRepository personRepository = PersonRepository.getInstance();
		Person person = personRepository.findByEmailandPassword(email, password);
		
		
		
		// 4. 세션연결, principal 인증 데이터 속성 set
		// 이미 만들어져있는 세션에 접근.
		// 세션이 만들어지는타이밍은 처음서버떴을때다

		
		if(person != null) {
			HttpSession session = request.getSession();
			session.setAttribute("principal", person);
			// jsession아이디로 principal 자기꺼 확인
				
						
		
			

			
			
			
			
			Script.href("로그인 성공", "/keep/memo/main.jsp", response);
			
		
		} else {
			
			Script.back("로그인 실패", response);
		}
		
		
	
		
		
	}

	
	
	
}
