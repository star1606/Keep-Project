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
		System.out.println(request.getParameter("id"));
		System.out.println("여기000000000000000");
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println("여기00045555555555555555000000000000");
		int priority = Integer.parseInt(request.getParameter("priority"));
		System.out.println("2222222222여기00045555555555555555000000000000");
		int changeNum;
		
		if(priority == 0) {
			changeNum = 1;
		} else {
			changeNum = 0;
		}
		System.out.println("여기11111111111");
		ReminderRepository reminderRepository = ReminderRepository.getInstance();
		
		int result = reminderRepository.priorityUpdate(id, changeNum);
		System.out.println(result);
		System.out.println("여기222222222222");
		if (result == 1) {
			HttpSession session = request.getSession();
			Person p = (Person) session.getAttribute("principal");
			
		List<Reminder> reminders = reminderRepository.findAll(p.getId());
		
		System.out.println("ReminderPriorityAction : reminders.size(): " + reminders.size());
		
		Gson gson = new Gson();
		
		String reminderJson = gson.toJson(reminders);
		Script.outJson(reminderJson, response);
		System.out.println("여기33333333");
		} else {
	
			Script.outJson(result + "", response);
		}
		
//		System.out.println("MemoPriorityAction : ~~~~~~~~~~~~~~~~~~~~~~");
//		BufferedReader br = request.getReader();
//
//		System.out.println("MemoPriorityAction : 111111111111111");
//		String input = null;
//
//		StringBuilder sb = new StringBuilder();
//		System.out.println("MemoPriorityAction : 2222222222222222");
//		while ((input = br.readLine()) != null) {
//			sb.append(input);
//		}
//		System.out.println("MemoPriorityAction : 3333333333333");
//		System.out.println(sb.toString());
//
//		Gson gson = new Gson();
//
//		Memo memo = gson.fromJson(sb.toString(), Memo.class);
//
//		MemoRepository memoRepository = MemoRepository.getInstance();
//		
//		
//		int result = memoRepository.priorityUpdate(memo);
//		System.out.println(result);
//
//		if (result == 1) {
//			List<Memo> memos = memoRepository.findAll(memo.getPersonId());
//			String MemoJson = gson.toJson(memos);
//			Script.outJson(MemoJson, response);
//			
//		} else {
//
//			Script.outJson(result + "", response);
//		}

	}

}
