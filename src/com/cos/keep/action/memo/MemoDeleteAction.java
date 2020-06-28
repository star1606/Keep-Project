package com.cos.keep.action.memo;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
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
import com.cos.keep.util.Script;
import com.google.gson.Gson;


public class MemoDeleteAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		
		
		if(request.getParameter("memoId") == null ||
				request.getParameter("memoId").equals("")) {
			return;
		}
		
		int memoId = Integer.parseInt(request.getParameter("memoId"));
		System.out.println("MemoDeleteAction: id " + memoId );
		
		MemoRepository memoRepository =
				MemoRepository.getInstance();
		
		
		int result = memoRepository.deleteById(memoId);
		Script.outText(result+"", response);
	
					
		}
		
	}

	
	
	

