package com.cos.keep.action.reminder;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.repository.ReminderRepository;
import com.cos.keep.util.Script;



public class ReminderDeleteAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	
		
		
		if(request.getParameter("reminderId") == null ||
				request.getParameter("reminderId").equals("")) {
			return;
		}
		
		int reminderId = Integer.parseInt(request.getParameter("reminderId"));
		System.out.println("ReminderDeleteAction: id " + reminderId );
		
		ReminderRepository reminderRepository =
				ReminderRepository.getInstance();
		
		
		int result = reminderRepository.deleteById(reminderId);
		Script.outText(result+"", response);
	
					
		}
		
	}

	
	
	

