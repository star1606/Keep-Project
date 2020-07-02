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
import com.cos.keep.util.Script;

public class MemoSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		// 나중에 blog로 보고 search에 validation 체크 확인할것

		if (request.getParameter("keyword") == null || request.getParameter("keyword").equals("")) {
			Script.back("검색 키워드가 없습니다.", response);
			
		
			return;
		}
		
		HttpSession session = request.getSession();
		Person person = (Person) session.getAttribute("principal");
		int personId = person.getId();
		
		
		String keyword = request.getParameter("keyword");
		System.out.println(keyword);

		
	
		
		MemoRepository memoRepository = MemoRepository.getInstance();

		List<Memo> memos = memoRepository.findSearch(personId, keyword);
		
		request.setAttribute("memos", memos);
		
		RequestDispatcher dis = request.getRequestDispatcher("/memo/main.jsp");

		dis.forward(request, response);
	}

}
