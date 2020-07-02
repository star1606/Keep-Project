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
		
		
		// 1. ��ȿ�� �˻�
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
		
		
		
		
	
		// 2. �ĸ����� �ޱ� (���±� ������ -> x-www-form-urlenfcoded��� MIME Ÿ�� key=value)
		// 3. Ŭ���̾�Ʈ�� �� ������� get���� �޾ƿ��� ��.
		
		
		 int id = Integer.parseInt(request.getParameter("id")); 
		String personName = request.getParameter("personName");
		String rawpassword = request.getParameter("password");
		String password = SHA256.encodeSha256(rawpassword);
		String email = request.getParameter("email");
	
		
		
		
		
		
		
		//4. DB���� -UsersRepository save()ȣ��
		// �װŸ� DB���ٰ� ����ִ� insert�۾��� �����ϰڳ�.
	

	
		
		
		Person person = Person.builder()
				.id(id)
				.email(email)
				.personName(personName)
				.password(password)
				.build();
		
		PersonRepository personRepository = 
				PersonRepository.getInstance();
		
		
		int result = personRepository.updateProfile(person);
		
		
		//5. index.jsp �������� �̵�
		if(result == 1) {
		
			Script.href("ȸ�������� �����Ͽ����ϴ�.", "/keep/memo?cmd=main", response);
			
			
		} else {
			Script.back("ȸ�������� �����Ͽ����ϴ�", response);
		}
		
		
	}

	
	
	
}
