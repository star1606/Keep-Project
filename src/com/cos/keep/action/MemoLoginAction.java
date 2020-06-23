package com.cos.keep.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemoLoginAction implements Action{

	 @Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		 
		 
		 RequestDispatcher dis = request.getRequestDispatcher("/memo/login.jsp");
		 	dis.forward(request, response);
	}
	
}
