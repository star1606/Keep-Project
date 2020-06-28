package com.cos.keep.action.memo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.model.Memo;
import com.cos.keep.model.Person;
import com.cos.keep.repository.MemoRepository;


public class MemoMainAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		
		
		  HttpSession session  = request.getSession();
		  Person person = (Person)session.getAttribute("principal");
		  int personId = person.getId();
		
		  
		  MemoRepository memoRepository =
				  MemoRepository.getInstance();
		  
		  List<Memo> memos = memoRepository.findAll(personId);
		  
		  request.setAttribute("memos", memos);
		  
		  RequestDispatcher dis =
				  request.getRequestDispatcher("memo/main.jsp");
		  
		  dis.forward(request, response);
	}
		
}

	
	
	

