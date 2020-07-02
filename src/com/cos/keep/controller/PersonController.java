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
import com.cos.keep.action.person.PersonLoginProcAction;
import com.cos.keep.action.person.PersonLogoutAction;
import com.cos.keep.action.person.PersonUpdateAction;
import com.cos.keep.action.person.PersonUpdateProcAction;
import com.cos.keep.action.person.PersonUploadAction;
import com.cos.keep.action.person.PersonUploadProcAction;


@WebServlet("/person")
public class PersonController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final static String TAG = "PersonController: ";   
    
	
protected void doProcesss(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=utf-8");
			String cmd = request.getParameter("cmd");
			System.out.println(TAG + "doProcess: " + cmd);
			Action action = router(cmd);
			action.execute(request, response);
			
	}
	
			private Action router(String cmd) {
				if(cmd.equals("login")) {
					return new PersonLoginAction();
				} else if(cmd.equals("join")) {
					return new PersonJoinAction();	
				} else if(cmd.equals("joinProc")) {
					return new PersonJoinProcAction();	
				} else if(cmd.equals("loginProc")) {
					return new PersonLoginProcAction();	
				} else if(cmd.equals("profileUpload")) {
					return new PersonUploadAction();	
				} else if(cmd.equals("profileUploadProc")) {
					return new PersonUploadProcAction();	
				} else if(cmd.equals("logout")) {
					return new PersonLogoutAction();	
				} else if(cmd.equals("update")) {
					return new PersonUpdateAction();	
				} else if(cmd.equals("updateProc")) {
					return new PersonUpdateProcAction();	
				}
				
				return null;
			}


	
    public PersonController() {
        super();
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcesss(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcesss(request, response);
	}

}
