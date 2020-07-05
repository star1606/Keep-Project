package com.cos.keep.action.reminder;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.model.Person;
import com.cos.keep.model.Reminder;
import com.cos.keep.repository.ReminderRepository;
import com.cos.keep.util.Script;

public class ReminderSearchAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		// ���߿� blog�� ���� search�� validation üũ Ȯ���Ұ�

		if (request.getParameter("keyword") == null || request.getParameter("keyword").equals("")) {
			Script.back("�˻� Ű���尡 �����ϴ�.", response);
			
		
			return;
		}
		
		HttpSession session = request.getSession();
		Person person = (Person) session.getAttribute("principal");
		int personId = person.getId();
		
		
		String keyword = request.getParameter("keyword");
		System.out.println(keyword);

		
	
		
		ReminderRepository reminderRepository = ReminderRepository.getInstance();

		List<Reminder> reminders = reminderRepository.findSearch(personId, keyword);
		
		request.setAttribute("reminders", reminders);
		
		RequestDispatcher dis = request.getRequestDispatcher("/memo/todolist2.jsp");

		dis.forward(request, response);
	}

}
