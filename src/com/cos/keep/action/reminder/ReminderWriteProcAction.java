package com.cos.keep.action.reminder;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.model.Reminder;
import com.cos.keep.repository.ReminderRepository;
import com.cos.keep.util.Script;
import com.google.gson.Gson;



public class ReminderWriteProcAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		
		
		BufferedReader br = request.getReader();
		
		String input = null;
		
		StringBuilder sb = new StringBuilder();
		
		while((input = br.readLine())!= null) {
				sb.append(input);
		}
		
		System.out.println(sb.toString());
		
		Gson gson = new Gson();
		
		Reminder reminder = gson.fromJson(sb.toString(), Reminder.class);
		
		ReminderRepository reminderRepository =
				ReminderRepository.getInstance();
		
		
		int result = reminderRepository.save(reminder);
		System.out.println(result);
	
	
		if(result == 1) {
			List<Reminder> reminders = reminderRepository.findAll(reminder.getPersonId());
			String ReminderJson = gson.toJson(reminders);
			Script.outJson(ReminderJson, response);
		
		} else {
			
			Script.outJson(result+"", response);
		}
		
	
					
		}
		
	}

	
	
	

