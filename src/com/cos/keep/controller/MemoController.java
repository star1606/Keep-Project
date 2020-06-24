package com.cos.keep.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.action.person.PersonJoinAction;
import com.cos.keep.action.person.PersonJoinProcAction;
import com.cos.keep.action.person.PersonLoginAction;


@WebServlet("/memo")
public class MemoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	
protected void doProcesss(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=utf-8");
			String cmd = request.getParameter("cmd");
			Action action = router(cmd);
			action.execute(request, response);
			
	}
	
			private Action router(String cmd) {
				if(cmd.equals("login")) {
					
				} 
				
				return null;
			}


	
    public MemoController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcesss(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcesss(request, response);
	}

}
