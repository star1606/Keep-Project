package com.cos.keep.action.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.repository.PersonRepository;
import com.cos.keep.util.Script;

public class PersonEmailCheckAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		String checkEmail = request.getParameter("email");
		
		PersonRepository personRepository = 
				PersonRepository.getInstance();
		
		
		int checkResult = personRepository.findByEmail(checkEmail);
		
		Script.outText(checkResult+"", response);
		
	}

	
	
	
}
