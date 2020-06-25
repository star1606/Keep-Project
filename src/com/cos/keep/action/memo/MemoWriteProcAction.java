package com.cos.keep.action.memo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.model.Memo;
import com.cos.keep.repository.MemoRepository;


public class MemoWriteProcAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		Memo memo = Memo.builder()
				.id(Integer.parseInt(request.getParameter("id")))
				.title(request.getParameter("title"))
				.content(request.getParameter("content"))
				.build();
		
				
		MemoRepository memoRepository = MemoRepository.getInstance();
		
		int result = memoRepository.save(memo);
		
		if(result == 1) {
			
			RequestDispatcher dis =
					request.getRequestDispatcher("memo/main.jsp");
			dis.forward(request, response);
					
		}
		
	}

	
	
	
}
