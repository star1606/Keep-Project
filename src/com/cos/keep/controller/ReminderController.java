package com.cos.keep.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cos.keep.action.Action;
import com.cos.keep.action.memo.MemoDeleteAction;
import com.cos.keep.action.memo.MemoMainAction;
import com.cos.keep.action.memo.MemoPriorityAction;
import com.cos.keep.action.memo.MemoSearchAction;
import com.cos.keep.action.memo.MemoUpdateAction;
import com.cos.keep.action.reminder.ReminderDeleteAction;
import com.cos.keep.action.reminder.ReminderPriorityAction;
import com.cos.keep.action.reminder.ReminderSearchAction;
import com.cos.keep.action.reminder.ReminderUpdateAction;
import com.cos.keep.reminder.ReminderMainAction;
import com.cos.keep.reminder.ReminderWriteProcAction;

@WebServlet("/reminder")
public class ReminderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String TAG = "ReminderController : ";

	protected void doProcesss(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		String cmd = request.getParameter("cmd");
		System.out.println(TAG + "doProcess: " + cmd);
		Action action = router(cmd);
		action.execute(request, response);

	}

	private Action router(String cmd) {

		if (cmd.equals("main")) {
			return new ReminderMainAction();

		} else if (cmd.equals("writeProc")) {
			return new ReminderWriteProcAction();

		} else if (cmd.equals("update")) {
			return new ReminderUpdateAction();

		} else if (cmd.equals("delete")) {
			return new ReminderDeleteAction();

		} else if (cmd.equals("priority")) {
			return new ReminderPriorityAction();

		} else if (cmd.equals("search")) {
			return new ReminderSearchAction();
		}  

		return null;
	}

	public ReminderController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcesss(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcesss(request, response);
	}

}
