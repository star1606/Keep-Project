package com.cos.keep.action.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.model.Person;
import com.cos.keep.repository.PersonRepository;
import com.cos.keep.util.Script;

public class PersonJoinProcAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		
		// 1. ��ȿ�� �˻�
		if
		(
				request.getParameter("email").equals("")||
				request.getParameter("email") == null ||
				request.getParameter("personName").equals("")||
				request.getParameter("personName") == null ||
				request.getParameter("password").equals("")||
				request.getParameter("password") == null
		)
		{	
			return;			
		}
		
		
		
		
	
		// 2. �ĸ����� �ޱ� (���±� ������ -> x-www-form-urlenfcoded��� MIME Ÿ�� key=value)
		// 3. Ŭ���̾�Ʈ�� �� ������� get���� �޾ƿ��� ��.
		
		String email = request.getParameter("email");
		String personName = request.getParameter("personName");
		String password = request.getParameter("password");
	
		
		Person person = Person.builder()
				.email(email)
				.personName(personName)
				.password(password)
				.build();
		
		//4. DB���� -UsersRepository save()ȣ��
		// �װŸ� DB���ٰ� ����ִ� insert�۾��� �����ϰڳ�.
		PersonRepository personRepository = 
				PersonRepository.getInstance();
		
		int result = personRepository.save(person);
		
		
		//5. index.jsp �������� �̵�
		if(result == 1) {
		
			Script.href("ȸ�����Կ� �����Ͽ����ϴ�.", "/keep/person?cmd=login", response);
			
			
		} else {
			Script.back("ȸ�����Կ� �����Ͽ����ϴ�", response);
		}
		
		
	}

	
	
	
}
