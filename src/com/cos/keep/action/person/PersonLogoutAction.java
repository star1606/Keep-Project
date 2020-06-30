package com.cos.keep.action.person;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.util.Script;

public class PersonLogoutAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
				
		HttpSession session = request.getSession();
		session.invalidate();
		
	
		Script.href("로그아웃 성공", "index.jsp", response);
	}
	
}
