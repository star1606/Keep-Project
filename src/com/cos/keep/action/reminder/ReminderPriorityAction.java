package com.cos.keep.action.reminder;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cos.keep.action.Action;
import com.cos.keep.model.Person;
import com.cos.keep.model.Reminder;
import com.cos.keep.repository.ReminderRepository;
import com.cos.keep.util.Script;
import com.google.gson.Gson;

public class ReminderPriorityAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int id = Integer.parseInt(request.getParameter("id"));
		int priority = Integer.parseInt(request.getParameter("priority"));
		int changeNum;
		
		if(priority == 0) {
			changeNum = 1;
		} else {
			changeNum = 0;
		}
		
		ReminderRepository reminderRepository = ReminderRepository.getInstance();
		
		int result = reminderRepository.priorityUpdate(id, changeNum);
		
		
		if (result == 1) {
			HttpSession session = request.getSession();
			Person p = (Person) session.getAttribute("principal");
			
		List<Reminder> reminders = reminderRepository.findAll(p.getId());
		
		
		
		Gson gson = new Gson();
		
		String reminderJson = gson.toJson(reminders);
		Script.outJson(reminderJson, response);
		
		} else {
	
			Script.outJson(result + "", response);
		}
		

	}

}
