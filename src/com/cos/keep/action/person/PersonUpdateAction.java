package com.cos.keep.action.person;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.util.Script;

public class PersonUpdateAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		
		// 1. 유효성 검사
				HttpSession session = request.getSession();
				if(session.getAttribute("principal") == null) {
					Script.getMessage("잘못된 접근입니다.", response);
					return; 
				}
						

			
				
				RequestDispatcher dis = 
						request.getRequestDispatcher("person/update.jsp");
				dis.forward(request, response);
		
		
	}

	
	
	
}
