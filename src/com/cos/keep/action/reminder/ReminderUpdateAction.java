package com.cos.keep.action.reminder;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.model.Memo;
import com.cos.keep.model.Reminder;
import com.cos.keep.repository.ReminderRepository;
import com.cos.keep.util.Script;
import com.google.gson.Gson;

public class ReminderUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		BufferedReader br = request.getReader();

		String input = null;

		StringBuilder sb = new StringBuilder();

		while ((input = br.readLine()) != null) {
			sb.append(input);
		}

		System.out.println(sb.toString());

		Gson gson = new Gson();

		Reminder reminder = gson.fromJson(sb.toString(), Reminder.class);

		ReminderRepository reminderRepository = ReminderRepository.getInstance();
		System.out.println("id : " + reminder.getId());

		System.out.println("content : " + reminder.getContent());

		int result = reminderRepository.update(reminder);
		System.out.println(result);

		if (result == 1) {
			List<Reminder> reminders = reminderRepository.findAll(reminder.getPersonId());
			String reminderJson = gson.toJson(reminders);
			Script.outJson(reminderJson, response);

		} else {

			Script.outJson(result + "", response);
		}

	}

}
