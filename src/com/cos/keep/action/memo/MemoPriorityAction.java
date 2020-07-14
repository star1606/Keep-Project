package com.cos.keep.action.memo;

import java.io.IOException;
import java.util.List;

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

public class MemoPriorityAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		System.out.println(request.getParameter("id"));
		int id = Integer.parseInt(request.getParameter("id"));
		int priority = Integer.parseInt(request.getParameter("priority"));
		int changeNum;
		
		if(priority == 0) {
			changeNum = 1;
		} else {
			changeNum = 0;
		}
		MemoRepository memoRepository = MemoRepository.getInstance();
		
		int result = memoRepository.priorityUpdate(id, changeNum);
		if (result == 1) {
			HttpSession session = request.getSession();
			Person p = (Person) session.getAttribute("principal");
			
		List<Memo> memos = memoRepository.findAll(p.getId());
		
		
		Gson gson = new Gson();
		
		String MemoJson = gson.toJson(memos);
		Script.outJson(MemoJson, response);
		} else {
	
			Script.outJson(result + "", response);
		}
		


	}

}
