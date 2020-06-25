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
		
	
		// 1. ��ȿ�� �˻�
		if(request.getParameter("email").equals("") || request.getParameter("email") == null
			|| request.getParameter("password").equals("") || request.getParameter("password") == null			
		) {
			return;			
		}
		
		// 2. �Ķ���� �ޱ�
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		System.out.println(email);
		System.out.println(password);
		// 3. �α��� ������ DB������ ã�Ƽ� ������ select�ϴ� �Լ� ȣ��
		PersonRepository personRepository = PersonRepository.getInstance();
		Person person = personRepository.findByEmailandPassword(email, password);
		
		
		
		// 4. ���ǿ���, principal ���� ������ �Ӽ� set
		// �̹� ��������ִ� ���ǿ� ����.
		// ������ ���������Ÿ�̹��� ó��������������

		
		if(person != null) {
			HttpSession session = request.getSession();
			session.setAttribute("principal", person);
			// jsession���̵�� principal �ڱⲨ Ȯ��
				
						
		
			

			
			
			
			
			Script.href("�α��� ����", "/keep/memo/main.jsp", response);
			
		
		} else {
			
			Script.back("�α��� ����", response);
		}
		
		
	
		
		
	}

	
	
	
}
