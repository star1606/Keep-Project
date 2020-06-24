package com.cos.keep.action.person;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.repository.PersonRepository;

public class PersonLoginAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
				
		
		RequestDispatcher dis = request.getRequestDispatcher("/person/login.jsp");
	 	dis.forward(request, response);
		
	}

	
	
	
}
